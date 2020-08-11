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

public partial class user_static_200514_rayasale_hotdeal : System.Web.UI.Page
{

    //測試 782

    //private int _hotdealId = 958;
    private int _hotdealId = 782;
    private string eventId = "EVENT0513";
    private int[] _eids = { 958, 959, 960 };
    protected void Page_Load(object sender, EventArgs e)
    {

        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/200514_rayasale_hotdeal.aspx" + Request.Url.Query);//2020momsday2.aspx更改為這次活動頁面名稱
        if (!IsPostBack)
        {
            BindHotDeal();
            BindTop8ClassData();
        }


    }

    private void BindHotDeal()
    {
        DataTable dt = BindData(_hotdealId);
        if (dt.Rows.Count > 0)
        {
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = dt.AsEnumerable().Take(8).CopyToDataTable();
            rp.DataBind();

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

        DataTable dt = GetGoods((this.Master as user_user).LgType, "top8");
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
        sb.Append("INNER JOIN " + eventId + " AS T ON T.PID=WP01 ");//EVENT0513 每次活動選品池修改
        sb.Append("WHERE NOT EXISTS");
        sb.Append("(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (");
        string str_eids = "";
        foreach (int eid in _eids)
        {
            str_eids += eid.ToString() + ",";
        }
        str_eids = str_eids.TrimEnd(',');
        sb.Append(str_eids);
        sb.Append(") AND WP01=SPD02) ");
        if (et == "top8")
        {
            sb.Append("AND WP01!=21569 ");
            sb.Append("AND VRANK<12 ");
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