﻿using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class mobile_MidYearFs : System.Web.UI.Page
{
    private int _eventId = 482;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //SetTime();
            BindGoods();
        }
    }
    private void SetTime()
    {
        string sqlTxt =
            "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01=@SPM01 AND GETDATE() BETWEEN SPM04 AND SPM05";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM01", SqlDbType.Int, _eventId));
        cmd.CommandText = sqlTxt;
        DataTable sDt = SqlDbmanager.queryBySql(cmd);
        if (sDt.Rows.Count > 0)
        {
            DateTime stime = DateTime.Now;
            DateTime etime = Convert.ToDateTime(sDt.Rows[0]["SPM05"].ToString());
            TimeSpan ts = etime - stime;
            var spend = ts.TotalSeconds;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "alert2url('Oops, the sale is over! No worries, check out more hot deals on our website!','index.aspx');", true);
        }
    }



    private void BindGoods()
    {
        if (_eventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("PC01");
            //prop.Cells.Add("PC09");
            //prop.Cells.Add("BCOUNT");
            prop.Cells.Add("(SELECT ISNULL(COUNT(ORD01),0) as BCOUNT FROM ORDERD " +
                           "INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 " +
                           "WHERE ORD01=WP01 AND ORM03>=SPM04) as BCOUNT ");
            //prop.JoinTxts.Add("OUTER APPLY (SELECT ISNULL(SUM(ORD06),0) as BCOUNT FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORD01=WP01 AND ORM03>=SPM04) AS TA ");
            prop.SelectIDS.Add(_eventId);
            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = ((mobile)this.Master).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            DataTable bindDt = TransDt(dt);
            rp_plist.DataSource = bindDt;
            rp_plist.DataBind();
        }
    }

    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01");
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("WPA06");
        dt.Columns.Add("WPA10");
        dt.Columns.Add("SPD07");
        dt.Columns.Add("PERSENT");
        //dt.Columns.Add("PC01");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");
        foreach (DataRow dr in sdt.Rows)
        {
            DataRow ndr = dt.NewRow();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["SPD07"] = Convert.ToInt32(dr["SPD07"].ToString()) + Convert.ToInt32(dr["BCOUNT"].ToString());
            //ndr["PC01"] = dr["PC01"].ToString();
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            dt.Rows.Add(ndr);
        }
        return dt;
    }


}