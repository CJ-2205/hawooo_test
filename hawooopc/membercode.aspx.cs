using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_membercode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                string _A02 = CFacade.GetFac.GetAFac.GetUserID(Convert.ToInt32(Session["A01"].ToString()));
                string _url = "http://www.hawooo.com/user/join.aspx?rcid=" + _A02;
                lit_link.Text = "<a href=\"" + _url + "\" target=\"_blank\">" + _url + "</a>";
            }

        }
    }
}