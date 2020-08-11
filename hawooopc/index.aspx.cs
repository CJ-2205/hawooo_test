using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string email = "";
            if (Session["A08"] != null)
            {
                email = Session["A08"].ToString();
            }
            string cstr = criteo.HomepageTag(email);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "hometag", cstr, true);


            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (Session["desktop"] == null)
            {
                if (ismobile)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/index.aspx'", true);
                }
            }

            productBL.PLgType = (this.Master as user_user).LgType;

            bindBrandLogo();
            bindClassProduct();
            bindAD();
            bindChildClassStr();
            bindGroupProdcut();
            bindLikeProduct();
            bindArticle();
        }
    }
    private void bindArticle()
    {
        DataTable ArtClassDT = new DataTable();
        ArtClassDT = CFacade.GetFac.GetATCAFac.GetParentATCA();
        rp_article_class_tab.DataSource = ArtClassDT;
        rp_article_class_tab.DataBind();
        rp_article_class.DataSource = ArtClassDT;
        rp_article_class.DataBind();
        if (ArtClassDT.Rows.Count > 0)
        {
            List<int> CIDLIST = ArtClassDT.Rows.Cast<DataRow>().Select(row => int.Parse(row["ATCA01"].ToString())).ToList();
            DataSet ds = CFacade.GetFac.GetATCBFac.GetArticleList(CIDLIST, 4);
            for (int i = 0; i < rp_article_class.Items.Count; i++)
            {
                if (ds.Tables.Count > i)
                {
                    (rp_article_class.Items[i].FindControl("rp_content") as Repeater).DataSource = ds.Tables[i];
                    (rp_article_class.Items[i].FindControl("rp_content") as Repeater).DataBind();
                }
            }
        }
    }
    private ProductBL productBL = new ProductBL();
    private void bindLikeProduct()
    {
        //DataTable dt = CFacade.GetFac.GetWPFac.GetProductList(1, null, 10, "ORDER BY NEWID() DESC");
        //DataTable dt = ProductBL.GetGuessYouLike();

        DataTable dt = productBL.GetGuessYouLike(10);
        rp_like_product.DataSource = dt;
        rp_like_product.DataBind();
    }
    private void bindGroupProdcut()
    {
        //DataTable dt = CFacade.GetFac.GetWPFac.GetProductList(3, null, 4, "ORDER BY WP18 DESC", null, false, new List<string> { "WP09", "WP10" });
        //rp_group.DataSource = dt;
        //rp_group.DataBind();
        //List<string> innTB = new List<string>();
        //innTB.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
        //innTB.Add("INNER JOIN SPRODUCTSM ON SPM01=SPD01");
        //List<string> wStr = new List<string>();
        //wStr.Add("SPM01=@SPM01");

        //string strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(1, wStr, 5, "ORDER BY NEWID()", innTB, false, new List<string> { "SPM02", "SPM08" });
        //int id = 317;
        //SqlCommand cmd = SqlExtension.getSqlCmd(strSql, new PropertyVal() { pName = "SPM01", pType = typeof(int), pValue = id.ToString() });
        //DataTable dt = SqlDbmanager.queryBySql(cmd);

        DataTable dt = productBL.GetSelectProduct(5, 317, "ORDER BY NEWID()");
        rp_group.DataSource = dt;
        rp_group.DataBind();
    }
    /// <summary>
    /// 綁定區塊類別
    /// </summary>
    private void bindChildClassStr()
    {
        //if (Cache["ClassDT"] != null)
        //{
        //    DataTable dt = Cache["ClassDT"] as DataTable;

        //}
        DataTable dt = new DataTable();
        switch ((this.Master as user_user).LgType)
        {
            case LangType.zh:
                {
                    dt = CacheHelper.GetCache("ZhClassDT") as DataTable;
                    break;
                }
            case LangType.en:
                {
                    dt = CacheHelper.GetCache("EnClassDT") as DataTable;
                    break;
                }
        }

        if (dt.Rows.Count > 0)
        {
            DataTable bindDT = new DataTable();
            //16 時尚彩妝
            dt.DefaultView.RowFilter = "C03='16'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_時尚彩妝_class.DataSource = bindDT;
            rp_時尚彩妝_class.DataBind();

            //42 美體保養
            dt.DefaultView.RowFilter = "C03='42'";
            DataTable dt2 = dt.DefaultView.ToTable();
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_美體保養_class.DataSource = bindDT;
            rp_美體保養_class.DataBind();


            //43 保健食品
            dt.DefaultView.RowFilter = "C03='43'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_保健食品_class.DataSource = bindDT;
            rp_保健食品_class.DataBind();


            //44 服裝內衣
            dt.DefaultView.RowFilter = "C03='44'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_服裝內衣_class.DataSource = bindDT;
            rp_服裝內衣_class.DataBind();


            //45 流行美鞋
            dt.DefaultView.RowFilter = "C03='45'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_流行美鞋_class.DataSource = bindDT;
            rp_流行美鞋_class.DataBind();

            //46 包包配件
            dt.DefaultView.RowFilter = "C03='46'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_包包配件_class.DataSource = bindDT;
            rp_包包配件_class.DataBind();


            //47 品味美食
            dt.DefaultView.RowFilter = "C03='47'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_品味美食_class.DataSource = bindDT;
            rp_品味美食_class.DataBind();


            //48 生活用品
            dt.DefaultView.RowFilter = "C03='48'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_生活用品_class.DataSource = bindDT;
            rp_生活用品_class.DataBind();


            //49 媽咪寶貝
            dt.DefaultView.RowFilter = "C03='49'";
            bindDT = dt.DefaultView.ToTable();
            if (bindDT.Rows.Count > 4)
            {
                bindDT = bindDT.Rows.Cast<DataRow>().Take(4).CopyToDataTable();
            }
            rp_寶貝媽咪_class.DataSource = bindDT;
            rp_寶貝媽咪_class.DataBind();
        }
    }

    private void bindClassProduct()
    {

        DataTable dt = productBL.GetProductGroupByClass(12);
        //DataTable dt = CFacade.GetFac.GetWPFac.GetProductListGroupByClass(12, 1, "ORDER BY WP18 DESC");

        if (dt.Rows.Count > 0)
        {
            DataTable bindDT = new DataTable();
            //16 時尚彩妝
            dt.DefaultView.RowFilter = "C01='16'";
            bindDT = dt.DefaultView.ToTable();
            rp_時尚彩妝.DataSource = bindDT;
            rp_時尚彩妝.DataBind();
            setRepeaterFormat(rp_時尚彩妝, 6);

            //42 美體保養
            dt.DefaultView.RowFilter = "C01='42'";
            bindDT = dt.DefaultView.ToTable();
            rp_美體保養.DataSource = bindDT;
            rp_美體保養.DataBind();
            setRepeaterFormat(rp_美體保養, 6);

            //43 保健食品
            dt.DefaultView.RowFilter = "C01='43'";
            bindDT = dt.DefaultView.ToTable();
            rp_保健食品.DataSource = bindDT;
            rp_保健食品.DataBind();
            setRepeaterFormat(rp_保健食品, 6);

            //44 服裝內衣
            dt.DefaultView.RowFilter = "C01='44'";
            bindDT = dt.DefaultView.ToTable();
            rp_服裝內衣.DataSource = bindDT;
            rp_服裝內衣.DataBind();
            setRepeaterFormat(rp_服裝內衣, 6);

            //45 流行美鞋
            dt.DefaultView.RowFilter = "C01='45'";
            bindDT = dt.DefaultView.ToTable();
            rp_流行美鞋.DataSource = bindDT;
            rp_流行美鞋.DataBind();
            setRepeaterFormat(rp_流行美鞋, 6);

            //46 包包配件
            dt.DefaultView.RowFilter = "C01='46'";
            bindDT = dt.DefaultView.ToTable();
            rp_包包配件.DataSource = bindDT;
            rp_包包配件.DataBind();
            setRepeaterFormat(rp_包包配件, 6);

            //47 品味美食
            dt.DefaultView.RowFilter = "C01='47'";
            bindDT = dt.DefaultView.ToTable();
            rp_品味美食.DataSource = bindDT;
            rp_品味美食.DataBind();
            setRepeaterFormat(rp_品味美食, 6);

            //48 生活用品
            dt.DefaultView.RowFilter = "C01='48'";
            bindDT = dt.DefaultView.ToTable();
            rp_生活用品.DataSource = bindDT;
            rp_生活用品.DataBind();
            setRepeaterFormat(rp_生活用品, 6);

            //49 媽咪寶貝
            dt.DefaultView.RowFilter = "C01='49'";
            bindDT = dt.DefaultView.ToTable();
            rp_寶貝媽咪.DataSource = bindDT;
            rp_寶貝媽咪.DataBind();
            setRepeaterFormat(rp_寶貝媽咪, 6);
        }
    }

    private void bindAD()
    {
        List<string> adIDS = new List<string>();
        adIDS.Add("I01");
        adIDS.Add("I02");
        adIDS.Add("I09");
        adIDS.Add("I10");
        adIDS.Add("I11");
        adIDS.Add("YOUTUBE");
        DataTable dt = CFacade.GetFac.GetFFac.getAdList(adIDS);

        //輪播圖片區塊
        dt.DefaultView.RowFilter = "F02='I01'";
        DataTable I01 = dt.DefaultView.ToTable();
        rp_I01.DataSource = I01;
        rp_I01.DataBind();

        //上方右邊圖片
        dt.DefaultView.RowFilter = "F02='I02'";
        DataTable I02 = dt.DefaultView.ToTable();
        rp_sel_event.DataSource = I02;
        rp_sel_event.DataBind();
        setRepeaterFormat2(rp_sel_event, 4);
        //lit_I02.Text = "<a href='" + I02[0]["F04"].ToString() + "'><img src='../images/adimgs/" + I02[0]["F14"].ToString() + "'></a>";

        //中間上方Banner
        DataRow[] I10 = dt.Select("F02='I10'");
        if (I10.Length > 0)
            lit_I10.Text = "<a href='" + I10[0]["F04"].ToString() + "'><img src='../images/adimgs/" + I10[0]["F14"].ToString() + "'></a>";

        //YOUTUBE
        dt.DefaultView.RowFilter = "F02='YOUTUBE'";
        DataTable YOUTUBE = dt.DefaultView.ToTable();
        rp_YOUTUBE.DataSource = YOUTUBE;
        rp_YOUTUBE.DataBind();

        //各類別廣告
        DataRow[] _Class = dt.Select("F16='43'  AND F02='I09'");
        if (_Class.Length > 0)
            lit_保健食品_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='46' AND F02='I09'");
        if (_Class.Length > 0)
            lit_包包配件_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='47' AND F02='I09'");
        if (_Class.Length > 0)
            lit_品味美食_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='49' AND F02='I09'");
        if (_Class.Length > 0)
            lit_寶貝媽咪_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='16' AND F02='I09'");
        if (_Class.Length > 0)
            lit_時尚彩妝_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='44' AND F02='I09'");
        if (_Class.Length > 0)
            lit_服裝內衣_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='45' AND F02='I09'");
        if (_Class.Length > 0)
            lit_流行美鞋_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='48' AND F02='I09'");
        if (_Class.Length > 0)
            lit_生活用品_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        _Class = dt.Select("F16='42' AND F02='I09'");
        if (_Class.Length > 0)
            lit_美體保養_AD.Text = "<a href='" + _Class[0]["F04"].ToString() + "'><img src='../images/adimgs/" + _Class[0]["F14"].ToString() + "'></a>";

        //首頁文章
        DataRow[] I11 = dt.Select("F02='I11'");
        if (I11.Length > 0)
            lit_I11.Text = "<a href='" + I11[0]["F04"].ToString() + "'><img src='../images/adimgs/" + I11[0]["F14"].ToString() + "'></a>";
    }
    private void setRepeaterFormat(Repeater rp, int count)
    {

        for (int i = 0; i < rp.Items.Count; i++)
        {
            if (i == 0 || (i % count) == 0)
            {
                (rp.Items[i].FindControl("lit_start_str") as Literal).Text = @"<li class=""more-products-slider-page""><ul class=""am-avg-sm-3 p-0"">";
            }

            if ((i == rp.Items.Count - 1) || (i % (count + 1) == count - 1))
            {
                (rp.Items[i].FindControl("lit_end_str") as Literal).Text = @"</ul></li>";
            }
        }
    }
    private void setRepeaterFormat2(Repeater rp, int count)
    {

        for (int i = 0; i < rp.Items.Count; i++)
        {
            if (i == 0 || (i % count) == 0)
            {
                (rp.Items[i].FindControl("lit_start_str") as Literal).Text = @"<li class=""more-products-slider-page""><ul class=""am-avg-sm-4 am-cf"">";
            }

            if ((i == rp.Items.Count - 1) || (i % (count + 1) == count - 1))
            {
                (rp.Items[i].FindControl("lit_end_str") as Literal).Text = @"</ul></li>";
            }
        }
    }
    private void bindBrandLogo()
    {
        DataTable dt = new DataTable();
        //dt = CFacade.GetFac.GetBFac.GetBrandLogo(19);
        if (Cache["IndexLogo"] == null)
        {
            dt = CFacade.GetFac.GetBFac.GetBrandLogo(19);
            Cache.Insert("IndexLogo", dt, null, DateTime.Now.AddHours(2), TimeSpan.Zero, CacheItemPriority.High, null);
        }
        else
        {
            dt = Cache["IndexLogo"] as DataTable;
        }
        rp_brand_logo.DataSource = dt;
        rp_brand_logo.DataBind();
    }

    protected void rp_group_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //DateTime stime = DateTime.Now;
        //DateTime etime = Convert.ToDateTime((e.Item.FindControl("hf_etime") as HiddenField).Value);
        //double dtime = DateDiff(stime, etime);
        //string WP01 = (e.Item.FindControl("hf_WP01") as HiddenField).Value;
        //string d = "d" + WP01;
        //string h = "h" + WP01;
        //string m = "m" + WP01;
        //string s = "s" + WP01;
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "set" + WP01, "setTime(" + dtime + "," + WP01 + "," + d + "," + h + "," + m + "," + s + ");", true);
    }
    public static double DateDiff(DateTime stime, DateTime etime)
    {
        TimeSpan ts = etime - stime;
        return ts.TotalSeconds;
    }
}