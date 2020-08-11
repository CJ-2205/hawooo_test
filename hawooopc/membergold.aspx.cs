using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercode_membergold : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;
            if (Session["A01"] != null)
            {
                getAD(Convert.ToInt32(Session["A01"].ToString()));
            }
        }

    }
    private void getAD(int A01)
    {
        AD objAD = new AD();
        objAD.A01 = A01;
        DataTable dt = CFacade.GetFac.GetADFac.getAD(objAD);



        rp_list.DataSource = dt;
        rp_list.DataBind();
        decimal d = 0;
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
        lit_total.Text = "RM" + d;
    }
    protected void rp_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            string _type = ((Literal)e.Item.FindControl("lit_AD03")).Text;
            if (_type.Equals("0"))
            {
                ((Literal)e.Item.FindControl("lit_AD03")).Text = "存入";
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_AD03")).Text = "<span style=\"color:#ff0000\">使用</span>";
            }
        }
    }
}