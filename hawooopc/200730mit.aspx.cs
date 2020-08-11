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

public partial class user_static_200730mit : System.Web.UI.Page
{
    public string cacheVersion = "1";
    private int EditorsPicksEventId = 1078; //1078
    private int HighlightedEventId = 1079;   //1079
    //private string _stime = "2020-06-28 12:00:00";

    private int EditorsPicksProducts = 8;
    private int HighlightedProducts = 3;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200730mit.aspx" + Request.Url.Query);
            }
            BindEditorsPicks();
            BindHiglighted();


        }
    }

    private DataTable GetDataDt(int id, bool showSpdGid = false)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        searchProp.Cells.Add("SPD08");
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


    private DataTable _productDt = new DataTable();
    private void BindEditorsPicks()
    {
        if (EditorsPicksEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(EditorsPicksEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as user_user).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);


            _productDt = TransDt(dt);

            if (_productDt.Rows.Count != 0)

            {
                rp1.DataSource = _productDt.AsEnumerable().Take(this.EditorsPicksProducts).CopyToDataTable();
                rp1.DataBind();
            }

        }
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

    protected void rp1_ItemDataBound(object sender, RepeaterItemEventArgs e)
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
    public static string SoldOut(int sold, int stock)
    {
        string str = "false";
        if (stock.Equals(0))
            str = "false";
        else if (sold >= stock)
            str = "true";
        return str;
    }
    //flashsaleclose

    //public DataTable GetCategoryGoodsRank(LangType lg)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("SELECT ");
    //    sb.Append("B01,");   //電商編號
    //    sb.Append("WP01,");  //銷售商品系統編號
    //    sb.Append("WP18,");  //排序
    //    sb.Append("WP23,");  //英文名稱
    //    sb.Append("WP08_1,");  //商品住圖1
    //    sb.Append("WPT07,");
    //    sb.Append("WP27,");  //點擊次數
    //    if (lg == LangType.zh)
    //    {
    //        sb.Append("WPT02 as WP30,");
    //        sb.Append("WP02,");
    //    }
    //    else if (lg == LangType.en)
    //    {
    //        sb.Append("WP23 as WP02,");
    //        sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
    //    }
    //    sb.Append("CAST(Price as decimal) as WPA06,");
    //    sb.Append("CAST(OPrice as decimal) as WPA10,");
    //    sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount,");
    //    sb.Append("CNAME,VRANK ");
    //    sb.Append("FROM WP ");
    //    sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
    //    sb.Append("INNER JOIN VW_CATEGORY_RANK AS TA ON TA.PID=WP01 ");
    //    sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sb.ToString();
    //    var dt = SqlDbmanager.queryBySql(cmd);
    //    return dt;
    //}

    //public DataTable GetOrderRank(LangType lg)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("SELECT ");
    //    sb.Append("B01,");   //電商編號
    //    sb.Append("WP01,");   //銷售商品系統編號
    //    sb.Append("WP18,");   //排序
    //    sb.Append("WP23,");   //英文名稱
    //    sb.Append("WP08_1,");  //商品主圖1
    //    sb.Append("WPT07,");
    //    sb.Append("WP27,");  //點擊次數
    //    if (lg == LangType.zh)
    //    {
    //        sb.Append("WPT02 as WP30,");  //WP30 TAG ID
    //        sb.Append("WP02,");   //商品名稱
    //    }
    //    else if (lg == LangType.en)
    //    {
    //        sb.Append("WP23 as WP02,");  //WP23 英文名稱  WP02 商品名稱
    //        sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");  //WP30 TAG ID
    //    }
    //    sb.Append("CAST(Price as decimal) as WPA06,");  //HW售價
    //    sb.Append("CAST(OPrice as decimal) as WPA10,");  //市場價格
    //    sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
    //    sb.Append("FROM WP ");   //WP線上銷售商品表
    //    sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");  //WP01 銷售商品系統編號
    //    sb.Append("INNER JOIN VW_SALE_RANK AS TA ON TA.PID=WP01 ");
    //    sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");   //WP30 TAG ID
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sb.ToString();
    //    var dt = SqlDbmanager.queryBySql(cmd);
    //    return dt;
    //}

    private void BindHiglighted()
    {
        DataTable dt = GetDataDt(this.HighlightedEventId);
        if (dt.Rows.Count > 0)
        {

            if (dt.Select("SPD08='A'").Length > 0)
            {
                Repeater rp2 = products1.FindControl("rp_goods") as Repeater;
                rp2.DataSource = dt.Select("SPD08='A'").Take(this.HighlightedProducts).CopyToDataTable();
                rp2.DataBind();
            }
            //Response.Write("i want go home");
            if (dt.Select("SPD08='B'").Length > 0)
            {
                Repeater rp3 = products2.FindControl("rp_goods") as Repeater;
                rp3.DataSource = dt.Select("SPD08='B'").Take(this.HighlightedProducts).CopyToDataTable();
                rp3.DataBind();
            }

            if (dt.Select("SPD08='C'").Length > 0)
            {
                Repeater rp4 = products3.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("SPD08='C'").Take(this.HighlightedProducts).CopyToDataTable();
                rp4.DataBind();
            }

            if (dt.Select("SPD08='D'").Length > 0)
            {
                Repeater rp5 = products4.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("SPD08='D'").Take(this.HighlightedProducts).CopyToDataTable();
                rp5.DataBind();
            }
        }
    }
}