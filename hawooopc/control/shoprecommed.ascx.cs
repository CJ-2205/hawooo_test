using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercode_control_shoprecommed : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = CFacade.UserFac.GetShopCommend();
            rp_shop_recommend.DataSource = dt;
            rp_shop_recommend.DataBind();
        }
    }
}