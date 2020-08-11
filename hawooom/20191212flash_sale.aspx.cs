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
using System.Text;

public partial class mobile_static_20191212flash_sale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGoods();

        }
    }

    private int _eventId = 798;

    private void BindGoods()
    {
        if (_eventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            prop.Cells.Add("SPD08");
            //prop.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07,SPD08 AS SPD08  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON WP.WP01=DT.SPD02  ");


            prop.SelectIDS.Add(_eventId);
            prop.OrderBy = " ORDER BY SPD05 DESC ";
            prop.LgType = ((mobile)this.Master).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            //dt = dt.DefaultView.ToTable(true, "WP01", "WP02", "WPA06", "WPA10", "WP08_1", "WP30", "SPD05", "SPD06", "SPD07", "SPD08");
            DataTable dtRealStock = GetRealStock(_eventId);
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
            DataTable bindDt = TransDt(dt);

            //GridView1.DataSource = bindDt;
            //GridView1.DataBind();
            if (bindDt.Select("SPD08='A'").Length > 0)
            {
                rp.DataSource = bindDt.Select("SPD08='A'").Take(2).CopyToDataTable();
                rp.DataBind();
                rp1all.DataSource = bindDt.Select("SPD08='A'").CopyToDataTable();
                rp1all.DataBind();
            }
            if (bindDt.Select("SPD08='B'").Length > 0)
            {
                rp2.DataSource = bindDt.Select("SPD08='B'").Take(2).CopyToDataTable();
                rp2.DataBind();
                rp2all.DataSource = bindDt.Select("SPD08='B'").CopyToDataTable();
                rp2all.DataBind();
            }
            if (bindDt.Select("SPD08='C'").Length > 0)
            {
                rp3.DataSource = bindDt.Select("SPD08='C'").Take(2).CopyToDataTable();
                rp3.DataBind();
                rp3all.DataSource = bindDt.Select("SPD08='C'").CopyToDataTable();
                rp3all.DataBind();
            }
            if (bindDt.Select("SPD08='D'").Length > 0)
            {
                rp4.DataSource = bindDt.Select("SPD08='D'").Take(2).CopyToDataTable();
                rp4.DataBind();
                rp4all.DataSource = bindDt.Select("SPD08='D'").CopyToDataTable();
                rp4all.DataBind();
            }

        }
    }

    public DataTable GetRealStock(int eid)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM 
	  INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
	  INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON ORD01=DT.SPD02  
	  WHERE ORM24>=0 AND ORM03>='2019-11-11 00:00:00' GROUP BY ORD01";
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


    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01");
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("SPD05"); //權重
        dt.Columns.Add("SPD06"); //限制數量,庫存
        dt.Columns.Add("SPD07"); //假數量
        dt.Columns.Add("SPD08");
        dt.Columns.Add("WPA06");
        dt.Columns.Add("WPA10");
        dt.Columns.Add("PERSENT");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");
        dt.Columns.Add("decreaseAmount");


        foreach (DataRow dr in sdt.Rows)
        {
            DataRow ndr = dt.NewRow();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["SPD05"] = dr["SPD05"].ToString();
            ndr["SPD06"] = dr["SPD06"].ToString();
            ndr["SPD07"] = dr["SPD07"].ToString();
            ndr["SPD08"] = dr["SPD08"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            ndr["decreaseAmount"] = Convert.ToDecimal(ndr["WPA10"].ToString()) - Convert.ToDecimal(ndr["WPA06"].ToString());

            dt.Rows.Add(ndr);
        }
        return dt;
    }
}