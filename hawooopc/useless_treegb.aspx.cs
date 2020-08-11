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

public partial class user_static_200514_rayasale : System.Web.UI.Page
{
    protected int EventIdOfHotDeal = 782; // 958;
    protected int EventIdOfValueBuy = 782; // 959;
    protected int EventIdOfHighlightedBrand = 782; // 960;

    protected int ProductAmountOfHotDeal = 8;
    protected int ProductAmountOfValueBuy = 8;
    protected int ProductAmountOfHighlightedBrand = 8;


    private string eventId = "EVENT0513";
    private int[] _eids = { 958, 959, 960 };

    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/200514_rayasale.aspx" + Request.Url.Query);//2020momsday2.aspx更改為這次活動頁面名稱

        if (!IsPostBack)
        {
            BindProductOfHotDeal(this.EventIdOfHotDeal, this.ProductAmountOfHotDeal);
            //BindProductOfValueBuy(this.EventIdOfValueBuy, this.ProductAmountOfValueBuy);
            //BindProductOfHighlightedBrand(this.EventIdOfHighlightedBrand, this.ProductAmountOfHighlightedBrand);
            //BindTop8ClassData(); // RP of 6 Categories.
            //BindRandom15Data();

            TreegbTesting();
        }

    }

    // TreegbTesting
    private void TreegbTesting()
    {
        //DataTable Dt = GetDataDt(this.EventIdOfHotDeal);//帶入活動 ID。

        //if (Dt.Rows.Count > 0)
        //{
        //    if (ProductAmountOfHotDeal > 0)
        //    {
        //        //Dt = Dt.AsEnumerable().Take(ProductAmountOfHotDeal).CopyToDataTable();//帶入 n 隻商品。
        //        //Dt = Dt.AsEnumerable().Take(3).CopyToDataTable();//帶入 n 隻商品。
        //    }

        //    Repeater rp = TreegbUc1.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
        //    rp.DataSource = Dt;
        //    rp.DataBind();

        //    TreegbLabel1.Text = $"...";
        //} else
        //{
        //    TreegbLabel1.Text = "treegb_err_faild-1";
            
        //}

        TreegbLabel1.Text = $"so far so ...";
        
        
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top15");
        if (dt.Rows.Count > 0)
        {
            TreegbLabel2.Text = $"good";
            
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                
                //Repeater rp3 = products4.FindControl("rp_goods") as Repeater;
                //rp3.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                //rp3.DataBind();

                Repeater rp = TreegbUc1.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
                rp.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();;
                rp.DataBind();
            }
        }
    }

    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top15");
        Repeater rp = products10.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();
    }
    private void BindProductOfHotDeal(int EventId, int ProductAmount = 0)
    {
        DataTable Dt = GetDataDt(EventId);//帶入活動 ID。

        if (Dt.Rows.Count > 0)
        {
            if (ProductAmount > 0)
            {
                Dt = Dt.AsEnumerable().Take(ProductAmount).CopyToDataTable();//帶入 n 隻商品。
            }

            Repeater rp = products1.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
            rp.DataSource = Dt;
            rp.DataBind();
        }
    }
    private void BindProductOfValueBuy(int EventId, int ProductAmount = 0)
    {
        DataTable Dt = GetDataDt(EventId);//帶入活動 ID。

        if (Dt.Rows.Count > 0)
        {
            if (ProductAmount > 0)
            {
                Dt = Dt.AsEnumerable().Take(ProductAmount).CopyToDataTable();//帶入 n 隻商品。
            }

            Repeater rp = products2.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
            rp.DataSource = Dt;
            rp.DataBind();
        }
    }
    private void BindProductOfHighlightedBrand(int EventId, int ProductAmount = 0)
    {
        DataTable Dt = GetDataDt(EventId);//帶入活動 ID。

        if (Dt.Rows.Count > 0)
        {
            if (ProductAmount > 0)
            {
                Dt = Dt.AsEnumerable().Take(ProductAmount).CopyToDataTable();//帶入 n 隻商品。
            }

            Repeater rp = products3.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
            rp.DataSource = Dt;
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

    // RP of 6 Categories.
    private void BindTop8ClassData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top4");
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp3 = products4.FindControl("rp_goods") as Repeater;
                rp3.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp3.DataBind();
            }
            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp4 = products5.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp4.DataBind();
            }
            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp5 = products6.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp5.DataBind();
            }
            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp6 = products7.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp6.DataBind();
            }
            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp7 = products8.FindControl("rp_goods") as Repeater;
                rp7.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp7.DataBind();
            }
            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp8 = products9.FindControl("rp_goods") as Repeater;
                rp8.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp8.DataBind();
            }
        }
    }

    /// <summary>
    /// 商品資料表
    /// </summary>
    /// <param name="lg">語系</param>
    /// <param name="et">條件</param>
    /// <returns></returns>
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
        sb.Append("INNER JOIN "+ eventId + " AS T ON T.PID=WP01 ");//EVENT0513 每次活動選品池修改
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
