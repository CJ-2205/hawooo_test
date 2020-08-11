using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_skincaredpa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            did = 1;
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());

            }
            switch (did)
            {
                case 1:
                    {
                        hidimg.Visible = true;
                        break;
                    }
                case 2:
                    {
                        hidimg2.Visible = true;
                        break;
                    }
                case 3:
                    {
                        hidimg3.Visible = true;
                        break;
                    }

            };
            bindDT();

        }

    }


    private int did = 1;

    private void bindDT()
    {
        string strCmd = "";
        switch (did)
        {
            case 1:
                {
                    strCmd = "AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=503) ";
                    break;
                }
            case 2:
                {
                    strCmd = "AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=504) ";
                    break;
                }
            case 3:
                {

                    strCmd = "AND DATEDIFF(DAY,WP11,GETDATE())<=90 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
                    break;
                }
        }
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("(COUNT(*) OVER()) as PCOUNT,");
        sb.Append("WP01,");
        sb.Append("WP02,");
        sb.Append("WP27,");
        sb.Append("WP08_1,");
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
        sb.Append("Price as WPA06,");
        sb.Append("OPrice as WPA10 ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        if (did==3)
        {
            sb.Append("CROSS APPLY (SELECT WPC03 FROM WPCLS WHERE WPC02=WP01 AND WPC03 IN (SELECT C01 FROM C WHERE  C03=0 AND C02=1 AND C01=42)) AS DT ");
        }
        sb.Append("WHERE WP05=1 ");
        sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B31=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        sb.Append(strCmd);
        sb.Append(" ORDER BY WP18 DESC ");
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        //ScriptManager.RegisterStartupScript(Page, GetType(), "top", "  SetSelClass("+did+");", true);


        //if (did.Equals(1))
        //{
        //    //cpM.Visible = true;
        //    ScriptManager.RegisterStartupScript(Page, GetType(), "top", "top10();", true);
        //}
        //else if (did.Equals(5))
        //    cpM.Visible = true;


    }


    public void s()
    {
        string _PC01 = "89f939ca-556b-4143-ab5c-0d0402c856ed";          //折扣卷的guid (商品)
        if (Session["A01"] != null)
        {
            string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
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
                ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=skincaredpa.aspx');", true);
        }
    }

    protected void button1_Click(object sender, EventArgs e)
    {
        s();
    }
}