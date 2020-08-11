using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_1111 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgbtn1_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-11-08 00:00", "2016-11-09 00:00");
    }

    protected void Imgbtn2_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-11-09 00:00", "2016-11-10 00:00");
    }

    protected void Imgbtn3_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-11-10 00:00", "2016-11-11 00:00");
    }
    public void doevent(string stime, string etime)
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
                msg = CFacade.GetFac.GetGAFac.JoinEvent(Session["A01"].ToString(), DateTime.Now.ToString("yyyy-MM-dd HH:mm"));
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('" + msg + "');", true);
            }
            else
            {
                Response.Redirect("login.aspx?rul" + Request.Url.PathAndQuery);
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin('" + +"');", true);
            }
        }
    }
}