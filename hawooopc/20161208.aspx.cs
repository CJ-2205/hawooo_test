using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_20161208 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin('" + Request.Url.PathAndQuery + "');", true);
            }
        }
    }

    protected void img_event1_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-12-09 00:00", "2016-12-27 00:00", "93a3dcc7-6f8f-4f3d-8cb3-d1337fdea674");
    }

    protected void img_event2_Click(object sender, ImageClickEventArgs e)
    {
        doevent("2016-12-09 00:00", "2016-12-27 00:00", "9a81b9a5-fb2e-4d6c-ad7e-615a8f3ecde0");
    }
}