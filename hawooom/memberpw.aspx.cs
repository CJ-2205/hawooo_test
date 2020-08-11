using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class memberpw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] == null)
            {
                Response.Redirect("login.aspx?rurl=memberpw.aspx");
            }

        }
    }
    protected void btn_pw_save_Click(object sender, EventArgs e)
    {
        //密碼修改
        string oPW = Server.HtmlEncode(txt_old_password.Text.Trim());
        string nPW = Server.HtmlEncode(txt_new_password.Text.Trim());
        string cnPW = Server.HtmlEncode(txt_chk_new_password.Text.Trim());
        string emsg = "";
        if (oPW.Equals(""))
        {
            emsg += "請輸入舊密碼。 \\n";
        }
        if (nPW.Equals(""))
        {
            emsg += "請輸入新密碼。 \\n";
        }
        if (!nPW.Equals(cnPW))
        {
            emsg += "兩次密碼輸入不相同。 \\n";
        }
        bool cbool = CFacade.GetFac.GetAFac.checkpw(Convert.ToInt32(Session["A01"].ToString()), oPW);
        if (!cbool)
        {
            emsg += "請輸入正確的舊密碼。 \\n";
        }
        if (emsg.Equals(""))
        {
            bool rval = CFacade.GetFac.GetAFac.changpw(Convert.ToInt32(Session["A01"].ToString()), nPW);
            if (rval.Equals(true))
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('密碼修改成功');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('密碼修改失敗');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('" + emsg + "');", true);
        }
    }
}