
using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_cartlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                bindCart();
            }
            else
            {
                Response.Redirect("login.aspx?rurl=cartlist.aspx");
            }
        }
    }
    public void bindCart()
    {
        if (Request.Cookies["CARTID"] != null || Request.Cookies["NCARTID"] != null)
        {
            if (Request.Cookies["CARTID"] != null)
            {
                p2.Visible = true;
                DataTable SDT = CFacade.CartFac.GetCartDT(Request.Cookies["CARTID"].Value.ToString(), 1);
                rp_cart2.DataSource = SDT;
                rp_cart2.DataBind();
            }
            else
            {
                p2.Visible = false;
            }

            if (Request.Cookies["NCARTID"] != null)
            {
                p1.Visible = true;
                DataTable NDT = CFacade.CartFac.GetCartDT(Request.Cookies["NCARTID"].Value.ToString(), 2);
                rp_cart1.DataSource = NDT;
                rp_cart1.DataBind();
            }
            else
            {
                p1.Visible = false;
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }
}