using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_blogright : System.Web.UI.UserControl
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
            //bindClass(cid);
            bindHotBlog();
            bindPickBlog();
        }
    }

    //private void bindClass(int cid)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    DataTable dt = CFacade.GetFac.GetATCAFac.ClientGetATCT();
    //    DataRow[] PDRARY = dt.Select("ATCA08='0'");
    //    foreach (DataRow pdr in PDRARY)
    //    {
    //        DataRow[] CDRARY = dt.Select("ATCA08='" + pdr["ATCA01"].ToString() + "'");
    //        if (CDRARY.Length > 0)
    //        {
    //            sb.Append("<li class=\"am-panel\">");
    //            sb.Append("<a data-am-collapse=\"{parent: '#collapase-nav-1', target: '#" + pdr["ATCA01"].ToString() + "'}\">" + pdr["ATCA03"].ToString() + "<i class=\"am-icon-angle-right am-fr am-margin-right\"></i>");
    //            sb.Append("</a>");

    //            sb.Append("{@pmm}");
    //            bool isOpen = false;
    //            foreach (DataRow cdr in CDRARY)
    //            {
    //                if (cdr["ATCA01"].ToString().Equals(cid.ToString()))
    //                {
    //                    isOpen = true;
    //                }
    //                sb.Append("<li><a href=\"article.aspx?cid=" + cdr["ATCA01"].ToString() + "\">" + cdr["ATCA03"].ToString() + "</a></li>");
    //            }
    //            string s = "<ul class=\"am-list am-collapse admin-sidebar-sub\" id=\"" + pdr["ATCA01"].ToString() + "\">";
    //            sb.Append("</ul>");
    //            sb.Append("</li>");
    //            if (isOpen == true)
    //            {
    //                s = "<ul class=\"am-list admin-sidebar-sub\" id=\"" + pdr["ATCA01"].ToString() + "\">";
    //            }
    //            sb.Replace("{@pmm}", s);

    //            //sb.Append("<li class=\"am-parent\"><a href=\"article.aspx?cid=" + pdr["ATCA01"].ToString() + "\" class=\"\">" + pdr["ATCA03"].ToString() + "</a>");
    //            //sb.Append("<ul class=\"am-menu-sub am-collapse am-avg-sm-1\">");
    //            //foreach (DataRow cdr in CDRARY)
    //            //{
    //            //    sb.Append("<li><a href=\"article.aspx?cid=" + cdr["ATCA01"].ToString() + "\">" + cdr["ATCA03"].ToString() + "</a></li>");
    //            //}
    //            //sb.Append("</ul>");
    //            //sb.Append("</li>");
    //        }
    //        else
    //        {
    //            sb.Append("<li class=\"am-panel\">");
    //            sb.Append("<a>" + pdr["ATCA03"].ToString() + "");
    //            sb.Append("</a>");
    //            sb.Append("</li>");
    //        }

    //    }

    //    lit_class.Text = sb.ToString();
    //}
    private void bindHotBlog()
    {
        DataTable dt = CFacade.GetFac.GetATCBFac.ClientGetHotArticle(10);
        rp_hot_blog.DataSource = dt;
        rp_hot_blog.DataBind();

    }

    private void bindPickBlog()
    {
        DataTable dt = CFacade.GetFac.GetATCBFac.ClientGetHotArticle(10);
        rp_pick_blog.DataSource = dt;
        rp_pick_blog.DataBind();

    }
}