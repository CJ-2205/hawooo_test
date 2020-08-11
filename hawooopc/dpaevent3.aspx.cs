using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_dpaevent3 : System.Web.UI.Page
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
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/dpaevent3.aspx'", true);
                }
            }

            did = 1;
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());
            }
            bindDT();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SetSelClass(" + did + ");", true);
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SelectedImg(" + did + ");", true);       //換圖的func

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
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=477) ORDER BY WP18 DESC");
                    break;
                }
            case 2: //Cleanser
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (60,58)) ORDER BY WP11 DESC");
                    break;
                }
            case 3: //Toner/Essence
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (57,56))  ORDER BY WP11 DESC");
                    break;
                }
            case 4: //Moisturizer
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (59,62))  ORDER BY WP11 DESC");
                    break;
                }
            case 5: //Mask
                {
                    sb.Append("AND WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03 IN (55,61))  ORDER BY WP11 DESC");
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
            string couponID = "6971bd66-7531-4a56-bbb1-2220fcd3b793";
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