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

public partial class _180601midsale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            Session["Login"] = "true";
        }
        else
        {
            Session["Login"] = "false";
        }


        int[] eid = { 469, 470, 471 };
        DataTable dt = bindProduct1(eid);

        rp_product_list_1.DataSource = sortPID(dt, eid[0]);
        rp_product_list_1.DataBind();

        rp_product_list_2.DataSource = sortPID(dt, eid[1]);
        rp_product_list_2.DataBind();

        rp_product_list_3.DataSource = sortPID(dt, eid[2]);
        rp_product_list_3.DataBind();
    }

    private DataTable bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    private DataTable bindProduct1(int[] eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();

        string sJoin = "CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 in (@SPD) AND SPD02=WP01) AS SPD";
        string sList = "WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 in (@SPD))";
        string sParam = "";
        foreach (int i in eid)
        {
            sParam += "@SPD" + i + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD" + i, SqlDbType.Int, i));
        }
        sParam = sParam.Substring(0, sParam.Length - 1);
        sJoin = sJoin.Replace("@SPD", sParam);
        sList = sList.Replace("@SPD", sParam);
        List<string> JoinStrs = new List<string>();
        JoinStrs.Add(sJoin);         //補上cross apply出eid
        List<string> qList = new List<string>();
        qList.Add(sList);
        List<string> OtherCells = new List<string>();
        OtherCells.Add("SPD01");          //需要額外select出的欄位
        OtherCells.Add("WP18");
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", JoinStrs, true, OtherCells);

        dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }

    private DataTable sortPID(DataTable dt, int eid)
    {
        DataTable table = new DataTable();
        if (dt.Select("SPD01='" + eid + "'").Length > 0)
        {
            table = dt.Select("SPD01='" + eid + "'").CopyToDataTable();
            DataView dv = new DataView(table);
            dv.Sort = "WP18 DESC";
            table = dv.ToTable();
        }
        return table;
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
WHERE ORM23=@A01 AND ORM08>=399 AND ORM19>0 AND ORM03 BETWEEN '2018-06-01 00:00:00' AND '2018-06-17 23:59:59' AND ORM40 BETWEEN '2018-06-01 00:00:00' AND '2018-06-18 23:59:59'
AND NOT EXISTS(SELECT ORM01 FROM GiftRegisterLog AS DT WHERE A01=@A01 AND GRLog04='180601MidSale' AND DT.ORM01=ORDERM.ORM01) ";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Rows.Count == 0)     //代表他沒有符合的訂單
        {
            response = "系統找不到符合的訂單，若多次無法使用請麻煩與客服聯繫。";
        }
        else
        {
            //代表他符合資格
            string orm01 = dt.Rows[0]["orm01"].ToString();

            bool b = writetoDB(userid, orm01);

            if (b == true)
            {
                response = "Yeah，已成功登記。購物金將在02/07/2018統一歸戶哦。";
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
        cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG04", SqlDbType.VarChar, "180601MidSale"));

        bool b = SqlDbmanager.executeNonQry(cmd);
        return b;
    }


}