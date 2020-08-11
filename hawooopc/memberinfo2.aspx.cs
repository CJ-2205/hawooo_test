using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_memberinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                GetData(Convert.ToInt32(Session["A01"].ToString()));
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    private void GetData(int A01)
    {
        DataTable dt = CFacade.GetFac.GetAFac.MemberInfo(A01);
        if (dt.Rows.Count > 0)
        {
            //txt_A02.Text = dt.Rows[0]["A02"].ToString();
            hf_A01.Value = dt.Rows[0]["A02"].ToString();
            txt_A08.Text = dt.Rows[0]["A08"].ToString();
            txt_A09.Text = dt.Rows[0]["A09"].ToString();
            txt_A10.Text = dt.Rows[0]["A10"].ToString();
            txt_A14.Text = dt.Rows[0]["A14"].ToString();
            //switch (dt.Rows[0]["A19"].ToString())
            //{
            //    case "0":
            //        {
            //            txt_A19.Text = "一般會員";
            //            break;
            //        }
            //}
            txt_A15.Text = dt.Rows[0]["A15"].ToString();
            if (dt.Rows[0]["A16"].ToString().Equals("0"))
            {
                rb_A16.SelectedValue = "0";
            }
            else if (dt.Rows[0]["A16"].ToString().Equals("1"))
            {
                rb_A16.SelectedValue = "1";
            }
            //if (!dt.Rows[0]["A18"].ToString().Equals(""))
            //{
            //    hf_A18.Value = dt.Rows[0]["A18"].ToString();
            //    img_A18.ImageUrl = dt.Rows[0]["A18"].ToString();
            //}
            //else
            //{
            //    hf_A18.Value = "../images/userimgs/member-default.png";
            //    img_A18.ImageUrl = "../images/userimgs/member-default.png";
            //}
            txt_A21.Text = dt.Rows[0]["A21"].ToString();
            if (dt.Rows[0]["A04"].ToString().Equals("1"))
            {
                btn_pw_save.Visible = false;
            }


            //20170907修改
            if (dt.Rows[0]["A23"].ToString().Equals("1"))
            {
                btnSend.Enabled = false;
                btnSend.Text = "已認證";
            }
            else
            {
                //btnSend.InnerText = "發驗證信";
            }


        }
        else
        {
            Response.Redirect("index.aspx");
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


    protected void btn_date_save_Click(object sender, EventArgs e)
    {

        string errMsg = "";

        //確認網站暱稱是否重複

        if (!txt_A08.Text.Trim().Equals(""))
        {
            if (!RegexClass.IsEmail(txt_A08.Text.Trim()))
            {
                errMsg += "請輸入正確的EMail格式 \\n";
            }
        }
        if (txt_A21.Text.Trim().Equals(""))
        {
            errMsg += "請輸入暱稱 \\n";
        }
        bool isExist = CFacade.GetFac.GetAFac.MemberUseNameIsExist(Convert.ToInt32(Session["A01"].ToString()), txt_A21.Text.Trim());
        if (isExist.Equals(false))
        {
            errMsg += "此暱稱已使用，請修改其暱稱 \\n";
        }
        if (errMsg == "")
        {
            //資料修改
            hawooo.A objA = new hawooo.A();
            objA.A01 = Convert.ToInt32(Session["A01"].ToString());
            objA.A08 = txt_A08.Text.Trim();
            objA.A09 = txt_A09.Text.Trim();
            objA.A10 = txt_A10.Text.Trim();
            objA.A14 = txt_A14.Text.Trim();
            objA.A15 = txt_A15.Text.Trim();
            objA.A16 = rb_A16.SelectedIndex != -1 ? Convert.ToInt32(rb_A16.SelectedValue.ToString()) : 2;
            //string A18 = "";
            //if (!hf_A18.Value.Equals(""))
            //{
            //    if (hf_A18.Value.Substring(0, 1).ToString().Equals("n"))
            //    {
            //        hf_A18.Value = "../images/userimgs/" + hf_A18.Value;
            //    }
            //}
            //objA.A18 = hf_A18.Value;
            objA.A21 = txt_A21.Text.Trim();
            bool rval = CFacade.GetFac.GetAFac.MemberInfoEditSave(objA);
            if (rval)
            {
                Session["A01"] = objA.A01;
                Session["A21"] = objA.A21;
                ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('資料修改成功');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('資料修改失敗');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('" + errMsg + "');", true);
        }

    }

    //protected void btnSend_ServerClick(object sender, EventArgs e)
    //{
    //    hawooo.A objA = new hawooo.A();
    //    objA.A02 = hf_A01.Value;
    //    objA.A08 = txt_A08.Text;

    //    CFacade.GetFac.GetAFac.SendJoinEdmMsg(objA);

    //    ScriptManager.RegisterStartupScript(UpdatePanel3, typeof(UpdatePanel), "block", "btnBlock()", true);
    //    ScriptManager.RegisterStartupScript(UpdatePanel3, typeof(UpdatePanel), "alert", "openModal('member1')", true);

    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = "UPDATE A SET A08=@A08 WHERE A01=@A01";
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.Int, Session["A01"].ToString()));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("A08", SqlDbType.NVarChar, txt_A08.Text));
    //    SqlDbmanager.executeNonQry(cmd);
    //}






    protected void btnSend_Click(object sender, EventArgs e)
    {
        hawooo.A objA = new hawooo.A();
        objA.A02 = hf_A01.Value;
        objA.A08 = txt_A08.Text;

        CFacade.GetFac.GetAFac.SendJoinEdmMsg(objA);

        ScriptManager.RegisterStartupScript(UpdatePanel3, typeof(UpdatePanel), "block", "btnBlock()", true);
        ScriptManager.RegisterStartupScript(UpdatePanel3, typeof(UpdatePanel), "alert", "openModal('member1')", true);

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "UPDATE A SET A08=@A08 WHERE A01=@A01";
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.Int, Session["A01"].ToString()));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A08", SqlDbType.NVarChar, txt_A08.Text));
        SqlDbmanager.executeNonQry(cmd);
    }
}