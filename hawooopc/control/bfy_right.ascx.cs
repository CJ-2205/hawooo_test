using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_bfy_right : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindBrands();
            bindDT();
        }
    }
    private void bindBrands()
    {
        DataTable dt = CFacade.GetFac.GetBFYBRAND.GetProductTopBrand(5);
        rp_brand_list.DataSource = dt;
        rp_brand_list.DataBind();
    }
    private void bindDT()
    {
        List<string> info = CFacade.GetFac.GetBFYINFOFac.GetTopInfo();
        lit_BIF02_1.Text = info[0].ToString();
        //lit_BIF02_2.Text = info[1].ToString();
        lit_BIF02_2.Text = "7";
    }
}