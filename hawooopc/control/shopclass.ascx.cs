using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using Microsoft.Security.Application;
using System.Text;
using System.Data.SqlClient;

public partial class user_control_shopclass : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;
            int cid = 0;
            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out i))
                {
                    cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                }
            }
            else
            {
                if (Request.QueryString["eid"] != null)
                {
                    if (int.TryParse(Request.QueryString["eid"], out i))
                    {
                        string strSql = "SELECT SPM17 FROM SPRODUCTSM WHERE SPM01=@SPM01";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = strSql;
                        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM01", SqlDbType.Int, Request.QueryString["eid"].ToString()));
                        DataTable dt = SqlDbmanager.queryBySql(cmd);
                        if (dt.Rows.Count > 0)
                        {
                            cid = Convert.ToInt32(dt.Rows[0]["SPM17"].ToString());
                        }
                    }
                }
            }

            //if(Request.QueryString["eid"] != null)
            //{

            //}
            bindDeskShopClassMenu(cid);
            bindEdmClass();
            if (Request.QueryString["money"] != null)
            {
                switch (Request.QueryString["money"].ToString())
                {
                    case "50":
                        {
                            chk_1.Checked = true;
                            break;
                        }
                    case "50-100":
                        {
                            chk_2.Checked = true;
                            break;
                        }
                    case "100-150":
                        {
                            chk_3.Checked = true;
                            break;
                        }
                    case "150-250":
                        {
                            chk_4.Checked = true;
                            break;
                        }
                    case "250":
                        {
                            chk_5.Checked = true;
                            break;
                        }
                }
            }
            if (Request.QueryString["tag"] != null)
            {
                switch (Request.QueryString["tag"].ToString())
                {
                    case "1": //免運商品
                        {
                            chk_t_1.Checked = true;
                            break;
                        }
                    case "2": //本週熱銷
                        {
                            chk_t_2.Checked = true;
                            break;
                        }
                    case "3": //限時優惠
                        {
                            chk_t_3.Checked = true;
                            break;
                        }
                }
            }
        }
    }
    private void bindDeskShopClassMenu(int cid)
    {
        LangType LgType = (LangType)Enum.Parse(typeof(LangType), Session["LG"].ToString(), true);

        string pid = cid.ToString();
        StringBuilder sb = new StringBuilder();
        DataTable ClassDT = new DataTable();
        if (LgType == LangType.en)
        {
            if (CacheHelper.GetCache("EnClassDT") == null)
            {
                //CacheHelper.SetCache("EnClassDT", CFacade.GetFac.GetCFac.GetAllClass(1, LgType), TimeSpan.FromMinutes(30));
                CacheHelper.SetCache("EnClassDT", ClassBL.GetHwClass(lgType: LgType), TimeSpan.FromMinutes(30));
            }
            ClassDT = (DataTable)Cache["EnClassDT"];
        }
        else if (LgType == LangType.zh)
        {
            if (CacheHelper.GetCache("ZhClassDT") == null)
            {
                //CacheHelper.SetCache("ZhClassDT", CFacade.GetFac.GetCFac.GetAllClass(1, LgType), TimeSpan.FromMinutes(30));
                CacheHelper.SetCache("ZhClassDT", ClassBL.GetHwClass(lgType: LgType), TimeSpan.FromMinutes(30));
            }
            ClassDT = (DataTable)Cache["ZhClassDT"];
        }
        ClassDT.DefaultView.RowFilter = "C01='" + cid + "'";
        DataTable dt = ClassDT.DefaultView.ToTable();

        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["C03"].ToString().Equals("0")) //為父類別
            {
                pid = dt.Rows[0]["C01"].ToString();
            }
            else
            {
                pid = dt.Rows[0]["C03"].ToString();
            }
            DataRow MDR = ClassDT.Select("C01='" + pid + "'")[0];
            //sb.Append("<div class=\"left-menu-all\"><a href=\"shop.aspx\"><i class=\"am-icon-chevron-left\" aria-hidden=\"true\"></i>&nbsp;所有分類</a></div>");
            sb.Append("<ul class=\"left-menu-2\">");

            //sb.Append("<li class=\"left02\">&nbsp;時尚彩妝</li>");
            sb.Append("<li class=\"" + MDR["C08"].ToString() + "\"><a href=\"shop.aspx?cid=" + MDR["C01"].ToString() + "\">&nbsp;" + MDR["C06"].ToString() + "</a></li>");
            DataRow[] CDR = ClassDT.Select("C03='" + pid + "'");
            if (CDR.Length > 0)
            {
                sb.Append("<ul class=\"left-menu-down\">");
                foreach (DataRow cdr in CDR)
                {
                    sb.Append("<li><a href=\"shop.aspx?cid=" + cdr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\" style=\"color:#dbdbdb;\"></i>&nbsp;&nbsp;" + cdr["C06"].ToString() + "</a></li>");
                }
                sb.Append("</ul>");
            }
            sb.Append("</ul>");

        }

        lit_hawooo_class.Text = sb.ToString();
        bindSelClass(Convert.ToInt32(pid));
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "setheader", "SetHeaderMenuActive('" + "h-" + pid + "');setNewsUrl('shop.aspx?cid=" + pid + "&type=new');", true);

    }

    private void bindEdmClass()
    {
        DataTable dt = CFacade.UserFac.GetEdmClass();
        StringBuilder sb = new StringBuilder();
        if (dt.Rows.Count > 0)
        {
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append("<li class=\"emp\"><a href=\"" + dr["EDM09"].ToString() + "\"><i class=\"am-icon-star\" aria-hidden=\"true\"></i>&nbsp;" + dr["EDM02"].ToString() + "</a></li>");
            }
        }

        lit_edm_class.Text = sb.ToString();
    }
    private void bindSelClass(int pid)
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.UserFac.GetEventClass(pid);
        if (dt.Rows.Count > 0)
        {
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append("<li class=\"nomal\"><a href=\"shop.aspx?eid=" + dr["SPM01"].ToString() + "&cid=" + pid + "\">" + dr["SPM02"].ToString() + "</a></li>");
            }
        }
        lit_sel_class.Text = sb.ToString();
    }
    protected void chkTagEvent(object sender, EventArgs e)
    {
        string tagID = "";
        string url = "";
        CheckBox chk = sender as CheckBox;
        if (chk.Checked == true)
        {
            switch (chk.ID)
            {
                case "chk_t_1":
                    {
                        tagID = "1";
                        break;
                    }
                case "chk_t_2":
                    {
                        tagID = "2";
                        break;
                    }
                case "chk_t_3":
                    {
                        tagID = "3";
                        break;
                    }
            }
        }
        if (tagID != "")
            url = "tag=" + tagID;

        string[] _URL = Request.QueryString.ToString().Split('&');
        foreach (string s in _URL)
        {
            string val = s.Split('=')[0].ToString();
            if (!val.Equals("tag"))
            {
                url += "&" + s;
            }
        }
        Response.Redirect("shop.aspx?" + url.Trim('&'));

    }
    protected void chkEvent(object sender, EventArgs e)
    {
        string[] _URL = Request.QueryString.ToString().Split('&');
        CheckBox chk = sender as CheckBox;
        string url = "";
        if (chk.Checked == true)
        {
            switch (chk.ID)
            {
                case "chk_1":
                    {
                        url = "money=50";
                        break;
                    }
                case "chk_2":
                    {
                        url = "money=50-100";
                        break;
                    }
                case "chk_3":
                    {
                        url = "money=100-150";
                        break;
                    }
                case "chk_4":
                    {
                        url = "money=150-250";
                        break;
                    }
                case "chk_5":
                    {
                        url = "money=250";
                        break;
                    }
            }
        }

        foreach (string s in _URL)
        {
            string val = s.Split('=')[0].ToString();
            if (!val.Equals("money"))
            {
                url += "&" + s;
            }
        }
        Response.Redirect("shop.aspx?" + url.Trim('&'));

    }

}