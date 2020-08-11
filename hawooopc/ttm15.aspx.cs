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

public partial class _180601tt : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/ttm15.aspx" + qstr);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = bindProduct1(473);

        rp_product_list_1.DataSource = dt;
        rp_product_list_1.DataBind();
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
    protected void CpnBtn_Click(object sender, ImageClickEventArgs e)
    {
        string _PC01 = "93cbae20-613a-4b70-96c0-810e477e2497";          //折扣卷的guid

        if (Session["A01"] != null)
        {
            string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
            if (rval.Equals("OK"))
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
            }
            else if (rval.Equals("ERROR"))
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('ttm15.aspx');", true);

        }


    }


}