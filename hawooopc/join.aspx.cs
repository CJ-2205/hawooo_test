using hawooo;
using Microsoft.Security.Application;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class user_join : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			ViewState["LG"] = (this.Master as user_user).LgType;
			if (Session["A01"] != null)
			{
				Response.Redirect("index.aspx");
			}
			if (Request.QueryString["rnum"] != null)
			{
				chk_has_code.Checked = true;
				txt_rec.Text = Request.QueryString["rnum"].ToString();
				ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "ShowCode();", true);
			}
			SetDefaultLang();
			//if (Request.QueryString["rcid"] != null)
			//{
			//    //有推薦帳號
			//    //ViewState["rcid"] = Request.QueryString["rcid"].ToString();
			//    hf_RCID.Value = Request.QueryString["rcid"].ToString();
			//}
		}

	}

	private void SetDefaultLang()
	{
		LangType lgType = (this.Master as user_user).LgType;
		//txt_account.Attributes.Add("placeholder", LangClass.GetMsgInfo("M043", lgType));
		//txt_Email.Attributes.Add("placeholder", LangClass.GetMsgInfo("M044", lgType));
		//txt_password.Attributes.Add("placeholder", LangClass.GetMsgInfo("M045", lgType));
		//txt_chk_password.Attributes.Add("placeholder", LangClass.GetMsgInfo("M046", lgType));
		TermsEn.Visible = false;
		TermsZh.Visible = false;
		switch (lgType)
		{
			case LangType.en:
				TermsEn.Visible = true;
				break;
			case LangType.zh:
				TermsZh.Visible = true;
				break;
		}

	}
	protected void btn_Login2_Click(object sender, EventArgs e)
	{
		ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "doLogin();", true);
	}

	protected void btn_Join2_Click(object sender, EventArgs e)
	{
		var lg = (this.Master as user_user).LgType;
		string error = "";
		hawooo.A objA = new hawooo.A();
		objA.A02 = txt_account.Text.Trim();
		if (objA.A02 == "")
			//error += "請輸入帳號 <br/>";
			error += LangClass.GetMsgInfo("M043", lg) + "<br/>";
		else
		{
			if (!RegexClass.IsEmail(objA.A02))
			{
				//error += "帳號請輸入英文或數字 <br/>";
				//error += LangClass.GetMsgInfo("M001", lg) + "<br/>";
				error += "Please enter Email to your account <br/>";
			}
			else
			{
				int cnum = CFacade.GetFac.GetAFac.CheckAccountIsExist(objA);
				if (cnum > 0)
				{
					//error += "此帳號已註冊，請選擇其他帳號註冊 <br/>";
					error += LangClass.GetMsgInfo("M002", lg) + "<br/>";
				}

			}
		}

		string phone = txt_phone.Text.Trim();
		if (!RegexClass.IsMyPhone(phone))
		{
			error += "Please enter phone number format like 01712345678 <br/>";
		}
		else
		{
			bool phoneIsExists = VerifyPhoneBL.ExistsVerifyPhoneNumber(phone);
			if (phoneIsExists)
			{
				error += "The phone has used, please use another phone number. <br/>";
			}
		}

		if (txt_password.Text.Trim().Equals(""))
		{
			//error += "請輸入密碼 <br/>";
			error += LangClass.GetMsgInfo("M006", (LangType)ViewState["LG"]) + "<br/>";
		}
		else
		{
			if (!RegexClass.IsValidPassword(txt_password.Text.Trim()))
			{
				//error += "請輸入長度6~15字母與數字的密碼 <br/>";
				error += LangClass.GetMsgInfo("M007", (LangType)ViewState["LG"]) + "<br/>";
			}
			if (!txt_password.Text.Trim().Equals(txt_chk_password.Text.Trim()))
			{
				//error += "兩次密碼請輸入相同 <br/>";
				error += LangClass.GetMsgInfo("M008", (LangType)ViewState["LG"]) + "<br/>";
			}
		}
		int recMId = 0;
		if (txt_rec.Text.Trim() != "")
		{
			//判斷驗證碼是否存在
			recMId = MCard.CheckMCodeExist(txt_rec.Text.Trim());
			if (recMId == 0)
			{
				error += "This recommendation code does not exist! <br/>";
			}
		}

		if (error.Length > 0)
		{
			ScriptManager.RegisterClientScriptBlock(upjoin, typeof(UpdatePanel), "msg", "alert('" + error + "');", true);
		}
		else
		{
			objA.A03 = PbClass.desEncryptBase64(Encoder.HtmlEncode(txt_password.Text.Trim()));
			objA.A04 = 0;
			objA.A05 = 1;
			objA.A06 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
			objA.A07 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
			objA.A08 = objA.A02.ToString();
			objA.A09 = phone;
			objA.A10 = "";
			objA.A11 = "";
			objA.A12 = "";
			objA.A13 = "";
			objA.A14 = "";
			objA.A15 = "";
			objA.A16 = 2;
			objA.A17 = 1;
			objA.A18 = "../images/userimgs/member-default.png";
			objA.A19 = 0;
			objA.A20 = 0;
			objA.A21 = "";
			objA.A23 = 0;
			objA.A25 = recMId;
			int rval = CFacade.GetFac.GetAFac.UserJoin(objA, "af0cc0ac-9176-4ddd-ad09-e00c7782cd64", lg: (this.Master as user_user).LgType); //正式
																																			 //int rval = CFacade.GetFac.GetAFac.UserJoin(objA, "68fd8b2c-e437-4c8b-8585-ac0368d6462a"); //測試
			if (rval > 0)
			{
				//註冊成功/進行登入
				string A02 = txt_account.Text.Trim();
				string A03 = PbClass.desEncryptBase64(txt_password.Text.Trim());
				var userFac = new AFactory();
				userFac.UserLogin(A02, A03, lg);

				if (userFac.LoginMsg.Equals("OK"))
				{
					string rurl = String.Empty;
					rurl = (Master.FindControl("rurl") as HiddenField).Value;
					if (rurl != "")
						rurl = "verify_phone.aspx?rurl=" + rurl;
					else
						rurl = "verify_phone.aspx";

					ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "msg", "location.href='" + rurl + "';", true);
				}
				else
				{
					ScriptManager.RegisterClientScriptBlock(upjoin, typeof(UpdatePanel), "loginmsg", "alert('" + userFac.LoginMsg + "');", true);
				}

			}
			else
			{
				//註冊失敗
				ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "msg", "alert('Error，please contact us');", true);
			}
		}

	}
	//protected void rp_other_account_SelectedIndexChanged(object sender, EventArgs e)
	//{
	//    txt_account.Text = rp_other_account.SelectedValue.ToString();
	//}

}