﻿using System;
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

public partial class user_hallmark1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/hallmark1.aspx" + Request.Url.Query);

            BindProductData();


        }
    }

    private void BindProductData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType);
        Repeater rp = products.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();
    }

    public DataTable GetGoods(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");

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
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("WHERE WP01 IN (24695,13854,23528)");
        sb.Append(@"order by ( CASE WP01 
    WHEN 24695 THEN '01'
    WHEN 27472 THEN '02'
    WHEN 27192 THEN '03'
    END)");

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }







}

