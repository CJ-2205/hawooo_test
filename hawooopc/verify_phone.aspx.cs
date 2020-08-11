using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_verify_phone : System.Web.UI.Page
{

	protected void Page_Load(object sender, EventArgs e)
	{
		if (Session["A01"] == null)
		{
			Response.Redirect("login.aspx");
		}

		if (!IsPostBack)
		{
			int userId = Convert.ToInt32(Session["A01"].ToString());

			//判斷是否驗證通過
			var checkVal = VerifyPhoneBL.CheckPhoneIsVerify(userId);
			if (checkVal.Item1 == "YES")
			{
				Response.Redirect("index.aspx");
			}
			else
			{
				txt_phone.Text = checkVal.Item2.Trim();
			}
		}
	}

	protected void btn_confirm_OnClick(object sender, EventArgs e)
	{
		string code = txt_code.Text.ToString();
		if (code.Equals(""))
		{
			ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Please enter verify code!');", true);
		}
		else
		{
			int userId = Convert.ToInt32(Session["A01"].ToString());
			VerifyPhoneBL bl = new VerifyPhoneBL();
			var rval = bl.VerifyPhone(userId, code);
			if (rval.Equals("OK"))
			{
				string rurl = "index.aspx";
				//SendVerifyEmail(userId);
				if (Request.QueryString["rurl"] != null)
				{
					rurl = Request.QueryString["rurl"].ToString();
				}
				Response.Redirect(rurl);
			}
			else
			{
				ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('" + rval + "');", true);
			}
		}
	}

	//private void SendVerifyEmail(int userId)
	//{
	//     CheckEmail chkEmail = new CheckEmail();
	//     chkEmail.CE01 = Guid.NewGuid().ToString();
	//     chkEmail.CE02 = userId;
	//     CheckEmailFac.DoInsert(chkEmail);
	//     //寄送驗證信件
	//     MailCls mc = new MailCls();
	//     Thread t = new Thread(() => mc.SendCheckEmail(userId.ToString()));
	//     t.Start();
	//}
	protected void btn_resend_OnClick(object sender, EventArgs e)
	{
		string msg = "";
		if (Session["A01"] != null)
		{
			if (Session["vtime"] != null)
			{
				var lastSendTime = Convert.ToDateTime(Session["vtime"]);
				if (lastSendTime.AddMinutes(5) < DateTime.Now)
				{
					msg = "Please wait 5 minutes";
				}
			}

			if (msg == "")
			{
				int userId = Convert.ToInt32(Session["A01"].ToString());
				VerifyPhoneBL vBL = new VerifyPhoneBL();
				var sendTime = vBL.ReSendCode(userId);
				Session["vtime"] = sendTime;
				msg = "Send Success";
			}
			
			ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('" + msg + "');", true);
		}

	}
}