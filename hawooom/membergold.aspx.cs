using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class membergold : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lg = (this.Master as mobile).LgType;
            ((Literal)member_class.FindControl("lit_class_txt")).Text = "<span class='txtRsc' data-id='m012'>我的購物金</span>";
            if (Session["A01"] != null)
            {
                getAD(Convert.ToInt32(Session["A01"].ToString()));
            }
        }
    }
    LangType lg;
    private void getAD(int A01)
    {

        AD objAD = new AD();
        objAD.A01 = A01;
        DataTable dt = CFacade.GetFac.GetADFac.getAD(objAD);
        decimal d = 0;

        rp_list.DataSource = dt;
        rp_list.DataBind();

        foreach (DataRow dr in dt.Rows)
        {
            if (dr["AD03"].ToString().Equals("1"))
            {
                d = d - Convert.ToDecimal(dr["AD06"].ToString());
            }
            if (dr["AD03"].ToString().Equals("0"))
            {
                d = d + Convert.ToDecimal(dr["AD06"].ToString());
            }
        }
        msg.Visible = false;
        if (dt.Rows.Count == 0)
        {
            msg.Visible = true;
            lit_Record.Text = LangClass.GetMsgInfo("M059", lg);
            //ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "msg()", true);
        }
       


        lit_total.Text = d.ToString();
    }
    protected void rp_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            string _type = ((Literal)e.Item.FindControl("lit_AD03")).Text;
            if (_type.Equals("0"))
            {
                ((Literal)e.Item.FindControl("lit_AD03")).Text = LangClass.GetMsgInfo("M060", lg);
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_AD03")).Text = "<span style=\"color:#ff0000\">" + LangClass.GetMsgInfo("M061", lg) + "</span>";
            }
        }
    }
}