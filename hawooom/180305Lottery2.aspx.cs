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

public partial class _180305Lottery : System.Web.UI.Page
{
    //public DateTime week1 = new DateTime(2018, 03, 15, 23, 59, 59);        //week1的截止日
    //public DateTime week2 = new DateTime(2018, 03, 22, 23, 59, 59);        //week2的截止日
    public DateTime week3 = new DateTime(2018, 03, 29, 23, 59, 59);        //week3的截止日		
    public DateTime week4 = new DateTime(2018, 04, 5, 23, 59, 59);


    public int totalPlayweek3 = 0;
    public int totalPlayweek4 = 0;

    public string totalOrder3 = "0";        //總共有多少筆訂單:選號次數+未選號訂單
    public string totalOrder4 = "0";        //總共有多少筆訂單:選號次數+未選號訂單

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            int UID = Convert.ToInt32(Session["A01"].ToString());
            Session["Login"] = "true";
            getUserNumber(UID);
            getUserOrder(UID);
        }
        else
        {
            Session["Login"] = "false";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void getUserNumber(int A01)
    {
        string numWeek3 = "";       //week1拋到前台的號碼
        string numWeek4 = "";       //week2拋到前台的號碼

        //撈出User選的號碼
        string sql = @"SELECT LLOG02,LLOG03,LLOG04,LLOG05,LLOG06,ORM03 FROM LOTTERYLOG
INNER JOIN ORDERM ON LLOG05 =ORM01 
WHERE LLOG02 BETWEEN '2018-03-22 00:00:00' AND '2018-04-05 23:59:59' AND LLOG03=@LLOG03";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@LLOG03", SqlDbType.BigInt, A01));

        DataTable dtUserNum = SqlDbmanager.queryBySql(cmd);

        if (dtUserNum.Rows.Count > 0)
        {
            //根據日期分類是week1 還是 week2
            foreach (DataRow dr in dtUserNum.Rows)
            {
                DateTime date = Convert.ToDateTime(dr["ORM03"].ToString());
                int i = Convert.ToInt16(dr["LLOG04"].ToString());        //User選擇的數字          

                if (week3.Subtract(date).Days <= 7 && week3.Subtract(date).Days >= 1)     //以week1為比對對象，如果當天跟week1相差7天內，可接受範圍 1~7
                {
                    numWeek3 += i.ToString() + ",";
                    totalPlayweek3++;       //累計計算user總共玩了幾次
                }
                else if (week4.Subtract(date).Days <= 7 && week4.Subtract(date).Days >= 1)    //以week2為比對對象，如果當天跟week2相差7天內，可接受範圍 1~7
                {
                    numWeek4 += i.ToString() + ",";
                    totalPlayweek4++;
                }
            }

            if (numWeek3.Length > 0)
            {
                numWeek3 = numWeek3.Substring(0, numWeek3.Length - 1);
            }
            if (numWeek4.Length > 0)
            {
                numWeek4 = numWeek4.Substring(0, numWeek4.Length - 1);
            }
        }

        LotNumAHF.Value = numWeek3;
        LotNumBHF.Value = numWeek4;
    }

    public void getUserOrder(int A01)
    {
        string sql = @"SELECT ORM01,ORM03,ORM40 FROM ORDERM
            WHERE ORM03 BETWEEN '2018-03-22 00:00:00' AND '2018-04-05 00:00:00' AND  NOT EXISTS (
SELECT LLOG05 FROM LOTTERYLOG WHERE LLOG03=@LLOG03 AND LLOG05=ORM01) AND ORM23=@LLOG03 AND ORM19=1 AND ORM24>=0";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@LLOG03", SqlDbType.BigInt, A01));

        DataTable dtOrder = SqlDbmanager.queryBySql(cmd);
        Session["dtOrder"] = dtOrder;

        int week3total = 0;
        int week4total = 0;

        if (dtOrder.Rows.Count > 0)
        {
            string sqlW3 = "ORM03 >= '2018-03-22 00:00:00' AND ORM03 <= '2018-03-28 23:59:59' AND ORM40<='" + week3.ToString("yyyy-MM-dd HH:mm:ss") + "'";
            DataRow[] drW3 = dtOrder.Select(sqlW3);
            week3total = drW3.Length;

            string sqlW4 = "ORM03 >= '2018-03-29 00:00:00' AND ORM03 <= '2018-04-04 23:59:59' AND ORM40<='" + week4.ToString("yyyy-MM-dd HH:mm:ss") + "'";
            DataRow[] drW4 = dtOrder.Select(sqlW4);
            week4total = drW4.Length;

        }

        totalOrder3 = (week3total + totalPlayweek3).ToString();
        totalOrder4 = (week4total + totalPlayweek4).ToString();

        if (DateTime.Today > week3)     //檢查如果今天過了截止日期的話，就不讓消費者選號
        {
            week3total = 0;
        }

        if (DateTime.Today > week4)     //檢查如果今天過了截止日期的話，就不讓消費者選號    
        {
            week4total = 0;
        }


        TotalOrder1HF.Value = totalOrder3;
        TotalOrder2HF.Value = totalOrder4;

        LitWeek2.Text = totalOrder4;

        LitplayRemain2.Text = (week4total).ToString();
        PlayRemain1HF.Value = (week3total).ToString();
        PlayRemain2HF.Value = (week4total).ToString();

    }

    [WebMethod(EnableSession = true)]
    public static string InsertLottery(int LotNumber, string lotCode, int total)
    {
        DataTable dtOrder = (DataTable)HttpContext.Current.Session["dtOrder"];
        string orderid = "";
        int userid = Convert.ToInt32(HttpContext.Current.Session["A01"].ToString());

        string sql = @"SELECT LLOG02,LLOG03,LLOG04,LLOG05,LLOG06 FROM LOTTERYLOG
            WHERE LLOG02 BETWEEN '2018-03-22 00:00:00' AND '2018-04-05 00:00:00' AND LLOG03=@LLOG03 AND LLOG06=@LLOG06";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@LLOG03", SqlDbType.BigInt, userid));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@LLOG06", SqlDbType.VarChar, lotCode));
        DataTable dtCheck = SqlDbmanager.queryBySql(cmd);

        string strResponse = "";

        int totalOrder = total;


        if (dtCheck.Rows.Count >= totalOrder)        //已選的球數大於總訂單數
        {
            strResponse = "你的投注機會已用完咯~";
        }
        else
        {
            if (lotCode == "week180322")
            {
                DataRow[] drr = dtOrder.Select("ORM03 >= '2018-03-22 00:00:00' AND ORM03 <= '2018-03-28 23:59:59' AND ORM40<='2018-03-29 23:59:59'");
                orderid = drr[0]["ORM01"].ToString();
            }
            else if (lotCode == "week180329")
            {
                DataRow[] drr = dtOrder.Select("ORM03 >= '2018-03-29 00:00:00' AND ORM03 <= '2018-04-04 23:59:59' AND ORM40<='2018-04-05 23:59:59'");
                orderid = drr[0]["ORM01"].ToString();
            }
            LotteryLogFac llf = new LotteryLogFac();

            LotteryLog lotl = new LotteryLog();
            lotl.LLog02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            lotl.LLog03 = userid;
            lotl.LLog04 = LotNumber;
            lotl.LLog05 = orderid;
            lotl.LLog06 = lotCode;
            llf.insertLotteryLog(lotl);
            strResponse = "已成功選號～ 祝你中獎，Good Luck！";

        }
        //這裡要return一個值
        return strResponse;
    }
}
