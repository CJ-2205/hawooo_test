using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_membercoupon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;
            if (Session["A01"] != null)
            {
                bindDT();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    private void bindDT()
    {
        LangType lgType = (LangType)ViewState["LG"];
        lit_get_coupon.Text = LangClass.GetMsgInfo("M049", lgType);
        lit_no_coupon.Text = LangClass.GetMsgInfo("M049", lgType);
        lit_product_coupon.Text = LangClass.GetMsgInfo("M049", lgType);
        int A01 = Convert.ToInt32(Session["A01"].ToString());
        DataTable dtGet = CFacade.GetFac.GetGAFac.MemberGetCoupon(A01);

        if (dtGet.Rows.Count > 0)
        {
            dtGet.DefaultView.RowFilter = " '" + DateTime.Now.ToString("yyyy/MM/dd 00:00:00") + "' <= GA12 AND GA03=1 ";
            DataTable dt2 = dtGet.DefaultView.ToTable();
            rp_coupon_list.DataSource = dt2;
            rp_coupon_list.DataBind();
            if (dt2.Rows.Count > 0)
            {
                lit_get_coupon.Text = "";
            }

            dtGet.DefaultView.RowFilter = " '" + DateTime.Now.ToString("yyyy/MM/dd 00:00:00") + "' > GA12 ";
            DataTable dt3 = dtGet.DefaultView.ToTable();
            rp_list.DataSource = dt3;
            rp_list.DataBind();
            if (dt3.Rows.Count > 0)
            {
                lit_no_coupon.Text = "";
            }
        }

        DataTable ProductCouponDt = CouponFacade.GetProductCouponUserGetFac.GetUserAllProductCoupon(A01);
        ProductCouponDt.DefaultView.RowFilter = " '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' <= PCUG05 AND PCUG06=0";
        DataTable pcDT1 = ProductCouponDt.DefaultView.ToTable();
        rp_product_coupon_list.DataSource = pcDT1;
        rp_product_coupon_list.DataBind();
        if (pcDT1.Rows.Count > 0)
        {
            lit_product_coupon.Text = "";
        }

        ProductCouponDt.DefaultView.RowFilter = " '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' > PCUG05 OR PCUG06=1";
        DataTable pcDT2 = ProductCouponDt.DefaultView.ToTable();
        rp_use_product_coupon.DataSource = pcDT2;
        rp_use_product_coupon.DataBind();
        if (pcDT2.Rows.Count > 0)
        {
            lit_no_coupon.Text = "";
        }
    }
}