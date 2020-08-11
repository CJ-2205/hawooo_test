using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class mobile_20181111rank : System.Web.UI.Page
{
    private string sdate = "2018-01-01 00:00:00";
    private string edate = "2018-05-12 00:00:00";
    protected void Page_Load(object sender, EventArgs e)
    {
        LangType lang = (this.Master as mobile).LgType;
        if (lang.Equals(LangType.zh))
            ch.Visible = true;
        else if (lang.Equals(LangType.en))
            en.Visible = true;

        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"SELECT ISNULL(SUM(ORM08),0) AS MONEY FROM ORDERM WHERE ORM24>=0 AND ORM03>=@ST AND ORM03 <@ET AND  ORM23=@ORM23 ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM23", SqlDbType.Int, Convert.ToInt32(Session["A01"].ToString())));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.DateTime, sdate));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.DateTime, edate));
                DataTable dtMember = SqlDbmanager.queryBySql(cmd);
                string money = "0";
                if (dtMember.Rows.Count > 0)
                    money = dtMember.Rows[0]["MONEY"].ToString();
                //LtSumMoney.Text = "RM " + money;

            }
            else
            {
                //LtSumMoney.Text = "請先登入會員";
            }

            Tuple<DataTable, DateTime> t = GetRankDt();
            DataTable dt = t.Item1;
            //LtUpdateTime.Text = "(排行榜最新更新时间:" + t.Item2.ToString("HH:mm dd/MM") + ",每半小時更新)";

            DataTable dtRank = new DataTable();
            dtRank.Columns.Add("IMG");
            dtRank.Columns.Add("RANK");
            dtRank.Columns.Add("MONEY");
            dtRank.Columns.Add("EMAIL");
            dtRank.Columns.Add("PHONE");
            dtRank.Columns.Add("NOTE");
            Dictionary<int, string> dicImg = new Dictionary<int, string>();
            dicImg.Add(0, "gift_01");
            dicImg.Add(1, "gift_02");
            dicImg.Add(2, "gift_03");
            dicImg.Add(3, "gift_04");
            dicImg.Add(4, "gift_05");
            dicImg.Add(5, "money_50");
            dicImg.Add(6, "money_50");
            dicImg.Add(7, "money_50");
            dicImg.Add(8, "money_50");
            dicImg.Add(9, "money_50");
            dicImg.Add(10, "money_30");
            dicImg.Add(11, "money_30");
            dicImg.Add(12, "money_30");
            dicImg.Add(13, "money_30");
            dicImg.Add(14, "money_30");
            Dictionary<int, string> dicNote = new Dictionary<int, string>();
            dicNote.Add(0, "马来西亚飞台北双人来回机票<br/>(一人中奖，二人同行，市值RM2,500)");
            dicNote.Add(1, "好物购物金RM1,000");
            dicNote.Add(2, "好物购物金RM700");
            dicNote.Add(3, "Dr. Cink 钻石还原美白限定组 (市值RM350)");
            dicNote.Add(4, "清桧家用清洁5件组 (市值RM265)");
            dicNote.Add(5, "好物购物金 RM50");
            dicNote.Add(6, "好物购物金 RM50");
            dicNote.Add(7, "好物购物金 RM50");
            dicNote.Add(8, "好物购物金 RM50");
            dicNote.Add(9, "好物购物金 RM50");
            dicNote.Add(10, "好物购物金 RM30");
            dicNote.Add(11, "好物购物金 RM30");
            dicNote.Add(12, "好物购物金 RM30");
            dicNote.Add(13, "好物购物金 RM30");
            dicNote.Add(14, "好物购物金 RM30");
            if (dt != null)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    //foreach (DataRow dr in dt.Rows)
                    //{
                    DataRow drRank = dtRank.NewRow();
                    drRank["IMG"] = "https://www.hawooo.com/images/ftp/20181101/" + dicImg[i].ToString() + ".png";
                    drRank["NOTE"] = dicNote[i].ToString();
                    drRank["RANK"] = (i + 1).ToString();
                    drRank["MONEY"] = dt.Rows[i]["MONEY"].ToString();
                    drRank["EMAIL"] = HiddenEmail(dt.Rows[i]["EMAIL"].ToString());
                    drRank["PHONE"] = dt.Rows[i]["PHONE"].ToString().Replace(dt.Rows[i]["PHONE"].ToString().Substring(0, 5), "*****");
                    //drRank["PHONE"] = dt.Rows[i]["PHONE"].ToString();
                    dtRank.Rows.Add(drRank);
                    //}
                }
            }
            rp1.DataSource = dtRank;
            rp1.DataBind();
        }
    }

    public Tuple<DataTable, DateTime> GetRankDt()
    {
        //if (Cache["RankDt"] != null)
        //{
        //    return (Tuple<DataTable, DateTime>)Cache["RankDt"];
        //}
        //else
        //{
            //排行榜前五名
            DateTime time = DateTime.Now;
            string min = "00";
            if (time.Minute >= 30)
                min = "30";
            //if (time.Minute % 5 == 0)
            //    min = time.Minute.ToString();
            //else
            //    min = ((time.Minute / 5) * 5).ToString();

            time = Convert.ToDateTime(time.Hour.ToString() + ":" + min);
            SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = @"SELECT ORM23 AS ID,SUM(ORM08) AS MONEY,CASE MAX(A08) WHEN '' THEN MAX(ORM17) ELSE MAX(A08) END AS EMAIL,CASE MAX(A09) WHEN '' THEN MAX(ORM15) ELSE MAX(A09) END AS PHONE FROM ORDERM INNER JOIN A ON ORM23=A01 WHERE ORM24>-1 AND ORM03>='2017-11-08 00:00:00' AND ORM03 <'2017-11-10 00:00:00' AND ORM17 NOT LIKE '%hawoo%' GROUP BY ORM23 ORDER BY SUM(ORM08) DESC";
            cmd.CommandText = @"SELECT TOP 15
                                ORM23 AS ID,
                                SUM(ORM08) AS MONEY,
                                CASE  WHEN MAX(A08)='' THEN MAX(ORM17) ELSE MAX(A08) END AS EMAIL,
                                CASE  WHEN MAX(A09)='' THEN MAX(ORM15) ELSE MAX(A09) END AS PHONE
                                FROM ORDERM CROSS APPLY (SELECT TOP 1 A08,A09 FROM A WHERE A01=ORM23) AS DT  
                                WHERE ORM24>=0 AND ORM03>=@ST AND ORM03 <@ET AND ORM17 NOT LIKE '%hawoo%' AND A08 NOT LIKE '%hawoo%' 
                                GROUP BY ORM23
                                ORDER BY SUM(ORM08) DESC";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.DateTime, sdate));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.DateTime, edate));
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            Tuple<DataTable, DateTime> Rank = new Tuple<DataTable, DateTime>(dt, time);
            //塞一個時間後消失
            Cache.Insert("RankDt", Rank, null, time.AddMinutes(30), TimeSpan.Zero);
            return Rank;
        //}
    }

    public string HiddenEmail(string email)
    {
        string first = email.Split('@')[0];
        string second = email.Split('@')[1];

        int Flength = first.Length;
        int Slength = second.Length;

        int count1 = Flength / 2;
        int count2 = Slength / 2;

        string hidden1 = "*";
        string hidden2 = "*";
        for (int i = 0; i < count1; i++)
        {
            hidden1 += "*";
        }
        for (int i = 0; i < count2; i++)
        {
            hidden2 += "*";
        }

        return first.Replace(first.Substring(Flength - count1, count1), hidden1) + "@" + second.Replace(second.Substring(0, count2), hidden2);


    }


}

