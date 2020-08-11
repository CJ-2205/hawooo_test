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

public partial class mobile_static_20200325beauty_madness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            DataTable dt = BindData(798);
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();


            dt = BindData(797);
            var take2 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            dt = BindData(797);
            Repeater rptBrand = brands.FindControl("rp_goods") as Repeater;
            rptBrand.DataSource = dt;
            rptBrand.DataBind();

            //BindBrandData();



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
        //DataTable bindDt = TransDt(dt);

        return dt;

    }

//    private void BindBrandData()
//    {
//        SqlCommand cmd = new SqlCommand();
//        string sqlStr = @"SELECT WP.WP02,WP.WP24,WPT02 AS WP30,WPT07,WP.WP01,WP.WP06,WP.WP08_1,WP.WP27,Price AS WPA06,OPrice AS WPA10,WP39,WP23,B01
//FROM WP WITH(NOLOCK)
//INNER JOIN ProductPriceView WITH(NOLOCK)
// ON PID = WP01
//LEFT JOIN WPTAG WITH(NOLOCK)
// ON WPT01 = WP30
//LEFT JOIN WPLG WITH(NOLOCK)
// ON WPLG01 = WP01
//WHERE WP.WP05 = 1
// AND GETDATE()
// BETWEEN WP.WP09
// AND WP.WP10
// AND WP06 = 1
// AND WP.WP07 = 1
// AND WP01 IN
// (SELECT WP01
// FROM
//   (SELECT DISTINCT B01,
//   WP01,
//   WP02,
//   ROW_NUMBER() OVER(PARTITION BY B01
//   ORDER BY WP39 DESC, WP11 DESC) AS R
//   FROM wp
//   WHERE B01 IN(307, 283, 72, 450, 297, 287, 309, 432)
//     AND WP07 = 1
//     AND GETDATE()
//     BETWEEN WP09
//     AND WP10) AS DT
//   WHERE R <= 1)
//   order by ( CASE  B01 
//WHEN 307 THEN '01'
//WHEN 283 THEN '02'
//WHEN 72 THEN '03'
//WHEN 450 THEN '04' 
//WHEN 297 THEN '05'
//WHEN 287 THEN '06'
//WHEN 309 THEN '07'
//WHEN 432 THEN '08'
//END)
//";
//        cmd.CommandText = sqlStr;
//        DataTable dt = SqlDbmanager.queryBySql(cmd);
//        rpBrand.DataSource = dt;
//        rpBrand.DataBind();


//    }
}