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
            int aid = 0;
            if (Request.QueryString["aid"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["aid"].ToString()))
                {
                    aid = Convert.ToInt32(Request.QueryString["aid"].ToString());
                }
            }
            bindClass(aid);
            //bindHotArticle();
        }
    }
    private void bindClass(int aid)
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.GetFac.GetATCAFac.ClientGetATCT();
        if (aid != 0)
        {
            DataRow SDR = dt.Select("ATCA01='" + aid + "'")[0];
            lit_b_class.Text = ">" + SDR["ATCA03"].ToString();
            //var cname = (from DataRow r in dt.AsEnumerable()
            //             where r.Field<Int32>("ATCA01").Equals(aid)
            //             select r).SingleOrDefault();
            //if (cname != null)
            //    lit_b_class.Text = (cname as DataRow)["ATCA03"].ToString();
        }
        DataRow[] PDRARY = dt.Select("ATCA08='0'");

        foreach (DataRow pdr in PDRARY)
        {
            sb.Append("<li><a href=\"article.aspx?aid=" + pdr["ATCA01"].ToString() + "\">" + pdr["ATCA03"].ToString() + "</a></li>");
            DataRow[] CDRARY = dt.Select("ATCA08='" + pdr["ATCA01"].ToString() + "'");
            foreach (DataRow cdr in CDRARY)
            {
                sb.Append("<li> <a href=\"article.aspx?aid=" + cdr["ATCA01"].ToString() + "\"> 。" + cdr["ATCA03"].ToString() + "</a></li>");
            }

        }
        lit_class.Text = sb.ToString();
    }

}