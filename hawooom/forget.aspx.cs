using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_forget_Click(object sender, EventArgs e)
    {
        string amsg = "";
        string _Account = txt_account.Text.Trim();
        //string _Email = txt_Email.Text.Trim();
        string _Code = txt_code.Text.Trim();
        if (Session["vcode"].ToString().Equals(_Code))
        {
            hawooo.A objA = new hawooo.A();
            objA.A02 = _Account;
            amsg = CFacade.GetFac.GetAFac.ForGetPassword(objA);
        }
        else
        {
            amsg = "請輸入正確的驗證碼 \\n";
        }
        if (amsg.Equals("OK"))
        {
            //寄出成功;
            ScriptManager.RegisterClientScriptBlock(upjoin, typeof(UpdatePanel), "msg", "alert('密碼已寄到您申請帳號時的信箱。');location.href='forget.aspx';", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(upjoin, typeof(UpdatePanel), "msg", "alert('" + amsg + "');", true);
        }
    }
}