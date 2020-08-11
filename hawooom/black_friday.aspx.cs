using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

public partial class mobile_static_black_friday : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataTable dt = BindData(798);
            Repeater rptPop = popular.FindControl("rp_goods") as Repeater;
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            rptPop.DataSource = take;
            rptPop.DataBind();

            dt = BindData(798);
            Repeater rptBeauty = beauty.FindControl("rp_goods") as Repeater;
            var take2 = dt.AsEnumerable().Take(8).CopyToDataTable();
            rptBeauty.DataSource = take2;
            rptBeauty.DataBind();

            dt = BindData(798);
            Repeater rptLife = life.FindControl("rp_goods") as Repeater;
            var take3 = dt.AsEnumerable().Take(8).CopyToDataTable();
            rptLife.DataSource = take3;
            rptLife.DataBind();


            BindTOP4BrandData();
            BindBrand();

            BindTop4ClassData();
            BindRandom15Data();
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
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        return dt;

    }

   

    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01");
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("WP27");

        dt.Columns.Add("WPA06");
        dt.Columns.Add("WPA10");
        dt.Columns.Add("PERSENT");
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
            ndr["WP27"] = dr["WP27"].ToString();

            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "%";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            dt.Rows.Add(ndr);
        }
        return dt;
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
   WHERE B01 IN(208, 235, 407, 283)
     AND WP07 = 1
     AND GETDATE()
     BETWEEN WP09
     AND WP10) AS DT
   WHERE R <= 3)
 ORDER BY WP01 DESC";
        cmd.CommandText = sqlStr;
        DataTable dtSource = SqlDbmanager.queryBySql(cmd);

        DataTable dt = TransDt(dtSource);


        if (dt.Select("B01=208").Length > 0)
        {
            rptBrand1.DataSource = dt.Select("B01=208").CopyToDataTable();
            rptBrand1.DataBind();
        }

        if (dt.Select("B01=235").Length > 0)
        {
            rptBrand2.DataSource = dt.Select("B01=235").CopyToDataTable();
            rptBrand2.DataBind();
        }

        if (dt.Select("B01=407").Length > 0)
        {
            rptBrand3.DataSource = dt.Select("B01=407").CopyToDataTable();
            rptBrand3.DataBind();
        }

        if (dt.Select("B01=283").Length > 0)
        {
            rptBrand4.DataSource = dt.Select("B01=283").CopyToDataTable();
            rptBrand4.DataBind();
        }
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
        string url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>
        {
            new BrandCs(url + 317.ToString(), cm_a + "ftp/20191127/bd_05.png"),
            new BrandCs(url + 362.ToString(), cm_a + "ftp/20191127/bd_06.png"),
            new BrandCs(url + 203.ToString(), cm_a + "ftp/20191127/bd_07.png"),
            new BrandCs(url + 115.ToString(), cm_a + "ftp/20191127/bd_08.png"),
            new BrandCs(url + 432.ToString(), cm_a + "ftp/20191127/bd_09.png"),
            new BrandCs(url + 309.ToString(), cm_a + "ftp/20191127/bd_10.png"),
            new BrandCs(url + 349.ToString(), cm_a + "ftp/20191127/bd_11.png"),
            new BrandCs(url + 102.ToString(), cm_a + "ftp/20191127/bd_12.png"),
        };

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }

    private void BindTop4ClassData()
    {
        DataTable dt = GetGoods((this.Master as mobile).LgType, "top4");

        if (dt.Select("CNAME='彩妝'").Length > 0)
        {
            Repeater rp1 = products1.FindControl("rp_goods") as Repeater;
            rp1.DataSource = dt.Select("CNAME='彩妝'").CopyToDataTable();
            rp1.DataBind();
        }

        if (dt.Select("CNAME='保養'").Length > 0)
        {
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt.Select("CNAME='保養'").CopyToDataTable();
            rp2.DataBind();
        }

        if (dt.Select("CNAME='保健'").Length > 0)
        {
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = dt.Select("CNAME='保健'").CopyToDataTable();
            rp3.DataBind();
        }

        if (dt.Select("CNAME='生活'").Length > 0)
        {
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = dt.Select("CNAME='生活'").CopyToDataTable();
            rp4.DataBind();
        }

        if (dt.Select("CNAME='內衣'").Length > 0)
        {
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = dt.Select("CNAME='內衣'").CopyToDataTable();
            rp5.DataBind();
        }

        if (dt.Select("CNAME='流行'").Length > 0)
        {
            Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
            rp6.DataSource = dt.Select("CNAME='流行'").CopyToDataTable();
            rp6.DataBind();
        }

        if (dt.Select("CNAME='美食'").Length > 0)
        {
            Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
            rp7.DataSource = dt.Select("CNAME='美食'").CopyToDataTable();
            rp7.DataBind();
        }

        if (dt.Select("CNAME='母嬰'").Length > 0)
        {
            Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
            rp8.DataSource = dt.Select("CNAME='母嬰'").CopyToDataTable();
            rp8.DataBind();
        }

    }

    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as mobile).LgType, "top15");
        Repeater rp9 = products9.FindControl("rp_goods") as Repeater;
        rp9.DataSource = dt;
        rp9.DataBind();
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
}