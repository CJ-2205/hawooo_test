using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data.SqlClient;

public partial class mailcoupon : System.Web.UI.Page
{

    public string query = "";
    public int t01 = 0;
    string rurl = "";
    protected void Page_Preload(object sender, EventArgs e)
    {
        //先判斷是不是要轉手機在做下面的
        query = Request.QueryString["id"];

        if (query == "85")
        {
            img.ImageUrl = "https://www.hawooo.com/images/ftp/20171113member/85mb.png";
            t01 = 9;
            rurl = "mailcoupon.aspx?id=85";
        }
        else
        {
            img.ImageUrl = "https://www.hawooo.com/images/ftp/20171113member/27mb.png";
            t01 = 8;
            rurl = "mailcoupon.aspx?id=27";

        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProduct();
        }
    }

    private void BindProduct()
    {
        string strSql = @"SELECT TA.C01,TA.RCOUNT,WP01,WP02,(CAST(ROUND(Price/7.6,1) as numeric(5,2))) as 'PRICE',WP08_1 
FROM WP 
CROSS APPLY (SELECT TOP 1 Price FROM ProductPriceView WHERE PID=WP01) as PP
CROSS APPLY (
SELECT * FROM (
SELECT CT.C01,(ROW_NUMBER() OVER (PARTITION BY C01 ORDER BY COUNT(ORD01) DESC)) as RCOUNT,ORD01
FROM ORDERD 
INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01
CROSS APPLY (SELECT TOP 4 C01 FROM WPCLS INNER JOIN C ON C01=WPC03 AND C03=0 AND ORD01=WPC02) as CT
WHERE ORM03 BETWEEN  DATEADD(MONTH,-1,GETDATE()) AND GETDATE()
GROUP BY CT.C01,ORD01 
) as TB WHERE RCOUNT<5 AND ORD01=WP01 AND C01 IN (42,16,43,44)) as TA";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }

    public void CheckUser()
    {
        string sql = @"SELECT TOP 1 MT01,A01,MT02,MT04
        FROM (SELECT MT01,A01,MT04,MT02 FROM MTAG
        WHERE T01=@T01 AND A01=@A01) AS DT
        ORDER BY MT02 DESC";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.BigInt, Convert.ToInt32(Session["A01"].ToString())));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("T01", SqlDbType.Int, t01));
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        string mt04 = t01.ToString() + "GC";
        if (dt.Rows.Count != 0)
        {
            DataRow dr = dt.Rows[0];
            if (dr["MT04"].ToString() == mt04)
            {                //代表已領過，跳彈窗
                ScriptManager.RegisterStartupScript(UPCoupon, typeof(UpdatePanel), "msg", "popCouponMsg(\"您尚未符合領取資格\",1)", true);
            }
            else
            {                //代表未領取過
                if (t01 == 8)       //27未首購
                {
                    string rmsg = GAFactory.JoinEvent(Convert.ToInt32(Session["A01"].ToString()), DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), "92B6FB52-E0CB-443D-889F-5F2474F54B7B", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), DateTime.Now.AddDays(3).ToString("yyyy-MM-dd HH:mm:ss"));  //帶coupon給他
                    UpdateState(t01, Convert.ToInt32(dr["MT01"]));
                    ScriptManager.RegisterStartupScript(UPCoupon, typeof(UpdatePanel), "msg", "popCouponMsg(\"您獲得RM15折扣劵，有效期為三天。趕快到賣場選購吧！\",1);", true);
                }

                else if (t01 == 9)
                {
                    string rmsg = GAFactory.JoinEvent(Convert.ToInt32(Session["A01"].ToString()), DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), "9F3FB560-91CE-40A5-89EE-B2F941BD322A", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), DateTime.Now.AddDays(3).ToString("yyyy-MM-dd HH:mm:ss"));  //帶coupon給他
                    UpdateState(t01, Convert.ToInt32(dr["MT01"]));
                    ScriptManager.RegisterStartupScript(UPCoupon, typeof(UpdatePanel), "msg", "popCouponMsg(\"您獲得RM30折扣劵，有效期為三天。趕快到賣場選購吧！\",1);", true);
                }
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(UPCoupon, typeof(UpdatePanel), "msg", "popCouponMsg(\"您尚未符合領取資格\",1)", true);
        }
    }

    protected void GetCoupon_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["A01"] != null)
        {
            CheckUser();
        }
        else
        {
            Response.Redirect("login.aspx?rurl=" + rurl);
        }
    }

    public void UpdateState(int t01, int mt01)
    {
        string sql = @"UPDATE MTAG SET MT04=@MT04, MT08=GETDATE() WHERE MT01=@MT01 AND T01=@T01 AND A01=@A01";
        SqlCommand cmd = new SqlCommand();
        string mt04 = t01.ToString() + "GC";
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.BigInt, Convert.ToInt32(Session["A01"])));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("T01", SqlDbType.Int, t01));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("MT04", SqlDbType.VarChar, mt04));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("MT01", SqlDbType.BigInt, mt01));
        SqlDbmanager.executeNonQry(cmd);
    }


}