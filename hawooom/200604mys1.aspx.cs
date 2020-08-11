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

public partial class mobile_static_200604mys1 : System.Web.UI.Page
{
    private int HotDealEventId = 984;
    private int Buy1Free1EventId = 985;
    private int HiglightedEventId = 986;

    private int HotDealProducts = 8;
    private int Buy1Free1Products = 8;
    private int HiglightedProducts = 8;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindHotDeal();
            BindBuy1Free1();
            BindHiglighted();

            BindTop8ClassData();
            BindRandom15Data();
            BindCouponCount();

        }
    }

    private void BindHotDeal()
    {
        DataTable dt = GetDataDt(this.HotDealEventId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(this.HotDealProducts).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }

    private void BindBuy1Free1()
    {
        DataTable dt = GetDataDt(this.Buy1Free1EventId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(this.Buy1Free1Products).CopyToDataTable();
            Repeater rp0 = products2.FindControl("rp_goods") as Repeater;
            rp0.DataSource = take;
            rp0.DataBind();
        }
    }

    private void BindHiglighted()
    {
        DataTable dt = GetDataDt(this.HiglightedEventId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(this.HiglightedProducts).CopyToDataTable();
            Repeater rp1 = products3.FindControl("rp_goods") as Repeater;
            rp1.DataSource = take;
            rp1.DataBind();
        }
    }

    private void BindCouponCount()
    {
        DataTable dtCoupon = GetCouponDt();
        Dictionary<int, int> dic = GetCouponCountDic();
        foreach (int eid in GetCouponDic().Values)
        {
            DataRow[] drs = dtCoupon.Select("GID='" + eid + "'");
            if (drs.Length > 0)
            {
                dic[eid] = Convert.ToInt32(drs[0]["CT"].ToString());
            }
        }
        litCoupon1.Text = dic[GetCouponDic()["1"]].ToString();
        litCoupon2.Text = dic[GetCouponDic()["2"]].ToString();
        litCoupon3.Text = dic[GetCouponDic()["3"]].ToString();
    }


    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
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


    private void BindTop8ClassData()
    {
        DataTable dt = GetCategoryGoodsRank((this.Master as mobile).LgType);
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp2 = products4.FindControl("rp_goods") as Repeater;
                rp2.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp2.DataBind();
            }

            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp3 = products5.FindControl("rp_goods") as Repeater;
                rp3.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp3.DataBind();
            }

            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp4 = products6.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp4.DataBind();
            }

            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp5 = products7.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp5.DataBind();
            }

            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp6 = products8.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp6.DataBind();
            }

            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp7 = products9.FindControl("rp_goods") as Repeater;
                rp7.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp7.DataBind();
            }
        }

    }
    private void BindRandom15Data()
    {
        DataTable dt = GetOrderRank((this.Master as mobile).LgType);
        if (dt.Rows.Count > 0)
        {
            Repeater rp8 = products10.FindControl("rp_goods") as Repeater;
            rp8.DataSource = dt.AsEnumerable().Take(12).CopyToDataTable();
            rp8.DataBind();
        }
    }

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
        sb.Append("INNER JOIN VW_VIP_0527_1 AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


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
        sb.Append("INNER JOIN VW_VIP_0527_2 AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }



    public static Dictionary<string, int> GetCouponDic()
    {
        Dictionary<string, int> dic = new Dictionary<string, int>();
        dic.Add("1", 10120);
        dic.Add("2", 10121);
        dic.Add("3", 10122);
        return dic;
    }

    public Dictionary<int, int> GetCouponCountDic()
    {
        Dictionary<int, int> dic = new Dictionary<int, int>();
        foreach (int id in GetCouponDic().Values)
        {
            dic.Add(id, 0);
        }
        return dic;
    }
    public static Dictionary<int, int> GetCouponLimitDic()
    {
        Dictionary<int, int> dic = new Dictionary<int, int>();
        dic.Add(GetCouponDic()["1"], 400);
        dic.Add(GetCouponDic()["2"], 550);
        dic.Add(GetCouponDic()["3"], 400);
        return dic;
    }

    public static string _strSql = "SELECT COUNT(GA01) AS CT,G.G01 AS GID FROM G INNER JOIN GA ON GA.G01=G.G01";
    public DataTable GetCouponDt()
    {
        string ids = "";
        foreach (int id in GetCouponDic().Values)
        {
            ids += id.ToString() + ",";
        }
        ids = ids.TrimEnd(',');
        string strSql = _strSql + " WHERE G.G01 IN (" + ids + ") GROUP BY G.G01";
        return SqlDbmanager.queryBySql(strSql);
    }

    public static DataTable GetCouponDt(int eventId)
    {
        string strSql = _strSql + " WHERE G.G01=" + eventId + " GROUP BY G.G01";
        return SqlDbmanager.queryBySql(strSql);
    }

    public static bool HasGetCoupon(string userId, int eventId)
    {
        string strSql = _strSql + " WHERE G.G01=" + eventId + " AND GA08=" + userId + " GROUP BY G.G01";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }


    [System.Web.Services.WebMethod]
    public static string GetCouponInfo(string userID, string type)
    {
        bool status = false;
        int count = 0;
        string returnMsg = "";

        if (!GetCouponDic().ContainsKey(type))
            return returnMsg;

        int eventId = GetCouponDic()[type];
        DataTable dt = GetCouponDt(eventId);

        if (dt.Rows.Count > 0)
            count = Convert.ToInt32(dt.Rows[0]["CT"].ToString());

        if (HasGetCoupon(userID, eventId))
            returnMsg = "Oops, you've already claimed this! Try the others!";
        else if (GetCouponLimitDic()[eventId] > count)
        {
            returnMsg = "Congrats! <br/> You've successfully claimed it. The coupon is saved in your account! Happy Shopping";
            status = true;
        }
        else
            returnMsg = "Oops, the coupon has been fully redeemed! Try the others!";


        //由上方Method產生隨機coupon code
        //由上方Method產生隨機coupon code
        CouponReq cr = new CouponReq();
        cr.userId = userID;
        switch (type)
        {
            case "1":
                {
                    cr.eventId = GetCouponDic()["1"];
                    cr.limitation = 240;
                    cr.discount = 20;
                    break;
                }
            case "2":
                {
                    cr.eventId = GetCouponDic()["2"];
                    cr.limitation = 380;
                    cr.discount = 35;
                    break;
                }
            case "3":
                {
                    cr.eventId = GetCouponDic()["3"];
                    cr.limitation = 600;
                    cr.discount = 60;
                    break;
                }
        }

        GetCouponCode(cr);
        StringBuilder sb = new StringBuilder();
        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\",");
        sb.Append("\"status\":\"" + status + "\"");
        sb.Append("}]");
        return sb.ToString();

    }


    public class CouponReq
    {
        public string userId { get; set; }
        public int eventId { get; set; }
        public int discount { get; set; }
        public int limitation { get; set; }
    }
    private static string GetCouponCode(CouponReq cr)
    {
        CouponData couponData = new CouponData();
        couponData.EventId = cr.eventId;
        couponData.GetMultiple = false;
        couponData.UserId = int.Parse(cr.userId);
        couponData.Discount = cr.discount;
        couponData.Limitation = cr.limitation;
        couponData.STime = "2020-06-01 00:00:00";
        couponData.ETime = "2020-06-18 12:00:00";
        couponData.ExFlagBrand = false;
        couponData.CouponNote = "MYS_2020_06_04";
        //couponData.ConditionType = CouponData.EnConditionType.Assignation;
        couponData.ConditionType = CouponData.EnConditionType.Exclude;
        couponData.CouponType = CouponData.EnCouponType.Single;
        couponData.CouponSetData = new CouponSetData();
        CreateCouponBL couponBL = new CreateCouponBL(couponData);
        string couponNum = couponBL.CreateCouponReturnCode();
        return couponNum;
    }
}