using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_event8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            event8 e8 = new event8();
            DataTable dt = e8.GetDT();
            dt.DefaultView.RowFilter = "day <= '" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
            DataTable bDT = dt.DefaultView.ToTable();

            plist.DataSource = bDT;
            plist.DataBind();
            //pLiist.DataSource = dt;
            //pLiist.DataBind();
        }
    }
}