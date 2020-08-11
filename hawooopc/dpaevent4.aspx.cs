using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dpaevent4 : System.Web.UI.Page
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
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/dpaevent4.aspx'", true);
                }
            }

            did = 1;
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());
            }
            bindDT();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SetSelClass(" + did + ");", true);
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
        sb.Append("WP27,");
        sb.Append("WP08_1,");
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
        sb.Append("Price as WPA06,");
        sb.Append("OPrice as WPA10 ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("WHERE WP05=1 ");
        sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        sb.Append("AND WP07!=2 ");
        sb.Append("AND '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' BETWEEN WP.WP09 AND WP.WP10 ");
        switch (did)
        {
            case 1: //熱銷商品
                {
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=485) ORDER BY WP18 DESC");
                    break;
                }
            case 2: //Bras
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (68,69)) ORDER BY WP11 DESC");
                    break;
                }
            case 3: //Bra Tops
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (72))  ORDER BY WP11 DESC");
                    break;
                }
            case 4: //Sexy Lingerie
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (104))  ORDER BY WP11 DESC");
                    break;
                }
            case 5: //Panties
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (66,67))  ORDER BY WP11 DESC");
                    break;
                }
            case 6: //Shape Wears
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (70,71))  ORDER BY WP11 DESC");
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
            string couponID = "8c4f6641-2043-4d5c-ada0-c142e0cc40c2";
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