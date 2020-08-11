using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_dpaevent1 : System.Web.UI.Page
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
            bindDT();
        }

    }
    private int did = 1;
    private void bindDT()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("(COUNT(*) OVER()) as PCOUNT,");
        sb.Append("WP01,");
        sb.Append("WP02,");
        sb.Append("WP08_1,");
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
        sb.Append("Price as WPA06,");
        sb.Append("OPrice as WPA10 ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("WHERE WP05=1 ");
        sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        switch (did)
        {
            case 1: //熱銷商品
                {
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=472) ");
                    break;
                }
            case 2: //皮膚保養
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03=64) ");
                    break;
                }
            case 3: //豐胸產品
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03=65) ");
                    break;
                }
            case 4: //減肥產品
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (178,179,210,181,182,192)) ");
                    break;
                }
            case 5: //私密呵護
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (185,186)) ");
                    break;
                }
            case 6: //孕媽保養
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (189,190)) ");
                    break;
                }
        }
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }


    protected void button1_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            string couponID = "891bd241-495d-4987-b61e-c244d68f613e";
            ProductCouponUserGetFac pcuFac = new ProductCouponUserGetFac();
            pcuFac.GetProductCoupon(couponID, int.Parse(Session["A01"].ToString()));
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('領取成功');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
        }
    }
}