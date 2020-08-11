using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_static_200630pds : System.Web.UI.Page
{
    public string cacheVersion = "2";
    public Dictionary<string, dynamic> optionHotDeal = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionValueBuy = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionHlBrandsArea1 = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionHlBrandsArea2 = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionHlBrandsArea3 = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionHlBrandsArea4 = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionHlBrandsArea5 = new Dictionary<string, dynamic>();

    //protected void TestingDt()
    //{
    //    //List<long> excludeList = new List<long> { 14799 };
    //    List<long> excludeList = new List<long>();

    //    DataTable dt1 = GetDataDt(777);
    //    DataTable dt2 = GetDataDt(777);
    //    DataTable dt2New = new DataTable();

    //    // Datatype of excludeListRaw is IEnumerable<DataRow>.
    //    var excludeListRaw = from dr in dt1.AsEnumerable()
    //                      where dr.Field<long>("WP01") == 14801
    //                      select dr;
        
    //    foreach (DataRow row in excludeListRaw)
    //    {
    //        excludeList.Add(row.Field<long>("WP01"));
    //    }

    //    var dt2NewRaw = from dr in dt2.AsEnumerable()
    //                where !excludeList.Contains(dr.Field<long>("WP01"))
    //                select dr;

    //    dt2New = dt2NewRaw.CopyToDataTable();

    //    GridView1.DataSource = dt2New;
    //    GridView1.DataBind();

    //    //Response.Write("<script>console.log('" + "JJson is:" + "');</script>");
    //    ////Response.Write("<script>console.log('" + dt2Json(GetDataDt(777)) + "');</script>");
    //    //Response.Write("<script>console.log('" + queryResult.GetType() + "');</
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200630pds.aspx" + Request.Url.Query);
            }

            // Related to "special stylee goods", but have no "Fire and pregress bar" logic:
            setDics();
            BindSpecialStyleeGoods(optionHotDeal);
            BindSpecialStyleeGoods(optionValueBuy);
            BindSpecialStyleeGoods(optionHlBrandsArea1);
            BindSpecialStyleeGoods(optionHlBrandsArea2);
            BindSpecialStyleeGoods(optionHlBrandsArea3);
            BindSpecialStyleeGoods(optionHlBrandsArea4);
            BindSpecialStyleeGoods(optionHlBrandsArea5);


            //(Start) Useless, for testing other type of product style only.
            // ===============================================================================================

            //BindProduct(productHotDeal, 1017, 8);
            //BindProduct(productValueBuy, 1018, 8);

            //Dictionary<string, dynamic> dic1 = new Dictionary<string, dynamic>();
            //Dictionary<string, dynamic> dic2 = new Dictionary<string, dynamic>();
            //Dictionary<string, dynamic> dic3 = new Dictionary<string, dynamic>();
            //Dictionary<string, dynamic> dic4 = new Dictionary<string, dynamic>();
            //Dictionary<string, dynamic> dic5 = new Dictionary<string, dynamic>();


            //dic1.Add("webControlIds", productHighlightedBrandsArea1);
            //dic1.Add("spdGid", "1");
            //dic1.Add("take", 3);

            //dic2.Add("webControlIds", productHighlightedBrandsArea2);
            //dic2.Add("spdGid", "0");
            //dic2.Add("take", 2);

            //dic3.Add("webControlIds", productHighlightedBrandsArea3);
            //dic3.Add("spdGid", "1");
            //dic3.Add("take", 3);

            //dic4.Add("webControlIds", productHighlightedBrandsArea4);
            //dic4.Add("spdGid", "0");
            //dic4.Add("take", 2);

            //dic5.Add("webControlIds", productHighlightedBrandsArea5);
            //dic5.Add("spdGid", "11");
            //dic5.Add("take", 5);

            //BindHighlightedBrands(
            //    new List<Dictionary<string, dynamic>>() {
            //        dic1, dic2, dic3, dic4, dic5
            //    },
            //    798
            //);
            
            //(End) Useless, for testing other type of product style only.
            // ===============================================================================================

            BindCatAndYMAL();
        }
    }
    public void setDics()
    {
        optionHotDeal.Add("webControlIds", rpHotDeal);
        // Todo_treegb
        optionHotDeal.Add("eventId", 1017);
        //optionHotDeal.Add("eventId", 777);
        optionHotDeal.Add("take", 8);
        optionHotDeal.Add("productDt", new DataTable());

        optionValueBuy.Add("webControlIds", rpValueBuy);
        optionValueBuy.Add("eventId", 1018);
        //optionValueBuy.Add("eventId", 777);
        optionValueBuy.Add("take", 8);
        optionValueBuy.Add("productDt", new DataTable());

        optionHlBrandsArea1.Add("webControlIds", rpHlBrandsArea1);
        optionHlBrandsArea1.Add("eventId", 1019);
        //optionHlBrandsArea1.Add("eventId", 798);
        optionHlBrandsArea1.Add("take", 3);
        optionHlBrandsArea1.Add("productDt", new DataTable());
        optionHlBrandsArea1.Add("spdGid", "A");
        //optionHlBrandsArea1.Add("spdGid", "1");

        optionHlBrandsArea2.Add("webControlIds", rpHlBrandsArea2);
        optionHlBrandsArea2.Add("eventId", 1019);
        //optionHlBrandsArea2.Add("eventId", 798);
        optionHlBrandsArea2.Add("take", 3);
        optionHlBrandsArea2.Add("productDt", new DataTable());
        optionHlBrandsArea2.Add("spdGid", "B");
        //optionHlBrandsArea2.Add("spdGid", "0");

        optionHlBrandsArea3.Add("webControlIds", rpHlBrandsArea3);
        optionHlBrandsArea3.Add("eventId", 1019);
        //optionHlBrandsArea3.Add("eventId", 798);
        optionHlBrandsArea3.Add("take", 3);
        optionHlBrandsArea3.Add("productDt", new DataTable());
        optionHlBrandsArea3.Add("spdGid", "C");
        //optionHlBrandsArea3.Add("spdGid", "1");

        optionHlBrandsArea4.Add("webControlIds", rpHlBrandsArea4);
        optionHlBrandsArea4.Add("eventId", 1019);
        //optionHlBrandsArea4.Add("eventId", 798);
        optionHlBrandsArea4.Add("take", 3);
        optionHlBrandsArea4.Add("productDt", new DataTable());
        optionHlBrandsArea4.Add("spdGid", "D");
        //optionHlBrandsArea4.Add("spdGid", "0");

        optionHlBrandsArea5.Add("webControlIds", rpHlBrandsArea5);
        //optionHlBrandsArea5.Add("eventId", 1019);
        optionHlBrandsArea5.Add("eventId", 798);
        optionHlBrandsArea5.Add("take", 8);
        optionHlBrandsArea5.Add("productDt", new DataTable());
        //optionHlBrandsArea5.Add("spdGid", "E");
        optionHlBrandsArea5.Add("spdGid", "11");
    }

    // Not used in this event.
    //private void BindProduct(dynamic webControlId, int eventId, int take = 0)
    //{
    //    //每個 block ("HotDeal", for "ValueBuy", for "HighlightedBrand" ...) 都有自己的活動 ID，ID 跟維運要。
    //    DataTable dt = GetDataDt(eventId);

    //    if (dt.Rows.Count > 0)
    //    {
    //        if (take != 0)
    //        {
    //            dt = dt.AsEnumerable().Take(take).CopyToDataTable(); //帶入12隻商品，如果要全帶直接綁定dt (var take = dt;)
    //        }
    //        Repeater rp = webControlId.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
    //        rp.DataSource = dt;
    //        rp.DataBind();
    //    }
    //}

    /// <summary>
    /// 活動商品資料表
    /// </summary>
    /// <param name="id">活動編號</param>
    /// <param name="showSpdGid">是否顯示選品商品群組 ID 的欄位</param>
    /// <returns></returns>
    private DataTable GetDataDt(int id, bool showSpdGid = false)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        // 是否有額外指定商品群組 ID。
        if (showSpdGid)
        {
            searchProp.Cells.Add("SPD08");
        }
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    // Not used in this event.
    //private void BindHighlightedBrands (List<Dictionary<string, dynamic>> options , int eventId)
    //{
    //    DataTable dt = GetDataDt(eventId, true);
    //    if (dt.Rows.Count <= 0)
    //    {
    //        return;
    //    }
    //    foreach (Dictionary<string, dynamic> option in options)
    //    {
    //        // Useless:
    //        //DataTable dtTmp = new DataTable();
    //        //dtTmp = dt.Select("SPD08 = '" + ((string) option["spdGid"]) + "'").CopyToDataTable();
    //        //if (dtTmp.Rows.Count > 0) { ... }
    //        var tmpSelect = dt.Select("SPD08 = '" + ((string) option["spdGid"]) + "'");

    //        if (tmpSelect.Length > 0)
    //        {
    //            Repeater rp = option["webControlIds"].FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
    //            rp.DataSource = tmpSelect.CopyToDataTable().AsEnumerable().Take((int) option["take"]).CopyToDataTable();;
    //            rp.DataBind();
    //        }
    //    }
    //}

    // Bind Category and You May Also Like products.
    private void BindCatAndYMAL ()
    {
        List<DataTable> CatDts = BindCategoryData(8);
        BindYMALData(CatDts, 20);
    }
    
    // Bind Category product, also return those product it used.
    private List<DataTable> BindCategoryData(int take = 0)
    {
        DataTable dt = GetCategoryGoodsRank((this.Master as user_user).LgType);
        List<DataTable> CatDts = new List<DataTable>();
        DataTable CatDt1 = new DataTable();
        DataTable CatDt2 = new DataTable();
        DataTable CatDt3 = new DataTable();
        DataTable CatDt4 = new DataTable();
        DataTable CatDt5 = new DataTable();
        DataTable CatDt6 = new DataTable();
        CatDts.Add(CatDt1);
        CatDts.Add(CatDt2);
        CatDts.Add(CatDt3);
        CatDts.Add(CatDt4);
        CatDts.Add(CatDt5);
        CatDts.Add(CatDt6);

        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp1 = productCategorySec1.FindControl("rp_goods") as Repeater;
                CatDt1 = dt.Select("CNAME='彩妝'").Take(take).CopyToDataTable();
                rp1.DataSource = CatDt1;
                rp1.DataBind();
            }

            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp2 = productCategorySec2.FindControl("rp_goods") as Repeater;
                CatDt2 = dt.Select("CNAME='保養'").Take(take).CopyToDataTable();
                rp2.DataSource = CatDt2;
                rp2.DataBind();
            }

            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp3 = productCategorySec3.FindControl("rp_goods") as Repeater;
                CatDt3 = dt.Select("CNAME='保健'").Take(take).CopyToDataTable();
                rp3.DataSource = CatDt3;
                rp3.DataBind();
            }

            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp4 = productCategorySec4.FindControl("rp_goods") as Repeater;
                CatDt4 = dt.Select("CNAME='生活'").Take(take).CopyToDataTable();
                rp4.DataSource = CatDt4;
                rp4.DataBind();
            }

            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp5 = productCategorySec5.FindControl("rp_goods") as Repeater;
                CatDt5 = dt.Select("CNAME='美食'").Take(take).CopyToDataTable();
                rp5.DataSource = CatDt5;
                rp5.DataBind();
            }

            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp6 = productCategorySec6.FindControl("rp_goods") as Repeater;
                CatDt6 = dt.Select("CNAME='母嬰'").Take(take).CopyToDataTable();
                rp6.DataSource = CatDt6;
                rp6.DataBind();
            }
        }

        return CatDts;
    }

    /// <summary>
    /// 商品類別
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
    public DataTable GetCategoryGoodsRank(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP18,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount,");
        sb.Append("CNAME,VRANK ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("INNER JOIN VW_CATEGORY_RANK  AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


    // Bind You May Also Like products.
    private void BindYMALData(List<DataTable> CatDts, int take = 0)
    {
        // You May Also Like products, before doing any excluding.
        DataTable YMALFull = GetOrderRank((this.Master as user_user).LgType);
        if (YMALFull.Rows.Count == 0)
        {
            return;
        }
        DataTable YMAL = new DataTable();

        // You May Also Like products, have to exclude all "visible" Category products.
        List<long> excludeList = new List<long>();


        // Get all CatDts's WP01 column, output result using array.
        foreach (DataTable CatDt in CatDts) {
            // Datatype of excludeListRaw is IEnumerable<DataRow>.
            var excludeListRaw = from dr in CatDt.AsEnumerable()
                              select dr;
            foreach (DataRow row in excludeListRaw)
            {
                excludeList.Add(row.Field<long>("WP01"));
            }
        }

        var YMALRaw = from dr in YMALFull.AsEnumerable()
                    where !excludeList.Contains(dr.Field<long>("WP01"))
                    select dr;
        YMAL = YMALRaw.CopyToDataTable();


        if (take != 0)
        {
            YMAL = YMAL.AsEnumerable().Take(take).CopyToDataTable();
        }
        {
            Repeater rp = productYouMayAlsoLike.FindControl("rp_goods") as Repeater;
            rp.DataSource = YMAL;
            rp.DataBind();
        }
    }

    /// <summary>
    /// 你可能會喜歡
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
    public DataTable GetOrderRank(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP18,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("INNER JOIN VW_SALE_RANK AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }



    // Below is related to "special stylee goods", but have no "Fire and pregress bar" logic:
    // =====================================================================================
    private void BindSpecialStyleeGoods(Dictionary<string, dynamic> option)
    {
        // If offer spdGid (both case will be safe).
        Boolean ifSpdGid = option.ContainsKey("spdGid");

        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
        if (ifSpdGid)
        {
            prop.Cells.Add("SPD08");
        }
        //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.SelectIDS.Add((int)option["eventId"]);
        prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetSelectProduct(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable dt = SqlDbmanager.queryBySql(cmd);


        // We don't need stock related logic for this event.
        //string _stime = "2020-06-18 12:00:00";
        //DataTable dtRealStock = GetRealStock(eventId, _stime);
        //foreach (DataRow dr in dtRealStock.Rows)
        //{
        //    if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
        //    {
        //        int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
        //        int rs = Convert.ToInt32(dr["C"].ToString());
        //        i += rs;
        //        dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
        //    }
        //}

        if (dt.Rows.Count == 0)
        {
            return;
        }

        if (ifSpdGid)
        {
            var tmpSelect = dt.Select("SPD08 = '" + ((string)option["spdGid"]) + "'");
            if (tmpSelect.Length == 0)
            {
                return;
            }
            dt = tmpSelect.CopyToDataTable();
        }
        if ((int)option["take"] != 0)
        {
            dt = dt.AsEnumerable().Take((int)option["take"]).CopyToDataTable();
        }

        option["productDt"] = TransDt(dt);
        option["webControlIds"].DataSource = option["productDt"];
        option["webControlIds"].DataBind();
    }

    private static DataTable ChangPrice(DataTable dt)
    {
        DataTable rDT = new DataTable();
        rDT = dt;
        foreach (DataRow dr in rDT.Rows)
        {
            dr["WPA06"] = Convert.ToDecimal(dr["WPA06"].ToString()) - Convert.ToDecimal(dr["WPA07"].ToString());
        }
        return rDT;
    }
    public DataTable GetRealStock(int eid, string stime)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM 
	  INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
	  INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON ORD01=DT.SPD02  
	  WHERE ORM24>=0 AND ORM03>=@SPM04 GROUP BY ORD01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM04", SqlDbType.VarChar, stime));

        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sold">SPD07假數量</param>
    /// <param name="stock">SPD06限制數量</param>
    /// <returns></returns>
    public static int FireCount(int sold, int stock)
    {
        decimal i = (decimal)sold;
        decimal s = (decimal)stock;
        if (s > 0)
        {
            i = i / s * 100;
            return Convert.ToInt32(100 - i);
            //w = Convert.ToInt32(d * 100);
            //w = 100 - w;
        }
        return 100;
    }

    public static string SoldOut(int sold, int stock)
    {
        string str = "false";
        if (sold >= stock)
            str = "true";
        return str;
    }

    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01", typeof(long));
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("SPD05", typeof(int)); //權重
        dt.Columns.Add("SPD06"); //限制數量,庫存
        dt.Columns.Add("SPD07"); //假數量
        dt.Columns.Add("WPA06", typeof(decimal));
        dt.Columns.Add("WPA10", typeof(decimal));
        dt.Columns.Add("PERSENT");
        dt.Columns.Add("PC01");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");


        foreach (DataRow dr in sdt.Rows)
        {
            DataRow ndr = dt.NewRow();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["SPD05"] = dr["SPD05"].ToString();
            ndr["SPD06"] = dr["SPD06"].ToString();
            ndr["SPD07"] = dr["SPD07"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            //ndr["SPD07"] = Convert.ToInt32(dr["SPD07"].ToString()) + Convert.ToInt32(dr["BCOUNT"].ToString());
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            dt.Rows.Add(ndr);
        }
        return dt;
    }


    protected void rp_plist_ItemDataBoundHotDeal(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHotDeal);
    }
    protected void rp_plist_ItemDataBoundValueBuy(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionValueBuy);
    }
    protected void rp_plist_ItemDataBoundHlBrandsArea1(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHlBrandsArea1);
    }
    protected void rp_plist_ItemDataBoundHlBrandsArea2(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHlBrandsArea2);
    }
    protected void rp_plist_ItemDataBoundHlBrandsArea3(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHlBrandsArea3);
    }
    protected void rp_plist_ItemDataBoundHlBrandsArea4(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHlBrandsArea4);
    }
    protected void rp_plist_ItemDataBoundHlBrandsArea5(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHlBrandsArea5);
    }

    protected void rp_plist_ItemDataBound_main(object sender, RepeaterItemEventArgs e, Dictionary<string, dynamic> option)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = ((DataTable)option["productDt"]).AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

        }
    }

    //For Debug purpose.Convert DataTable to Json(datatype is string).
    protected string dt2Json(DataTable dt)
    {
        //convert datatable to list using LINQ. Input datatable is "dt", returning list of "name:value" tuples
        var lst = dt.AsEnumerable()
            .Select(r => r.Table.Columns.Cast<DataColumn>()
                    .Select(c => new KeyValuePair<string, object>(c.ColumnName, r[c.Ordinal])
                   ).ToDictionary(z => z.Key, z => z.Value)
            ).ToList();
        //now serialize it
        var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        return serializer.Serialize(lst);
    }
}