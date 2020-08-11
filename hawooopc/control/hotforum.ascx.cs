using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercode_control_hotforum : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = CFacade.GetFac.ForumMFac.GetHotForumm();
            rp_hot_list.DataSource = dt;
            rp_hot_list.DataBind();
            if (dt.Rows.Count == 0)
            {
                lit_msg.Text = "無任何熱門討論";
            }
        }
    }
}