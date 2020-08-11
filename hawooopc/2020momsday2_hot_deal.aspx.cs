using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
public partial class user_static_2020momsday2_hot_deal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/2020momsday2_hot_deal.aspx" + Request.Url.Query);
        if (!IsPostBack)
        {
            BindHotDeal();
            BindTop8ClassData();
            //BindRandom15Data();
        }
    }

    private void BindHotDeal()
    {
        DataTable dt = BindData(930);
        //DataTable dt = BindData(637);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(24).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }

    //private void BindHightBrand()
    //{
    //    DataTable dt = BindData(933);
    //    //DataTable dt = BindData(637);
    //    if (dt.Rows.Count > 0)
    //    {
    //        var take = dt.AsEnumerable().Take(8).CopyToDataTable();
    //        Repeater rp = products2.FindControl("rp_goods") as Repeater;
    //        rp.DataSource = take;
    //        rp.DataBind();
    //    }
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

    private void BindTop8ClassData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top4");
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp = products2.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp.DataBind();
            }

            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp = products3.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp.DataBind();
            }

            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp = products4.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp.DataBind();
            }

            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp = products5.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp.DataBind();
            }


            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp = products6.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp.DataBind();
            }

            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp = products7.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
        }
    }


    //private void BindRandom15Data()
    //{
    //    DataTable dt = GetGoods((this.Master as user_user).LgType, "top15");
    //    Repeater rp = products8.FindControl("rp_goods") as Repeater;
    //    rp.DataSource = dt;
    //    rp.DataBind();
    //}

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
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("INNER JOIN EVENT0420 AS T ON T.PID=WP01 ");
        sb.Append("WHERE NOT EXISTS");
        sb.Append("(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (931,932) AND WP01=SPD02) ");

        if (et == "top4")
        {
            sb.Append("AND WP01!=21569 ");
            sb.Append("AND VRANK<12 ");
            //sb.Append("ORDER BY WP18 DESC ");
        }
        if (et == "top15")
        {

            sb.Append("AND VRANK>=12 ");
            sb.Append("ORDER BY NEWID()");
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}