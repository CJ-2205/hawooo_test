using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_emailevent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        string ErrorStr = "";
        if (txt_name.Text.Trim().Equals(""))
        {
            ErrorStr += "請輸入姓名 \\n";
        }
        if (!RegexClass.IsEmail(txt_email.Text.Trim()))
        {
            ErrorStr += "請輸入EMAIL \\n";
        }
        if (ErrorStr.Length > 0)
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('" + ErrorStr + "');", true);
        }
        else
        {
            EENT obEENT = new EENT();
            obEENT.EENT01 = Guid.NewGuid().ToString();
            obEENT.EENT02 = txt_name.Text.Trim();
            obEENT.EENT03 = txt_email.Text.Trim();
            obEENT.EENT04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            obEENT.EENT05 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            obEENT.EENT06 = 1;
            obEENT.EENT07 = "";
            obEENT.EENT08 = "";
            obEENT.EENT09 = "";
            obEENT.EENT10 = "";
            EENTFactory obEENTFAC = new EENTFactory();
            bool rval = obEENTFAC.insertEENT(obEENT);
            if (rval)
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('送出成功');location.href='emailevent.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('送出失敗');", true);
            }
        }
    }
}