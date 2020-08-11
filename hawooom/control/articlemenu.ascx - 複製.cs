using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_control_articlemenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindClass();
            bindHotArticle();
        }
    }
    private void bindClass()
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.GetFac.GetATCAFac.ClientGetATCT();
        DataRow[] PDRARY = dt.Select("ATCA08='0'");
        foreach (DataRow pdr in PDRARY)
        {

            DataRow[] CDRARY = dt.Select("ATCA08='" + pdr["ATCA01"].ToString() + "'");
            if (CDRARY.Length > 0)
            {
                sb.Append("<li class=\"am-parent\"><a href=\"article.aspx?aid=" + pdr["ATCA01"].ToString() + "\" class=\"\">" + pdr["ATCA03"].ToString() + "</a>");
                sb.Append("<ul class=\"am-menu-sub am-collapse am-avg-sm-1\">");
                foreach (DataRow cdr in CDRARY)
                {
                    sb.Append("<li><a href=\"article.aspx?aid=" + cdr["ATCA01"].ToString() + "\">" + cdr["ATCA03"].ToString() + "</a></li>");
                }
                sb.Append("</ul>");
                sb.Append("</li>");
            }
            else
            {
                sb.Append("<li><a href=\"article.aspx?aid=" + pdr["ATCA01"].ToString() + "\" class=\"\">" + pdr["ATCA03"].ToString() + "</a>");
                sb.Append("</li>");
            }

        }
        lit_class.Text = sb.ToString();
    }
    private void bindHotArticle()
    {
        DataTable dt = CFacade.GetFac.GetATCBFac.ClientGetHotArticle(10);
        StringBuilder sb = new StringBuilder();
        foreach (DataRow dr in dt.Rows)
        {
            sb.Append("<li><a href=\"articledetail.aspx?id=" + dr["ATCB01"].ToString() + "\" class=\"\">" + dr["ATCB03"].ToString() + "</a>");
            sb.Append("</li>");
        }
        lit_hot_article.Text = sb.ToString();
    }
}