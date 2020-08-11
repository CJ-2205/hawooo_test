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

public partial class mobile_wordcupsales2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //did = 1;
            //if (Request.QueryString["did"] != null)
            //{
            //    did = int.Parse(Request.QueryString["did"].ToString());
            //}
            //bindDT();
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SetSelClass(" + did + ");", true);


            DataTable dt = getDt();
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
   


            try
            {
                if (dt.Select("SPD01=490") != null)
                {
                    Repeater1.DataSource = dt.Select("SPD01=490").CopyToDataTable();
                    Repeater1.DataBind();
                }
                if (dt.Select("SPD01=491") != null)
                {
                    Repeater2.DataSource = dt.Select("SPD01=491").CopyToDataTable();
                    Repeater2.DataBind();
                }
                if (dt.Select("SPD01=492") != null)
                {
                    Repeater3.DataSource = dt.Select("SPD01=492").CopyToDataTable();
                    Repeater3.DataBind();
                }


                //DataView dv1 = dt.DefaultView;
                //dv1.RowFilter = "SPD01=362";
                //DataView dv2 = dt.DefaultView;
                //dv2.RowFilter = "SPD01=338";
                //DataView dv3 = dt.DefaultView;
                //dv3.RowFilter = "SPD01=340";

                //Repeater1.DataSource = dv1.ToTable();
                //Repeater1.DataBind();
                //Repeater2.DataSource = dv2.ToTable();
                //Repeater2.DataBind();
                //Repeater3.DataSource = dv3.ToTable();
                //Repeater3.DataBind();
            }
            catch (Exception ex)
            {
                //ScriptManager.RegisterStartupScript(Page, GetType(), "alert", "alert('" + ex.ToString() + "');", true);

                Response.Write(ex.ToString());
            }

            //Repeater2.DataSource = dt.Select("WP01='338'").CopyToDataTable();
            //Repeater2.DataBind();
            //Repeater3.DataSource = dt.Select("WP01='340'").CopyToDataTable();
            //Repeater3.DataBind();
        }

    }

    //private int did = 1;
    private DataTable getDt()
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
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 IN (490,491,492) AND SPD02=WP01 ) AS DT ");
        sb.Append("WHERE WP05=1 ");
        //sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=362 )");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,338,340) )");
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        return dt;
        //switch (did)
        //{
        //    case 1: //新品排行Top10
        //        {
        //            lit_title.Text = "新品排行榜";
        //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=362) ");
        //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week1/edmm_01.png";
        //            break;
        //        }
        //    case 2: //VIVI PAM
        //        {
        //            lit_title.Text = "VIVI PAM";
        //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=338) ");
        //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week1/edmm_02.png";
        //            hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=vivi";
        //            break;
        //        }
        //    case 3: //IVYMAISON
        //        {
        //            lit_title.Text = "IVYMAISON";
        //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=340) ");
        //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week1/edmm_03.png";
        //            hrefM.HRef = "https://www.hawooo.com/mobile/brand_1.aspx?bid=218";
        //            break;
        //        }
        //    case 4://健康力
        //        {
        //            lit_title.Text = "健康力";
        //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=370) ");
        //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week1/edmm_04.png";
        //            hrefM.HRef = "http://www.hawooo.com/mobile/search.aspx?stxt=%E5%81%A5%E5%BA%B7%E5%8A%9B";
        //            break;
        //        }
        //    case 5://新品排行Top40
        //        {
        //            lit_title.Text = "更多新品";
        //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=387) ");
        //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week1/edmm_01.png";
        //            break;
        //        }

        //}
        //DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        //rp_product_list.DataSource = dt;
        //rp_product_list.DataBind();
        //if (did.Equals(1))
        //{
        //    cpM.Visible = true;
        //    ScriptManager.RegisterStartupScript(Page, GetType(), "top", "top10();", true);
        //}
        //else if (did.Equals(5))
        //    cpM.Visible = true;
    }

    //protected void button1_Click(object sender, EventArgs e)
    //{
    //    getProductCoupon("1200df92-f98c-4e88-802f-d3ddc13f2167");
    //}



    /// <summary>
    /// 領取商品折扣券
    /// </summary>
    /// <param name="_PC01"></param>
    //public void getProductCoupon(string _PC01)
    //{
    //    //string _PC01 = "8b8abd7e-36a7-4982-b973-bde8c1e1bd16";       //折扣卷的guid (商品)
    //    if (Session["A01"] != null)
    //    {
    //        string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
    //        if (rval.Equals("OK"))
    //        {
    //            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
    //        }
    //        else if (rval.Equals("ERROR"))
    //        {
    //            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
    //        }
    //        else
    //        {
    //            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
    //        }
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=newarrivals1.aspx');", true);
    //    }
    //}

    /// <summary>
    /// 領取全站折扣券
    /// </summary>
    /// <param name="g01">活動ID</param>
    /// <param name="ga07">低銷</param>
    /// <param name="ga02">金額</param>
    //public void getAllCoupon(int g01, int ga07, int ga02)
    //{
    //    //int g01 = 114;        //活動ID
    //    //int ga07 = 99;       //低銷
    //    //int ga02 = 10;       //金額

    //    if (Session["A01"] != null)
    //    {
    //        GAFactory.UserGetCoupon(int.Parse(Session["A01"].ToString()), g01, ga07, ga02, "2018-06-05 00:00:00", "2018-06-20 23:59:59");         //全站折扣卷
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('領取成功');", true);
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
    //    }
    //}
}