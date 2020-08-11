using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_3rd_flashsale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindDT();
        }
    }

    public static int dicExtra(string wp01)
    {
        int i = 0;
        Dictionary<string, int> dic = new Dictionary<string, int>();
        dic.Add("12998", 420);
        dic.Add("16728", 99);
        dic.Add("16730", 150);
        dic.Add("14038", 265);
        dic.Add("11720", 1500);
        dic.Add("16732", 420);
        dic.Add("14406", 175);
        dic.Add("16733", 12);
        dic.Add("16734", 94);
        dic.Add("16735", 90);
        dic.Add("16736", 44);
        dic.Add("16737", 70);
        dic.Add("12255", 280);
        dic.Add("16738", 60);
        dic.Add("14330", 95);
        dic.Add("16739", 80);
        dic.Add("16740", 80);
        dic.Add("14354", 80);
        dic.Add("14811", 20);
        dic.Add("14350", 20);
        if (dic.ContainsKey(wp01))
            i = dic[wp01];
        return i;
    }
    private void bindDT()
    {
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        //searchProp.Cells.Add("ISNULL(SCOUNT,0) AS 'SCOUNT'");
        searchProp.Cells.Add("ISNULL(SCOUNT,0) AS 'SCOUNT'");
        searchProp.Cells.Add("'' AS STOCK");
        //searchProp.Cells.Add("ID");
        searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02 FROM SPRODUCTSD WHERE SPD01=529 ) AS DT ON WP01=DT.SPD02  ");
        //searchProp.JoinTxts.Add("INNER JOIN ProductSaleCountView ON ProductSaleCountView.PID=WP01 ");
        searchProp.JoinTxts.Add("LEFT JOIN GetSaleQty('2018-09-18 00:00:00','2018-10-18 00:00:00') as TB ON TB.PID=WP.WP01");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.OrderBy = "ORDER BY WP18 ASC";
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.GoodsState.Add(0);
        searchProp.GoodsState.Add(1);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);



        string strDate = "#" + DateTime.Now.ToString("yyyy-MM-dd") + " 00:00:00#";
        //rp13_1.DataSource = dt.Select("SPD01='529'").CopyToDataTable().AsEnumerable().Take(4);

        DataRow[] drs1 = dt.Select("WP31<='" + strDate + "' AND WP32>'" + strDate + "'");
        if (drs1.Length > 0)
        {
            DataTable dt1 = drs1.CopyToDataTable().AsEnumerable().Take(4).CopyToDataTable();
            foreach (DataRow dr in dt1.Rows)
            {
                int extra = dicExtra(dr["WP01"].ToString());
                dr["SCOUNT"] = Convert.ToInt32(dr["SCOUNT"].ToString()) + extra;
            }
            rp1.DataSource = dt1;
            rp1.DataBind();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setTime", "timeEvent('" + Convert.ToDateTime(drs1[0]["WP31"].ToString()).ToString("yyyy-MM-dd HH:mm:ss") + "');", true);
        }
        DataRow[] drs2 = dt.Select("WP31>'" + strDate + "'");
        if (drs2.Length > 0)
        {

            rp2.DataSource = drs2.CopyToDataTable();
            rp2.DataBind();
        }

        DataRow[] drs3 = dt.Select("WP32<='" + strDate + "'");
        if (drs3.Length > 0)
        {
            DataTable dt3 = drs3.CopyToDataTable();
            foreach (DataRow dr in dt3.Rows)
            {
                int extra = dicExtra(dr["WP01"].ToString());
                dr["SCOUNT"] = Convert.ToInt32(dr["SCOUNT"].ToString()) + extra;
            }
            rp3.DataSource = dt3;
            rp3.DataBind();
        }

        //rp1.DataSource = dt.Select("SPD01='528' ").CopyToDataTable();
        //rp1.DataBind();
        //rp2.DataSource = dt.Select("SPD01='528' ").CopyToDataTable();
        //rp2.DataBind();
        //rp3.DataSource = dt.Select("SPD01='528' ").CopyToDataTable();
        //rp3.DataBind();

    }


    public static int id2stock(int id)
    {
        int stock = 0;
        Dictionary<int, int> dic = new Dictionary<int, int>();
        dic.Add(12998, 810);
        dic.Add(16728, 240);
        dic.Add(16730, 200);
        dic.Add(14038, 800);
        dic.Add(11720, 1800);
        dic.Add(16732, 500);
        dic.Add(14406, 200);
        dic.Add(16733, 30);
        dic.Add(16734, 180);
        dic.Add(16735, 120);
        dic.Add(16736, 80);
        dic.Add(16737, 120);
        dic.Add(12255, 405);
        dic.Add(16738, 100);
        dic.Add(14330, 155);
        dic.Add(16739, 100);
        dic.Add(16740, 400);
        dic.Add(14354, 453);
        dic.Add(14811, 120);
        dic.Add(14350, 120);
        dic.Add(7446, 1700);
        dic.Add(14312, 200);
        dic.Add(12525, 50);
        dic.Add(16742, 200);

        if (dic.ContainsKey(id))
            stock = dic[id];
        return stock;
    }


    public static int FireCount(int id, int stock)
    {

        decimal i = Convert.ToDecimal(id2stock(id));
        decimal s = Convert.ToDecimal(stock);
        if (stock > 0)
        {
            i = Convert.ToInt32(s / i * 100);
            return Convert.ToInt32(100 - i);
        }
        else
            return 100;
    }
}