using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["stxt"] != null)
            {
                string stxt = PbClass.GB2312translateBig5(Request.QueryString["stxt"].ToString().Trim());
                lit_stxt.Text = stxt;
                if(stxt != "")
                {
                    DataTable dt = CFacade.UserFac.GetSearchProducts(stxt);
                    if(dt.Rows.Count > 0)
                    {
                        p_non_result.Visible = false;
                        p_list.DataSource = dt;
                        p_list.DataBind();
                    }
                    else
                    {
                        p_non_result.Visible = true;
                        lit_non_txt.Text = stxt.ToString();
                    }
                }
                else
                {
                    lit_non_txt.Text = "無任何搜尋關鍵字";
                    lit_stxt.Text = "無任何搜尋關鍵字";
                    p_non_result.Visible = true;
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}