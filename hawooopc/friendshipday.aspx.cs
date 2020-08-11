﻿using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_friendshipday : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (Session["desktop"] == null)
            {
                if (ismobile)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/friendshipday.aspx'", true);
                }
            }

            did = 1;
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());
            }
            ScriptManager.RegisterStartupScript(Page, GetType(), "block", "imghid(" + did + ");", true);
            bindDT();


        }
    }
    private int did = 1;

    private void bindDT()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("(COUNT(*) OVER()) as PCOUNT,");
        sb.Append("SPD01,");
        sb.Append("WP01,");
        sb.Append("WP02,");
        sb.Append("WP27,");
        sb.Append("WP08_1,");
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
        sb.Append("Price as WPA06,");
        sb.Append("OPrice as WPA10 ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 IN (505,506,507,508) AND SPD02=WP01 ) AS DT ");
        sb.Append("WHERE WP05=1 ");
        //sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=362 )");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,338,340) )");
        switch (did)
        {
            case 1: //新品排行Top10
                {
            
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=505) AND SPD01=505 ");
             
                    break;
                }
            case 2: //VIVI PAM
                {
              
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=506) AND SPD01=506 ");
          
                    break;
                }
            case 3: //IVYMAISON
                {
                
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=507) AND SPD01=507 ");
                 
                    break;
                }
            case 4: //IVYMAISON
                {

                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=508) AND SPD01=508 ");

                    break;
                }

        }
        sb.Append(" ORDER BY WP18 DESC ");
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }



    //private DataTable getDt(int i)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("SELECT ");
    //    sb.Append("(COUNT(*) OVER()) as PCOUNT,");
    //    sb.Append("SPD01,");
    //    sb.Append("WP01,");
    //    sb.Append("WP02,");
    //    sb.Append("WP27,");
    //    sb.Append("WP08_1,");
    //    sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
    //    sb.Append("Price as WPA06,");
    //    sb.Append("OPrice as WPA10 ");
    //    sb.Append("FROM WP ");
    //    sb.Append("INNER JOIN ProductPriceView ON PID=WP01 CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 IN (490,491,492) AND SPD02=WP01 ) AS DT ");
    //    sb.Append("WHERE WP05=1 ");
    //    //sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
    //    sb.Append("AND WP07=1 ");
    //    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=" + i.ToString() + " )");
    //    //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,338,340) )");
    //    DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
    //    return dt;
    //}







    protected void button1_Click(object sender, EventArgs e)
    {
        s();
    }


    public void s()
    {
        string _PC01 = "d5d0d0b4-54cd-43f4-bfdf-bd11bf044dbe";          //折扣卷的guid (商品)
        if (Session["A01"] != null)
        {
            string rval = GAFactory.ClickEvent(Convert.ToInt32(Session["A01"].ToString()), _PC01);
            if (rval.Equals("OK"))
            {
                ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
            }
            else if (rval.Equals("ERROR"))
            {
                ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('Oops! 你已經領取過囉');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=friendshipday.aspx');", true);
        }
    }



}