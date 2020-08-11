using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_event8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            event8 e8 = new event8();
            DataTable dt = e8.GetDT();
            pLiist.DataSource = dt;
            pLiist.DataBind();
        }
    }

    protected void pLiist_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            DateTime d = Convert.ToDateTime(((Literal)e.Item.FindControl("lit_day")).Text);
            if (d > DateTime.Now)
            {
                ((Panel)e.Item.FindControl("p1")).Visible = true;
                ((Panel)e.Item.FindControl("p2")).Visible = false;
            }
            else
            {
                ((Panel)e.Item.FindControl("p1")).Visible = false;
                ((Panel)e.Item.FindControl("p2")).Visible = true;
            }
        }
    }
}
