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

public partial class user_180816 : System.Web.UI.Page
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
                    string get = "";
                    if (Request.Url.Query != "")
                        get = Request.Url.Query;
                    string url = "location.href='../mobile/180816.aspx" + get + "'";
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", url, true);
                    //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/tokichoi.aspx'", true);
                }
            }

            //did = 1;
            string tid = "";
            if (Request.QueryString["tid"] != null)
            {
                tid = Request.QueryString["tid"].ToString();
            }
            bindDT();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "GoID", "GoID('" + tid + "');", true);
        }
    }
    private DataTable sortPID(DataTable dt, int eid)
    {
        DataTable table = dt.Select("SPD01='" + eid + "'").CopyToDataTable();
        DataView dv = new DataView(table);
        dv.Sort = "WP18 DESC";
        table = dv.ToTable();
        return table;
    }

    private DataTable bindProduct1(int[] eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();

        string sJoin = "CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 in (@SPD) AND SPD02=WP01) AS SPD";
        string sList = "WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 in (@SPD))";
        string sParam = "";
        foreach (int i in eid)
        {
            sParam += "@SPD" + i + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD" + i, SqlDbType.Int, i));
        }
        sParam = sParam.Substring(0, sParam.Length - 1);
        sJoin = sJoin.Replace("@SPD", sParam);
        sList = sList.Replace("@SPD", sParam);
        List<string> JoinStrs = new List<string>();
        JoinStrs.Add(sJoin);         //補上cross apply出eid
        List<string> qList = new List<string>();
        qList.Add(sList);
        List<string> OtherCells = new List<string>();
        OtherCells.Add("SPD01");          //需要額外select出的欄位
        OtherCells.Add("WP18");
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", JoinStrs, true, OtherCells);

        dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }
    //private int did = 1;
    private void bindDT()
    {
        //string strCmd = "";
        ////bool b = true;
        ////switch (did)
        ////{
        ////    case 1: //限量超值組合
        ////        {
        ////            //lit_title.Text = "新品排行榜";
        ////            strCmd = "AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=520) ";
        ////            //imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edm_01.png";
        ////            //b = false;
        ////            break;
        ////        }
        ////    case 2: //戴美妝旅行去
        ////        {
        ////            //lit_title.Text = "保健食品 ";
        ////            strCmd = "AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=521) ";
        ////            //imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edm_01.png";
        ////            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=IJEALOUS";

        ////            break;
        ////        }
        ////    case 3: //帶禮物回家去
        ////        {
        ////            //lit_title.Text = "美體保養";
        ////            strCmd = "AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=522) ";
        ////            //imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edm_01.png";
        ////            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=KiKi%E6%8B%8C%E9%BA%B5";
        ////            break;
        ////        }
        ////}

        ////strCmd = "AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (520,521,522) ) ";
        //StringBuilder sb = new StringBuilder();
        //sb.Append("SELECT ");
        //sb.Append("SPD01,");
        //sb.Append("(COUNT(*) OVER()) as PCOUNT,");
        //sb.Append("WP01,");
        //sb.Append("WP02,");
        //sb.Append("WP27,");
        //sb.Append("WP08_1,");
        //sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
        //sb.Append("Price as WPA06,");
        //sb.Append("OPrice as WPA10 ");
        //sb.Append("FROM WP ");
        //sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        //sb.Append("CROSS APPLY (SELECT DISTINCT SPD01,SPD02 FROM SPRODUCTSD WHERE SPD01 IN (520,521,522) AND WP01=SPD02 ) AS DT ");
        ////if (b)
        ////{
        ////    sb.Append("CROSS APPLY (SELECT WPC03 FROM WPCLS WHERE WPC02=WP01 AND WPC03 IN (SELECT C01 FROM C WHERE  C03=0 AND C02=1 AND C01 IN (43,42,44,48,16,47))) AS DT ");
        ////}
        //sb.Append("WHERE WP05=1 ");
        //sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        //sb.Append("AND WP07=1 ");
        //sb.Append(strCmd);
        ////switch (did)
        ////{
        ////    case 1: //限量超值組合
        ////        {
        ////            lit_title.Text = "新品排行榜";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=392) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";

        ////            break;
        ////        }
        ////    case 2: //戴美妝旅行去
        ////        {
        ////            lit_title.Text = "IJEALOUS ";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=334) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        ////            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=IJEALOUS";
        ////            break;
        ////        }
        ////    case 3: //帶禮物回家去
        ////        {
        ////            lit_title.Text = "KiKi";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=335) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        ////            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=KiKi%E6%8B%8C%E9%BA%B5";
        ////            break;
        ////        }
        ////    case 4:
        ////        {
        ////            lit_title.Text = "痕厲害";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=336) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        ////            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=%E7%97%95%E5%8E%B2%E5%AE%B3";
        ////            break;
        ////        }
        ////    case 5:
        ////        {
        ////            lit_title.Text = "更多新品";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        ////            break;
        ////        }
        ////    case 6:
        ////        {
        ////            lit_title.Text = "更多新品";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        ////            break;
        ////        }
        ////    case 7:
        ////        {
        ////            lit_title.Text = "更多新品";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        ////            break;
        ////        }
        ////    case 8:
        ////        {
        ////            lit_title.Text = "更多新品";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_02.png";
        ////            break;
        ////        }
        ////    case 9:
        ////        {
        ////            lit_title.Text = "更多新品";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_03.png";
        ////            break;
        ////        }
        ////    case 10:
        ////        {
        ////            lit_title.Text = "更多新品";
        ////            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
        ////            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_04.png";
        ////            break;
        ////        }

        ////}
        //sb.Append(" ORDER BY WP18 DESC ");
        //DataTable dt = SqlDbmanager.queryBySql(sb.ToString());




        int[] eid = { 520,521,522 };
        DataTable dt = bindProduct1(eid);

        rp_product_list1.DataSource = sortPID(dt, eid[0]);
        rp_product_list1.DataBind();

        rp_product_list2.DataSource = sortPID(dt, eid[1]);
        rp_product_list2.DataBind();

        rp_product_list3.DataSource = sortPID(dt, eid[2]);
        rp_product_list3.DataBind();







        //rp_product_list1.DataSource = dt.Select("SPD01=520").CopyToDataTable();
        //rp_product_list1.DataBind();
        //rp_product_list2.DataSource = dt.Select("SPD01=521").CopyToDataTable();
        //rp_product_list2.DataBind();
        //rp_product_list3.DataSource = dt.Select("SPD01=522").CopyToDataTable();
        //rp_product_list3.DataBind();
        //ScriptManager.RegisterStartupScript(Page, GetType(), "top", "  SetSelClass("+did+");", true);


        //if (did.Equals(1))
        //{
        //    //cpM.Visible = true;
        //    ScriptManager.RegisterStartupScript(Page, GetType(), "top", "top10();", true);
        //}
        //else if (did.Equals(5))
        //    cpM.Visible = true;


    }


    //protected void button1_Click(object sender, EventArgs e)
    //{
    //    //int g01 = 114;        //活動ID
    //    //int ga07 = 99;       //低銷
    //    //int ga02 = 10;       //金額

    //    //if (Session["A01"] != null)
    //    //{
    //    //    GAFactory.UserGetCoupon(int.Parse(Session["A01"].ToString()), g01, ga07, ga02, "2018-06-05 00:00:00", "2018-06-20 23:59:59");         //全站折扣卷
    //    //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('領取成功');", true);
    //    //}
    //    //else
    //    //{
    //    //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
    //    //}
    //    s();
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

    //public void s()
    //{
    //    string _PC01 = "52bfaff5-55c4-4fbf-84b5-4c59012f2fc4";          //折扣卷的guid (商品)
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
    //        ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=newhotrank1.aspx');", true);
    //    }
    //}

}