using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _goupon60 : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/goupon60.aspx" + qstr);      //here
        }
        else
        {
            if (Session["A01"] != null)
            {
                Session["Login"] = "true";
            }
            else
            {
                Session["Login"] = "false";
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

   
    /// <summary>
    /// 檢查User是否符合登記資格，如符合將寫入
    /// </summary>
    /// <sParam name="userid"></sParam>
    [WebMethod(EnableSession = true)]
    public static string CheckUser()
    {
        string response = "";
        int userid = Convert.ToInt32(HttpContext.Current.Session["A01"].ToString());

        string sql = @"SELECT ORM01 FROM ORDERM
WHERE ORM23=@A01 AND ORM08>=520 AND ORM19>0 AND ORM03 BETWEEN '2018-05-10 00:00:00' AND '2018-05-16 23:59:59' AND ORM40 BETWEEN '2018-05-10 00:00:00' AND '2018-05-17 23:59:59'
AND NOT EXISTS(SELECT ORM01 FROM GiftRegisterLog AS DT WHERE A01=@A01 AND GRLog04='180510MotherDay' AND DT.ORM01=ORDERM.ORM01) ";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Rows.Count == 0)     //代表他沒有符合的訂單
        {
            response = "系統找不到符合的訂單，若多次无法使用请麻烦与客服联系。";
        }
        else
        {
            //代表他符合資格
            string orm01 = dt.Rows[0]["orm01"].ToString();

            bool b = writetoDB(userid, orm01);

            if (b == true)
            {
                response = "Yeah，已成功登記。購物金將在下個月統一歸戶哦。";
            }
            else
            {
                response = "登記失敗,若多次無法使用請麻煩與客服聯繫。";
            }
        }
        return response;
    }

    /// <summary>
    /// 寫入資料庫
    /// </summary>
    /// <sParam name="userid"></sParam>
    /// <sParam name="orm01"></sParam>
    /// <returns></returns>
    public static bool writetoDB(int userid, string orm01)
    {
        string sql = @"INSERT INTO GIFTREGISTERLOG(GRLOG02,A01,ORM01,GRLOG04)
VALUES(@GRLOG02,@A01,@ORM01,@GRLOG04)";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG02", SqlDbType.SmallDateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@ORM01", SqlDbType.UniqueIdentifier, orm01));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG04", SqlDbType.VarChar, "180510MotherDay"));

        bool b = SqlDbmanager.executeNonQry(cmd);         //here
        return b;
    }

}