using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_control_bfytopinfo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindDT();
    }
    private void bindDT()
    {
        List<string> info = CFacade.GetFac.GetBFYINFOFac.GetTopInfo();
        lit_BIF02_1.Text = info[0].ToString();
        //lit_BIF02_2.Text = info[1].ToString();
        lit_BIF02_2.Text = "7";
    }
}