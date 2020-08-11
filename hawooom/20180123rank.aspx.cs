using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data.SqlClient;
using System.Data;

public partial class _20180123rank : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //bindProduct1(363);//
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"SELECT ISNULL(SUM(ORM08),0) AS MONEY FROM ORDERM WHERE ORM24>-1 AND ORM03>='2018-01-24 00:00:00' AND ORM03 <'2018-01-29 23:59:59' AND  ORM23=@ORM23 ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM23", SqlDbType.Int, Convert.ToInt32(Session["A01"].ToString())));
                DataTable dtMember = SqlDbmanager.queryBySql(cmd);
                string money = "0";
                if (dtMember.Rows.Count > 0)
                    money = dtMember.Rows[0]["MONEY"].ToString();
                LtSumMoney.Text = "RM " + money;
                LbMoneyText.Text = "我已累计的消费金额：";
                LtLogin.Text = "";

            }
            else
            {
                LtSumMoney.Text = "";
                LbMoneyText.Text = "";
                LtLogin.Text = "點我登入";
            }

            Tuple<DataTable, DateTime> t = GetIphoneRankDt();
            DataTable dt = t.Item1;
            LtUpdateTime.Text = "(排行榜最新更新时间:" + t.Item2.ToString("HH:mm dd/MM") + ",每半小時更新)";

            DataTable dtRank = new DataTable();
            dtRank.Columns.Add("RANK");
            dtRank.Columns.Add("MONEY");
            dtRank.Columns.Add("EMAIL");
            dtRank.Columns.Add("PHONE");

            if (dt != null)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    //foreach (DataRow dr in dt.Rows)
                    //{
                    DataRow drRank = dtRank.NewRow();
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
    public Tuple<DataTable, DateTime> GetIphoneRankDt()
    {
        if (Cache["IphonRankDt"] != null)
        {
            return (Tuple<DataTable, DateTime>)Cache["IphonRankDt"];
        }
        else
        {
            //1110~1111哀鳳積分排行榜前五名
            DateTime time = DateTime.Now;
            string min = "00";
            if (time.Minute >= 30)
                min = "30";
            time = Convert.ToDateTime(time.Hour.ToString() + ":" + min);
            SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = @"SELECT ORM23 AS ID,SUM(ORM08) AS MONEY,CASE MAX(A08) WHEN '' THEN MAX(ORM17) ELSE MAX(A08) END AS EMAIL,CASE MAX(A09) WHEN '' THEN MAX(ORM15) ELSE MAX(A09) END AS PHONE FROM ORDERM INNER JOIN A ON ORM23=A01 WHERE ORM24>-1 AND ORM03>='2017-11-08 00:00:00' AND ORM03 <'2017-11-10 00:00:00' AND ORM17 NOT LIKE '%hawoo%' GROUP BY ORM23 ORDER BY SUM(ORM08) DESC";
            cmd.CommandText = @"SELECT TOP 10
ORM23 AS ID,
SUM(ORM08) AS MONEY,
CASE  WHEN MAX(A08)='' THEN MAX(ORM17) ELSE MAX(A08) END AS EMAIL,
CASE  WHEN MAX(A09)='' THEN MAX(ORM15) ELSE MAX(A09) END AS PHONE
FROM ORDERM CROSS APPLY (SELECT TOP 1 A08,A09 FROM A WHERE A01=ORM23) AS DT  
WHERE ORM24>0 AND ORM19=1 AND ORM03>='2018-01-24 00:00:00' AND ORM03 <'2018-01-29 23:59:59' AND ORM40<'2018-01-30 23:59:59' AND ORM17 NOT LIKE '%hawoo%' 
GROUP BY ORM23
ORDER BY SUM(ORM08) DESC";
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            Tuple<DataTable, DateTime> TupleIphoneRank = new Tuple<DataTable, DateTime>(dt, time);
            Cache.Insert("IphonRankDt", TupleIphoneRank, null, time.AddMinutes(30), TimeSpan.Zero);
            return TupleIphoneRank;
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

        return first.Replace(first.Substring(Flength - count1, count1), hidden1) + "@" + second.Replace(second.Substring(0, count2-2), hidden2);


    }


    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_1.DataSource = dt;
        rp_product_list_1.DataBind();
    }

}