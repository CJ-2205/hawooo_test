using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_forumdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["fid"] != null)
            {
                int i = 0;
                if (int.TryParse(Request.QueryString["fid"].ToString(), out i))
                {
                    bindDT(Convert.ToInt32(Request.QueryString["fid"].ToString()));
                }
                else
                {
                    bindDT(Convert.ToInt32(Request.QueryString["fid"].ToString()));
                }
            }
            else
            {
                Response.Redirect("forum.aspx");
            }
        }
    }
    private void bindDT(int FID, int p = 1, int c = 8)
    {
        if (p == 1)
        {
            mpanel.Visible = true;
        }
        else
        {
            mpanel.Visible = false;
        }
        //if (Session["A01"] == null)
        //{
        //    lnk_news.Visible = false;
        //    lnk_return.Visible = false;
        //    //lnk_return2.Visible = false;
        //}
        //else
        //{
        //    lnk_news.Visible = true;
        //    lnk_return.Visible = true;
        //    //lnk_return2.Visible = true;
        //}
        //lnk_del.Visible = false;
        lnk_edit.Visible = false;
        DataTable mdt = CFacade.GetFac.ForumMFac.GetForummPDT(FID);
        if (mdt.Rows.Count > 0)
        {
            A01.Value = mdt.Rows[0]["A01"].ToString();
            ViewState["FM01"] = mdt.Rows[0]["FM01"].ToString();
            mA02.Text = mdt.Rows[0]["A02"].ToString();
            mFM02.Text = mdt.Rows[0]["FM02"].ToString();
            mFM03.Text = Server.HtmlDecode(mdt.Rows[0]["FM03"].ToString());
            mFM06.Text = mdt.Rows[0]["FM06"].ToString();
            if (mdt.Rows[0]["A18"].ToString() != "")
                mA18.ImageUrl = mdt.Rows[0]["A18"].ToString();
            else
                mA18.ImageUrl = "../images/userimgs/member-default.png";
            if (Session["A01"] != null)
            {
                if (mdt.Rows[0]["A01"].ToString().Equals(Session["A01"].ToString()))
                {
                    //lnk_del.Visible = true;
                    lnk_edit.Visible = true;
                }
            }
        }
        else
        {
            Response.Redirect("forum.aspx");
        }

        Tuple<DataTable, int> cdt = CFacade.GetFac.ForumMFac.GetForummCDT(FID);
        rp_list.DataSource = cdt.Item1;
        rp_list.DataBind();

        StringBuilder sb = new StringBuilder();
        decimal d = Math.Ceiling(Convert.ToDecimal(cdt.Item2) / c);
        if (d > 1)
        {
            for (int i = 1; i <= d; i++)
            {
                string qstr = "?p=" + i.ToString();
                if (i.Equals(p))
                    sb.Append("<li class=\"am-active\"><a href=\"forumdetail.aspx" + qstr + "\">" + i.ToString() + "</a></li>");
                else
                    sb.Append("<li><a href=\"forumdetail.aspx" + qstr + "\">" + i.ToString() + "</a></li>");
            }
            lit_page.Text = sb.ToString();
        }


    }
    protected void lnk_return_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            int _id = Convert.ToInt32(ViewState["FM01"].ToString());
            Response.Redirect("forumedit.aspx?pid=" + _id);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "login", "doLogin();", true);
        }
    }
    protected void lnk_return2_Click(object sender, EventArgs e)
    {

    }
    protected void rp_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            if (Session["A01"] != null)
            {
                string _A01 = ((HiddenField)e.Item.FindControl("cA01")).Value;
                if (Session["A01"].ToString().Equals(_A01))
                {
                    ((LinkButton)e.Item.FindControl("lnk_edit")).Visible = true;
                    // ((LinkButton)e.Item.FindControl("lnk_del")).Visible = true;
                }
                else
                {
                    ((LinkButton)e.Item.FindControl("lnk_edit")).Visible = false;
                    //  ((LinkButton)e.Item.FindControl("lnk_del")).Visible = false;
                }
            }

        }
    }
    protected void lnk_news_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            if (!Session["A21"].ToString().Equals(""))
            {
                int _id = Convert.ToInt32(ViewState["FM01"].ToString());
                Response.Redirect("forumedit.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "edname", "alert('尚未輸入網路暱稱');location.href='memberinfo.aspx';", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "login", "doLogin();", true);
        }
    }
    protected void lnk_edit_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            if (!Session["A21"].ToString().Equals(""))
            {
                Response.Redirect("forumedit.aspx?eid=" + ViewState["FM01"].ToString() + "");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "edname", "alert('尚未輸入網路暱稱');location.href='memberinfo.aspx';", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "login", "doLogin();", true);
        }

    }
    protected void lnk_edit_Click1(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
            string _FM01 = ((HiddenField)ri.FindControl("cFM01")).Value;
            Response.Redirect("forumedit.aspx?eid=" + _FM01);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "login", "doLogin();", true);
        }

    }
}