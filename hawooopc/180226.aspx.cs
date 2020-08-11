using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_180226 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/180226.aspx" + qstr);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}