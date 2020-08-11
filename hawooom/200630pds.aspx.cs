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

public partial class mobile_static_200630pds : System.Web.UI.Page
{
    public string cacheVersion = "2";

    private int HotDealEventId = 1017; //1017
    private int ValueBuyEventId = 1018;   //1018
    private int HiglightedEventId = 1019;  //1019

    private string _stime = "2020-06-28 12:00:00";

    private int HotDealProducts = 8;
    private int ValueBuyProducts = 8;
    private int HiglightedProducts = 8;
    private int HBProducts = 3;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindHotDeal();

            BindValueBuy();
            BindHiglighted1();

            //BindHiglighted();
            BindTop8ClassData();
            BindRandom15Data();

        }
    }

    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("SPD08");
        searchProp.Cells.Add("WP31");  //活動價格開始
        searchProp.Cells.Add("WP32");  //活動價格結束
        searchProp.Cells.Add("SPD05");
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


    //flashsale fire
    private DataTable _productDt = new DataTable();
    private void BindHotDeal()
    {
        if (HotDealEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(HotDealEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(HotDealEventId, _stime);

            foreach (DataRow dr in dtRealStock.Rows)
            {
                if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
                {
                    int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
                    int rs = Convert.ToInt32(dr["C"].ToString());
                    i += rs;
                    dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
                }
            }
            _productDt = TransDt(dt);

            if (_productDt.Rows.Count >= 8)

            {
                rp_plist.DataSource = _productDt.AsEnumerable().Take(8).CopyToDataTable();
                rp_plist.DataBind();
            }

        }
    }

    private DataTable _productDt3 = new DataTable();
    private void BindHiglighted1()
    {
        if (HiglightedEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD08");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(HiglightedEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(HiglightedEventId, _stime);

            foreach (DataRow dr in dtRealStock.Rows)
            {
                if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
                {
                    int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
                    int rs = Convert.ToInt32(dr["C"].ToString());
                    i += rs;
                    dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
                }
            }
            _productDt3 = TransDt(dt);

            if (dt.Select("SPD08='A'").Length > 0) //307//dt.Select("SPD08='1'").Length > 0
            {

                rp3.DataSource = dt.Select("SPD08='A'").AsEnumerable().Take(3).CopyToDataTable();
                rp3.DataBind();
            }

            if (dt.Select("SPD08='B'").Length > 0)
            {
                //Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("SPD08='B'").AsEnumerable().Take(3).CopyToDataTable();
                rp4.DataBind();
            }

            if (dt.Select("SPD08='C'").Length > 0)
            {
                //Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("SPD08='C'").AsEnumerable().Take(3).CopyToDataTable();
                rp5.DataBind();
            }

            if (dt.Select("SPD08='D'").Length > 0)
            {
                //Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("SPD08='D'").AsEnumerable().Take(3).CopyToDataTable();
                rp6.DataBind();
            }
            if (dt.Select("SPD08='E'").Length > 0)
            {
                var take = dt.Select("SPD08='E'").CopyToDataTable();
                //Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
                rp7.DataSource = take;
                rp7.DataBind();
            }
        }
    }

    private DataTable _productDtValueBuy = new DataTable();
    private void BindValueBuy()
    {
        if (ValueBuyEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(ValueBuyEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(ValueBuyEventId, _stime);

            foreach (DataRow dr in dtRealStock.Rows)
            {
                if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
                {
                    int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
                    int rs = Convert.ToInt32(dr["C"].ToString());
                    i += rs;
                    dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
                }
            }
            _productDtValueBuy = TransDt(dt);

            if (_productDtValueBuy.Rows.Count >= 8)

            {
                Repeater1.DataSource = _productDtValueBuy.AsEnumerable().Take(8).CopyToDataTable();
                Repeater1.DataBind();
            }

        }
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
        dt.Columns.Add("SPD05", typeof(int)); //權??
        dt.Columns.Add("SPD06"); //??制????,庫??
        dt.Columns.Add("SPD07"); //??數??
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
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            dt.Rows.Add(ndr);
        }
        return dt;
    }

    protected void rp_plist_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4????綁????扣??格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

        }
    }

    protected void rp_plist_ItemDataBound2(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDtValueBuy.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4????綁????扣??格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

        }
    }
    protected void rp3_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDt3.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4????綁????扣??格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

        }
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

    //flashsaleclose


    private void BindTop8ClassData()
    {
        DataTable dt = GetCategoryGoodsRank((this.Master as mobile).LgType);
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
                rp8.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp8.DataBind();
            }

            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp9 = products9.FindControl("rp_goods") as Repeater;
                rp9.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp9.DataBind();
            }

            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp10 = products10.FindControl("rp_goods") as Repeater;
                rp10.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp10.DataBind();
            }

            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp11 = products11.FindControl("rp_goods") as Repeater;
                rp11.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp11.DataBind();
            }

            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp12 = products12.FindControl("rp_goods") as Repeater;
                rp12.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp12.DataBind();
            }

            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp13 = products13.FindControl("rp_goods") as Repeater;
                rp13.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp13.DataBind();
            }
        }

    }
    private void BindRandom15Data()
    {
        DataTable dt = GetOrderRank((this.Master as mobile).LgType);
        if (dt.Rows.Count > 0)
        {
            Repeater rp14 = products14.FindControl("rp_goods") as Repeater;
            rp14.DataSource = dt.AsEnumerable().Take(18).CopyToDataTable();
            rp14.DataBind();
        }
    }

    public DataTable GetCategoryGoodsRank(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");   //電商編號
        sb.Append("WP01,");  //銷售商品系統編號
        sb.Append("WP18,");  //排序
        sb.Append("WP23,");  //英文名稱
        sb.Append("WP08_1,");  //商品住圖1
        sb.Append("WPT07,");
        sb.Append("WP27,");  //點擊次數
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
        sb.Append("INNER JOIN VW_CATEGORY_RANK AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    //protected void TestingDt()
    //{
    //    List<int> excludeList = new List<int> { 14801, 14801 };
    //    DataTable dt = GetDataDt(777);
    //    var queryResult = from p in dt.AsEnumerable()
    //                      where !(excludeList).Contains(p.WP01)
    //                      select p;
    //    Response.Write("<script>console.log('" + "JJson is:" + "');</script>");
    //    //Response.Write("<script>console.log('" + dt2Json(GetDataDt(777)) + "');</script>");
    //    Response.Write("<script>console.log('" + queryResult.GetType() + "');</script>");
    ////}
    ///
    //protected void TestingDt()
    //{
    //    List<int> excludeList = new List<int> { 14801, 14801 };
    //    DataTable dt = GetDataDt(777);
    //    var queryResult = from p in dt.GetOrderRank()
    //                      where !(excludeList).Contains(p.WP01)
    //                      select p;
    //    Response.Write("<script>console.log('" + "JJson is:" + "');</script>");
    //    //Response.Write("<script>console.log('" + dt2Json(GetDataDt(777)) + "');</script>");
    //    Response.Write("<script>console.log('" + queryResult.GetType() + "');</script>");
    //}

    public DataTable GetOrderRank(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");   //電商編號
        sb.Append("WP01,");   //銷售商品系統編號
        sb.Append("WP18,");   //排序
        sb.Append("WP23,");   //英文名稱
        sb.Append("WP08_1,");  //商品主圖1
        sb.Append("WPT07,");
        sb.Append("WP27,");  //點擊次數
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");  //WP30 TAG ID
            sb.Append("WP02,");   //商品名稱
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");  //WP23 英文名稱  WP02 商品名稱
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");  //WP30 TAG ID
        }
        sb.Append("CAST(Price as decimal) as WPA06,");  //HW售價
        sb.Append("CAST(OPrice as decimal) as WPA10,");  //市場價格
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");   //WP線上銷售商品表
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");  //WP01 銷售商品系統編號
        sb.Append("INNER JOIN VW_SALE_RANK AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");   //WP30 TAG ID
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    //public DataTable TransDtYmal()
    //{
    //    var category = GetCategoryGoodsRank.AsEnumerable().ToList();
    //    var queryTime = from p in GetOrderRank.AsEnumerable()
    //        where!(category).Contains(p.CategoryID)
    //        select p;
    //    DataTable dt = new DataTable();
    //    return dt;
    //}

}