using hawooo;

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_memberborder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
        DataSet ds = CFacade.GetFac.GetBFYORMFac.GetUserBORMList(Convert.ToInt32(Session["A01"].ToString()));

        rp_non_pay_border_list.DataSource = ds.Tables[0];
        rp_non_pay_border_list.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            lit_m1.Text = "無相關紀錄";
        }

        rp_border_list.DataSource = ds.Tables[1];
        rp_border_list.DataBind();
        if (ds.Tables[1].Rows.Count == 0)
        {
            lit_m2.Text = "無相關紀錄";
        }
    }
}