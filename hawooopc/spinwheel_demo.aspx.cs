using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_static_spinwheel_demo : System.Web.UI.Page
{
    private string _url="spinwheel_demo.aspx";
    public static int spinLimit = 3;           //當天可以玩輪盤的上限
    private static CoinFac coinFac = new CoinFac();
    public int coin1x = 20;         //Ha幣1倍送
    public int coin2x = 10;         //Ha幣2倍送
    public int coin5x = 2;         //Ha幣5倍送
    public int coin10x = 1;         //Ha幣10倍送
    public int coin50 = 50;            //Ha幣50塊
    public List<string> lArray = new List<string>();
    private Random rdn = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {
        LangType lg = (this.Master as user_user).LgType; //正式 LangType 
                                                         //LangType lg = LangType.en; //測試
        if (lg.Equals(LangType.en))//英文版
        {
            Panel_en.Visible = true;
        }
        else
            Panel_zh.Visible = true;



        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/"+ _url + qstr);
        }
        else
        {
            if (Session["A01"] != null)
            {
                int UID = Convert.ToInt32(Session["A01"].ToString());
                Session["Login"] = "true";
                CreatePrizeArray();
                RenderPrize(UID);
            }
            else
            {
                Session["Login"] = "false";
            }
        }

    }

    /// <summary>
    /// 把各獎的代號塞入List裡
    /// </summary>
    /// <param name="limit"></param>
    /// <param name="code"></param>
    public void PutToList(int limit, string code)
    {
        for (int i = 0; i < limit; i++)
        {
            lArray.Add(code);

        }
    }
    public void CreatePrizeArray()
    {
        //PutToList(cpn20, "cpn20");
        //PutToList(cpn50, "cpn50");
        //PutToList(cpn100, "cpn100");

        PutToList(coin1x, "coin1x");
        PutToList(coin2x, "coin2x");
        PutToList(coin5x, "coin5x");
        PutToList(coin10x, "coin10x");
        PutToList(coin50, "coin50");
    }

    /// <summary>
    /// 判斷要給什麼獎品
    /// </summary>
    public void RenderPrize(int userid)
    {

        string sqlLog = @"SELECT PLOG01 FROM PRIZELOG
WHERE PLOG03=@ORM23 AND PLOG07='180516HaCoinSpin'";        //是否轉過

        string sqlOrm = @"SELECT TOP 3 ORM01,ORM03,ORM08 FROM ORDERM WITH(NOLOCK)
WHERE ORM23=@ORM23 AND  YEAR(ORM03)=YEAR(GETDATE()) AND ORM19>0 AND ORM24>0
ORDER BY ORM03 DESC";        //訂單明細          //要用year(getdate())，如果直接設死年份的話明年可能會忘記調整

        string sqlHaCoin = @"SELECT ISNULL(PLUS,0)-ISNULL(MINUS,0) AS 'TOTAL' FROM(
SELECT SUM(CN03) AS 'PLUS',(SELECT SUM(CN03)  FROM  COIN 
WHERE CN02=@ORM23 AND (CN04=0 OR CN04=-1)) AS 'MINUS' FROM  COIN 
WHERE CN02=@ORM23 AND CN04=1) AS DT";     //是否有足夠的Ha幣

        string sqlRepeater = @"SELECT TOP 10 PLOG01,PLOG02,
PLOG04=CASE PLOG04
WHEN 11 THEN '全站滿199，現折20。到期日：' 
WHEN 12 THEN '全站滿399，現折50。到期日：' 
WHEN 13 THEN '全站滿599，現折100。到期日：' 
WHEN 14 THEN '100 Ha幣。到期日：' 
WHEN 15 THEN '200 Ha幣。到期日：' 
WHEN 16 THEN '500 Ha幣。到期日：'  
WHEN 17 THEN '1000 Ha幣。到期日：' 
WHEN 18 THEN '50 Ha幣。到期日：' 
END,

