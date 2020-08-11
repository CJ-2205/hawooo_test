using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using hawooo;
using System.Web.UI.WebControls;

public partial class user_control_recommend_product : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null || Request.QueryString["pid"] != null)
            {
                int i = 0;
                int pid = 0;

                if (Request.QueryString["id"] != null)
                {
                    if (int.TryParse(Request.QueryString["id"].ToString(), out i))
                    {
                        pid = Convert.ToInt32(Request.QueryString["id"].ToString());
                    }
                }
                if (Request.QueryString["pid"] != null)
                {
                    if (int.TryParse(Request.QueryString["pid"].ToString(), out i))
                    {
                        pid = Convert.ToInt32(Request.QueryString["pid"].ToString());
                    }
                }
               
                if (pid != 0)
                {
                    DataSet ds = CFacade.GetFac.GetWPFac.GetRecommendProducts(pid,1);
                    rp_recommend1.DataSource = ds.Tables[0];
                    rp_recommend1.DataBind();

                    rp_recommend2.DataSource = ds.Tables[1];
                    rp_recommend2.DataBind();
                }

            }

        }
    }
}