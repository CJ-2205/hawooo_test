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

public partial class mobile_lovemom2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //DataTable dt = getDt(499);
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();     

            did = 1;
            //if (Request.QueryString["did"] != null)
            //{
            //    did = int.Parse(Request.QueryString["did"].ToString());

            //}
            //switch (did)
            //{
            //    case 1:
            //        {
            //            hidimg.Visible = true;
            //            break;
            //        }
            //    case 2:
            //        {
            //            hidimg2.Visible = true;
            //            break;
            //        }
            //    case 3:
            //        {
            //            hidimg3.Visible = true;
            //            break;
            //        }

            //};
            bindDT();

        }

    }


    //private int did = 1;
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
    //    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01="+i.ToString()+" )");
    //    //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,338,340) )");
    //    DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
    //    return dt;
    //}




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
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01=510 AND SPD02=WP01 ) AS DT ");
        sb.Append("WHERE WP05=1 ");
        //sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=362 )");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,338,340) )");
        switch (did)
        {
            case 1: //新品排行Top10
                {

                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=510) ");

                    break;
                }
            //case 2: //VIVI PAM
            //    {

            //        sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=501) ");

            //        break;
            //    }
            //case 3: //IVYMAISON
            //    {

            //        sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=502) ");

            //        break;
            //    }


        }
        sb.Append(" ORDER BY WP18 DESC ");
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }


    public void s()
    {
        string _PC01 = "e1f8b1d2-b129-4e8c-898f-bd69f3031535";          //折扣卷的guid (商品)
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
            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=lovemom2.aspx');", true);
        }
    }

    protected void button1_Click(object sender, EventArgs e)
    {
        s();
    }
}