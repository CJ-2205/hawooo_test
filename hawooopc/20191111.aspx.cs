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


public partial class user_static_20191111 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/20191111.aspx" + Request.Url.Query);
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/2019111.aspx" + Request.Url.Query + "'", true);
            }
            SetTime();
            BindTOP4BrandData();


            DataTable dt = BindData(798);
            var take = dt.AsEnumerable().Take(5).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();


            //FlashSale區 11號之前綁一般商品塊 11號當天綁有火的商品塊
            if (DateTime.Now < Convert.ToDateTime("2019-11-11 00:00:00"))
            {
                dt = BindData(798);
                var take2 = dt.AsEnumerable().Take(5).CopyToDataTable();
                Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
                rp2.DataSource = take2;
                rp2.DataBind();
            }
            else
            {
                BindFlashSaleGoods();
            }


            dt = BindData(798);
            var take3 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
            rp7.DataSource = take3;
            rp7.DataBind();

            BindBrand();
            BindTop4ClassData();
            BindRandom15Data();
        }
    }

    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime("2019-11-06 00:00:00");

        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }

    private void BindTOP4BrandData()
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
   WHERE B01 IN(208, 235, 312, 283)
     AND WP07 = 1
     AND GETDATE()
     BETWEEN WP09
     AND WP10) AS DT
   WHERE R <= 3)
 ORDER BY WP01 DESC";
        cmd.CommandText = sqlStr;
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Select("B01=208").Length > 0)
        {
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = dt.Select("B01=208").CopyToDataTable();
            rp3.DataBind();
        }

        if (dt.Select("B01=235").Length > 0)
        {
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = dt.Select("B01=235").CopyToDataTable();
            rp4.DataBind();
        }

        if (dt.Select("B01=312").Length > 0)
        {
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = dt.Select("B01=312").CopyToDataTable();
            rp5.DataBind();
        }

        if (dt.Select("B01=283").Length > 0)
        {
            Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
            rp6.DataSource = dt.Select("B01=283").CopyToDataTable();
            rp6.DataBind();
        }
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
        prop.LgType = (this.Master as user_user).LgType;
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
        var take = bindDt.AsEnumerable().Take(5).CopyToDataTable();
        rptFlashSale.DataSource = take;
        rptFlashSale.DataBind();

    }

    public DataTable GetRealStock(int eid)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM 
	  INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
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



    private void BindTop4ClassData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top4");

        if (dt.Select("CNAME='彩妝'").Length > 0)
        {
            Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
            rp8.DataSource = dt.Select("CNAME='彩妝'").CopyToDataTable();
            rp8.DataBind();
        }

        if (dt.Select("CNAME='保養'").Length > 0)
        {
            Repeater rp9 = products9.FindControl("rp_goods") as Repeater;
            rp9.DataSource = dt.Select("CNAME='保養'").CopyToDataTable();
            rp9.DataBind();
        }

        if (dt.Select("CNAME='保健'").Length > 0)
        {
            Repeater rp10 = products10.FindControl("rp_goods") as Repeater;
            rp10.DataSource = dt.Select("CNAME='保健'").CopyToDataTable();
            rp10.DataBind();
        }

        if (dt.Select("CNAME='生活'").Length > 0)
        {
            Repeater rp11 = products11.FindControl("rp_goods") as Repeater;
            rp11.DataSource = dt.Select("CNAME='生活'").CopyToDataTable();
            rp11.DataBind();
        }

        if (dt.Select("CNAME='內衣'").Length > 0)
        {
            Repeater rp12 = products12.FindControl("rp_goods") as Repeater;
            rp12.DataSource = dt.Select("CNAME='內衣'").CopyToDataTable();
            rp12.DataBind();
        }

        if (dt.Select("CNAME='流行'").Length > 0)
        {
            Repeater rp13 = products13.FindControl("rp_goods") as Repeater;
            rp13.DataSource = dt.Select("CNAME='流行'").CopyToDataTable();
            rp13.DataBind();
        }

        if (dt.Select("CNAME='美食'").Length > 0)
        {
            Repeater rp14 = products14.FindControl("rp_goods") as Repeater;
            rp14.DataSource = dt.Select("CNAME='美食'").CopyToDataTable();
            rp14.DataBind();
        }

        if (dt.Select("CNAME='母嬰'").Length > 0)
        {
            Repeater rp15 = products15.FindControl("rp_goods") as Repeater;
            rp15.DataSource = dt.Select("CNAME='母嬰'").CopyToDataTable();
            rp15.DataBind();
        }

    }

    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top15");
        Repeater rp16 = products16.FindControl("rp_goods") as Repeater;
        rp16.DataSource = dt;
        rp16.DataBind();
    }

    public DataTable GetGoods(LangType lg, string et = "")
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        if (et == "top15")
        {
            sb.Append("top 15 ");
        }
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
        if (et == "top4")
        {
            //sb.Append("WHERE WP01 IN (SELECT PID,CNAME FROM vwGoodsRankByMonth) ");
            sb.Append("INNER JOIN vwGoodsRankByMonth as A ON A.PID=WP01 ");
        }
        else if (et == "top15")
        {
            sb.Append(" INNER JOIN vwGoodsRank2 as A ON A.PID=WP01 order by NEWID()");
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
    public class BrandCs
    {
        public string url { get; set; }
        public string img { get; set; }
        public BrandCs(string _url, string _img)
        {
            url = _url;
            img = _img;
        }
    }

    private void BindBrand()
    {
        string url = "https://www.hawooo.com/user/brands.aspx?bid=";
        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>
        {
            new BrandCs(url + 299.ToString(), cm_a + "ftp/20191111/bd_05.png"),
            new BrandCs(url + 307.ToString(), cm_a + "ftp/20191111/bd_06.png"),
            new BrandCs(url + 222.ToString(), cm_a + "ftp/20191111/bd_07.png"),
            new BrandCs(url + 318.ToString(), cm_a + "ftp/20191111/bd_08.png"),
            new BrandCs(url + 322.ToString(), cm_a + "ftp/20191111/bd_09.png"),
            new BrandCs(url + 317.ToString(), cm_a + "ftp/20191111/bd_10.png"),
            new BrandCs(url + 287.ToString(), cm_a + "ftp/20191111/bd_11.png"),
            new BrandCs(url + 345.ToString(), cm_a + "ftp/20191111/bd_12.png"),
        };

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}