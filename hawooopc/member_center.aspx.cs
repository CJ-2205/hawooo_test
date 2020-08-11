using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_member_center : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                bindAD();
                bindOrder();
                bindBOrder();
                bindMonth();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    private void bindMonth()
    {

        if (DateTime.Now.Day >= 15)
        {
            //帶入這個月跟下個月
            lit_month1.Text = "<img src='../images/calendar/" + DateTime.Now.ToString("yyyyMM").ToString() + ".png" + "' class='am-img-responsive'></img>";
            lit_month2.Text = "<img src='../images/calendar/" + DateTime.Now.AddMonths(1).ToString("yyyyMM") + ".png" + "' class='am-img-responsive'></img>";
        }
        else
        {
            //帶入上個月跟這個月
            lit_month1.Text = "<img src='../images/calendar/" + DateTime.Now.AddMonths(-1).ToString("yyyyMM").ToString() + ".png" + "' class='am-img-responsive'></img>";
            lit_month2.Text = "<img src='../images/calendar/" + DateTime.Now.ToString("yyyyMM") + ".png" + "' class='am-img-responsive'></img>";
        }
    }
    private void bindAD()
    {
        string s = "";
        DataTable dt = CFacade.GetFac.GetFFac.getAdList("C01");
        foreach (DataRow dr in dt.Rows)
        {
            s += "<a href=\"" + dr["F04"].ToString() + "\"><img src=\"../images/adimgs/" + dr["F14"].ToString() + "\" /></a>";
            s += "<hr />";
        }
        lit_AD_LIST.Text = s;
    }
    private void bindOrder()
    {
        DataTable dt = CFacade.OrderFac.MemberOrderList(Convert.ToInt32(Session["A01"].ToString()), 5);
        rp_order_list.DataSource = dt;
        rp_order_list.DataBind();
        if (dt.Rows.Count > 0)
        {
            lit_order_msg.Text = "";
        }
        else
        {
            lit_order_msg.Text = "<tr><td colspan=\"6\">無訂購記錄</td></tr>";
        }
    }
    private void bindBOrder()
    {
        DataTable dt = CFacade.GetFac.GetBFYORMFac.GetUserCenterBOrder(Convert.ToInt32(Session["A01"].ToString()));
        rp_non_pay_border_list.DataSource = dt;
        rp_non_pay_border_list.DataBind();
        if (dt.Rows.Count > 0)
        {
            lit_border_msg.Text = "";
        }
        else
        {
            lit_border_msg.Text = "<tr><td colspan=\"6\">無尚未付款代購單</td></tr>";
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
}