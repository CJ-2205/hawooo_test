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

public partial class _18foodfestival : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindProduct1(422);//
        bindProduct2(425);//
        bindProduct3(426);//

        if (Session["A01"] != null)
        {
            int UID = Convert.ToInt32(Session["A01"].ToString());
            Session["Login"] = "true";
            GetData(UID);
        }
        else
        {
            Session["Login"] = "false";
        }
    }

    public void GetData(int userid)
    {
        DataTable dtOrm = new DataTable();
        DataTable dtLog = new DataTable();
        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();

        string sqlOrm = @"SELECT ORM01,ORM23,ORM03,ORM40,ORM08 FROM ORDERM
WHERE ORM19=1  AND DATEDIFF(DAY,ORM03,ORM40)<2  
AND ORM03 BETWEEN '2018/04/06 00:00:00' AND '2018/04/16 23:59:59' AND ORM08>=129 AND DATEDIFF(DAY,ORM03,GETDATE())<2
AND ORM23=@ORM23
AND NOT EXISTS(SELECT DT.ORM01 FROM GiftRegisterLog AS DT WHERE A01=@ORM23 AND ORM01=DT.ORM01)";

        string sqlLog = @"SELECT A01,GRLOG03 FROM GIFTREGISTERLOG
WHERE A01=@A01";


        SqlCommand cmdOrm = new SqlCommand();
        SqlCommand cmdLog = new SqlCommand();
        cmdOrm.CommandText = sqlOrm;
        cmdLog.CommandText = sqlLog;
        cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

        dcmd.Add("Log", cmdLog);
        dcmd.Add("Orm", cmdOrm);

        DataSet ds = SqlDbmanager.queryBySql(dcmd);
        dtLog = ds.Tables["Log"];
        dtOrm = ds.Tables["Orm"];

        bool G129Pick = false;      //false代表未選,true代表已選
        bool G299Pick = false;
        bool G429Pick = false;

        if (dtOrm.Rows.Count > 0)  //查看有沒有符合的訂單
        {
            HFOrder.Value = "1";            //代表有訂單

            if (dtLog.Rows.Count > 0)
            {       //代表有選過商品
                foreach (DataRow dr in dtLog.Rows)
                {
                    //檢查使用者選了哪一個商品
                    string GID = dr["GRLOG03"].ToString();
                    if (GID == "554037BE-B26B-48D0-B6DC-37D455458A08")
                    { G129Pick = true; }
                    if (GID == "EAE68C54-10EE-473D-B2AB-66123A3ACDD9")
                    { G299Pick = true; }
                    if (GID == "C5765556-BAEB-4E58-BFD5-C92B42C155CF")
                    { G429Pick = true; }
                }
            }

        }
        else
        {
            HFOrder.Value = "0";
        }

        Session["dtOrder"] = dtOrm;

        HF129.Value = G129Pick.ToString();
        HF299.Value = G299Pick.ToString();
        HF429.Value = G429Pick.ToString();
    }

    /// <summary>
    /// 取得最接近門口的訂單編號
    /// </summary>
    /// <param name="price"></param>
    /// <returns></returns>
    public static string GetOrder(int price)
    {
        DataTable dtOrder = (DataTable)HttpContext.Current.Session["dtOrder"];      //在Static裡獲取session時需要在session前加上HttpContext.Current

        int[] aPrice = new int[dtOrder.Rows.Count];                  //放減的數字
        string[] orderGUID = new string[dtOrder.Rows.Count];           //放ORM01
        int min = 0;
        int b = 0;


        foreach (DataRow dr in dtOrder.Rows)
        {
            int i = Convert.ToInt32(dr["ORM08"]);

            aPrice[b] = Math.Abs(i - price);
            orderGUID[b] = dr["ORM01"].ToString();

            if (aPrice[b] < aPrice[min])
            {
                min = b;
            }
            b++;
        }

        return orderGUID[min];          //回傳最相近的orm01
    }

    [WebMethod(EnableSession = true)]
    public static string SelectGift(string PickID)
    {
        Dictionary<string, int> dstock = new Dictionary<string, int>();
        dstock.Add("554037BE-B26B-48D0-B6DC-37D455458A08", 500);
        dstock.Add("EAE68C54-10EE-473D-B2AB-66123A3ACDD9", 150);
        dstock.Add("C5765556-BAEB-4E58-BFD5-C92B42C155CF", 100);

        string response = "";
        int userid = Convert.ToInt32(HttpContext.Current.Session["A01"].ToString());
        DataTable dtOrder = (DataTable)HttpContext.Current.Session["dtOrder"];
        int price = Convert.ToInt32(PickID);

        int length = dtOrder.Select("ORM08>=" + price).Length;          //如果select數字的話不需要加上''，如果select string的話才需要

        if (length > 0)     //代表有符合的訂單
        {
            string sgiftGUID = "";
            if (PickID == "129")
            {
                sgiftGUID = "554037BE-B26B-48D0-B6DC-37D455458A08";
            }
            else if (PickID == "299")
            {
                sgiftGUID = "EAE68C54-10EE-473D-B2AB-66123A3ACDD9";
            }
            else if (PickID == "429")
            {
                sgiftGUID = "C5765556-BAEB-4E58-BFD5-C92B42C155CF";
            }

            //檢查還有沒有庫存
            string sqlCheckStock = @"SELECT GRLOG03,COUNT(GRLOG03) AS 'GIFTCHOSEN'  FROM GiftRegisterLog WHERE GRLog03=@GRLog03 GROUP BY GRLOG03";
            SqlCommand cmdCheckStock = new SqlCommand();
            cmdCheckStock.CommandText = sqlCheckStock;
            cmdCheckStock.Parameters.Add(SafeSQL.CreateInputParam("@GRLog03", SqlDbType.UniqueIdentifier, sgiftGUID));

            //檢查是否領過
            string sqlCheckPick = @"SELECT A01,GRLOG03 FROM GIFTREGISTERLOG WHERE A01=@A01";
            SqlCommand cmdCheckPick = new SqlCommand();
            cmdCheckPick.CommandText = sqlCheckPick;
            cmdCheckPick.Parameters.Add(SafeSQL.CreateInputParam("@GRLog03", SqlDbType.UniqueIdentifier, sgiftGUID));
            cmdCheckPick.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

            Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();
            dcmd.Add("CheckStock", cmdCheckStock);
            dcmd.Add("CheckPick", cmdCheckPick);

            DataSet ds = SqlDbmanager.queryBySql(dcmd);
            DataTable dtStock = ds.Tables["CheckStock"];
            DataTable dtPick = ds.Tables["CheckPick"];

            int stockleft = 0;
            if (dtStock.Rows.Count > 0)
            {
                stockleft = Convert.ToInt32(dtStock.Rows[0]["GIFTCHOSEN"]);
            }
            int stock;
            dstock.TryGetValue(sgiftGUID, out stock);

            if (dtPick.Rows.Count >= dtOrder.Rows.Count)      //代表已選過此贈品
            { response = "一張訂單只能领一次喔，赶快去选其他赠品吧"; }
            else
            {
                //原庫存-被選走數量
                if (stock - stockleft > 0) //代表還有庫存
                {
                    //選最接近的號碼      
                    string orm01 = GetOrder(price);

                    string sql = @"INSERT INTO GiftRegisterLog (GRLOG02,A01,GRLOG03,ORM01) VALUES (@GRLOG02,@A01,@GRLOG03,@ORM01)";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = sql;
                    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG02", SqlDbType.SmallDateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
                    cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));
                    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG03", SqlDbType.UniqueIdentifier, sgiftGUID));
                    cmd.Parameters.Add(SafeSQL.CreateInputParam("@ORM01", SqlDbType.UniqueIdentifier, orm01));

                    string s = ORDER.JoinGift2Order(orm01, sgiftGUID);
                    if (s == "OK")
                    {
                        response = "Yeah，已成功领取。";
                        SqlDbmanager.executeNonQry(cmd);
                    }
                    else if (s == "FAIL")
                    {
                        response = "Oh No,系统好像出现了问题,若多次无法使用请麻烦与客服联系。";
                    }
                    else if (s == "NO_ORDER")
                    {
                        response = "系統找不到符合的訂單，若多次无法使用请麻烦与客服联系。";
                    }
                    else if (s == "NO_GIFT")
                    {
                        response = "未完成领取程序，若多次无法使用请麻烦与客服联系。";
                    }
                }
                else
                {
                    response = "Opps，哭哭已被抢光了，快抢其他赠品吧。";
                }
            }
        }
        else
        {
            response = "哎呀，还差一点就符合订单金额门槛，快找姐妹凑一凑，很容易到的啦。";
        }

        return response;

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
    private void bindProduct2(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_2.DataSource = dt;
        rp_product_list_2.DataBind();
    }

    private void bindProduct3(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_3.DataSource = dt;
        rp_product_list_3.DataBind();
    }
}