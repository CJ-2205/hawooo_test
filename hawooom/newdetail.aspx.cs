using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_newdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (FieldCheck.isInt(Request.QueryString["id"].ToString()))
            {
                NID = int.Parse(Request.QueryString["id"].ToString());
                BindDT();
            }
        }
    }
    int NID = 0;
    public void BindDT()
    {
        NewInfoBL newBL = new NewInfoBL();
        DataTable dt = newBL.GetUserDetail(NID, "m");
        if (dt.Rows.Count > 0)
        {
            lit_Title.Text = dt.Rows[0]["Title"].ToString();
            lit_Content.Text = dt.Rows[0]["Content"].ToString();
        }
    }
}