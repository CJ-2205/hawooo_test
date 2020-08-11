using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;

public partial class mobile_getcoupon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
            bindProduct();
        }
    }
    private void BindData()
    {
        DataTable pcoupon = new DataTable();
        pcoupon = CouponFacade.GetProductCouponFac.GetProductCoupon(1, 100, "", "", DateTime.Now.ToString("yyyy-MM-dd HH:mm"));
        rp_product_coupon_list.DataSource = pcoupon;
        rp_product_coupon_list.DataBind();
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
            ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=getcoupon.aspx');", true);

        }
    }

    protected void lnk_get_all_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            int rval = CouponFacade.GetProductCouponUserGetFac.UserGetAllCoupon(Convert.ToInt32(Session["A01"].ToString()));
            if (rval > 0)
            {
                ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=getcoupon.aspx');", true);
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
            ScriptManager.RegisterStartupScript(up_header, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=getcoupon.aspx');", true);
        }
    }


    private void bindProduct()
    {

        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        string StrCmd = "SELECT * FROM (SELECT ROW_NUMBER() OVER(PARTITION BY SPD01 ORDER BY WP27 DESC ) AS RANK,SPD01,WP01,WP02,WP08_1 ,Price AS WPA06 ,OPrice AS WPA10 FROM WP INNER JOIN ProductPriceView ON WP.WP01=PID CROSS APPLY (SELECT SPD01,SPD02 FROM SPRODUCTSD WHERE  SPD01 IN (@E1,@E2,@E3,@E4,@E5,@E6,@E7,@E8) AND SPD02=WP01) AS DT) AS DT1 WHERE RANK<5";
        cmd.CommandText = StrCmd;
        int i = 1;
        for (int eid = 281; eid <= 288; eid++)
        {
            cmd.Parameters.Add(SafeSQL.CreateInputParam("E" + i.ToString(), SqlDbType.Int, eid));
            i++;
        }
        dt = SqlDbmanager.queryBySql(cmd);

        DataView dv1 = dt.DefaultView;
        dv1.RowFilter = "SPD01=281";
        rp_hotsales.DataSource = dv1.ToTable();
        rp_hotsales.DataBind();

        DataView dv2 = dt.DefaultView;
        dv2.RowFilter = "SPD01=282";
        rp_cosmetics.DataSource = dv2.ToTable();
        rp_cosmetics.DataBind();

        DataView dv3 = dt.DefaultView;
        dv3.RowFilter = "SPD01=283";
        rp_skincare.DataSource = dv3.ToTable();
        rp_skincare.DataBind();

        DataView dv4 = dt.DefaultView;
        dv4.RowFilter = "SPD01=284";
        rp_supplements.DataSource = dv4.ToTable();
        rp_supplements.DataBind();

        DataView dv5 = dt.DefaultView;
        dv5.RowFilter = "SPD01=285";
        rp_lingerir.DataSource = dv5.ToTable();
        rp_lingerir.DataBind();

        DataView dv6 = dt.DefaultView;
        dv6.RowFilter = "SPD01=286";
        rp_food.DataSource = dv6.ToTable();
        rp_food.DataBind();

        DataView dv7 = dt.DefaultView;
        dv7.RowFilter = "SPD01=287";
        rp_life.DataSource = dv7.ToTable();
        rp_life.DataBind();

        DataView dv8 = dt.DefaultView;
        dv8.RowFilter = "SPD01=288";
        rp_baby.DataSource = dv8.ToTable();
        rp_baby.DataBind();
    }
}