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

public partial class user_wordcupsales : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender,EventArgs e)
    {
        Response.Redirect("../user/wordcupsales2.aspx");
    }


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
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/wordcupsales2.aspx'", true);
                }
            }

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
                if (dt.Select("SPD01=482") != null)
                {
                    Repeater1.DataSource = dt.Select("SPD01=482").CopyToDataTable();
                    Repeater1.DataBind();
                }
                if (dt.Select("SPD01=483") != null)
                {
                    Repeater2.DataSource = dt.Select("SPD01=483").CopyToDataTable();
                    Repeater2.DataBind();
                }
                if (dt.Select("SPD01=484") != null)
                {
                    Repeater3.DataSource = dt.Select("SPD01=484").CopyToDataTable();
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
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 IN (482,483,484) AND SPD02=WP01 ) AS DT ");
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




    //protected void button2_Click(object sender, EventArgs e)
    //{
    //    if (Session["A01"] != null)
    //    {
    //        int userid = Convert.ToInt32(Session["A01"].ToString());
    //        string s = checkuser(userid);
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('" + s + "');", true);
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
    //    }
    //}



    //檢查是否領過
    //    protected string checkuser(int userid)
    //    {
    //        DataTable dtLog = new DataTable();
    //        DataTable dtOrm = new DataTable();
    //        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();

    //        string giftGUID = "2fa75ce0-0f50-4eab-8bc6-5faff8681e8b";

    //        string sqlOrm = @"SELECT ORM01 FROM ORDERM WHERE ORM23=@ORM23 AND ORM03 BETWEEN '2018-06-05 00:00:00' AND '2018-06-20 23:59:59'
    //AND ORM19=1 AND ORM24>0 AND ORM08>=299 AND DATEDIFF(DAY,ORM03,GETDATE())<3 AND DATEDIFF(DAY,ORM03,ORM40)<3  
    //AND NOT EXISTS (SELECT ORM01 FROM GIFTREGISTERLOG AS DT WHERE GRLOG04='180605SummerRaya' AND A01=@ORM23 AND ORM01=DT.ORM01)";

    //        string sqlLog = @"SELECT GRLOG01 FROM GIFTREGISTERLOG WHERE GRLOG04='180605SummerRaya' AND A01=@A01";

    //        SqlCommand cmdOrm = new SqlCommand();
    //        SqlCommand cmdLog = new SqlCommand();
    //        cmdOrm.CommandText = sqlOrm;
    //        cmdLog.CommandText = sqlLog;
    //        cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
    //        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

    //        dcmd.Add("Log", cmdLog);
    //        dcmd.Add("Orm", cmdOrm);

    //        DataSet ds = SqlDbmanager.queryBySql(dcmd);
    //        dtLog = ds.Tables["Log"];
    //        dtOrm = ds.Tables["Orm"];

    //        string response = "";

    //        if (dtOrm.Rows.Count > 0)       //有符合的訂單
    //        {
    //            if (dtLog.Rows.Count < 1)      //代表未領過
    //            {
    //                string orm01 = dtOrm.Rows[0]["ORM01"].ToString();
    //                response = RegisterPrize(orm01, userid, giftGUID);
    //            }
    //            else
    //            {
    //                response = "一張訂單只能领一次喔。";
    //            }
    //        }
    //        else
    //        {
    //            response = "哎呀，还差一点就符合订单金额门槛，快找姐妹凑一凑，很容易到的啦。";
    //        }

    //        return response;
    //    }


    //protected string RegisterPrize(string orm01, int userid, string sgiftGUID)
    //{
    //    string response = "";
    //    string sql = @"INSERT INTO GiftRegisterLog (GRLOG02,A01,GRLOG03,ORM01,GRLog04) VALUES (@GRLOG02,@A01,@GRLOG03,@ORM01,@GRLOG04)";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sql;
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG02", SqlDbType.SmallDateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG03", SqlDbType.UniqueIdentifier, sgiftGUID));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@ORM01", SqlDbType.UniqueIdentifier, orm01));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG04", SqlDbType.VarChar, "180605SummerRaya"));

    //    string s = ORDER.JoinGift2Order(orm01, sgiftGUID);
    //    if (s == "OK")
    //    {
    //        response = "Yeah，已成功领取。";
    //        SqlDbmanager.executeNonQry(cmd);
    //    }
    //    else if (s == "FAIL")
    //    {
    //        response = "Oh No,系统好像出现了问题,若多次无法使用请麻烦与客服联系。";
    //    }
    //    else if (s == "NO_ORDER")
    //    {
    //        response = "系統找不到符合的訂單，若多次无法使用请麻烦与客服联系。";
    //    }
    //    else if (s == "NO_GIFT")
    //    {
    //        response = "未完成领取程序，若多次无法使用请麻烦与客服联系。";
    //    }

    //    return response;
    //}



}