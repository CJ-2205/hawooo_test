using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class mobile_20171022lottery : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime dayTime = DateTime.Now;

            if (dayTime < Convert.ToDateTime("2017-10-27 00:00:00"))
            {
                Panel3.Visible = false;
            }
            else if (dayTime >= Convert.ToDateTime("2017-10-27 00:00:00"))
            {
                Panel2.Visible = false;
            }

        }
    }

}