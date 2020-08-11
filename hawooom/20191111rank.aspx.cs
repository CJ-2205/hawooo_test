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

public partial class mobile_static_20191111rank : System.Web.UI.Page
{

    private string sdate = "2019-11-01 00:00:00";
    private string edate = "2019-11-12 00:00:00";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Tuple<DataTable, DateTime> t = GetRankDt();
            DataTable dt = t.Item1;

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
            dicImg.Add(4, "gift_04");
            dicImg.Add(5, "gift_04");
            dicImg.Add(6, "gift_04");
            dicImg.Add(7, "gift_04");
            dicImg.Add(8, "gift_05");
            dicImg.Add(9, "gift_05");
            dicImg.Add(10, "gift_05");
            dicImg.Add(11, "gift_05");
            dicImg.Add(12, "gift_05");
            dicImg.Add(13, "gift_06");
            dicImg.Add(14, "gift_06");
            dicImg.Add(15, "gift_06");
            dicImg.Add(16, "gift_06");
            dicImg.Add(17, "gift_06");
            dicImg.Add(18, "gift_06");
            dicImg.Add(19, "gift_06");
            dicImg.Add(20, "gift_07");
            dicImg.Add(21, "gift_07");
            dicImg.Add(22, "gift_07");
            dicImg.Add(23, "gift_07");
            dicImg.Add(24, "gift_07");
            dicImg.Add(25, "gift_07");
            dicImg.Add(26, "gift_07");
            dicImg.Add(27, "gift_07");
            dicImg.Add(28, "gift_07");
            dicImg.Add(29, "gift_07");
            Dictionary<int, string> dicNote = new Dictionary<int, string>();
            dicNote.Add(0, "IPhone 11 128 GB<br/>(worth RM3599)");
            dicNote.Add(1, "RM1000 Shopping Coins");
            dicNote.Add(2, "RM500 Shopping Coins");
            dicNote.Add(3, "DR.CINK skin care set");
            dicNote.Add(4, "DR.CINK skin care set");
            dicNote.Add(5, "DR.CINK skin care set");
            dicNote.Add(6, "DR.CINK skin care set");
            dicNote.Add(7, "DR.CINK skin care set");
            dicNote.Add(8, "DV Resverratrol Drinks<br/>(純養妍) 3 boxes");
            dicNote.Add(9, "DV Resverratrol Drinks<br/>(純養妍) 3 boxes");
            dicNote.Add(10, "DV Resverratrol Drinks<br/>(純養妍) 3 boxes");
            dicNote.Add(11, "DV Resverratrol Drinks<br/>(純養妍) 3 boxes");
            dicNote.Add(12, "DV Resverratrol Drinks<br/>(純養妍) 3 boxes");
            dicNote.Add(13, "Dr.Morita Mask 20 pcs");
            dicNote.Add(14, "Dr.Morita Mask 20 pcs");
            dicNote.Add(15, "Dr.Morita Mask 20 pcs");
            dicNote.Add(16, "Dr.Morita Mask 20 pcs");
            dicNote.Add(17, "Dr.Morita Mask 20 pcs");
            dicNote.Add(18, "Dr.Morita Mask 20 pcs");
            dicNote.Add(19, "Dr.Morita Mask 20 pcs");
            dicNote.Add(20, "5000 Ha Coins");
            dicNote.Add(21, "5000 Ha Coins");
            dicNote.Add(22, "5000 Ha Coins");
            dicNote.Add(23, "5000 Ha Coins");
            dicNote.Add(24, "5000 Ha Coins");
            dicNote.Add(25, "5000 Ha Coins");
            dicNote.Add(26, "5000 Ha Coins");
            dicNote.Add(27, "5000 Ha Coins");
            dicNote.Add(28, "5000 Ha Coins");
            dicNote.Add(29, "5000 Ha Coins");

            if (dt != null)
            {
                string v = "";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DataRow drRank = dtRank.NewRow();
                    drRank["IMG"] = "https://www.hawooo.com/images/ftp/20191111/" + dicImg[i].ToString() + ".png";
                    drRank["NOTE"] = dicNote[i].ToString();

                    v = (i + 1).ToString();
                    switch (i + 1)
                    {
                        case 1:
                            {
                                v = "<img src='https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/w1.png' style='width:100% ;max-height:40px;max-width:40px'/>";
                                break;
                            }
                        case 2:
                            {
                                v = "<img src='https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/w2.png' style='width:100% ;max-height:40px;max-width:40px'/>";
                                break;
                            }
                        case 3:
                            {
                                v = "<img src='https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/w3.png' style='width:100% ;max-height:40px;max-width:40px'/>";
                                break;
                            }
                    }
                    drRank["RANK"] = v;
                    drRank["MONEY"] = dt.Rows[i]["MONEY"].ToString();
                    drRank["EMAIL"] = HiddenEmail(dt.Rows[i]["EMAIL"].ToString());
                    drRank["PHONE"] = dt.Rows[i]["PHONE"].ToString().Replace(dt.Rows[i]["PHONE"].ToString().Substring(0, 5), "*****");
                    dtRank.Rows.Add(drRank);
                }
            }
            rp1.DataSource = dtRank;
            rp1.DataBind();
        }
    }

    public Tuple<DataTable, DateTime> GetRankDt()
    {
        if (Cache["RankDt"] != null)
        {
            return (Tuple<DataTable, DateTime>)Cache["RankDt"];
        }
        else
        {
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
            cmd.CommandText = @"SELECT TOP 30
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
        }
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