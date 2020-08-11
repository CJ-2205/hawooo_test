using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class user_static_20191212xmas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/20191212xmas.aspx" + Request.Url.Query);
            }
            SetTime();

            //FlashSale區 12 / 08 - 12 / 11之前綁一般商品塊
            //DataTable flashDt = BindData(839);
            DataTable flashDt = BindData(798);
            if (flashDt.Rows.Count >= 8)
            {
                var select = flashDt.AsEnumerable().Take(8).CopyToDataTable();
                Repeater rptFlash = productsflash.FindControl("rp_goods") as Repeater;
                rptFlash.DataSource = select;
                rptFlash.DataBind();
            }
            //12 / 12號當天綁有火的商品塊
            BindFlashSaleGoods();


            //DataTable dt = BindData(843);
            DataTable dt = BindData(798);
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            BindBrandData();

            //dt = BindData(833);
            dt = BindData(798);
            var take2 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            //dt = BindData(834);
            dt = BindData(798);
            var take3 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take3;
            rp3.DataBind();

            //dt = BindData(835);
            dt = BindData(798);
            var take4 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = take4;
            rp4.DataBind();

            //dt = BindData(836);
            dt = BindData(798);
            var take5 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = take5;
            rp5.DataBind();

            BindRandom15Data();


        }
    }

    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime("2020-07-07 00:00:00");

        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }

    private DataTable BindData(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }

    private void BindFlashSaleGoods()
    {
        //int eventId = 839;
        int eventId = 798;

        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
        prop.Cells.Add("SPD08");
        //prop.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07,SPD08 AS SPD08  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON WP.WP01=DT.SPD02  ");


        prop.SelectIDS.Add(eventId);
        prop.OrderBy = " ORDER BY SPD05 DESC ";
        prop.LgType = ((user_user)this.Master).LgType;
        string sqlTxt = ProductBL.GetSelectProduct(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eventId));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //dt = dt.DefaultView.ToTable(true, "WP01", "WP02", "WPA06", "WPA10", "WP08_1", "WP30", "SPD05", "SPD06", "SPD07", "SPD08");
        DataTable dtRealStock = GetRealStock(eventId);
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

        DataTable bindDt = TransDt(dt);
        if (bindDt.Rows.Count >= 8)
        {
            var take = bindDt.AsEnumerable().Take(8).CopyToDataTable();
            rptFlashSale.DataSource = take;
            rptFlashSale.DataBind();
        }
    }

    public DataTable GetRealStock(int eid)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM WITH(NOLOCK)
	  INNER JOIN ORDERD WITH(NOLOCK) ON ORDERM.ORM01=ORDERD.ORM01 
	  INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON ORD01=DT.SPD02  
	  WHERE ORM24>=0 AND ORM03>='2019-11-11 00:00:00' GROUP BY ORD01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));

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
        dt.Columns.Add("WP01");
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("SPD05"); //權重
        dt.Columns.Add("SPD06"); //限制數量,庫存
        dt.Columns.Add("SPD07"); //假數量
        dt.Columns.Add("SPD08");
        dt.Columns.Add("WPA06");
        dt.Columns.Add("WPA10");
        dt.Columns.Add("PERSENT");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");
        dt.Columns.Add("decreaseAmount");

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
            ndr["SPD08"] = dr["SPD08"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            ndr["decreaseAmount"] = Convert.ToDecimal(ndr["WPA10"].ToString()) - Convert.ToDecimal(ndr["WPA06"].ToString());

            dt.Rows.Add(ndr);
        }
        return dt;
    }





    private void BindBrandData()
    {
        SqlCommand cmd = new SqlCommand();
        string sqlStr = @"SELECT WP.WP02,WP.WP24,WPT02 AS WP30,WPT07,WP.WP01,WP.WP06,WP.WP08_1,WP.WP27,Price AS WPA06,OPrice AS WPA10,WP39,WP23,B01
FROM WP WITH(NOLOCK)
INNER JOIN ProductPriceView WITH(NOLOCK)
 ON PID = WP01
LEFT JOIN WPTAG WITH(NOLOCK)
 ON WPT01 = WP30
LEFT JOIN WPLG WITH(NOLOCK)
 ON WPLG01 = WP01
WHERE WP.WP05 = 1
 AND GETDATE()
 BETWEEN WP.WP09
 AND WP.WP10
 AND WP06 = 1
 AND WP.WP07 = 1
 AND WP01 IN
 (SELECT WP01
 FROM
   (SELECT DISTINCT B01,
   WP01,
   WP02,
   ROW_NUMBER() OVER(PARTITION BY B01
   ORDER BY WP39 DESC, WP11 DESC) AS R
   FROM wp
   WHERE B01 IN(208, 307, 235, 345,407,102,312,283,432,301,299,318)
     AND WP07 = 1
     AND GETDATE()
     BETWEEN WP09
     AND WP10) AS DT
   WHERE R <= 1)
   order by ( CASE  B01 
WHEN 208 THEN '01'
WHEN 307 THEN '02'
WHEN 235 THEN '03'
WHEN 345 THEN '04' 
WHEN 407 THEN '05'
WHEN 102 THEN '06'
WHEN 312 THEN '07'
WHEN 283 THEN '08'
WHEN 432 THEN '09'
WHEN 301 THEN '10'
WHEN 299 THEN '11'
WHEN 318 THEN '12'
END)
";
        cmd.CommandText = sqlStr;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        Repeater rptBrand = brands.FindControl("rp_goods") as Repeater;
        rptBrand.DataSource = dt;
        rptBrand.DataBind();

    }

    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType);
        Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
        rp6.DataSource = dt;
        rp6.DataBind();
    }

    public DataTable GetGoods(LangType lg)
    {
        string stime = DateTime.Now.AddDays(-10).ToString("yyyy-MM-dd");
        string etime = DateTime.Now.AddDays(-1).ToString("yyyy-MM-dd");

        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("top 15 ");
        sb.Append("B01,");
        sb.Append("WP01,");
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
        sb.Append("CNAME ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        //sb.Append("INNER JOIN SPRODUCTSD ON SPD02=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("INNER JOIN EVENT1212 AS T ON T.PID=WP01 ");
        sb.Append("WHERE NOT EXISTS");
        sb.Append("(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (832,833,834,835,836) AND WP01=SPD02) ");
        sb.Append("order by NEWID()");

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.VarChar, stime, 10));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.VarChar, etime, 10));

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}