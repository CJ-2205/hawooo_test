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

public partial class user_dpaevent2 : System.Web.UI.Page
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
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/dpaevent2.aspx'", true);
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
            case 1: //限量超值組合
                {
                    //lit_title.Text = "限量超值組合";
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=474) ");
                    break;
                }
            case 2: //戴美妝旅行去
                {
                    //lit_title.Text = "戴美妝旅行去";
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=475) ");
                    break;
                }
            case 3: //帶禮物回家去
                {
                    //lit_title.Text = "帶禮物回家去";
                    sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=476) ");
                    break;
                }
        }
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }


    protected void button1_Click(object sender, EventArgs e)
    {
        int g01 = 114;        //活動ID
        int ga07 = 199;       //低銷
        int ga02 = 20;       //金額

        if (Session["A01"] != null)
        {
            GAFactory.UserGetCoupon(int.Parse(Session["A01"].ToString()), g01, ga07, ga02, "2018-06-05 00:00:00", "2018-06-20 23:59:59");         //全站折扣卷
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('領取成功');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
        }
    }

    protected void button2_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            int userid = Convert.ToInt32(Session["A01"].ToString());
            string s = checkuser(userid);
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('" + s + "');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
        }
    }



    //檢查是否領過
    protected string checkuser(int userid)
    {
        DataTable dtLog = new DataTable();
        DataTable dtOrm = new DataTable();
        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();

        string giftGUID = "2fa75ce0-0f50-4eab-8bc6-5faff8681e8b";

        string sqlOrm = @"SELECT ORM01 FROM ORDERM WHERE ORM23=@ORM23 AND ORM03 BETWEEN '2018-06-05 00:00:00' AND '2018-06-20 23:59:59'
AND ORM19=1 AND ORM24>0 AND ORM08>=299 AND DATEDIFF(DAY,ORM03,GETDATE())<3 AND DATEDIFF(DAY,ORM03,ORM40)<3  
AND NOT EXISTS (SELECT ORM01 FROM GIFTREGISTERLOG AS DT WHERE GRLOG04='180605SummerRaya' AND A01=@ORM23 AND ORM01=DT.ORM01)";

        string sqlLog = @"SELECT GRLOG01 FROM GIFTREGISTERLOG WHERE GRLOG04='180605SummerRaya' AND A01=@A01";

        SqlCommand cmdOrm = new SqlCommand();
        SqlCommand cmdLog = new SqlCommand();
        cmdOrm.CommandText = sqlOrm;
        cmdLog.CommandText = sqlLog;
        cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

        dcmd.Add("Log", cmdLog);
        dcmd.Add("Orm", cmdOrm);

        DataSet ds = SqlDbmanager.queryBySql(dcmd);
        dtLog = ds.Tables["Log"];
        dtOrm = ds.Tables["Orm"];

        string response = "";

        if (dtOrm.Rows.Count > 0)       //有符合的訂單
        {
            if (dtLog.Rows.Count < 1)      //代表未領過
            {
                string orm01 = dtOrm.Rows[0]["ORM01"].ToString();
                response = RegisterPrize(orm01, userid, giftGUID);
            }
            else
            {
                response = "一張訂單只能领一次喔。";
            }
        }
        else
        {
            response = "哎呀，还差一点就符合订单金额门槛，快找姐妹凑一凑，很容易到的啦。";
        }

        return response;
    }


    protected string RegisterPrize(string orm01, int userid, string sgiftGUID)
    {
        string response = "";
        string sql = @"INSERT INTO GiftRegisterLog (GRLOG02,A01,GRLOG03,ORM01,GRLog04) VALUES (@GRLOG02,@A01,@GRLOG03,@ORM01,@GRLOG04)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG02", SqlDbType.SmallDateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG03", SqlDbType.UniqueIdentifier, sgiftGUID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@ORM01", SqlDbType.UniqueIdentifier, orm01));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG04", SqlDbType.VarChar, "180605SummerRaya"));

        string s = ORDER.JoinGift2Order(orm01, sgiftGUID);
        if (s == "OK")
        {
            response = "Yeah，已成功领取。";
            SqlDbmanager.executeNonQry(cmd);
        }
        else if (s == "FAIL")
        {
            response = "Oh No,系统好像出现了问题,若多次无法使用请麻烦与客服联系。";
        }
        else if (s == "NO_ORDER")
        {
            response = "系統找不到符合的訂單，若多次无法使用请麻烦与客服联系。";
        }
        else if (s == "NO_GIFT")
        {
            response = "未完成领取程序，若多次无法使用请麻烦与客服联系。";
        }

        return response;
    }

}