using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_fast : System.Web.UI.Page
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
            getHawoooList();
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
            if (hDT == false)
            {
                bindDT(0, 0, 0);
            }
        }
    }
    private void bindEventImg(int eid)
    {
        string strSql = "SELECT SPI04 FROM SPRODUCTSI WHERE SPI02='M01' AND SPI01=" + eid;
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        if (dt.Rows.Count > 0)
        {
            lit_event_img.Text = "<img src=\"http://www.hawooo.com/images/adimgs/" + dt.Rows[0]["SPI04"].ToString() + "\" class=\"am-img-responsive\" />";
        }
    }
    private void bindClassName(int cid, int bid, int eid)
    {
        if (cid == 0 && bid == 0 && eid == 0)
        {
            lit_class_name.Text = "<a href=\"fast.aspx\">全部商品</a>";
        }
        else
        {
            string strSql = String.Empty;

            if (cid != 0)
            {
                //取得類別名稱
                strSql = "SELECT C06 as CNAME FROM C WHERE C01=" + cid;
            }
            if (bid != 0)
            {
                //取得品牌名稱
                strSql = "SELECT B02 as CNAME FROM B WHERE B01=" + bid;
            }
            if (eid != 0)
            {
                //取得活動名稱
                strSql = "SELECT SPM02 as CNAME FROM SPRODUCTSM WHERE SPM01=" + eid;
                bindEventImg(eid);
            }
            DataTable dt = SqlDbmanager.queryBySql(strSql);
            if (dt.Rows.Count > 0)
            {
                string classTxt = "";
                if (cid != 0)
                {
                    classTxt = "<a href=\"fast.aspx?cid=" + cid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                }
                if (bid != 0)
                {
                    classTxt = "<a href=\"fast.aspx?bid=" + bid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                }
                if (eid != 0)
                {
                    classTxt = "<a href=\"fast.aspx?eid=" + eid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                }
                lit_class_name.Text = classTxt;
            }
        }
    }
    private void bindDT(int cid, int bid, int eid)
    {

        bindClassName(cid, bid, eid);
        int pcount = 10;

        if (ViewState["num"] != null)
        {
            pcount = pcount * Convert.ToInt32(ViewState["num"].ToString());
        }
        else
        {
            ViewState["num"] = "1";
        }
        Session["num"] = ViewState["num"].ToString();
        Tuple<DataTable, int> rval = CFacade.UserFac.MShopProducts(cid, bid, eid, pcount, 2);
        p_list.DataSource = rval.Item1;
        p_list.DataBind();
        if (pcount >= rval.Item2)
        {
            lnk_more.Visible = false;
        }
        else
        {
            lnk_more.Visible = true;
        }
    }



    private void getHawoooList()
    {
        DataTable dt = CFacade.UserFac.HawoooClassTW(2);
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<li><a href=\"fast.aspx\"><i class=\"am-icon-caret-right\"></i>&nbsp;所有商品</a></li>");
        foreach (DataRow dr in dt.Rows)
        {
            sb.Append("<li><a href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["C06"].ToString() + "</a></li>");
        }
        lit_Hawooo_Class.Text = sb.ToString();
    }
    private static string GetNum = "1";

    [WebMethod]
    public static string Num()
    {
        return GetNum;
    }
    protected void lnk_more_Click(object sender, EventArgs e)
    {
        //讀取更多
        if (ViewState["num"] != null)
        {
            ViewState["num"] = Convert.ToInt32(ViewState["num"].ToString()) + 1;
            GetNum = ViewState["num"].ToString();
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
}