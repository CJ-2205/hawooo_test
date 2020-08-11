﻿using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_2017motherday : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string GetCP(string stime, string etime, string GB01)
    {
        string msg = "";
        if (DateTime.Now < Convert.ToDateTime(stime))
        {
            msg = "尚未到領取時間";
        }
        else if (DateTime.Now > Convert.ToDateTime(etime))
        {
            msg = "已超過領取時間";
        }
        else
        {
            if (HttpContext.Current.Session["A01"] != null)
            {
                msg = CFacade.GetFac.GetGAFac.JoinEvent((HttpContext.Current.Session["A01"].ToString()), DateTime.Now.ToString("yyyy-MM-dd HH:mm"), GB01);
            }
            else
            {
                msg = "請先登入會員";
            }
        }
        return msg.ToUpper();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (ismobile)
            {
                Response.Redirect("/mobile/2017motherday.aspx");
            }
        }
    }
}