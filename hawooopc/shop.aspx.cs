using hawooo;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_shop : Compress.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;

            bool hDT = false;
            int p = 1; //頁數
            if (Request.QueryString["page"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["page"].ToString()))
                {
                    p = Convert.ToInt32(Request.QueryString["page"]);
                }
            }

            //商品類別
            int cid = 0;
            if (Request.QueryString["cid"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["cid"].ToString()))
                {
                    cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                    hf_cid.Value = cid.ToString();
                    hf_cname.Value = GetCategoryStr(cid).ToString();
                    if (Request.QueryString["eid"] == null)
                    {
                        hDT = true;
                        if (Request.QueryString["type"] == null)
                            BindList(0, cid, 0, "", p);
                    }

                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            //else
            //{
            //    Response.Redirect("index.aspx");
            //}



            int i = 0;
            if (Request.QueryString["eid"] != null)
            {
                //shopbar.Visible = false;
                if (int.TryParse(Request.QueryString["eid"], out i))
                {
                    hDT = true;
                    BindList(0, 0, Convert.ToInt32(Request.QueryString["eid"].ToString()), "", p);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }

            if (Request.QueryString["bid"] != null)
            {
                //品牌商品列表
                if (int.TryParse(Request.QueryString["bid"], out i))
                {
                    hDT = true;
                    BindList(Convert.ToInt32(Request.QueryString["bid"].ToString()), 0, 0, "", p);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }


            if (Request.QueryString["gid"] != null)
            {
                Guid g;
                if (Guid.TryParse(Request.QueryString["gid"], out g))
                {
                    hDT = true;
                    BindList(0, 0, 0, "", p, Request.QueryString["gid"].ToString());
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            if (Request.QueryString["type"] != null)
            {
                if (Request.QueryString["type"].ToString().Equals("new"))
                {
                    hDT = true;
                    BindList(0, cid, 0, "new", p);
                }
            }
            if (hDT.Equals(false))
            {
                BindList(0, 0, 0, "", p);
            }
        }
    }

    private string GetCategoryStr(int cid)
    {
        string name = "";
        string strSql = "SELECT C06 FROM C WHERE C01=@CID";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, cid));
        cmd.CommandText = strSql;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            name = dt.Rows[0]["C06"].ToString();
        }
        return name;
    }
    private void BindSortTxt(LangType lgType)
    {
        switch (lgType)
        {
            case LangType.en:
                {
                    foreach (ListItem item in ddlSortList.Items)
                    {
                        switch (item.Value.ToString())
                        {
                            case "0":
                                {
                                    item.Text = "Default";
                                    break;
                                }
                            case "1":
                                {
                                    item.Text = "Best Sellers";
                                    break;
                                }
                            case "2":
                                {
                                    item.Text = "Latest Product";
                                    break;
                                }
                            case "3":
                                {
                                    item.Text = "Price:Low to High";
                                    break;
                                }
                            case "4":
                                {
                                    item.Text = "Price:High to Low";
                                    break;
                                }
                        }
                    }
                    break;
                }
            case LangType.zh:
                {
                    foreach (ListItem item in ddlSortList.Items)
                    {
                        switch (item.Value.ToString())
                        {
                            case "0":
                                {
                                    item.Text = "預設排序";
                                    break;
                                }
                            case "1":
                                {
                                    item.Text = "熱門程度優先";
                                    break;
                                }
                            case "2":
                                {
                                    item.Text = "最新上架優先";
                                    break;
                                }
                            case "3":
                                {
                                    item.Text = "價格由低至高";
                                    break;
                                }
                            case "4":
                                {
                                    item.Text = "價格由高至低";
                                    break;
                                }
                        }
                    }
                    break;
                }
        }
    }

    private LangType LgType;
    private void GetClassName(int bid, int cid, int eid, string gid)
    {

        LgType = (LangType)ViewState["LG"];
        lit_event_img.Text = "";
        if (bid != 0)
        {
            DataTable dt = new DataTable();
            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT ");
            switch (LgType)
            {
                case LangType.en:
                    sb.Append("(CASE WHEN BA02_EN='' THEN BA02 ELSE BA02_EN END) as BA02,");
                    break;
                case LangType.zh:
                    sb.Append("BA02,");
                    break;
            }

            sb.Append("B01 ");
            sb.Append("FROM BA WHERE B01=@B01");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.Add(SafeSQL.CreateInputParam("B01", SqlDbType.Int, bid));
            dt = SqlDbmanager.queryBySql(cmd);
            if (dt.Rows.Count > 0)
            {
                lit_class.Text = "<li><a href=\"shop.aspx\">" + (LgType.Equals(LangType.en) ? "Brand Category" : "品牌類別") + "</a></li>";
                lit_class.Text += "<li><a href=\"shop.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "\">" + dt.Rows[0]["BA02"].ToString() + "</a></li>";
            }
        }
        else if (cid != 0)
        {

            DataTable dt = new DataTable();
            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT ");
            switch (LgType)
            {
                case LangType.en:
                    sb.Append("(CASE WHEN C06_EN='' THEN C06 ELSE C06_EN END) as C06,");
                    break;
                case LangType.zh:
                    sb.Append("C06,");
                    break;
            }
            sb.Append("C01 ");
            sb.Append("FROM C WHERE C01=@C01");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.Add(SafeSQL.CreateInputParam("C01", SqlDbType.Int, cid));
            dt = SqlDbmanager.queryBySql(cmd);
            if (dt.Rows.Count > 0)
            {
                lit_class.Text = "<li><a href=\"shop.aspx\">" + (LgType.Equals(LangType.en) ? "Product Category" : "商品類別") + "</a></li>";
                lit_class.Text += "<li><a href=\"shop.aspx?cid=" + dt.Rows[0]["C01"] + "\">" + dt.Rows[0]["C06"] + "</a></li>";
            }
        }
        else if (eid != 0)
        {
            DataTable dt = new DataTable();
            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT ");
            sb.Append("SPM01,");
            switch (LgType)
            {
                case LangType.en:
                    sb.Append("(CASE WHEN SPM20='' THEN SPM02 ELSE SPM20 END) as SPM02,");
                    break;
                case LangType.zh:
                    sb.Append("SPM02,");
                    break;
            }
            sb.Append("SPI02,");
            sb.Append("SPI04 ");
            sb.Append("FROM SPRODUCTSM RIGHT JOIN SPRODUCTSI ON SPI01=SPM01 WHERE SPM01=@SPM01 ");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM01", SqlDbType.Int, eid));

            if (dt.Rows.Count > 0)
            {

                lit_class.Text = "<li><a href=\"shop.aspx\">" + (LgType.Equals(LangType.en) ? "Event Category" : "活動類別") + "</a></li>";
                lit_class.Text += "<li><a href=\"shop.aspx?cid=" + dt.Rows[0]["SPM01"] + "\">" + dt.Rows[0]["SPM02"] + "</a></li>";
                DataRow[] sDR = dt.Select("SPI02='D01'");
                if (sDR.Length > 0)
                {
                    lit_event_img.Text = "<img src=\"../images/adimgs/" + dt.Rows[0]["SPI04"] + "\" style=\"max-width:950px;padding-bottom:10px\" />";
                }
            }
        }
        else if (gid != "")
        {
            DataTable dt = new DataTable();
            StringBuilder sb = new StringBuilder();

            if (FieldCheck.isGuid(gid))
            {
                sb.Append("SELECT ");
                sb.Append("GE01,");
                switch (LgType)
                {
                    case LangType.en:
                        sb.Append("(CASE WHEN GE10_EN='' THEN GE10 ELSE GE10_EN END) as GE10,");
                        break;
                    case LangType.zh:
                        sb.Append("GE10,");
                        break;
                }
                sb.Append("FROM GiftEvent WHERE GE01=@GE01 ");
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sb.ToString();
                cmd.Parameters.Add(SafeSQL.CreateInputParam("GE01", SqlDbType.VarChar, gid));

                if (dt.Rows.Count > 0)
                {
                    lit_class.Text = "<li><a href=\"shop.aspx?gid=" + dt.Rows[0]["GE01"] + "\">" + (LgType.Equals(LangType.en) ? "Event" : "活動") + "：" + dt.Rows[0]["GE10"] + "</a></li>";
                }
            }


            //if (Guid.TryParse(gid, out g))
            //{

            //    if (dt.Rows.Count > 0)
            //    {
            //        lit_class.Text = "<li><a href=\"shop.aspx?gid=" + dt.Rows[0]["GE01"].ToString() + "\">活動：" + dt.Rows[0]["GE10"].ToString() + "</a></li>";
            //    }
            //}
        }
        else
        {
            lit_class.Text = "<li><a href=\"shop.aspx\">" + (LgType.Equals(LangType.en) ? "All Products" : "全部商品") + "</a></li>";
        }
    }

    private string email = "";
    //private enum sortType { 熱門程度優先, 最新上架優先, 價格由低至高, 價格由高至低 };
    //private enum sortOrder { ASC, DESC };
    private void BindList(int bid, int cid, int eid, string searchTxt, int pindex, string gid = "")
    {
        GetClassName(bid, cid, eid, gid);
        int pcount = 40;

        ShopBL.ShopProp sprop = new ShopBL.ShopProp();
        sprop.sortTxt = " WP18 DESC,WP11 DESC ";
        sprop.lgType = (this.Master as user_user).LgType;
        ddlSortList.SelectedValue = "0";
        if (Request.QueryString["order"] != null)
        {
            switch (Request.QueryString["order"].ToString())
            {
                case "1":
                    {
                        //熱門程度優先
                        ddlSortList.SelectedValue = "1";
                        sprop.sortTxt = " WP27 DESC ";
                        break;
                    }
                case "2":
                    {
                        //最新上架優先
                        ddlSortList.SelectedValue = "2";
                        sprop.sortTxt = " WP.WP11 DESC ";
                        break;
                    }
                case "3":
                    {
                        //價格由高至低
                        ddlSortList.SelectedValue = "3";
                        sprop.sortTxt = " WPA06 ASC ";
                        break;
                    }
                case "4":
                    {
                        //價格由低至高    
                        ddlSortList.SelectedValue = "4";
                        sprop.sortTxt = " WPA06 DESC ";
                        break;
                    }
            }
        }


        //string stxt = "";
        if (searchTxt.Equals("new"))
        {
            //stxt = " WP11 BETWEEN '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
            sprop.sortTxt = " WP11 DESC ";
        }

        //Tuple<DataTable, int> gTup = CFacade.UserFac.GetShopProducts(cid, bid, sorStr, stxt, pindex, pcount, eid, gid);
        sprop.page = pindex;
        sprop.pcount = pcount;
        //string money = "";
        sprop.moneyRange = "";
        if (Request.QueryString["money"] != null)
        {
            sprop.moneyRange = Request.QueryString["money"].ToString();
        }

        if (Request.QueryString["tag"] != null)
        {
            sprop.tag = Request.QueryString["tag"].ToString();
        }

        sprop.eventID = eid;
        sprop.giftEventID = gid;
        sprop.webEventID = "";
        sprop.classId = cid;
        //DataTable dt = CFacade.UserFac.GetShopList2(cid, bid, sorStr, scount, pcount, eid, gid, money, tag);
        DataTable dt = ShopBL.GetShopProducts(sprop);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();

        //criteo
        if (Session["A08"] != null)
        {
            email = Session["A08"].ToString();
        }
        if (dt.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, dt);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "productlist", cstr, true);
        }

        if (dt.Rows.Count > 0)
        {
            lit_msg.Text = "";
            int totalPage = Convert.ToInt32(dt.Rows[0]["ASUM"].ToString());

            List<string> qStr = new List<string>();


            lit_page.Text = PbClass.GetPageNum2(totalPage, pcount);
        }
        else
        {
            lit_page.Text = "";
            lit_msg.Text = "No products..";
        }

        BindSortTxt(sprop.lgType);
    }
    //private void BindList(int bid, int cid, int eid, string searchTxt, int pindex, string gid = "")
    //{
    //    getClassName(bid, cid, eid, gid);
    //    int pcount = 40;


    //    string sorStr = " WP18 DESC,WP11 DESC ";

    //    ddl_product_list.SelectedValue = "0";
    //    if (Request.QueryString["order"] != null)
    //    {
    //        switch (Request.QueryString["order"].ToString())
    //        {
    //            case "1":
    //                {
    //                    //熱門程度優先
    //                    ddl_product_list.SelectedValue = "1";
    //                    sorStr = " WP27 DESC ";
    //                    break;
    //                }
    //            case "2":
    //                {
    //                    //最新上架優先
    //                    ddl_product_list.SelectedValue = "2";
    //                    sorStr = " WP.WP11 DESC ";
    //                    break;
    //                }
    //            case "3":
    //                {
    //                    //價格由高至低
    //                    ddl_product_list.SelectedValue = "3";
    //                    sorStr = " WPA06 ASC ";
    //                    break;
    //                }
    //            case "4":
    //                {
    //                    //價格由低至高    
    //                    ddl_product_list.SelectedValue = "4";
    //                    sorStr = " WPA06 DESC ";
    //                    break;
    //                }
    //        }
    //    }


    //    string stxt = "";
    //    if (searchTxt.Equals("new"))
    //    {
    //        stxt = " WP11 BETWEEN '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
    //        sorStr = " WP11 DESC ";
    //    }

    //    //Tuple<DataTable, int> gTup = CFacade.UserFac.GetShopProducts(cid, bid, sorStr, stxt, pindex, pcount, eid, gid);
    //    int showp = (pindex - 1) * pcount;

    //    string money = "";
    //    if (Request.QueryString["money"] != null)
    //    {
    //        money = Request.QueryString["money"].ToString();
    //    }
    //    string tag = "";
    //    if (Request.QueryString["tag"] != null)
    //    {
    //        tag = Request.QueryString["tag"].ToString();
    //    }
    //    int scount = (pindex - 1) * pcount;
    //    DataTable dt = CFacade.UserFac.GetShopList2(cid, bid, sorStr, scount, pcount, eid, gid, money, tag);
    //    rp_product_list.DataSource = dt;
    //    rp_product_list.DataBind();

    //    //criteo
    //    if (Session["A08"] != null)
    //    {
    //        email = Session["A08"].ToString();
    //    }
    //    if (dt.Rows.Count > 0)
    //    {
    //        string cstr = criteo.CategoryTag(email, dt);
    //        Page.ClientScript.RegisterStartupScript(typeof(Page), "productlist", cstr, true);
    //    }

    //    ////appier 開始
    //    //if (cid != 0)
    //    //{
    //    //    //帶入appier資料
    //    //    string _key = cid.ToString();
    //    //    string _idList = "" + string.Join("','", dt.Rows.OfType<DataRow>().Select(r => r["WP01"].ToString()).Take(10)) + "";
    //    //    ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "send3", "sendAppierClassProducts('" + _key + "',['" + _idList + "']);", true);
    //    //}
    //    if (dt.Rows.Count > 0)
    //    {
    //        lit_msg.Text = "";
    //        int p = Convert.ToInt32(dt.Rows[0]["ASUM"].ToString());

    //        List<string> qStr = new List<string>();

    //        if (bid != 0)
    //        {
    //            qStr.Add("bid=" + bid);
    //        }
    //        if (cid != 0)
    //        {
    //            qStr.Add("cid=" + cid);
    //        }
    //        if (eid != 0)
    //        {
    //            qStr.Add("eid=" + eid);
    //        }
    //        if (gid != "")
    //        {
    //            qStr.Add("gid=" + gid);
    //        }
    //        if (Request.QueryString["money"] != null)
    //        {
    //            qStr.Add("money=" + Request.QueryString["money"].ToString());

    //        }
    //        if (searchTxt.Equals("new"))
    //        {
    //            qStr.Add("type=new");
    //        }
    //        if (Request.QueryString["order"] != null)
    //        {
    //            qStr.Add("order=" + Request.QueryString["order"].ToString());
    //        }
    //        if (Request.QueryString["tag"] != null)
    //        {
    //            qStr.Add("tag=" + Request.QueryString["tag"].ToString());
    //        }
    //        lit_page.Text = PbClass.GetPageNum(p, 40, qStr);
    //    }
    //    else
    //    {
    //        lit_page.Text = "";
    //        lit_msg.Text = "目前無相關商品";
    //    }
    //}
    protected void lnk_like_Click(object sender, EventArgs e)
    {
        //if (Session["A01"] != null)
        //{
        //    RepeaterItem ritem = (RepeaterItem)((Control)sender).NamingContainer;
        //    int _pid = Convert.ToInt32(((HiddenField)ritem.FindControl("hf_WP01")).Value);
        //    AA objAA = new AA();
        //    objAA.A01 = Convert.ToInt32(Session["A01"].ToString());
        //    objAA.WP01 = _pid;
        //    objAA.AA01 = Guid.NewGuid().ToString();
        //    objAA.AA02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        //    objAA.AA03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        //    objAA.AA04 = 1;
        //    bool rval = CFacade.GetFac.GetAAFac.SaveTrack(objAA);
        //    if (rval)
        //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤成功');", true);
        //    else
        //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤失敗');", true);
        //}
        //else
        //{
        //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin();", true);
        //}

        //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + _pid + "');", true);
    }
    protected void rp_product_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager script = ScriptManager.GetCurrent(this.Page);
        LinkButton lnkBtn = e.Item.FindControl("lnk_like") as LinkButton;
        if (lnkBtn != null)
        {
            script.RegisterAsyncPostBackControl(lnkBtn);
        }
    }

    protected void ddlSortList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string[] rurl = Request.QueryString.ToString().Split('&');
        string _url = "shop.aspx?order=" + ddlSortList.SelectedValue.ToString() + "";
        foreach (string s in rurl)
        {
            string _p = s.Split('=')[0];
            if (!_p.Equals("order"))
            {
                _url += "&" + s.ToString();
            }
        }
        Response.Redirect(_url.Trim('&'));
    }
}