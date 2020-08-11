using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _180319womenday : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindProduct1(407);//
        bindProduct2(408);//
        bindProduct3(409);//
        bindProduct4(410);//
    }


    public void getCoupon(string _PC01)
    {
        //RepeaterItem coupon = (RepeaterItem)((Control)sender).NamingContainer;
        //string _PC01 = (coupon.FindControl("hf_PC01") as HiddenField).Value;
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
            ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=180319womenday.aspx');", true);

        }
    }

    protected void imgBtn1_Click(object sender, ImageClickEventArgs e)
    {
        getCoupon("68b74db5-c8a2-45ca-805f-ca098244cc33");
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
    private void bindProduct4(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_4.DataSource = dt;
        rp_product_list_4.DataBind();
    }
}