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

public partial class mobile_static_200514_rayasale : System.Web.UI.Page
{

    //private int _hotdealId = 958;
    //private int _valueId = 959;
    //private int _brandId = 960;

    private string eventId = "EVENT0513";
    private int[] _eids = { 958, 959, 960 };

    //測試版專用
    //private int eid = 798;//測試版專用
    private int _hotdealId = 798;
    private int _valueId = 798;
    private int _brandId = 798;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindHotDeal();
            BindHightBrand();
            BindValueBuy();
            BindTop8ClassData();
            BindRandom15Data();
        }
    }


    private void BindHotDeal()
    {
        DataTable dt = BindData(_hotdealId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }

    private void BindValueBuy()
    {
        DataTable dt = BindData(_valueId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products2.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }

    private void BindHightBrand()
    {
        DataTable dt = BindData(_brandId);
        if (dt.Rows.Count > 0)
        {
            Repeater rp = products3.FindControl("rp_goods") as Repeater;
            rp.DataSource = dt;
            rp.DataBind();
            ScriptManager.RegisterStartupScript(Page, GetType(), "img", "putimg(" + dt.Rows.Count + ");", true);
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

        DataTable dt = GetGoods((this.Master as mobile).LgType, "top8");
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp = products4.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp = products5.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp = products6.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp = products7.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp = products8.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp = products9.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
        }
    }
    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as mobile).LgType, "top15");
        Repeater rp = products10.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();
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