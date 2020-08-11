using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_forum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindClass();
            int p = 1;
            if (Request.QueryString["p"] != null)
            {
                if (int.TryParse(Request.QueryString["p"], out p))
                {
                    p = Convert.ToInt32(Request.QueryString["p"].ToString());
                }
            }
            int cid = 0;
            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out cid))
                {
                    cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                }
            }
            bindList(p, 20, cid);
        }
    }
    private void bindClass()
    {
        DataTable dt = new DataTable();
        StringBuilder sb = new StringBuilder();
        dt = CFacade.GetFac.ForumCFac.GetUserFORUMC();
        sb.Append("<li><a href='forum.aspx?cid=0' \"><span>全部類別</span></a></li>");
        //<li><a href='#'><span>Contact</span></a></li>

        foreach (DataRow dr in dt.Rows)
        {
            sb.Append("<li ><a href='forum.aspx?cid=" + dr["FC01"].ToString() + "'><span>" + dr["FC02"].ToString() + "</span></a></li>");
        }
        lit_class.Text = sb.ToString();
    }

    private void bindList(int p = 1, int c = 10, int cid = 0)
    {
        Tuple<DataTable, int> rval = CFacade.GetFac.ForumMFac.GetUserForummList(p, c, cid);
        if (rval.Item1 != null)
        {
            rp_list.DataSource = rval.Item1;
            rp_list.DataBind();
            //rp_list.DataSource = rval.Item1;
            //rp_list.DataBind();
            if (rval.Item1.Rows.Count == 0)
            {
                lit_msg.Text = "無任何討論。";
            }
        }

        StringBuilder sb = new StringBuilder();
        decimal d = Math.Ceiling(Convert.ToDecimal(rval.Item2) / c);
        for (int i = 1; i <= d; i++)
        {
            string qstr = "?p=" + i.ToString() + "&cid=" + cid;
            if (i.Equals(p))
                sb.Append("<li class=\"am-active\"><a href=\"forum.aspx" + qstr + "\">" + i.ToString() + "</a></li>");
            else
                sb.Append("<li><a href=\"forum.aspx" + qstr + "\">" + i.ToString() + "</a></li>");
        }
        lit_page.Text = sb.ToString();
    }
    protected void lnk_news_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            Response.Redirect("forumedit.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin();", true);
        }
    }
}