using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercode_loginout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["A01"] = null;
        Session["A02"] = null;
        Session["A21"] = null;
        Session["A19"] = null;
        Session["A04"] = null;
        Session["A23"] = null;
        Response.Redirect("index.aspx");
    }
}