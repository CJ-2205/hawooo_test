using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data.SqlClient;
using System.Web.Caching;

public partial class shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LgType = (this.Master as mobile).LgType;

            if (Session["num"] != null)
            {
                ViewState["num"] = Session["num"];
                Session["num"] = null;
            }
            PMS01.Visible = false;
            PMS02.Visible = false;
            pnews.Visible = false;
            photsale.Visible = false;

            //上方廣告區塊
            //bindAD();
            if (Request.QueryString["cid"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["cid"].ToString()))
                {
                    int cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                    hf_cid.Value = cid.ToString();
                    hf_cname.Value = GetCategoryStr(cid).ToString();
                    bindSelProduct(Convert.ToInt32(Request.QueryString["cid"].ToString()));
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }


            if (Request.QueryString["eid"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["eid"].ToString()))
                {
                    int eid = int.Parse(Request.QueryString["eid"].ToString());
                    bindSelProduct(0, eid);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }

            //綁定類別資訊

        }
    }
    string email = "";

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

    private void bindSelProduct(int cid = 0, int eid = 0)
    {

        LangType lg = (this.Master as mobile).LgType;
        // DataTable imgDT = CFacade.GetFac.GetSPIFac.GetImgListBySPI02("S01");
        //DataTable imgDT = CFacade.GetFac.GetSPIFac.GetImgListBySPI02(new List<string> { "S01", "D01", "D02" });
        DataTable imgDT = CFacade.GetFac.GetSPIFac.GetImgListBySPI02(new List<string> { "S01", "D01", "D02", "M01" });
        //if (imgDT.Rows.Count > 0)
        //    imgDT.PrimaryKey = new DataColumn[] { new DataColumn("SPI01") };
        DataTable dt = new DataTable();
        if (cid != 0)
        {
            dt = CFacade.GetFac.GetWPFac.GetSelProductList(8, 1, "AND SPM17=@SPM17", new List<SqlParameter> { SafeSQL.CreateInputParam("SPM17", SqlDbType.Int, cid) }, "S", lg);
        }
        else if (eid != 0)
        {
            dt = CFacade.GetFac.GetWPFac.GetSelProductList(100, 1, "AND SPM01=@SPM01", new List<SqlParameter> { SafeSQL.CreateInputParam("SPM01", SqlDbType.Int, eid) }, lg: lg);
        }

        //criteo
        if (Session["A08"] != null)
        {
            email = Session["A08"].ToString();
        }

        string[] mqry = new string[] { "SPM01", "SPM02" };
        //主表ID
        if (dt.Rows.Count > 0)
        {
            //criteo
            string cstr = criteo.CategoryTag(email, dt);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "productlist", cstr, true);

            DataTable MDT = dt.DefaultView.ToTable(true, mqry);
            rp_event_list.DataSource = MDT;
            rp_event_list.DataBind();

        }

        foreach (RepeaterItem item in rp_event_list.Items)
        {
            string _SPM01 = (item.FindControl("hf_SPM01") as HiddenField).Value.ToString();

            DataRow[] D02 = imgDT.Select("SPI01='" + _SPM01 + "' AND SPI02 IN ('M01','D01')");
            if (D02 != null)
            {
                string SPI01 = "";
                string SPI04 = "";
                var M01 = D02.Where(row => row.Field<string>("SPI02").Equals("M01")).FirstOrDefault();
                if (M01 != null)
                {
                    SPI01 = M01["SPI01"].ToString();
                    SPI04 = M01["SPI04"].ToString();
                }
                else
                {
                    var D01 = D02.Where(row => row.Field<string>("SPI02").Equals("D01")).FirstOrDefault();
                    if (D01 != null)
                    {
                        SPI01 = D01["SPI01"].ToString();
                        SPI04 = D01["SPI04"].ToString();
                    }
                }
                if (SPI01 != "" && SPI04 != "")
                    ((Literal)item.FindControl("lit_title")).Text = "<a href='shop2.aspx?eid=" + SPI01 + "'><img src=\"../images/adimgs/" + SPI04 + "\" style=\"width:100%;\"></a>";
            }

            dt.DefaultView.RowFilter = "SPM01='" + _SPM01 + "'";
            DataTable PDT = dt.DefaultView.ToTable(); //商品TABLE
            Repeater rp = item.FindControl("rp_event_product") as Repeater;
            rp.DataSource = PDT;
            rp.DataBind();
            //DataRow[] D02 = imgDT.Select("SPI01='" + _SPM01 + "' AND SPI02='D01'");
            //if (D02.Length > 0)
            //{
            //    ((Literal)item.FindControl("lit_title")).Text = "<a href='shop2.aspx?eid=" + D02[0]["SPI01"].ToString() + "'><img src=\"../images/adimgs/" + D02[0]["SPI04"].ToString() + "\" style=\"width:100%;\"></a>";
            //}

            //dt.DefaultView.RowFilter = "SPM01='" + _SPM01 + "'";
            //DataTable PDT = dt.DefaultView.ToTable(); //商品TABLE
            //Repeater rp = item.FindControl("rp_event_product") as Repeater;
            //rp.DataSource = PDT;
            //rp.DataBind();
        }
        if (cid != 0)
        {
            if (dt.Rows.Count > 0)
            {
                int classID = int.Parse(dt.Rows[0]["SPM17"].ToString());
                bindInit(classID);
            }
        }
    }
    private void bindInit(int cid)
    {
        //bindClass(cid); //綁定上方類別

        PMS01.Visible = true;
        PMS02.Visible = true;
        pnews.Visible = true;
        photsale.Visible = true;

        DataSet ds = GetMobileShopShow(cid);

        //最新商品
        DataTable SDT = ds.Tables["NEW"];
        rp_news.DataSource = SDT;
        rp_news.DataBind();

        //criteo
        if (SDT.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, SDT);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "newproduct", cstr, true);

        }

        //熱銷商品
        SDT.Clear();
        SDT = ds.Tables["HOT"];
        rp_hot_list.DataSource = SDT;
        rp_hot_list.DataBind();

        if (SDT.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, SDT);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "hotproduct", cstr, true);

        }

        if (ds.Tables.Count > 2)
        {
            //廣告資訊
            SDT.Clear();
            SDT = ds.Tables["AD"];
            SDT.DefaultView.RowFilter = "F02='MS01'";
            DataTable MS01 = SDT.DefaultView.ToTable();
            rp_MS01.DataSource = SDT;
            rp_MS01.DataBind();
            string scriptStr = "";
            if (MS01.Rows.Count <= 0)
            {
                scriptStr += "$('#MS01').css('display','none');";
            }

            DataRow[] MS02 = SDT.Select("F02='MS02'");
            if (MS02.Length > 0)
            {
                lit_MS02.Text = "<a href=\"" + MS02[0]["F04"].ToString() + "\"><img src=\"../images/adimgs/" + MS02[0]["F14"].ToString() + "\"></a>";
            }
            else
            {
                scriptStr += "$('#MS02').css('display','none');";
            }
            if (scriptStr.Length > 0)
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "hiddenAD", scriptStr, true);
        }
    }
    private LangType LgType;

    public DataSet GetMobileShopShow(int parentCID)
    {
        Dictionary<string, SqlCommand> cmdList = new Dictionary<string, SqlCommand>();
        SqlCommand cmd = new SqlCommand();

        //最新商品
        SearchProp prop = new SearchProp();

        prop.LgType = LgType;
        prop.page = 1;
        prop.pcount = 10;
        prop.OrderBy = "ORDER BY NEWID()";
        prop.WhereTxts.Add("WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03=@WPC03)");
        prop.TagType = SearchProp.EmTagType.IMG;
        cmd.CommandText = ProductBL.GetProductSqlTxt(prop);
        cmd.Parameters.Add(SafeSQL.CreateInputParam("WPC03", SqlDbType.Int, parentCID));
        cmdList.Add("NEW", cmd);

        //熱門排行
        prop = new SearchProp();
        prop.page = 1;
        prop.pcount = 10;
        prop.LgType = LgType;
        prop.TagType = SearchProp.EmTagType.IMG;
        prop.OrderBy = "ORDER BY (SELECT COUNT(ORD06) FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORM03 BETWEEN '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "' AND ORD01=WP.WP01) DESC";
        prop.WhereTxts.Add("WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03=@WPC03)");
        cmd = new SqlCommand();
        cmd.CommandText = ProductBL.GetProductSqlTxt(prop);
        cmd.Parameters.Add(SafeSQL.CreateInputParam("WPC03", SqlDbType.Int, parentCID));
        cmdList.Add("HOT", cmd);


        //區塊廣告
        string strSql = "SELECT F01,F02,F03,F04,F05,F14,F16 FROM F WHERE F12=1 AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "' BETWEEN F06 AND F07 AND F02 IN ('MS01','MS02') AND F16=@F16 ORDER BY F08 DESC";
        cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("F16", SqlDbType.Int, parentCID));
        cmd.CommandText = strSql;
        cmdList.Add("AD", cmd);

        DataSet ds = new DataSet();
        ds = SqlDbmanager.queryBySql(cmdList);
        return ds;
    }


    //private void bindAD()
    //{
    //    DataTable dt = CFacade.GetFac.GetFFac.getAdList(new List<string> { "MS01", "MS02" });
    //    if (dt.Rows.Count > 0)
    //    {
    //        string scriptStr = "";
    //        dt.DefaultView.RowFilter = "F02='MS01'";
    //        DataTable MS01 = dt.DefaultView.ToTable();
    //        rp_MS01.DataSource = MS01;
    //        rp_MS01.DataBind();
    //        if (MS01.Rows.Count == 0)
    //        {
    //            scriptStr += "$('#MS01').css('display','none');";
    //        }

    //        DataRow[] MS02 = dt.Select("F02='MS02'"); //單張
    //        if (MS02.Length > 0)
    //        {
    //            lit_MS02.Text = "<a href=\"" + MS02[0]["F04"].ToString() + "\"> <img src=\"" + MS02[0]["F14"].ToString() + "\"></a>";
    //        }
    //        else
    //        {
    //            scriptStr += "$('#MS02').css('display','none');";
    //        }
    //        if (scriptStr.Length > 0)
    //            ScriptManager.RegisterStartupScript(Page, typeof(Page), "hiddenAD", scriptStr, true);
    //    }
    //}
    //private void bindEventImg(int eid)
    //{
    //    string strSql = "SELECT SPI04 FROM SPRODUCTSI WHERE SPI02='M01' AND SPI01=" + eid;
    //    DataTable dt = SqlDbmanager.queryBySql(strSql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        lit_event_img.Text = "<img src=\"http://www.hawooo.com/images/adimgs/" + dt.Rows[0]["SPI04"].ToString() + "\" class=\"am-img-responsive\" />";
    //    }
    //}
    //private void bindClassName(int cid, int bid, int eid)
    //{
    //    if (cid == 0 && bid == 0 && eid == 0)
    //    {
    //        lit_class_name.Text = "全部商品";
    //    }
    //    else
    //    {
    //        string strSql = String.Empty;
    //        if (cid != 0)
    //        {
    //            //取得類別名稱
    //            strSql = "SELECT C06 as CNAME FROM C WHERE C01=" + cid;
    //        }
    //        if (bid != 0)
    //        {
    //            //取得品牌名稱
    //            strSql = "SELECT BA02 as CNAME FROM BA WHERE B01=" + bid;
    //        }
    //        if (eid != 0)
    //        {
    //            //取得活動名稱
    //            strSql = "SELECT SPM02 as CNAME FROM SPRODUCTSM WHERE SPM01=" + eid;
    //            bindEventImg(eid);
    //        }
    //        DataTable dt = SqlDbmanager.queryBySql(strSql);
    //        if (dt.Rows.Count > 0)
    //        {
    //            string classTxt = "";
    //            if (cid != 0)
    //            {
    //                classTxt = "<a href=\"fast.aspx?cid=" + cid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
    //            }
    //            if (bid != 0)
    //            {
    //                classTxt = "<a href=\"fast.aspx?bid=" + bid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
    //            }
    //            if (eid != 0)
    //            {
    //                classTxt = "<a href=\"fast.aspx?eid=" + eid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
    //            }
    //            lit_class_name.Text = classTxt;
    //        }
    //    }
    //}
    //private void bindDT(int cid, int bid, int eid, string stxt = "")
    //{
    //    bindClassName(cid, bid, eid);
    //    int pcount = 10;

    //    if (ViewState["num"] != null)
    //    {
    //        pcount = pcount * Convert.ToInt32(ViewState["num"].ToString());
    //    }
    //    else
    //    {
    //        ViewState["num"] = "1";
    //    }
    //    Session["num"] = ViewState["num"].ToString();
    //    Tuple<DataTable, int> rval = CFacade.UserFac.MShopProducts(cid, bid, eid, pcount, 1, stxt);
    //    p_list.DataSource = rval.Item1;
    //    p_list.DataBind();
    //    if (pcount >= rval.Item2)
    //    {
    //        lnk_more.Visible = false;
    //    }
    //    else
    //    {
    //        lnk_more.Visible = true;
    //    }
    //    //Session["num"] = ViewState["num"].ToString();
    //}
    //private void getEdmList()
    //{
    //    DataTable dt = CFacade.UserFac.GetEdmClass();
    //    StringBuilder sb = new StringBuilder();
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        sb.Append("<li><a href=\"" + dr["EDM10"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["EDM02"].ToString() + "</a></li>");
    //    }
    //    lit_Event_Class.Text = sb.ToString();
    //}
    //private void getSelectList()
    //{
    //    DataTable dt = CFacade.UserFac.GetEventClass();
    //    StringBuilder sb = new StringBuilder();
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        sb.Append("<li><a href=\"shop.aspx?eid=" + dr["SPM01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["SPM02"].ToString() + "</a></li>");
    //    }
    //    lit_select_class.Text = sb.ToString();
    //}
    //private void getBrandsList()
    //{
    //    DataTable dt = CFacade.UserFac.BrandsClassTW();
    //    System.Text.StringBuilder sb = new System.Text.StringBuilder();
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        sb.Append("<li><a href=\"shop.aspx?bid=" + dr["B01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["BA02"].ToString() + "</a></li>");
    //    }
    //    lit_Brand_Class.Text = sb.ToString();
    //}

    private void getHawoooList()
    {
        //DataTable dt = CFacade.UserFac.HawoooClassTW(1);
        //System.Text.StringBuilder sb = new System.Text.StringBuilder();
        //sb.Append("<li><a href=\"shop.aspx\"><i class=\"am-icon-caret-right\"></i>&nbsp;所有商品</a></li>");
        //DataRow[] MDR = dt.Select("C03='0'");
        //foreach (DataRow dr in MDR)
        //{
        //    //sb.Append("<li><a href=\"shop.aspx?cid=" + dr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["C06"].ToString() + "</a></li>");
        //    sb.Append("<li><a href=\"##\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["C06"].ToString() + "</a>");
        //    DataRow[] CDR = dt.Select("C03='" + dr["C01"].ToString() + "'");
        //    sb.Append("<ul>");
        //    sb.Append("<li><a href=\"shop.aspx?cid=" + dr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + "全部商品" + "</a>");
        //    if (CDR.Length > 0)
        //    {
        //        foreach (DataRow cdr in CDR)
        //        {
        //            sb.Append("<li><a href=\"shop.aspx?cid=" + cdr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + cdr["C06"].ToString() + "</a></li>");
        //        }
        //    }
        //    sb.Append("</ul>");
        //    sb.Append("</li>");
        //}
        //lit_Product_Class.Text += sb.ToString();
    }
    private static string GetNum = "1";
    //[WebMethod]
    //public static string Num()
    //{
    //    return GetNum;
    //}
    protected void lnk_more_Click(object sender, EventArgs e)
    {
        //讀取更多
        //if (ViewState["num"] != null)
        //{
        //    ViewState["num"] = Convert.ToInt32(ViewState["num"].ToString()) + 1;

        //    GetNum = ViewState["num"].ToString();
        //    int eid = 0;
        //    int cid = 0;
        //    int bid = 0;
        //    if (Request.QueryString["eid"] != null)
        //    {
        //        eid = Convert.ToInt32(Request.QueryString["eid"].ToString());
        //    }
        //    if (Request.QueryString["cid"] != null)
        //    {
        //        cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
        //    }
        //    if (Request.QueryString["bid"] != null)
        //    {
        //        bid = Convert.ToInt32(Request.QueryString["bid"].ToString());
        //    }
        //    bindDT(cid, bid, eid);
        //}
    }
}