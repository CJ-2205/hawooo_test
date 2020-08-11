using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_20161219 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (!ismobile)
            {
                Response.Redirect("/user/20161219.aspx");
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-12-19 00:00", "2016-12-27 00:00", "30cd821b-cd5e-47a6-a785-b751bcea7a29");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-12-19 00:00", "2016-12-27 00:00", "a6a5104b-2509-460c-86e3-d4e414dec1d5");
    }
    public void doevent(string stime, string etime, string GB01)
    {
        string msg = "";
        if (DateTime.Now < Convert.ToDateTime(stime))
        {
            msg += "尚未到領取時間";
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "emsg", "alert('" + msg + "');", true);
        }
        else if (DateTime.Now > Convert.ToDateTime(etime))
        {
            msg += "已超過領取時間";
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "emsg", "alert('" + msg + "');", true);
        }
        else
        {
            if (Session["A01"] != null)
            {
                msg = CFacade.GetFac.GetGAFac.JoinEvent(Session["A01"].ToString(), DateTime.Now.ToString("yyyy-MM-dd HH:mm"), GB01);
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('" + msg + "');", true);
            }
            else
            {
                Response.Redirect("login.aspx?rurl=" + Request.Url.Authority);
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin('" + Request.Url.PathAndQuery + "');", true);
            }
        }
    }
}