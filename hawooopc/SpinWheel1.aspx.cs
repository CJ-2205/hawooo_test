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


public partial class SpinWheel1 : System.Web.UI.Page
{
    public static int spinLimit = 3;           //當天可以玩輪盤的上限
    private static CoinFac coinFac = new CoinFac();
    public int cpn20 = 5;          //滿199折20折扣劵
    public int cpn50 = 10;          //滿399折20折扣劵
    public int cpn100 = 2;          //滿599折20折扣劵

    public int coin1x = 20;         //Ha幣1倍送
    public int coin2x = 10;         //Ha幣2倍送
    public int coin5x = 2;         //Ha幣5倍送
    public int coin10x = 1;         //Ha幣10倍送

    public int coin50 = 50;            //Ha幣50塊

    public List<string> lArray = new List<string>();
    private Random rdn = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/SpinWheel.aspx" + qstr);
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

    public void CreatePrizeArray()
    {
        PutToList(cpn20, "cpn20");
        PutToList(cpn50, "cpn50");
        PutToList(cpn100, "cpn100");

        PutToList(coin1x, "coin1x");
        PutToList(coin2x, "coin2x");
        PutToList(coin5x, "coin5x");
        PutToList(coin10x, "coin10x");

        PutToList(coin50, "coin50");
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

    /// <summary>
    /// 隨機抽獎品
    /// </summary>
    /// <returns>獎品的Code</returns>
    public string RandomCode()
    {
        int i = rdn.Next(lArray.Count);
        string scode = lArray[i];

        return scode;
    }


    //下面要檢查

    /// <summary>
    /// 判斷要給什麼獎品
    /// </summary>
    public void RenderPrize(int userid)
    {
        string code = "";
        string sqlLog = @"SELECT PLOG01 FROM PRIZELOG
WHERE PLOG03=@ORM23 AND PLOG07='180516HaCoinSpin'";        //是否轉過

        string sqlOrm = @"SELECT TOP 3 ORM01,ORM03,ORM08 FROM ORDERM
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
            if (dtLog.Rows.Count == 0)
            {
                //代表第一次參加
                code = "coin2x";
                sType = "11";
            }
            else if (dtLog.Rows.Count == 1)
            {
                //代表第二次參加
                if (dtOrm.Rows.Count == 0)
                {
                    //沒有下過單
                    code = RandomCode();
                }
                else if (dtOrm.Rows.Count > 0 && dtOrm.Rows.Count < 3)
                {
                    //代表有買過1次或2次
                    code = "cpn50";
                }
                else if (dtOrm.Rows.Count >= 3)
                {
                    //代表有超過3筆單

                    float price = Convert.ToInt64(dtOrm.Rows[0]["ORM08"]) + Convert.ToInt64(dtOrm.Rows[1]["ORM08"]) + Convert.ToInt64(dtOrm.Rows[2]["ORM08"]);
                    float avgPrice = price / 3;
                    if (avgPrice > 399 && avgPrice < 599)
                    {
                        //代表3筆單的平均值介於399~599
                        code = "cpn100";
                    }
                    else
                    {
                        code = RandomCode();
                    }
                }
                sType = "12";
            }
            else
            {
                //代表已參加過3次以上
                code = RandomCode();
                sType = "13";
            }
            sFront = ConvertCodeToFront(code);
        }
        else
        {
            sFront = "9";           //代表Ha幣不足
            sType = "0";            //此客群不寫入
        }

        HFp.Value = sFront;
        HFtype.Value = sType;
    }


    //上面要檢查


    /// <summary>
    /// 將獎品代碼轉換成前端的代碼，以免User在Inspect裡能直接看到
    /// </summary>
    /// <param name="code"></param>
    /// <returns></returns>
    public string ConvertCodeToFront(string code)
    {
        string toFront = "";
        switch (code)
        {
            case "cpn20":
                toFront = "11";
                break;

            case "cpn50":
                toFront = "12";
                break;

            case "cpn100":
                toFront = "13";
                break;

            case "coin1x":
                toFront = "14";
                break;

            case "coin2x":
                toFront = "15";
                break;

            case "coin5x":
                toFront = "16";
                break;

            case "coin10x":
                toFront = "17";
                break;

            case "coin50":
                toFront = "18";
                break;
        }

        return toFront;

    }



    //下面要檢查
    
    [WebMethod(EnableSession = true)]
    public static string CheckPrize(string pID, string userType)
    {

        string response = "";

        int giftID = Convert.ToInt32(pID);
        int status = Convert.ToInt32(userType);
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
        return response;
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


    //上面要檢查





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


}