'EXPIRED'=CASE PLOG04
WHEN 11 THEN	DATEADD(DAY,3,plog02)		
WHEN 12 THEN  DATEADD(DAY,3,plog02)	
WHEN 13 THEN  DATEADD(DAY,3,plog02)	
WHEN 14 THEN CONVERT(VARCHAR, DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02))+1,DATEADD(month,+4,PLOG02)) ,110)
WHEN 15 THEN CONVERT(VARCHAR, DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02))+1,DATEADD(month,+4,PLOG02)) ,110)
WHEN 16 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02))+1,DATEADD(month,+4,PLOG02)) ,110)
WHEN 17 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02))+1,DATEADD(month,+4,PLOG02)) ,110)
WHEN 18 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02))+1,DATEADD(month,+4,PLOG02)) ,110)
END
 FROM PRIZELOG
WHERE Plog03=@A01 AND PLOG07='180516HaCoinSpin' ORDER BY PLOG02 DESC";          //User玩過的Log


        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();

        SqlCommand cmdOrm = new SqlCommand();
        SqlCommand cmdLog = new SqlCommand();
        SqlCommand cmdHaCoin = new SqlCommand();
        SqlCommand cmdRepeater = new SqlCommand();


        cmdOrm.CommandText = sqlOrm;
        cmdLog.CommandText = sqlLog;
        cmdHaCoin.CommandText = sqlHaCoin;
        cmdRepeater.CommandText = sqlRepeater;

        cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
        cmdHaCoin.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
        cmdRepeater.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.Int, userid));

        dcmd.Add("Log", cmdLog);
        dcmd.Add("HaCoin", cmdHaCoin);
        dcmd.Add("Orm", cmdOrm);
        dcmd.Add("Repeater", cmdRepeater);

        DataSet ds = SqlDbmanager.queryBySql(dcmd);

        DataTable dtLog = ds.Tables["Log"];
        DataTable dtOrm = ds.Tables["Orm"];
        DataTable dtHaCoin = ds.Tables["HaCoin"];
        DataTable dtRepeater = ds.Tables["Repeater"];


        GetPrizeRecord(dtRepeater);

        string sFront = "";     //禮物id
        string sType = "";      //客群id

        double HaCoin = Convert.ToDouble(dtHaCoin.Rows[0]["TOTAL"].ToString());

        if (HaCoin >= 100)
        {
            Dictionary<int, string> code = new Dictionary<int, string>();
            sType = "11";
            code = GetCode1();
            if (dtOrm.Rows.Count >= 1 && dtOrm.Rows.Count <= 2)
            {
                sType = "12";
                code = GetCode2();
            }
            else if (dtOrm.Rows.Count > 2)
            {
                sType = "13";
                code = GetCode3();
            }
            Random rand = new Random();
            var g = rand.Next(1, 100);
            sFront = code[g];
        }
        else
        {
            sFront = "9";           //代表Ha幣不足
            sType = "0";            //此客群不寫入
        }
        Session["GID"] = sFront;
        Session["GTYPE"] = sType;
        HFp.Value = sFront;
        HFtype.Value = sType;
    }

    //獲取User得獎記錄
    void GetPrizeRecord(DataTable dt)
    {
        rptPrizeRecord.DataSource = dt;
        rptPrizeRecord.DataBind();
    }

    private Dictionary<int, string> GetCode1()
    {
        Dictionary<int, string> code = new Dictionary<int, string>();
        int count = 1;
        for (int i = 1; i <= 30; i++)
        {
            code.Add(count, "18");
            count += 1;
        }
        for (int i = 1; i <= 30; i++)
        {
            code.Add(count, "14");
            count += 1;
        }
        for (int i = 1; i <= 39; i++)
        {
            code.Add(count, "15");
            count += 1;
        }
        code.Add(count, "16");
        return code;
    }

    private Dictionary<int, string> GetCode2()
    {
        Dictionary<int, string> code = new Dictionary<int, string>();
        int count = 1;
        for (int i = 1; i <= 30; i++)
        {
            code.Add(count, "18");
            count += 1;
        }

        for (int i = 1; i <= 30; i++)
        {
            code.Add(count, "14");
            count += 1;
        }

        for (int i = 1; i <= 37; i++)
        {
            code.Add(count, "15");
            count += 1;
        }

        for (int i = 1; i <= 2; i++)
        {
            code.Add(count, "16");
            count += 1;
        }
        code.Add(count, "17");
        return code;
    }

    private Dictionary<int, string> GetCode3()
    {
        Dictionary<int, string> code = new Dictionary<int, string>();
        int count = 1;
        for (int i = 1; i <= 30; i++)
        {
            code.Add(count, "18");
            count += 1;
        }

        for (int i = 1; i <= 30; i++)
        {
            code.Add(count, "14");
            count += 1;
        }

        for (int i = 1; i <= 33; i++)
        {
            code.Add(count, "15");
            count += 1;
        }

        for (int i = 1; i <= 5; i++)
        {
            code.Add(count, "16");
            count += 1;
        }

        for (int i = 1; i <= 2; i++)
        {
            code.Add(count, "17");
            count += 1;
        }
        return code;
    }


    private static bool CheckAngle(int gid, int chkangles)
    {
        int angles = 0;
        switch (gid)
        {
            case 17:
                angles = 45;
                break;

            case 12:
                angles = 90;
                break;

            case 15:
                angles = 135;
                break;

            case 13:
                angles = 180;
                break;

            case 14:
                angles = 225;
                break;

            case 16:
                angles = 270;
                break;

            case 11:
                angles = 315;
                break;

            case 18:
                angles = 360;
                break;
        }

        if (chkangles != angles)
            return false;
        else
            return true;
    }
    //1505 15:16 檢查完畢
    [WebMethod(EnableSession = true)]
    public static string CheckPrize(int angles)
    {
        string response = "";
        int giftID = Convert.ToInt32(HttpContext.Current.Session["GID"].ToString());

        bool chkAngle = CheckAngle(giftID, angles);
        if (chkAngle)
        {
            int status = Convert.ToInt32(HttpContext.Current.Session["GTYPE"].ToString());
            int userid = Convert.ToInt32(HttpContext.Current.Session["A01"].ToString());

            string sqlLog = @"SELECT PLOG01 FROM PRIZELOG WHERE
PLOG07='180516HaCoinSpin' AND PLOG03=@PLOG03
 AND (DAY(PLOG02)=DAY(GETDATE()) AND MONTH(PLOG02)=MONTH(GETDATE())  AND YEAR(PLOG02)=YEAR(GETDATE()))";
            SqlCommand cmdLog = new SqlCommand();
            cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@PLOG03", SqlDbType.BigInt, userid));
            cmdLog.CommandText = sqlLog;

            DataTable dtLog = SqlDbmanager.queryBySql(cmdLog);


            if (dtLog.Rows.Count < spinLimit)           //不能超過當天上限
            {
                //寫入資料庫=true，再帶dk的程式

                string sql = "INSERT INTO PrizeLog (PLOG02,PLOG03,PLOG04,PLOG05,PLOG07) VALUES(@PLOG02,@PLOG03,@PLOG04,@PLOG05,@PLOG07)";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG02", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG03", SqlDbType.BigInt, userid));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG04", SqlDbType.Int, giftID));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG05", SqlDbType.Int, status));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG07", SqlDbType.VarChar, "180516HaCoinSpin"));

                string statusAdd = "";
                string statusDeduct = "";
                bool statusLog = SqlDbmanager.executeNonQry(cmd);

                if (statusLog == true)      //代表寫入成功
                {
                    statusDeduct = coinFac.DeductCoin(userid, 100, "CoinGame").ToUpper();

                    if (statusDeduct == "OK")
                    {
                        if (giftID >= 11 && giftID <= 13)       //代表獎品為Coupon
                        {
                            statusAdd = AddCpn(userid, giftID);
                        }
                        else if (giftID >= 14 && giftID <= 18)      //代表獎品為Ha幣
                        {
                            statusAdd = AddHaCoin(userid, giftID);
                        }

                        if (statusAdd == "OK")
                        {
                            response = codeResponse(giftID);
                        }
                        else if (statusAdd == "FAIL")
                        {
                            response = "獎項歸戶失敗，請洽客服。";
                        }
                    }
                    else if (statusDeduct == "FAIL")
                    {
                        response = "Ha幣扣款失敗，若多次無法執行請與客服聯繫。";
                    }
                    else if (statusDeduct == "COIN IS NOT ENOUGH")
                    {
                        response = "你賬戶的Ha幣不足喲，每次消費都能累積成你的Ha幣。買越多，賺越多！";
                    }
                }
                else
                {
                    response = "系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。";
                }
            }
            else
            {
                //代表今天已經玩過
                response = "看來你今天玩的次數已達到上限了，明天再回來吧。";
            }
        }
        else
        {
            response = "請勿任意修改轉盤內容，謝謝您!!";
        }


        return response;
    }


    /// <summary>
    /// 將折扣卷歸戶
    /// </summary>
    /// <param name="pID"></param>
    /// <returns>1:OK 2:FAIL</returns>
    public static string AddCpn(int userID, int pID)
    {
        int g01 = 0;        //活動ID
        int ga07 = 0;       //低銷
        int ga02 = 0;       //金額

        if (pID == 11)
        {
            g01 = 109;
            ga07 = 199;
            ga02 = 20;
        }
        else if (pID == 12)
        {
            g01 = 109;
            ga07 = 399;
            ga02 = 50;

        }
        else if (pID == 13)
        {
            g01 = 109;
            ga07 = 599;
            ga02 = 100;

        }


        string i = GAFactory.UserGetCoupon(userID, g01, ga07, ga02, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), DateTime.Now.AddDays(3).ToString("yyyy-MM-dd 23:59:59"));         //全站折扣卷

        return i.ToUpper();

    }

    /// <summary>
    /// 將ha幣歸戶
    /// </summary>
    /// <param name="pID"></param>
    /// <returns>1:OK 2:FAIL</returns>
    public static string AddHaCoin(int userID, int pID)
    {
        int haCoin = 100;           //回饋的底金
        int rebate = 0;
        if (pID == 14)
        {
            //ha幣1倍送
            rebate = haCoin * 1;
        }
        else if (pID == 15)
        {
            //ha幣2倍送
            rebate = haCoin * 2;
        }
        else if (pID == 16)
        {
            //ha幣5倍送
            rebate = haCoin * 5;
        }
        else if (pID == 17)
        {
            //ha幣10倍送
            rebate = haCoin * 10;
        }
        else if (pID == 18)
        {
            //ha幣50塊
            rebate = 50;
        }

        string i = coinFac.AddCoin(userID, rebate, "CoinGame");
        return i.ToUpper();
    }


    /// <summary>
    /// 回傳得獎後的信息
    /// </summary>
    /// <param name="ID">giftID</param>
    /// <returns></returns>
    public static string codeResponse(int giftID)
    {
        string prize = "";
        string date = DateTime.Now.AddDays(3).ToString("yyyy-MM-dd");
        switch (giftID)
        {
            case 11:
                prize = "RM20折扣券，到期日為 " + date + " 趕快去商城選購吧！";
                break;

            case 12:
                prize = "RM50折扣券，到期日為 " + date + " 趕快去商城選購吧！";
                break;

            case 13:
                prize = "RM100折扣券，到期日為 " + date + " 趕快去商城選購吧！";
                break;

            case 14:
                prize = "100 Ha幣";
                break;

            case 15:
                prize = "200 Ha幣";
                break;

            case 16:
                prize = "500 Ha幣";
                break;

            case 17:
                prize = "1000 Ha幣";
                break;

            case 18:
                prize = "50 Ha幣";
                break;

        }

        string response = "恭喜你獲得" + prize;

        return response;
    }
}