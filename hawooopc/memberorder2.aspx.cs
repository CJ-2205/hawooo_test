using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_memberorder2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {


                DataTable dt = CFacade.OrderFac.MemberOrderList(Convert.ToInt32(Session["A01"].ToString()));

                if (dt.Rows.Count > 0)
                {
                    bool b1 = true;
                    bool b2 = true;

                    dt.DefaultView.RowFilter = "ORM02 NOT LIKE 'G%'";
                    DataTable dtNormal = dt.DefaultView.ToTable();
                    rp_order_list.DataSource = dtNormal;
                    rp_order_list.DataBind();

                    if (dtNormal.Rows.Count == 0)
                    {
                        b1 = false;
                    }

                    dt.DefaultView.RowFilter = "ORM02 LIKE 'G%'";
                    DataTable dtGroup = dt.DefaultView.ToTable();
                    rp_group_order_list.DataSource = dtGroup;
                    rp_group_order_list.DataBind();

                    if (dtGroup.Rows.Count == 0)
                    {
                        b2 = false;
                    }


                    if (b1 == true && b2 == true)
                    {
                        ScriptManager.RegisterStartupScript(Page, GetType(), "delete", "del(0)", true);
                    }
                    else if (b1 == true && b2 == false)
                    {
                        ScriptManager.RegisterStartupScript(Page, GetType(), "delete", "del(1)", true);
                    }
                    else if (b1 == false && b2 == true)
                    {
                        ScriptManager.RegisterStartupScript(Page, GetType(), "delete", "del(2)", true);
                    }
                    else if (b1 == false && b2 == false)
                    {
                        ScriptManager.RegisterStartupScript(Page, GetType(), "delete", "del(3)", true);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "delete", "del(3)", true);
                }
            }
            else
            {
                Response.Redirect("shop.aspx");
            }
        }

    }
    protected void rp_order_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            ((Literal)e.Item.FindControl("lit_ORM12")).Text = CFacade.OrderFac.PaymentText(Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM12")).Text));
            int ORM24 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM24")).Text);
            int ORM19 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM19")).Text);
            if (ORM24 >= 0)
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = CFacade.OrderFac.MOrderStateTxt(ORM24);
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = "<span style='color:#C00;font-weight:800'>" + CFacade.OrderFac.MOrderStateTxt(ORM24) + "</span>";
            }
            ((Literal)e.Item.FindControl("lit_ORM19")).Text = CFacade.OrderFac.MOrderPayStateTxt(ORM19);
        }
    }

    protected void rp_group_order_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            ((Literal)e.Item.FindControl("lit_group_ORM12")).Text = CFacade.OrderFac.PaymentText(Convert.ToInt32(((Literal)e.Item.FindControl("lit_group_ORM12")).Text));
            int ORM24 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_group_ORM24")).Text);
            int ORM19 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_group_ORM19")).Text);
            if (ORM24 >= 0)
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = CFacade.OrderFac.MOrderStateTxt(ORM24);
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_group_ORM24")).Text = "<span style='color:#C00;font-weight:800'>" + CFacade.OrderFac.MOrderStateTxt(ORM24) + "</span>";
            }
       ((Literal)e.Item.FindControl("lit_group_ORM19")).Text = CFacade.OrderFac.MOrderPayStateTxt(ORM19);
        }
    }
}