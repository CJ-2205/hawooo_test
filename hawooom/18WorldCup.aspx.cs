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

public partial class _18WorldCup : System.Web.UI.Page
{
    public DataTable dtLog = new DataTable();
    public DataTable dtOrm = new DataTable();


    protected void Page_PreLoad(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            int UID = Convert.ToInt32(Session["A01"].ToString());
            CheckUser(UID);
        }
    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //查詢user的訂單數&選擇的國家
    public void CheckUser(int A01)
    {
        string sqlOrm = @"SELECT DT1.ORM23,isnull(BEFORE,0) AS 'BEFORE',ISNULL(AFTER,0) AS 'AFTER'
FROM (SELECT COUNT(ORM01) AS 'BEFORE',ORM23 FROM ORDERM AS OM WHERE
OM.ORM23=@ORM23 AND ORM03< CONVERT(DATETIME	,'2018-07-14 23:59:59' ) AND ORM19=1  GROUP BY ORM23 ) AS DT1
LEFT JOIN 
(SELECT COUNT(ORM01) AS  'AFTER',ORM23 FROM ORDERM
WHERE ORM23=@ORM23 AND ORM03 BETWEEN '2018-06-20 00:00:00' AND '2018-07-14 23:59:59'  AND ORM19=1 GROUP BY ORM23) AS DT2
ON DT1.ORM23=DT1.ORM23";

        string sqlLog = @"SELECT LLOG04 FROM LotteryLog
WHERE LLOG06='worldcup180620' AND LLog03=@ORM23";

        SqlCommand cmdOrm = new SqlCommand();
        cmdOrm.CommandText = sqlOrm;
        cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, A01));

        SqlCommand cmdLog = new SqlCommand();
        cmdLog.CommandText = sqlLog;
        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, A01));

        //這裡要補上ds 得sqldbmanager  here

        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();
        dcmd.Add("Log", cmdLog);
        dcmd.Add("Orm", cmdOrm);
        DataSet ds = SqlDbmanager.queryBySql(dcmd);
        DataTable dtOrm = ds.Tables["Orm"];
        DataTable dtLog = ds.Tables["Log"];

        int beforeOrder = 0;
        int afterOrder = 0;
        if (dtOrm.Rows.Count > 0)
        {
            beforeOrder = Convert.ToInt32(dtOrm.Rows[0]["before"]) > 0 ? 1 : 0;        //620前購買的訂單是否大於0，是的話給他一次機會玩
            afterOrder = Convert.ToInt32(dtOrm.Rows[0]["after"]);         //620後購買的訂單
        }

        int totalPlay = dtLog.Rows.Count > 0 ? dtLog.Rows.Count : 0;           //玩過的總次數
        int remainPlay = beforeOrder + afterOrder - totalPlay;

        string sCountry = "";

        if (dtLog.Rows.Count > 0)
        {
            foreach (DataRow dr in dtLog.Rows)
            {
                sCountry = dr["llog04"].ToString() + "," + sCountry;        //將選擇的國家寫到前台
            }
            sCountry = sCountry.Substring(0, sCountry.Length - 1);
        }

        HFRemain.Value = remainPlay.ToString();
        Literal1.Text = "我累計的抽獎機會：" + remainPlay.ToString() + "次";
        HFCountry.Value = sCountry;
    }




    [WebMethod(EnableSession = true)]
    public static string InsertCountry(string LotCountry)
    {
        string orderid = "";
        int userid = Convert.ToInt32(HttpContext.Current.Session["A01"].ToString());


        string sqlOldOrder = @"SELECT TOP 1 ORM01 FROM ORDERM
WHERE ORM03< CONVERT(DATETIME,'2018-07-14 23:59:59') AND ORM19=1 AND ORM23=@ORM23 
ORDER BY ORM03 DESC";

        string sqlNewOrder = @"SELECT TOP 1 ORM01 FROM ORDERM
WHERE ORM03 BETWEEN '2018-06-20 00:00:00' AND '2018-07-14 23:59:59' AND ORM19=1  AND ORM23=@ORM23
AND ORM01 NOT IN(SELECT LLOG05 FROM LotteryLog WHERE ORM01=LLog05 AND LLOG06='worldcup180620' AND LLOG03=@ORM23)";

        string sqlLog = @"SELECT LLOG04 FROM LotteryLog
WHERE LLOG03=@ORM23 AND LLOG06='worldcup180620'";


        SqlCommand cmdOldOrder = new SqlCommand();
        cmdOldOrder.CommandText = sqlOldOrder;
        cmdOldOrder.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));

        SqlCommand cmdNewOrder = new SqlCommand();
        cmdNewOrder.CommandText = sqlNewOrder;
        cmdNewOrder.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));

        SqlCommand cmdLog = new SqlCommand();
        cmdLog.CommandText = sqlLog;
        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));

        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();

        dcmd.Add("Log", cmdLog);
        dcmd.Add("OldOrder", cmdOldOrder);
        dcmd.Add("NewOrder", cmdNewOrder);

        DataSet ds = SqlDbmanager.queryBySql(dcmd);


        DataTable dtLog = ds.Tables["Log"];
        DataTable dtOldOrder = ds.Tables["OldOrder"];
        DataTable dtNewOrder = ds.Tables["NewOrder"];


        string strResponse = "";
        if (dtLog.Rows.Count > 0)
        {
            //代表選過一次了，所以之後都用新的訂單
            if (dtNewOrder.Rows.Count > 0)
            {
                orderid = dtOldOrder.Rows[0]["orm01"].ToString();
                strResponse = WriteToDB(userid, LotCountry, orderid);
            }
            else
            {
                //找不到符合的訂單
                strResponse = " 找不到符合的訂單，若多次無法使用請麻煩與客服聯繫 ";
            }
        }
        else
        {
            //代表沒有選過
            if (dtOldOrder.Rows.Count > 0)
            {
                orderid = dtOldOrder.Rows[0]["orm01"].ToString();
                strResponse = WriteToDB(userid, LotCountry, orderid);
            }
            else if (dtNewOrder.Rows.Count > 0)
            {
                orderid = dtOldOrder.Rows[0]["orm01"].ToString();
                strResponse = WriteToDB(userid, LotCountry, orderid);
            }
            else
            {
                //找不到符合的訂單
                strResponse = " 找不到符合的訂單，若多次無法使用請麻煩與客服聯繫  ";
            }
        }

        //這裡要return一個值
        return strResponse;
    }


    public static string WriteToDB(int userid, string lotCountry, string orderid)
    {
        LotteryLogFac llf = new LotteryLogFac();
        string lotCode = "worldcup180620";

        LotteryLog lotl = new LotteryLog();
        lotl.LLog02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        lotl.LLog03 = userid;
        lotl.LLog04 = lotCountry;
        lotl.LLog05 = orderid;
        lotl.LLog06 = lotCode;
        bool b = llf.insertLotteryLog(lotl);



        string response = "";
        if (b == true)
        {
            response = "妳已完成預測，" + lotCountry + "集氣那麼強，一定可以得冠軍啦～";
        }
        else
        {
            response = "選擇失敗，若多次無法使用請麻煩與客服聯繫。";

        }
        return response;
    }


}