using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_20170906 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //css('visibility','hidden')
        ClientScriptManager cs = Page.ClientScript;
        string str = string.Empty;
        if (Session["A01"] != null)
        {
            str = @"$(function(){
                  $('#joinR').remove();
                  $('#center').attr('href','https://www.hawooo.com/mobile/memberinfo.aspx');
                  $('#center').attr('target','_blank');
})";
        }
        else
        {
            str = @"$(function(){
                  $('#center').attr('href','https://www.hawooo.com/mobile/login.aspx?rurl=memberorder.aspx');
                  $('#center').css('cursor','pointer');
                  $('#center').attr('target','_blank');
                  $('#join').attr('href','https://www.hawooo.com/mobile/register.aspx');
})";
        }

        cs.RegisterClientScriptBlock(GetType(), "session", str, true);
    }
}