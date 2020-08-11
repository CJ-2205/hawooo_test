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

public partial class mobile_static_200618mys2_value_buy : System.Web.UI.Page
{

    private int ValueBuyEventId = 1003; 

    //private int ValueBuyProducts = 8;
 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            BindValueBuy();

            BindCoupnCount();
            //BindTop8ClassData();


        }
    }



    private void BindValueBuy()
    {
        DataTable dt = GetDataDt(this.ValueBuyEventId);
        if (dt.Rows.Count > 0)
        {
            //var take = dt.AsEnumerable().Take(this.ValueBuyProducts).CopyToDataTable();
            Repeater rp2 = products3.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt;
            rp2.DataBind();
        }
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
        for (int i = 0; i < list1.Count; i++)
        {
            if (dt.Rows.Count == 0)
            {
                list1[i].Text = Convert.ToString(listDisplayNum[i]);
            }
            else
            {
                list1[i].Text = Convert.ToString(
                    Convert.ToInt32(
                        dt.Select("[" + ColKeyName + "] LIKE '" + list2[i] + "'")[0][ColValueName].ToString()
                    ) + listDisplayNum[i]
                );
            }
        }
    }

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

    //private void BindTop8ClassData()
    //{
    //    DataTable dt = GetCategoryGoodsRank((this.Master as mobile).LgType);
    //    if (dt.Rows.Count > 0)
    //    {
    //        if (dt.Select("CNAME='彩妝'").Length > 0)
    //        {
    //            Repeater rp4 = products5.FindControl("rp_goods") as Repeater;
    //            rp4.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
    //            rp4.DataBind();
    //        }

    //        if (dt.Select("CNAME='保養'").Length > 0)
    //        {
    //            Repeater rp5 = products6.FindControl("rp_goods") as Repeater;
    //            rp5.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
    //            rp5.DataBind();
    //        }

    //        if (dt.Select("CNAME='保健'").Length > 0)
    //        {
    //            Repeater rp6 = products7.FindControl("rp_goods") as Repeater;
    //            rp6.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
    //            rp6.DataBind();
    //        }

    //        if (dt.Select("CNAME='生活'").Length > 0)
    //        {
    //            Repeater rp7 = products8.FindControl("rp_goods") as Repeater;
    //            rp7.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
    //            rp7.DataBind();
    //        }

    //        if (dt.Select("CNAME='美食'").Length > 0)
    //        {
    //            Repeater rp8 = products9.FindControl("rp_goods") as Repeater;
    //            rp8.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
    //            rp8.DataBind();
    //        }

    //        if (dt.Select("CNAME='母嬰'").Length > 0)
    //        {
    //            Repeater rp9 = products10.FindControl("rp_goods") as Repeater;
    //            rp9.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
    //            rp9.DataBind();
    //        }
    //    }

    //}


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
        sb.Append("INNER JOIN VW_CATEGORY_RANK AS TA ON TA.PID=WP01 ");
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
        sb.Append("INNER JOIN VW_SALE_RANK AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}