﻿using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _180222 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindProduct1(381);
            bindProduct2(382);
            bindProduct3(383);
            bindProduct4(369);
            bindProduct5(370);
        }
    }
    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, 8, "", null, true);
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
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, 8, "", null, true);
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
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, 8, "", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_3.DataSource = dt;
        rp_product_list_3.DataBind();
    }
    private void bindProduct4(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, 8, "", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_4.DataSource = dt;
        rp_product_list_4.DataBind();
    }
    private void bindProduct5(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, 8, "", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_5.DataSource = dt;
        rp_product_list_5.DataBind();
    }

    protected void lnk_get_all_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["A01"] != null)
        {
            int rval = CouponFacade.GetProductCouponUserGetFac.UserGetAllCoupon(Convert.ToInt32(Session["A01"].ToString()));
            if (rval > 0)
            {
                ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
                //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('領取成功');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
                //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('領取失敗，請稍後領取');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "login", "doLogin('180222.aspx');", true);
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('180222.aspx');", true);
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["A01"] != null)
        {
            Response.Redirect("membercoupon.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('180222.aspx');", true);
        }
    }

    public void GetCoupon(string _PC01)
    {
        //RepeaterItem coupon = (RepeaterItem)((Control)sender).NamingContainer;
        //string _PC01 = (coupon.FindControl("hf_PC01") as HiddenField).Value;

        if (Session["A01"] != null)
        {
            string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
            if (rval.Equals("OK"))
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
                //ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "alert('領取成功');", true);
            }
            else if (rval.Equals("ERROR"))
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
                //ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "alert('領取失敗，請稍後領取');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
                //ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "alert('" + rval + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('180222.aspx');", true);

        }
    }

    protected void imgBtn1_Click(object sender, ImageClickEventArgs e)
    {
        GetCoupon("74bc0433-b00d-4788-be0f-b562fd56f77e");
    }

    protected void imgBtn2_Click(object sender, ImageClickEventArgs e)
    {
        GetCoupon("892bd955-a9d7-4d35-a833-ad28ccee0d01");
    }

    protected void imgBtn3_Click(object sender, ImageClickEventArgs e)
    {
        GetCoupon("fece1e8f-d175-458f-bca8-1d797ad1209a");
    }

    protected void imgBtn4_Click(object sender, ImageClickEventArgs e)
    {
        GetCoupon("1238e2aa-3e84-4d55-b54e-85fc6ffaafb4");
    }

    protected void imgBtn5_Click(object sender, ImageClickEventArgs e)
    {
        GetCoupon("181f8ad5-cf47-4680-9f00-20242e4b292d");
    }
}