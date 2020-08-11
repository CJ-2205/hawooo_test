using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _180807 : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/180807.aspx" + qstr);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
     

    }


}