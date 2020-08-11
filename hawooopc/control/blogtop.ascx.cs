using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_blogtop : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;
            int cid = 0;
            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out i))
                {
                    cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                }
            }
            bindClass(cid);

        }
    }

    private void bindClass(int cid)
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.GetFac.GetATCAFac.ClientGetATCT();
        DataRow[] PDRARY = dt.Select("ATCA08='0'");
        foreach (DataRow pdr in PDRARY)
        {
            DataRow[] CDRARY = dt.Select("ATCA08='" + pdr["ATCA01"].ToString() + "'");
            if (CDRARY.Length > 0)
            {

                foreach (DataRow cdr in CDRARY)
                {
                    sb.Append("<li class=\"nav-item\">");
                    sb.Append("<a class=\"nav-link\" href=\"blogs.aspx?cid=" + cdr["ATCA01"].ToString() + "\">" + cdr["ATCA03"].ToString() + "</a>");
                    sb.Append("</li>");
                }


            }

            lit_class.Text = sb.ToString();
        }

    }



}