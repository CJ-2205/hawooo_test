using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_selevent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["eid"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["eid"].ToString()))
                {
                    int eid = Convert.ToInt32(Request.QueryString["eid"].ToString());
                    BindData(eid);
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    private void BindData(int eid)
    {
        DataTable dt = CFacade.UserFac.GetShopList2(0, 0, "WP18 DESC", 0, 1000, eid, "", "", "");

        p_list.DataSource = dt;
        p_list.DataBind();

        //綁定活動Img
        BindImg(eid);

        //綁定Coupon
        BindCoupon(eid);
    }
    private void BindImg(int eid)
    {
        DataTable dt = SqlDbmanager.queryBySql("SELECT SPM01,SPM02,SPM10,SPI02,SPI04 FROM SPRODUCTSM RIGHT JOIN SPRODUCTSI ON SPI01=SPM01 WHERE SPM01=" + eid);
        if (dt.Rows.Count > 0)
        {
            DataRow[] sDR = dt.Select("SPI02='D01'");
            if (sDR.Length > 0)
            {
                lit_event_img.Text = "<img src=\"../images/adimgs/" + dt.Rows[0]["SPI04"].ToString() + "\" style=\"padding-bottom:10px\" />";
            }
        }
        else
        {
            up_header.Visible = false;
        }
    }
    private void BindCoupon(int eid)
    {
        SqlCommand cmd = new SqlCommand();
        string strSql = "";
        strSql += "SELECT ";
        strSql += "PC01,";
        strSql += "PC02,";
        strSql += "PC04,";
        strSql += "PC05,";
        strSql += "PC08,";
        strSql += "PC09,";
        strSql += "PC19 ";
        strSql += "FROM ProductCoupon ";
        strSql += "WHERE PC18!=-1 ";
        strSql += "AND PC04<=@TIME AND PC05>=@TIME ";
        strSql += "AND PC21=@PC21 ";
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("TIME", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("PC21", SqlDbType.Int, eid));
        DataTable couponDT = SqlDbmanager.queryBySql(cmd);
        rp_product_coupon_list.DataSource = couponDT;
        rp_product_coupon_list.DataBind();
        if (couponDT.Rows.Count <= 0)
        {
            up_product_coupon.Visible = false;
        }
    }

    protected void lnk_get_coupon_Click(object sender, EventArgs e)
    {
        RepeaterItem coupon = (RepeaterItem)((Control)sender).NamingContainer;
        string _PC01 = (coupon.FindControl("hf_PC01") as HiddenField).Value;
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
            ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=selevent.aspx" + Request.Url.Query.ToString() + "');", true);
        }
    }
}