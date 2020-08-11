using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_2018xmasfs : System.Web.UI.Page
{
    private int eid = 596;

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        DateTime time = new DateTime(2018, 12, 12, 00, 00, 00);
        if (DateTime.Now < time)
            Response.Redirect("../mobile/2018xmaspreorder.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindDT();
        }
    }

   
    private void bindDT()
    {

        SearchProp prop = new SearchProp();
        prop.GoodsState.Add(0);
        prop.GoodsState.Add(1);
        prop.GoodsState.Add(3);
        prop.Cells.Add("SPD05"); //權重
        prop.Cells.Add("SPD06"); //限制數量,庫存
        prop.Cells.Add("SPD07"); //假數量
                                 //SPD02  商品ID-WP01,ORD01=SPD02 ORDERD.ORD01=SPD02,有下單就要扣庫存,sum(ORD06),實際銷售數量,火大於等於60%,(假數量+實際銷售數量)/限制數量,假數量+實際數量>=限制數量,壓soldout
                                 //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON WP.WP01=DT.SPD02  ");
        prop.WhereTxts.Add("WP05=1");
        prop.OrderBy = "ORDER BY SPD05 DESC";
        prop.LgType = (this.Master as mobile).LgType;
        //prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        dt = dt.DefaultView.ToTable(true, "WP01", "WP02", "WPA06", "WPA10", "WP08_1", "WP30", "SPD05", "SPD06", "SPD07");
        //DataView dv = new DataView(PreOrderDT);
        //DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06");


        DataTable dtRealStock = GetRealStock(eid);
        foreach (DataRow dr in dtRealStock.Rows)
        {
            if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
            {
                int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
                int rs = Convert.ToInt32(dr["C"].ToString());
                i += rs;
                dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
            }
        }


        rp.DataSource = dt;
        rp.DataBind();





    }

    public DataTable GetRealStock(int eid)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM 
	  INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
	  INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON ORD01=DT.SPD02  
	  WHERE ORM24>=0 AND ORM03>='2018-12-12 00:00:00' GROUP BY ORD01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }



    /// <summary>
    /// 
    /// </summary>
    /// <param name="sold">SPD07假數量</param>
    /// <param name="stock">SPD06限制數量</param>
    /// <returns></returns>
    public static int FireCount(int sold, int stock)
    {
        decimal i = (decimal)sold;
        decimal s = (decimal)stock;
        if (s > 0)
        {
            i = i / s * 100;
            return Convert.ToInt32(100 - i);
            //w = Convert.ToInt32(d * 100);
            //w = 100 - w;

        }
        return 100;
    }


    public static string SoldOut(int sold, int stock)
    {
        string str = "false";
        if (sold >= stock)
            str = "true";
        return str;
    }
}