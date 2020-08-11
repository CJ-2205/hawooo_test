using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_brandclass : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;
            if (int.TryParse(Request.QueryString["bid"], out i))
            {
                bindStyle(Convert.ToInt32(Request.QueryString["bid"].ToString()));
                bindDT(Convert.ToInt32(Request.QueryString["bid"].ToString()));
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    private void bindStyle(int B01)
    {
        StringBuilder sb = new StringBuilder();
        string strSql = "SELECT BA16 FROM BA WHERE B01=" + B01;
        DataTable dt = SqlDbmanager.queryBySql(strSql);

        sb.Append("<style>");
        sb.Append(".class_panel_title {");
        sb.Append("font-size: 16px;");
        sb.Append("padding-left: 10px;");
        sb.Append("height: 40px;");
        sb.Append("background-color: " + dt.Rows[0]["BA16"].ToString() + ";");
        sb.Append("padding-top: 5px;");
        sb.Append("color: #ffffff");
        ///*border-left: 3px solid #FF888e;*/
        sb.Append("}");

        sb.Append(".class_panel_title:before {");
        sb.Append("content: \"\";");
        sb.Append("display: block;");
        sb.Append("border-width: 0 15px 15px 0px;");
        sb.Append("border-color: " + dt.Rows[0]["BA16"].ToString() + " " + dt.Rows[0]["BA16"].ToString() + " transparent transparent;");
        sb.Append("background: transparent;");
        sb.Append("border-style: solid;");
        sb.Append("width: 0;");
        sb.Append("position: absolute;");
        sb.Append("top: 45px;");
        sb.Append("left: 0px;");
        sb.Append("}");
        sb.Append("</style>");

        lit_style.Text = sb.ToString();
        hf_BA16.Value = dt.Rows[0]["BA16"].ToString();
    }
    private void bindDT(int BB01)
    {
        LangType lgType = (this.Page.Master as user_user).LgType;
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.GetFac.GetBBFac.BrandGetClass(BB01, lgType);
        DataRow[] pDR = dt.Select("BB04='0'");
        sb.Append("<a href=\"brands.aspx?bid=" + BB01 + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + (lgType.Equals(LangType.en) ? "ALL GOODS" : "全部商品") + "</a>");
        foreach (DataRow pd in pDR)
        {
            sb.Append("<li>");
            sb.Append("<a href=\"brands.aspx?bid=" + BB01 + "&cid=" + pd["BB01"].ToString() + "\"><i class=\"am-icon-caret-right\"></i>&nbsp;" + pd["BB07"].ToString() + "</a>");
            DataRow[] cDR = dt.Select("BB04='" + pd["BB01"].ToString() + "'");
            if (cDR.Length > 0)
            {
                sb.Append("<ul class=\"subclass\">");
                foreach (DataRow cd in cDR)
                {
                    sb.Append("<li><a href=\"brands.aspx?bid=" + BB01 + "&cid=" + cd["BB01"].ToString() + "\">" + cd["BB07"].ToString() + "</a></li>");
                }
                sb.Append("</ul>");
            }
            sb.Append("</li>");
        }
        lit_class_list.Text = sb.ToString();
    }

}