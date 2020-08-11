using hawooo;
using Microsoft.Security.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["rurl"] != null)
            {
                (Master.FindControl("rurl") as HiddenField).Value = Request.QueryString["rurl"].ToString();
            }
            if (Session["A01"] != null)
            {
                if ((Master.FindControl("rurl") as HiddenField).Value != "")
                {
                    Response.Redirect(Request.QueryString["rurl"].ToString());
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
        }
    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        LangType lg = (this.Master as mobile).LgType;
        string error = "";
        if (txt_account.Text.Trim().Equals(""))
        {
            error += LangClass.GetMsgInfo("M043", lg) + "<br/>";
        }
        if (txt_password.Text.Trim().Equals(""))
        {
            error += LangClass.GetMsgInfo("M006", lg) + "<br/>";
        }
        if (error == "")
        {
            string A02 = txt_account.Text.Trim();
            string A03 = PbClass.desEncryptBase64(txt_password.Text.Trim());
            var userFac = new AFactory();
            userFac.UserLogin(A02, A03, lg);

            if (userFac.LoginMsg.Equals("OK"))
            {
                //登入成功
               
                string _url = "member_card.aspx";
                if (Request.QueryString["rurl"] != null)
                {
                    _url = (Request.QueryString["rurl"]).ToString();
                }
                ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "loginmsg", "location.href='" + _url + "';", true);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(upjoin, typeof(UpdatePanel), "loginmsg", "alert('" + userFac.LoginMsg + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(upjoin, typeof(UpdatePanel), "error", "alert('" + error + "');", true);
        }
    }
    protected void btn_Join_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}