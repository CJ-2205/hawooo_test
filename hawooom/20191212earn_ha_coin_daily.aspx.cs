using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Text;

public partial class mobile_static_20191212earn_ha_coin_daily : System.Web.UI.Page
{
    public int _memberGetCoin;
    public int _signCount;
    public static int _signLimit = 1;//每日限制簽到一次
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            TopInfo();

            BindCardInfo();
            CloseCard();
        }
    }

    private void TopInfo()
    {
        //string temp1 = "<span style='cursor: pointer;color: white' onclick='doLogin("+ "'20191212earn_ha_coin_daily.aspx'"+"); '>Sign in now to get your Ha coins</span>";
        string temp2 =
            "<span style='color: white;'>HI #name#  Attendance </span><br />" +
            "<span style='color: white;'>You have won <span id='coinMsg'>#GetCoin#</span> ha coins</span>";
        if (Session["A01"] == null)
            lit_info.Text = "";
        else
        {
            _signCount = GetSignCount(Session["A01"].ToString());
            _memberGetCoin = MemberGetCoin(Session["A01"].ToString());

            temp2 = temp2.Replace("#name#", Session["A02"].ToString());
            temp2 = temp2.Replace("#GetCoin#", _memberGetCoin.ToString());
            lit_info.Text = temp2;
            GetSignCount(Session["A01"].ToString());
        }
    }

    private static int GetSignCount(string memberID)
    {
        string str = "select count(*) from SignEventLog Where SLOG03=@SLOG03";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SLOG03", SqlDbType.VarChar, memberID));
        var dt = SqlDbmanager.queryBySql(cmd);
        int count = Convert.ToInt32(dt.Rows[0][0]);
        return count;
    }



    private int MemberGetCoin(string memberID)
    {
        string str = "select ISNULL(SUM(Slog04),0) from SignEventLog Where SLOG03=@SLOG03";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SLOG03", SqlDbType.VarChar, memberID));
        var dt = SqlDbmanager.queryBySql(cmd);
        int totalCoin = Convert.ToInt32(dt.Rows[0][0]);
        return totalCoin;
    }

    private void CloseCard()
    {
        if (Session["A01"] != null)
        {
            foreach (RepeaterItem item in rp_date.Items)
            {
                ((Panel)item.FindControl("panel1")).Visible = false;
                ((Panel)item.FindControl("panel2")).Visible = true;

                int i = item.ItemIndex + 1;
                if (i <= _signCount)//判別簽過幾次(打開幾張卡片)
                {
                    var li = rp_date.Items[i - 1].FindControl("li1") as HtmlGenericControl;
                    li.Attributes["class"] = "am-fl card transition front";
                    li.Attributes["onclick"] = "";
                }
            }


            DataTable dt = CheckInOrNot(Session["A01"].ToString());
            if (dt.Rows.Count < _signLimit)//今天尚未簽到跑這邊
            {
                for (int i = _signCount + 2; i <= rp_date.Items.Count; i++)
                {
                    var li = rp_date.Items[i - 1].FindControl("li1") as HtmlGenericControl;
                    li.Attributes["onclick"] = "alert('You cannot sign')";
                }
            }
            else//已經簽到跑這邊
            {
                for (int i = _signCount + 1; i <= rp_date.Items.Count; i++)
                {
                    var li = rp_date.Items[i - 1].FindControl("li1") as HtmlGenericControl;
                    li.Attributes["onclick"] = "alert('You cannot sign')";

                }
            }
        }
    }

    protected void rp_date_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }

    public class Cards
    {
        public string cid { get; set; }
        public string graycard { get; set; }
        public string goldcard { get; set; }
        public int value { get; set; }
        public Cards(string _cid, string _graycard, string _goldcard, int _value)
        {
            cid = _cid;
            graycard = _graycard;
            goldcard = _goldcard;
            value = _value;
        }
    }


    private void BindCardInfo()
    {
        string src = ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/";
        List<Cards> cardList = new List<Cards>
            {
                new Cards("li1", src+"hag_01.png", src+ "ha_01.png", 5),
                new Cards("li2", src+"hag_02.png", src+ "ha_02.png", 10),
                new Cards("li3", src+"hag_03.png", src+ "ha_03.png", 50),
                new Cards("li4", src+"hag_04.png", src+ "ha_04.png", 100),
                new Cards("li5", src+"hag_05.png", src+ "ha_05.png", 150),
                new Cards("li6", src+"hag_06.png", src+ "ha_06.png", 200),
                new Cards("li7", src+"hag_07.png", src+ "ha_07.png", 250),
                new Cards("li8", src+"hag_08.png", src+ "ha_08.png", 300),
                new Cards("li9", src+"hag_09.png", src+ "ha_09.png", 350),
                new Cards("li10", src+"hag_10.png", src+ "ha_010.png", 400),
                new Cards("li11", src+"hag_11.png", src+ "ha_011.png", 500),
            };

        rp_date.DataSource = cardList;
        rp_date.DataBind();
    }



    private static bool WriteLog(string userID, int coinCount)
    {
        string strSql = "INSERT INTO SignEventLog (Slog02,Slog03,Slog04) VALUES (@Slog02,@Slog03,@Slog04)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@Slog02", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@Slog03", SqlDbType.BigInt, userID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@Slog04", SqlDbType.Int, coinCount));

        return SqlDbmanager.executeNonQry(cmd);

    }

    private static DataTable CheckInOrNot(string userID)
    {
        string stime = DateTime.Now.ToString("yyyy-MM-dd 00:00:00");
        string etime = DateTime.Now.ToString("yyyy-MM-dd 23:59:59");
        //string str = "select * from SignEventLog where SLOG03=@SLOG03 and " +
        //        "SLog02 >= DATEADD(dd,DATEDIFF(dd,0,GETDATE()),0) and SLog02 < cast(DATEADD(day,1,getdate()) AS DATE)";
        string str = "select * from SignEventLog where SLOG03=@SLOG03 and " +
        "SLog02 between @ST and @ET";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SLOG03", SqlDbType.VarChar, userID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.VarChar, stime));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.VarChar, etime));

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    public static bool AddCoinCheckNote(int userId, decimal coin, string sysNote)
    {
        Coin cn = new Coin();
        cn.CN01 = Guid.NewGuid().ToString();
        cn.CN02 = userId;
        cn.CN03 = coin;
        cn.CN04 = 1;
        cn.CN06 = sysNote;
        cn.CN07 = "System Add";
        cn.CN08 = userId.ToString();
        cn.CN09 = "";
        cn.CN11 = "Event";
        CoinFac coinFac = new CoinFac();
        return coinFac.AddCoinCheckNote(cn);
    }

    [System.Web.Services.WebMethod]
    public static string GetCoin(string userID)
    {

        var signCount = GetSignCount(userID);

        DataTable dt = CheckInOrNot(userID);
        int[] prize = new int[] { 5, 10, 50, 100, 150, 200, 250, 300, 350, 400, 500 };
        var getCoin = prize[signCount];

        string returnMsg = "OK";
        int coin = 0;
        if (dt.Rows.Count < _signLimit)
        {
            bool result = WriteLog(userID, getCoin);
            if (result)
            {
                var user = Convert.ToInt32(userID);
                result = AddCoinCheckNote(user, getCoin, "191212_" + getCoin.ToString());
                if (!result)
                    returnMsg = "Error 002";
                else
                    coin = getCoin;
            }
            else
            {
                returnMsg = "Error 001";
            }
        }
        else
        {
            returnMsg = "Only get once a day!";
        }

        StringBuilder sb = new StringBuilder();
        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\",");
        sb.Append("\"coin\":\"" + coin + "\"");
        sb.Append("}]");


        return sb.ToString();

    }
}