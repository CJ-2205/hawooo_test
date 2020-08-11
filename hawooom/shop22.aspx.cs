using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_shop22 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["num"] != null)
            {
                ViewState["num"] = Session["num"];
                Session["num"] = null;
            }
            bool hDT = false;

            int i = 0;
            if (Request.QueryString["eid"] != null)
            {
                if (int.TryParse(Request.QueryString["eid"], out i))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(0, 0, Convert.ToInt32(Request.QueryString["eid"].ToString()));

                }
            }
            if (Request.QueryString["bid"] != null)
            {
                if (int.TryParse(Request.QueryString["bid"], out i))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(0, Convert.ToInt32(Request.QueryString["bid"].ToString()), 0);
                }
            }
            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out i))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(Convert.ToInt32(Request.QueryString["cid"].ToString()), 0, 0);
                }
            }
            if (Request.QueryString["type"] != null)
            {
                if (Request.QueryString["type"].Equals("new"))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(0, 0, 0, "new");
                }
            }
            if (hDT == false)
            {
                bindDT(0, 0, 0);
            }
        }
    }

    protected void lnk_more_Click(object sender, EventArgs e)
    {
        //讀取更多
        if (ViewState["num"] != null)
        {
            ViewState["num"] = Convert.ToInt32(ViewState["num"].ToString()) + 1;
            int eid = 0;
            int cid = 0;
            int bid = 0;
            if (Request.QueryString["eid"] != null)
            {
                eid = Convert.ToInt32(Request.QueryString["eid"].ToString());
            }
            if (Request.QueryString["cid"] != null)
            {
                cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
            }
            if (Request.QueryString["bid"] != null)
            {
                bid = Convert.ToInt32(Request.QueryString["bid"].ToString());
            }
            bindDT(cid, bid, eid);
        }
    }
    //private void bindEventImg(int eid)
    //{
    //    string strSql = "SELECT SPI04 FROM SPRODUCTSI WHERE SPI02='M01' AND SPI01=" + eid;
    //    DataTable dt = SqlDbmanager.queryBySql(strSql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        lit_event_img.Text = "<img src=\"http://www.hawooo.com/images/adimgs/" + dt.Rows[0]["SPI04"].ToString() + "\" class=\"am-img-responsive\" />";
    //    }
    //}

    private void bindClassName(int cid, int bid, int eid)
    {
        if (cid == 0 && bid == 0 && eid == 0)
        {
            lit_class_name.Text = "全部商品";
        }
        else
        {
            string strSql = String.Empty;
            if (cid != 0)
            {
                //取得類別名稱
                strSql = "SELECT CID,CNAME,PCID,PNAME FROM ProductClassView WHERE CID=" + cid;
            }
            if (bid != 0)
            {
                //取得品牌名稱
                strSql = "SELECT BA02 as CNAME FROM BA WHERE B01=" + bid;
            }
            if (eid != 0)
            {
                //取得活動名稱
                strSql = "SELECT SPM02 as CNAME FROM SPRODUCTSM WHERE SPM01=" + eid;
                //bindEventImg(eid);
            }
            DataTable dt = SqlDbmanager.queryBySql(strSql);
            if (dt.Rows.Count > 0)
            {
                string classTxt = "";
                if (cid != 0)
                {
                    classTxt = "<a href=\"shop.aspx?cid=" + cid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                    if (dt.Rows[0]["PNAME"].ToString().Equals(""))
                    {
                        lit_class.Text = "<li><a href=\"shop2.aspx?cid=" + dt.Rows[0]["CID"].ToString() + "\" class=\"productpage-uptitle\">" + dt.Rows[0]["CNAME"].ToString() + "</a></li>";
                    }
                    else
                    {
                        lit_class.Text = "<li><a href=\"shop.aspx?cid=" + dt.Rows[0]["PCID"].ToString() + "\" class=\"productpage-uptitle\">" + dt.Rows[0]["PNAME"].ToString() + "</a></li>";
                        lit_class.Text += "<li><a href=\"shop2.aspx?cid=" + dt.Rows[0]["CID"].ToString() + "\" class=\"productpage-uptitle\">" + dt.Rows[0]["CNAME"].ToString() + "</a></li>";
                    }

                }
                if (bid != 0)
                {
                    classTxt = "<a href=\"shop2.aspx?bid=" + bid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                    lit_class.Text = classTxt;
                }
                if (eid != 0)
                {
                    classTxt = "<a href=\"shop2.aspx?eid=" + eid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                    lit_class.Text = classTxt;
                }

                lit_class_name.Text = classTxt;
            }
        }
    }
    private void bindDT(int cid, int bid, int eid, string stxt = "")
    {

        if (lnk_more.Enabled == true)
        {
            bindClassName(cid, bid, eid);
            int pcount = 60;

            if (ViewState["num"] == null)
            {
                ViewState["num"] = "1";
            }

            Session["num"] = ViewState["num"].ToString();

            Tuple<DataTable, int> rval = CFacade.UserFac.MShopProducts2(cid, bid, eid, Convert.ToInt32(ViewState["num"].ToString()), pcount, 1, stxt);
            DataTable BindDT = new DataTable();
            if (ViewState["BDT"] != null)
            {
                BindDT = ViewState["BDT"] as DataTable;
                foreach (DataRow dr in rval.Item1.Rows)
                {
                    BindDT.ImportRow(dr);
                    //DataRow NDR = BindDT.NewRow();
                    //NDR = dr;
                    //BindDT.Rows.Add(NDR);
                }
            }
            else
            {
                BindDT = rval.Item1;
            }
            ViewState["BDT"] = BindDT;
            p_list.DataSource = BindDT;
            p_list.DataBind();

            if (pcount >= rval.Item2)
            {
                lnk_more.Enabled = false;
                lnk_more.Visible = false;
            }
            else
            {
                lnk_more.Enabled = true;
                lnk_more.Visible = true;
            }
        }

        //Session["num"] = ViewState["num"].ToString();
    }
}