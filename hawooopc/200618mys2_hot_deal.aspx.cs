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

public partial class user_static_200618mys2_hot_deal : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200618mys2_hot_deal.aspx" + Request.Url.Query);
            }

            // Todo: Change 777 (event id) to real event id.
            //BindProduct(productHotDeal, 777, 0);
            BindProduct(productHotDeal, 1002, 0);
            //BindTop8ClassData();
            BindCoupnCount();
        }
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

    // 這次活動，子頁不顯示 category.
    //private void BindTop8ClassData()
    //{
    //    DataTable dt = GetCategoryGoodsRank((this.Master as user_user).LgType);
    //    if (dt.Rows.Count > 0)
    //    {
    //        if (dt.Select("CNAME='彩妝'").Length > 0)
    //        {
    //            Repeater rp2 = productCategorySec1.FindControl("rp_goods") as Repeater;
    //            rp2.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
    //            rp2.DataBind();
    //        }

    //        if (dt.Select("CNAME='保養'").Length > 0)
    //        {
    //            Repeater rp3 = productCategorySec2.FindControl("rp_goods") as Repeater;
    //            rp3.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
    //            rp3.DataBind();
    //        }

    //        if (dt.Select("CNAME='保健'").Length > 0)
    //        {
    //            Repeater rp4 = productCategorySec3.FindControl("rp_goods") as Repeater;
    //            rp4.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
    //            rp4.DataBind();
    //        }

    //        if (dt.Select("CNAME='生活'").Length > 0)
    //        {
    //            Repeater rp5 = productCategorySec4.FindControl("rp_goods") as Repeater;
    //            rp5.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
    //            rp5.DataBind();
    //        }

    //        if (dt.Select("CNAME='美食'").Length > 0)
    //        {
    //            Repeater rp6 = productCategorySec5.FindControl("rp_goods") as Repeater;
    //            rp6.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
    //            rp6.DataBind();
    //        }

    //        if (dt.Select("CNAME='母嬰'").Length > 0)
    //        {
    //            Repeater rp7 = productCategorySec6.FindControl("rp_goods") as Repeater;
    //            rp7.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
    //            rp7.DataBind();
    //        }
    //    }
    //}

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
        sb.Append("INNER JOIN VW_CATEGORY_RANK  AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    // Bind coupon count onto page.
    public void BindCoupnCount()
    {
        string ColKeyName = "CODE";
        string ColValueName = "COUNT";

        var list1 = new List<dynamic>();
        list1.Add(Coupon1);
        list1.Add(Coupon2);
        list1.Add(Coupon3);

        var listDisplayNum = new List<int>();
        listDisplayNum.Add(245);
        listDisplayNum.Add(355);
        listDisplayNum.Add(289);

        var list2 = new List<string>();
        list2.Add("MID25");
        list2.Add("MID40");
        list2.Add("MID65");

        DataTable dt = GetCoupnCount(list2);
        for (int i = 0 ; i < list1.Count ; i++)
        {
            if (dt.Rows.Count == 0)
            {
                list1[i].Text = Convert.ToString(listDisplayNum[i]);    
            } else
            {
                list1[i].Text = Convert.ToString(
                    Convert.ToInt32(
                        dt.Select("[" + ColKeyName + "] LIKE '" + list2[i] + "'")[0][ColValueName].ToString()
                    ) + listDisplayNum[i]
                );
            }   
        }
    }

    // Get a datatable about current coupon count.
    // To use it:
    //   List<string> list = new List<string>();
    //   list.Add("CNY20");
    //   list.Add("CNY30");
    //   DataTable dt = GetCoupnCount(list);
    // Returned DataTable will look something like this:
    //   CODE   COUNT
    //   CNY20   50
    //   CNY30   10
    // Notice, the count is not remaining count, but already taken count.
    public DataTable GetCoupnCount(List<string> listCode)
    {
        DataTable dt = new DataTable();
        if (listCode.Count.Equals(0))
            return dt;
        SqlCommand cmd = new SqlCommand();
        string strSql = @"SELECT COUNT(ORM01) AS 'COUNT',ORM09 AS 'CODE' FROM ORDERM  WITH(NOWAIT)  WHERE ORM09 IN (";
        for (int i = 0; i < listCode.Count; i++)
        {
            strSql += "@CODE" + i.ToString() + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("CODE" + i.ToString(), SqlDbType.VarChar, listCode[i]));
        }
        strSql = strSql.TrimEnd(',');
        strSql += @")  GROUP BY ORM09";
        cmd.CommandText = strSql;
        dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}