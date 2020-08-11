using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
public partial class user_static_LifeChoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/LifeChoice.aspx");
    }
}