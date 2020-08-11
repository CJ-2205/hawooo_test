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
using System.Text;
using System.Configuration;
using System.Web.Caching;

public partial class user_static_jackpot_game : System.Web.UI.Page
{
    public static int _playLimit = 1;//每月限制玩一次

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/jackpot_game.aspx" + Request.Url.Query);
            }


            var goodsAndChance = SetGoodsData();
            rpGoods1.DataSource = goodsAndChance;
            rpGoods1.DataBind();
            rpGoods2.DataSource = goodsAndChance;
            rpGoods2.DataBind();
            rpGoods3.DataSource = goodsAndChance;
            rpGoods3.DataBind();
            rpGoodBox.DataSource = goodsAndChance;
            rpGoodBox.DataBind();
            string sType = "";
            if (Session["A01"] != null)
            {
                string UID = Session["A01"].ToString();
                DataTable dt = CheckInOrNot(UID);
                if (dt.Rows.Count == 0)
                {
                    sType = "1";
                }
                else
                {
                    sType = "-1";
                }
            }
            HFSt.Value = sType;//1=本月未玩過；-1=本月已玩過
        }
    }

    private static DataTable CheckInOrNot(string userID)
    {
        string stime = DateTime.Now.AddDays(-DateTime.Now.Day + 1).ToString("yyyy-MM-dd 00:00:00");
        string etime = DateTime.Now.AddMonths(1).AddDays(-DateTime.Now.AddMonths(1).Day).ToString("yyyy-MM-dd 23:59:59");

        string str = @"SELECT ATime,UserId,FGId FROM GetFreeGoodsLog WHERE UserId=@UserId AND
        ATime BETWEEN @ST AND @ET";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("UserId", SqlDbType.VarChar, userID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.VarChar, stime));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.VarChar, etime));

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    [WebMethod]
    public static string GetGoods()
    {
        StringBuilder sb = new StringBuilder();
        List<myGoodsList> goodsAndChance = new List<myGoodsList>();

        if (HttpRuntime.Cache["GoodsDt"] != null)
        {
            goodsAndChance = (List<myGoodsList>)HttpRuntime.Cache["GoodsDt"];
        }
        else
        {
            user_static_jackpot_game us = new user_static_jackpot_game();
            goodsAndChance = us.SetGoodsData();
        }

        sb.Append("[");
        foreach (var item in goodsAndChance)
        {
            sb.Append("{" + "\"id\":\"" + item.id + "\",");
            sb.Append("\"name\":\"" + item.name + "\",");
            sb.Append("\"chance\":\"" + item.chance + "\",");
            sb.Append("\"img\":\"" + item.img + "\"" + "},");
        }
        sb = new StringBuilder(sb.ToString().TrimEnd(','));//移除最後一個物件的「,」字元
        sb.Append("]");

        return sb.ToString();

    }

    private static bool WriteLog(string userID, string FGId)
    {
        string strSql = "INSERT INTO GetFreeGoodsLog (ATime,UserId,FGId,Status) VALUES (@ATime,@UserId,@FGId,@Status)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@ATime", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@UserId", SqlDbType.BigInt, userID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@FGId", SqlDbType.VarChar, FGId));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@Status", SqlDbType.Int, 0));

        return SqlDbmanager.executeNonQry(cmd);

    }



    [WebMethod]
    public static string CheckPrize(string userID, string FGId)
    {
        string returnMsg = "OK";

        DataTable dt = CheckInOrNot(userID);

        if (dt.Rows.Count < _playLimit)  //不能超過當月上限
        {
            bool result = WriteLog(userID, FGId);
            if (!result)
            {
                returnMsg = "WriteLog Error";
            }
           
        }
        else
        {
            returnMsg = "Only play once a Month!";
        }
        StringBuilder sb = new StringBuilder();
        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\"");
        sb.Append("}]");

        return sb.ToString();

    }

    public class myGoodsList
    {
        public int location { get; set; }
        public string id { get; set; }
        public string name { get; set; }
        public int chance { get; set; }
        public string img { get; set; }
    }

    public List<myGoodsList> SetGoodsData()
    {
        List<myGoodsList> goodsAndChance = new List<myGoodsList>();
        string strSql = @"SELECT FGId,OptionId,STime,ETime,Chance,Qty,Status,WPA02,WP02,WP08_1 FROM FreeGoods
INNER JOIN WPA ON WPA01 = OptionId
INNER JOIN WP ON WP.WP01 = WPA.WP01
WHERE Status=1 AND Qty>0
AND GetDate() BETWEEN STIME AND ETIME";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Rows.Count > 0)
        {
            var goodsCount = dt.Rows.Count;//獎品總數
            var originalTotalChance = 0;//原始總機率
            var sep = 0;//要分的總份數
            var maxChance = dt.Compute("max(Chance)", "").ToString();
            var i = 0;
            foreach (DataRow dr in dt.Rows)
            {
                var chance = Convert.ToInt32(Math.Round((1000.00m / goodsCount * Convert.ToDecimal(dr["Chance"])), 0));
                originalTotalChance += chance;
                sep += Convert.ToInt32((Convert.ToDecimal(dr["Chance"])) * 10);
            }
            var remainChance = 1000 - originalTotalChance;//參數低於1多出來的機率數
            var count = remainChance / sep;//每份的機率值
            foreach (DataRow dr in dt.Rows)
            {
                var chance = Convert.ToInt32(Math.Round((1000.00m / goodsCount * Convert.ToDecimal(dr["Chance"])) + count * Convert.ToInt32((Convert.ToDecimal(dr["Chance"])) * 10), 0));
                goodsAndChance.Add(new myGoodsList { location = i, id = dr["FGId"].ToString(), name = dr["WP02"].ToString() + dr["WPA02"].ToString(), chance = chance, img = dr["WP08_1"].ToString() });
                i++;
            }
            int totalCount = 0;//總機率數
            foreach (var item in goodsAndChance)
            {
                totalCount += item.chance;
            }
            int remain = 1000 - totalCount;//剩餘機率數
            var maxItem = goodsAndChance.OrderByDescending(v => v.chance).First();
            maxItem.chance += remain;//回加機率到權重最高的其中一個

        }
        //HttpContext.Current.Cache.Insert("GoodsDt", goodsAndChance, null, DateTime.Now.AddMinutes(30), TimeSpan.Zero);
        HttpRuntime.Cache.Insert("GoodsDt", goodsAndChance, null, DateTime.Now.AddMinutes(30), TimeSpan.Zero);
        return goodsAndChance;
    }
}