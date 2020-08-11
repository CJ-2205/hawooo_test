using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class memberinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //ViewState["LG"]
            LangType lg = (this.Master as mobile).LgType;
            ((Literal)member_class.FindControl("lit_class_txt")).Text = "<span class='txtRsc' data-id='m009'>我的資訊</span>";
            if (Session["A01"] != null)
            {
                GetData(Convert.ToInt32(Session["A01"].ToString()));
            }
            else
            {
                Response.Redirect("login.aspx?rurl=memberinfo.aspx");
            }

            SetLgInit(lg); //設定語系檔案
        }
    }

    private void SetLgInit(LangType lg)
    {

        switch (lg)
        {
            case LangType.en:
                {

                    txt_A15.Attributes.Add("placeholder", "Please enter name");
                    txt_A21.Attributes.Add("placeholder", "Please enter nickname");
                    txt_A08.Attributes.Add("placeholder", "Please enter Email");
                    foreach (ListItem item in ddl_A16.Items)
                    {
                        switch (item.Value)
                        {
                            case "1":
                                {
                                    item.Text = "male";
                                    break;
                                }
                            case "0":
                                {
                                    item.Text = "female";
                                    break;
                                }
                        }

                    }
                    txt_A10.Attributes.Add("placeholder", "Please enter telphone");
                    txt_A09.Attributes.Add("placeholder", "Please enter phone");
                    txt_A14.Attributes.Add("placeholder", "Please enter address");
                    txt_old_password.Attributes.Add("placeholder", "Please enter old password");
                    txt_new_password.Attributes.Add("placeholder", "Please enter new password");
                    txt_chk_new_password.Attributes.Add("placeholder", "Please enter confirm password ");

                    break;
                }

        }
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        LangType lg = (this.Master as mobile).LgType;
        string errMsg = "";

        //確認網站暱稱是否重複

        if (!txt_A08.Text.Trim().Equals(""))
        {
            if (!RegexClass.IsEmail(txt_A08.Text.Trim()))
            {
                errMsg += LangClass.GetMsgInfo("M004", lg) + "<br/>";
            }
        }
        //if (txt_A21.Text.Trim().Equals(""))
        //{
        //    errMsg += "請輸入暱稱 \\n";
        //}

        //bool isExist = CFacade.GetFac.GetAFac.MemberUseNameIsExist(Convert.ToInt32(Session["A01"].ToString()), txt_A21.Text.Trim());
        //if (isExist.Equals(false))
        //{
        //    errMsg += "此暱稱已使用，請修改其暱稱 \\n";
        //}
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
            objA.A16 = Convert.ToInt32(ddl_A16.SelectedValue.ToString());
            objA.A18 = hf_A18.Value;
            objA.A21 = txt_A21.Text.Trim();
            objA.A26 = txt_A26.Text.Trim();
            bool rval = CFacade.GetFac.GetAFac.MemberInfoEditSave(objA);
            if (rval)
            {
                //Session["A01"] = objA.A01;
                Session["A21"] = objA.A21;
                ScriptManager.RegisterClientScriptBlock(up_event, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M065", lg) + "');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(up_event, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M066", lg) + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(up_event, typeof(UpdatePanel), "msg", "alert('" + errMsg + "');", true);
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
            ddl_A16.SelectedValue = dt.Rows[0]["A16"].ToString();
            hf_A18.Value = dt.Rows[0]["A18"].ToString();
            //if (dt.Rows[0]["A16"].ToString().Equals("0"))
            //{
            //    rb_A16.SelectedValue = "0";
            //}
            //else if (dt.Rows[0]["A16"].ToString().Equals("1"))
            //{
            //    rb_A16.SelectedValue = "1";
            //}
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
            if (FieldCheck.isDateTime(dt.Rows[0]["A26"].ToString()))
            {
                txt_A26.Text = Convert.ToDateTime(dt.Rows[0]["A26"].ToString()).ToString("yyyy-MM-dd");
            }
            StringBuilder sb = new StringBuilder();
            //20170907修改
            if (dt.Rows[0]["A23"].ToString().Equals("1"))
            {
                sb.Append("panelChange();");

            }

            if (dt.Rows[0]["A04"].ToString().Equals("1"))
            {
                sb.Append("notChgPW();");
                //partPW.Visible = false;
                //partPWname.Visible = false;
                //part.Visible = true;
            }

            if (sb.ToString().Length > 0)
            {
                ScriptManager.RegisterStartupScript(Page, GetType(), "change", sb.ToString(), true);
            }

        }
        else
        {
            Response.Redirect("index.aspx");
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

    protected void btn_pw_save_Click(object sender, EventArgs e)
    {
        LangType lg = (this.Master as mobile).LgType;

        //密碼修改
        string oPW = Server.HtmlEncode(txt_old_password.Text.Trim());
        string nPW = Server.HtmlEncode(txt_new_password.Text.Trim());
        string cnPW = Server.HtmlEncode(txt_chk_new_password.Text.Trim());
        string emsg = "";
        if (oPW.Equals(""))
        {
            emsg += LangClass.GetMsgInfo("M062", lg) + "<br/>";
        }
        if (nPW.Equals(""))
        {
            emsg += LangClass.GetMsgInfo("M063", lg) + "<br/>";
        }
        if (!nPW.Equals(cnPW))
        {
            emsg += LangClass.GetMsgInfo("M008", lg) + "<br/>";
        }
        bool cbool = CFacade.GetFac.GetAFac.checkpw(Convert.ToInt32(Session["A01"].ToString()), oPW);
        if (!cbool)
        {
            emsg += LangClass.GetMsgInfo("M064", lg) + "<br/>";
        }
        if (emsg.Equals(""))
        {
            bool rval = CFacade.GetFac.GetAFac.changpw(Convert.ToInt32(Session["A01"].ToString()), nPW);
            if (rval.Equals(true))
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M065", lg) + "');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M066", lg) + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('" + emsg + "');", true);
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        hawooo.A objA = new hawooo.A();
        objA.A02 = hf_A01.Value;
        objA.A08 = txt_A08.Text;

        CFacade.GetFac.GetAFac.SendJoinEdmMsg(objA);

        //ScriptManager.RegisterStartupScript(UpdatePanel3, typeof(UpdatePanel), "block", "btnBlock()", true);
        //ScriptManager.RegisterStartupScript(UpdatePanel3, typeof(UpdatePanel), "alert", "openModal('member1')", true);

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "UPDATE A SET A08=@A08 WHERE A01=@A01";
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.Int, Session["A01"].ToString()));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A08", SqlDbType.NVarChar, txt_A08.Text));
        SqlDbmanager.executeNonQry(cmd);
    }
}