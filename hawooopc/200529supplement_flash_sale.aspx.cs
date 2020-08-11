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

public partial class user_static_200529supplement_flash_sale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/200529supplement_flash_sale.aspx" + Request.Url.Query);

            DataTable dt = BindData(979);
            var take = dt.AsEnumerable().Take(16).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            //dt = BindData(974);
            //Repeater rp2 = brands.FindControl("rp_goods") as Repeater;
            //rp2.DataSource = dt;
            //rp2.DataBind();

            //BindTop8ClassData();
            //BindRandom15Data();

        }
    }

    //private static CouponSetData SetCouponBrand()
    //{
    //    CouponSetData couponSetData = new CouponSetData();
    //    couponSetData.AppendBrandId(307);
    //    couponSetData.AppendBrandId(72);
    //    couponSetData.AppendBrandId(287);
    //    couponSetData.AppendBrandId(309);
    //    couponSetData.AppendBrandId(117);
    //    couponSetData.AppendBrandId(297);
    //    couponSetData.AppendBrandId(199);
    //    couponSetData.AppendBrandId(334);
    //    couponSetData.AppendBrandId(413);
    //    couponSetData.AppendBrandId(11);
    //    couponSetData.AppendBrandId(64);
    //    couponSetData.AppendBrandId(407);
    //    couponSetData.AppendBrandId(235);
    //    couponSetData.AppendBrandId(345);
    //    couponSetData.AppendBrandId(349);
    //    couponSetData.AppendBrandId(203);
    //    couponSetData.AppendBrandId(436);
    //    couponSetData.AppendBrandId(322);
    //    couponSetData.AppendBrandId(283);
    //    couponSetData.AppendBrandId(432);
    //    couponSetData.AppendBrandId(312);
    //    couponSetData.AppendBrandId(156);
    //    couponSetData.AppendBrandId(366);
    //    return couponSetData;
    //}

    //public class CouponReq
    //{
    //    public string userId { get; set; }
    //    public int eventId { get; set; }
    //    public int discount { get; set; }
    //    public int limitation { get; set; }
    //}
    //private static string GetCouponCode(CouponReq cr)
    //{
    //    CouponData couponData = new CouponData();
    //    couponData.EventId = cr.eventId;
    //    couponData.GetMultiple = false;
    //    couponData.UserId = int.Parse(cr.userId);
    //    couponData.Discount = cr.discount;
    //    couponData.Limitation = cr.limitation;
    //    couponData.STime = "2020-05-27 12:00:00";
    //    couponData.ETime = "2020-05-30 00:00:00";
    //    couponData.ExFlagBrand = false;
    //    couponData.CouponNote = "VIP_2020_05_27";
    //    couponData.ConditionType = CouponData.EnConditionType.Assignation;
    //    couponData.CouponType = CouponData.EnCouponType.Single;
    //    couponData.CouponSetData = new CouponSetData();
    //    CreateCouponBL couponBL = new CreateCouponBL(couponData);
    //    string couponNum = couponBL.CreateCouponReturnCode();
    //    return couponNum;
    //}

    //[System.Web.Services.WebMethod]
    //public static string GetUserInfo(string userID)
    //{
    //    DataTable dt = CheckVIP(userID);

    //    string returnMsg = "";
    //    string code1 = "11";
    //    string code2 = "22";

    //    if (dt.Rows.Count == 0)
    //    {
    //        returnMsg = "NOTVIP";
    //    }
    //    else
    //    {
    //        returnMsg = "VIP";
    //        ////由上方Method產生隨機coupon code
    //        ////由上方Method產生隨機coupon code
    //        CouponReq cr = new CouponReq();
    //        cr.userId = userID;
    //        cr.eventId = 192;
    //        cr.limitation = 280;
    //        cr.discount = 35;
    //        code1 = GetCouponCode(cr);

    //        cr.eventId = 193;
    //        cr.limitation = 500;
    //        cr.discount = 65;
    //        code2 = GetCouponCode(cr);
    //        HttpContext.Current.Session["code1"] = code1; //傳到分頁用
    //        HttpContext.Current.Session["code2"] = code2; //傳到分頁用

    //    }

    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("[{");
    //    sb.Append("\"rmsg\":\"" + returnMsg + "\",");
    //    sb.Append("\"code1\":\"" + code1 + "\",");
    //    sb.Append("\"code2\":\"" + code2 + "\"");
    //    sb.Append("}]");

    //    return sb.ToString();

    //}

    //private static DataTable CheckVIP(string userID)
    //{
    //    //資料表每月要換
    //    string str = @"SELECT UId,VKey FROM VIP_POOL WHERE VKey='202005' AND UID=@UID";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = str;
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("UID", SqlDbType.Int, userID));
    //    var dt = SqlDbmanager.queryBySql(cmd);
    //    return dt;
    //}


    private DataTable BindData(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


    //private void BindTop8ClassData()
    //{
    //    DataTable dt = GetCategoryGoodsRank((this.Master as user_user).LgType);

    //    if (dt.Select("CNAME='彩妝'").Length > 0)
    //    {
    //        Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
    //        rp2.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
    //        rp2.DataBind();
    //    }

    //    if (dt.Select("CNAME='保養'").Length > 0)
    //    {
    //        Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
    //        rp3.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
    //        rp3.DataBind();
    //    }

    //    if (dt.Select("CNAME='保健'").Length > 0)
    //    {
    //        Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
    //        rp4.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
    //        rp4.DataBind();
    //    }

    //    if (dt.Select("CNAME='生活'").Length > 0)
    //    {
    //        Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
    //        rp5.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
    //        rp5.DataBind();
    //    }

    //    if (dt.Select("CNAME='美食'").Length > 0)
    //    {
    //        Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
    //        rp6.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
    //        rp6.DataBind();
    //    }

    //    if (dt.Select("CNAME='母嬰'").Length > 0)
    //    {
    //        Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
    //        rp7.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
    //        rp7.DataBind();
    //    }

    //}

    //private void BindRandom15Data()
    //{
    //    DataTable dt = GetOrderRank((this.Master as user_user).LgType);
    //    if (dt.Rows.Count > 0)
    //    {
    //        Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
    //        rp8.DataSource = dt.AsEnumerable().Take(15).CopyToDataTable();
    //        rp8.DataBind();
    //    }
    //}

    /// <summary>
    /// 商品類別
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
    //public DataTable GetCategoryGoodsRank(LangType lg)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("SELECT ");
    //    sb.Append("B01,");
    //    sb.Append("WP01,");
    //    sb.Append("WP18,");
    //    sb.Append("WP23,");
    //    sb.Append("WP08_1,");
    //    sb.Append("WPT07,");
    //    sb.Append("WP27,");
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
    //    sb.Append("INNER JOIN VW_VIP_0527_1 AS TA ON TA.PID=WP01 ");
    //    sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sb.ToString();
    //    var dt = SqlDbmanager.queryBySql(cmd);
    //    return dt;
    //}



    /// <summary>
    /// 你可能會喜歡
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
    //public DataTable GetOrderRank(LangType lg)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("SELECT ");
    //    sb.Append("B01,");
    //    sb.Append("WP01,");
    //    sb.Append("WP18,");
    //    sb.Append("WP23,");
    //    sb.Append("WP08_1,");
    //    sb.Append("WPT07,");
    //    sb.Append("WP27,");
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
    //    sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
    //    sb.Append("FROM WP ");
    //    sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
    //    sb.Append("INNER JOIN VW_VIP_0527_2 AS TA ON TA.PID=WP01 ");
    //    sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sb.ToString();
    //    var dt = SqlDbmanager.queryBySql(cmd);
    //    return dt;
    //}
}
