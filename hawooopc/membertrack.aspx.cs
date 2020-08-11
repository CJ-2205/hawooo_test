using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_membertrack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                bindDT();
            }
        }
    }
    private void bindDT()
    {
        DataTable dt = CFacade.UserFac.GetTrackProducts(Convert.ToInt32(Session["A01"].ToString()));
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
        if(dt.Rows.Count == 0)
        {
            lit_show.Text = "無追蹤商品";
        }
    }
}