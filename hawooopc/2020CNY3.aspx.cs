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

public partial class user_static_2020CNY3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/2020CNY3.aspx" + Request.Url.Query);

           
            DataTable dt = BindData(798);
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();


            dt = BindData(798);
            var take2 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

          
            BindBrandData();
            //BindTop4ClassData();
            //BindRandom15Data();

            var take3 = dt.AsEnumerable().Take(4).CopyToDataTable();

            Repeater rp9 = products9.FindControl("rp_goods") as Repeater;
            rp9.DataSource = take3;
            rp9.DataBind();

            Repeater rp10 = products10.FindControl("rp_goods") as Repeater;
            rp10.DataSource = take2;
            rp10.DataBind();
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

    private void BindBrandData()
    {
        SqlCommand cmd = new SqlCommand();
        string sqlStr = @"SELECT WP.WP02,WP.WP24,WPT02 AS WP30,WPT07,WP.WP01,WP.WP08_1,WP.WP27,Price AS WPA06,OPrice AS WPA10,WP39,WP23,B01
FROM WP WITH(NOLOCK)
INNER JOIN ProductPriceView WITH(NOLOCK)
 ON PID = WP01
LEFT JOIN WPTAG WITH(NOLOCK) ON WPT01 = WP30
LEFT JOIN WPLG WITH(NOLOCK) ON WPLG01 = WP01 
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
   WHERE B01 IN(208, 307, 373, 407, 235, 345, 283, 72, 222, 450)
     AND WP07 = 1
     AND GETDATE()
     BETWEEN WP09
     AND WP10) AS DT
   WHERE R <= 1)
   order by ( CASE  B01 
WHEN 208 THEN '01'
WHEN 307 THEN '02'
WHEN 373 THEN '03'
WHEN 407 THEN '04' 
WHEN 235 THEN '05'
WHEN 345 THEN '06'
WHEN 283 THEN '07'
WHEN 72 THEN '08'
WHEN 222 THEN '09'
WHEN 450 THEN '10'
END)";
        cmd.CommandText = sqlStr;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        Repeater rptBrand = brands.FindControl("rp_goods") as Repeater;
        rptBrand.DataSource = dt;
        rptBrand.DataBind();

    }

    private void BindTop4ClassData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top4");

        if (dt.Select("CNAME='彩妝'").Length > 0)
        {
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = dt.Select("CNAME='彩妝'").CopyToDataTable();
            rp3.DataBind();
        }

        if (dt.Select("CNAME='保養'").Length > 0)
        {
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = dt.Select("CNAME='保養'").CopyToDataTable();
            rp4.DataBind();
        }

        if (dt.Select("CNAME='保健'").Length > 0)
        {
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = dt.Select("CNAME='保健'").CopyToDataTable();
            rp5.DataBind();
        }

        if (dt.Select("CNAME='生活'").Length > 0)
        {
            Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
            rp6.DataSource = dt.Select("CNAME='生活'").CopyToDataTable();
            rp6.DataBind();
        }

        if (dt.Select("CNAME='內衣'").Length > 0)
        {
            Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
            rp7.DataSource = dt.Select("CNAME='內衣'").CopyToDataTable();
            rp7.DataBind();
        }

        if (dt.Select("CNAME='美食'").Length > 0)
        {
            Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
            rp8.DataSource = dt.Select("CNAME='美食'").CopyToDataTable();
            rp8.DataBind();
        }

        if (dt.Select("CNAME='母嬰'").Length > 0)
        {
            Repeater rp9 = products9.FindControl("rp_goods") as Repeater;
            rp9.DataSource = dt.Select("CNAME='母嬰'").CopyToDataTable();
            rp9.DataBind();
        }

    }

    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top15");
        Repeater rp10 = products10.FindControl("rp_goods") as Repeater;
        rp10.DataSource = dt;
        rp10.DataBind();
    }

    public DataTable GetGoods(LangType lg, string et = "")
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        if (et == "top15")
        {
            sb.Append("TOP 15 ");
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
        sb.Append("CNAME,VRANK ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("INNER JOIN EVENT1231 AS T ON T.PID=WP01 ");

        if (et == "top4")
        {
            sb.Append("WHERE VRANK<5 ");
        }
        if (et == "top15")
        {
            sb.Append("WHERE NOT EXISTS");
            sb.Append("(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (848,849,850) AND WP01=SPD02) ");
            sb.Append("AND VRANK>=5 AND CID!=266 ");
            sb.Append("ORDER BY NEWID()");
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}