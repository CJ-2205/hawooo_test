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

public partial class user_static_20200319VIP_exclusive_sales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/20200319VIP_exclusive_sales.aspx" + Request.Url.Query);


            DataTable dt = BindData(797);
            var take = dt.AsEnumerable().Take(12).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            BindBrandData();


        }
    }
    private static CouponSetData SetCouponBrand()
    {
        CouponSetData couponSetData = new CouponSetData();
        couponSetData.AppendBrandId(307);
        couponSetData.AppendBrandId(72);
        couponSetData.AppendBrandId(287);
        couponSetData.AppendBrandId(309);
        couponSetData.AppendBrandId(117);
        couponSetData.AppendBrandId(297);
        couponSetData.AppendBrandId(199);
        couponSetData.AppendBrandId(334);
        couponSetData.AppendBrandId(413);
        couponSetData.AppendBrandId(11);
        couponSetData.AppendBrandId(64);
        couponSetData.AppendBrandId(407);
        couponSetData.AppendBrandId(235);
        couponSetData.AppendBrandId(345);
        couponSetData.AppendBrandId(349);
        couponSetData.AppendBrandId(203);
        couponSetData.AppendBrandId(436);
        couponSetData.AppendBrandId(322);
        couponSetData.AppendBrandId(283);
        couponSetData.AppendBrandId(432);
        couponSetData.AppendBrandId(312);
        couponSetData.AppendBrandId(156);
        couponSetData.AppendBrandId(366);
        return couponSetData;
    }

    private static string GetCouponCode(string userId)
    {
        CouponData couponData = new CouponData();
        couponData.EventId = 120;
        couponData.GetMultiple = false;
        couponData.UserId = int.Parse(userId);
        couponData.Discount = 40;
        couponData.Limitation = 290;
        couponData.STime = "2020-03-24 12:00:00";
        couponData.ETime = "2020-03-26 23:59:59";
        couponData.ExFlagBrand = false;
        couponData.CouponNote = "VIP_2020_03_24";
        couponData.ConditionType = CouponData.EnConditionType.Assignation;
        couponData.CouponSetData = SetCouponBrand();
        CreateCouponBL couponBL = new CreateCouponBL(couponData);
        string couponNum = couponBL.CreateCouponReturnCode();
        return couponNum;
    }


    [System.Web.Services.WebMethod]
    public static string GetUserInfo(string userID)
    {
        DataTable dt = CheckVIP(userID);

        string returnMsg = "";
        string code = "";
        if (dt.Rows.Count == 0)
        {
            returnMsg = "NOTVIP";
        }
        else
        {
            returnMsg = "VIP";
            code=GetCouponCode(userID);

        }

        StringBuilder sb = new StringBuilder();
        //sb.Append("[{");
        //sb.Append("\"rmsg\":\"" + returnMsg + "\"");
        //sb.Append("}]");

        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\",");
        sb.Append("\"code\":\"" + code + "\"");
        sb.Append("}]");


        return sb.ToString();

    }

    private static DataTable CheckVIP(string userID)
    {

        string str = @"SELECT * FROM VIP_2020_02_24_26 WHERE UID=@UID";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("UID", SqlDbType.Int, userID));
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
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
   WHERE B01 IN(235, 345, 203, 312, 349, 283, 322, 432, 307, 319, 72, 117, 309, 287, 334, 413)
     AND WP07 = 1
     AND GETDATE()
     BETWEEN WP09
     AND WP10) AS DT
   WHERE R <= 1)
   order by ( CASE  B01 
WHEN 235 THEN '01'
WHEN 345 THEN '02'
WHEN 203 THEN '03'
WHEN 312 THEN '04' 
WHEN 349 THEN '05'
WHEN 283 THEN '06'
WHEN 322 THEN '07'
WHEN 432 THEN '08'
WHEN 307 THEN '09'
WHEN 319 THEN '10'
WHEN 72 THEN '11'
WHEN 117 THEN '12'
WHEN 309 THEN '13'
WHEN 287 THEN '14'
WHEN 334 THEN '15'
WHEN 413 THEN '16'
END)
";
        cmd.CommandText = sqlStr;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        Repeater rpBrand = brands.FindControl("rp_goods") as Repeater;
        rpBrand.DataSource = dt;
        rpBrand.DataBind();

    }
}