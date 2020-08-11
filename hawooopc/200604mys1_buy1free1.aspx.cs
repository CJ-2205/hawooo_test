﻿using System;
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

public partial class user_static_200604mys1_buy1free1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200604mys1_buy1free1.aspx" + Request.Url.Query);
            }

            // Todo: Change 777 (event id) to real event id.
            BindProduct(productBuy1free1, 985, 0);

            // Todo_treegb: uncomment this after testing.
            //BindTop8ClassData();
            BindCouponCount();

            treegbDebugging();
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

    public static Dictionary<string, int> GetCouponDic()
    {
        Dictionary<string, int> dic = new Dictionary<string, int>();
        dic.Add("1", 195);
        dic.Add("2", 196);
        dic.Add("3", 197);
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
    private void BindProduct(dynamic webControlId, int eventId, int take = 0)
    {
        //注意，1. 每個 block ("HotDeal", for "ValueBuy", for "HighlightedBrand" ...) 都有自己的活動 ID，ID 跟維運要。2. 活動開始前，即使是正確 ID 可能也會撈不到東西。
        DataTable dt = GetDataDt(eventId); //eventId 為活動ID

        if (dt.Rows.Count > 0)
        {
            if (take != 0)
            {
                dt = dt.AsEnumerable().Take(take).CopyToDataTable(); //帶入12隻商品，如果要全帶直接綁定dt (var take = dt;)
            }
            Repeater rp = webControlId.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
            rp.DataSource = dt;
            rp.DataBind();
        }
    }

    /// <summary>
    /// 活動商品資料表
    /// </summary>
    /// <param name="id">活動編號</param>
    /// <returns></returns>
    private DataTable GetDataDt(int id)
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
    
    // Todo_treegb: delete this after testing.
    private void treegbDebugging ()
    {
        DataTable dt = GetDataDt(777); //eventId 為活動ID

        if (dt.Rows.Count > 0)
        {
            Repeater rp2 = productsCategory1.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt;
            rp2.DataBind(); 
        }    
    }
    private void BindTop8ClassData()
    {
        DataTable dt = GetCategoryGoodsRank((this.Master as user_user).LgType);
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp2 = productsCategory1.FindControl("rp_goods") as Repeater;
                rp2.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp2.DataBind();
            }

            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp3 = productsCategory2.FindControl("rp_goods") as Repeater;
                rp3.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp3.DataBind();
            }

            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp4 = productsCategory3.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp4.DataBind();
            }

            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp5 = productsCategory4.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp5.DataBind();
            }

            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp6 = productsCategory5.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp6.DataBind();
            }

            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp7 = productsCategory6.FindControl("rp_goods") as Repeater;
                rp7.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp7.DataBind();
            }
        }
    }

    /// <summary>
    /// 商品類別
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
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
        sb.Append("INNER JOIN VW_VIP_0604_1  AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

}