using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_fastclass : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getHawoooList();
        }
    }
    private void getHawoooList(int cid = 0)
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.UserFac.GetShopClass(cid, 2);
        if (dt.Rows.Count > 0)
        {
            if (cid == 0)
            {
                sb.Append("<ul class=\"left-menu\">");
                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append("<li class=\"" + dr["C08"].ToString() + "\"><a href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\">&nbsp;" + dr["C06"].ToString() + "</a></li>");
                }
                sb.Append("</ul>");
            }
            else
            {
                sb.Append("<div class=\"left-menu-all\"><a href=\"shop.aspx\"><i class=\"am-icon-chevron-left\" aria-hidden=\"true\"></i>&nbsp;所有分類</a></div>");
                sb.Append("<ul class=\"left-menu-2\">");
                DataRow MDR = dt.Select("C03='0'")[0];
                //sb.Append("<li class=\"left02\">&nbsp;時尚彩妝</li>");
                sb.Append("<li class=\"" + MDR["C08"].ToString() + "\"><a href=\"fast.aspx?cid=" + MDR["C01"].ToString() + "\">&nbsp;" + MDR["C06"].ToString() + "</a></li>");
                DataRow[] CDR = dt.Select("C03<>'0'");
                if (CDR.Length > 0)
                {
                    sb.Append("<ul class=\"left-menu-down\">");
                    foreach (DataRow cdr in CDR)
                    {
                        sb.Append("<li><a href=\"fast.aspx?cid=" + cdr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\" style=\"color:#dbdbdb;\"></i>&nbsp;&nbsp;" + cdr["C06"].ToString() + "</a></li>");
                    }
                    sb.Append("</ul>");
                }
                sb.Append("</ul>");
            }
        }
        lit_hawooo_class.Text = sb.ToString();

        //DataTable dt = CFacade.UserFac.HawoooClassTW(2);
        //System.Text.StringBuilder sb = new System.Text.StringBuilder();
        //sb.Append("<li><a href=\"fast.aspx\"><i class=\"am-icon-caret-right\"></i>&nbsp;全部商品</a></li>");
        //DataRow[] SDR = dt.Select("C03='0'");
        //foreach (DataRow dr in SDR)
        //{
        //    sb.Append("<li><a href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr["C06"].ToString() + "</a></li>");
        //    DataRow[] CDR = dt.Select("C03='" + dr["C01"].ToString() + "'");
        //    if (CDR.Length > 0)
        //    {
        //        sb.Append("<ul class=\"classbar\" style=\"margin-top:0px;margin-bottom:0px\">");
        //        foreach (DataRow dr2 in CDR)
        //        {
        //            sb.Append("<li><a href=\"fast.aspx?cid=" + dr2["C01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + dr2["C06"].ToString() + "</a></li>");
        //        }
        //        sb.Append("</ul>");
        //    }

        //}
        //lit_fast_class.Text = sb.ToString();
    }
}