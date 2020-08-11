using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_forumedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindClass();
            if (Session["A01"] == null)
            {
                Response.Redirect("forum.aspx");
            }
            else
            {
                if (Request.QueryString["pid"] != null)
                {
                    int i = 0;
                    if (int.TryParse(Request.QueryString["pid"], out i))
                    {
                        getDt(Convert.ToInt32(Request.QueryString["pid"].ToString()));
                    }
                    else
                    {
                        Response.Redirect("forum.aspx");
                    }
                }
                if (Request.QueryString["eid"] != null)
                {
                    int i = 0;
                    if (int.TryParse(Request.QueryString["eid"], out i))
                    {
                        editDT(Convert.ToInt32(Request.QueryString["eid"].ToString()), Convert.ToInt32(Session["A01"].ToString()));
                    }
                    else
                    {
                        Response.Redirect("forum.aspx");
                    }
                }
            }

        }
    }
    private void editDT(int FM01, int A01)
    {
        DataTable dt = CFacade.GetFac.ForumMFac.EditForumm(FM01, A01);
        if (dt.Rows.Count > 0)
        {
            hf_FM01.Value = dt.Rows[0]["FM01"].ToString();
            txt_FM02.Text = dt.Rows[0]["FM02"].ToString();
            txt_FM02.Enabled = false;
            txt_content.Text = dt.Rows[0]["FM03"].ToString();
            ddl_class.SelectedValue = dt.Rows[0]["FC01"].ToString();
            ddl_class.Enabled = false;
            hf_FM12.Value = dt.Rows[0]["FM01"].ToString();
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }
    private void getDt(int FM01)
    {
        DataTable dt = CFacade.GetFac.ForumMFac.GetForumm(FM01);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["FM12"].ToString().Equals("0"))
            {
                txt_FM02.Text = dt.Rows[0]["FM02"].ToString();
                txt_FM02.Enabled = false;
                ddl_class.SelectedValue = dt.Rows[0]["FC01"].ToString();
                ddl_class.Enabled = false;
                hf_FM12.Value = dt.Rows[0]["FM01"].ToString();
            }
            else
            {
                hf_FM12.Value = dt.Rows[0]["FM12"].ToString();
                DataTable cDT = CFacade.GetFac.ForumMFac.GetForumm(Convert.ToInt32(dt.Rows[0]["FM12"].ToString()));
                txt_FM02.Text = cDT.Rows[0]["FM02"].ToString();
                txt_FM02.Enabled = false;
                ddl_class.SelectedValue = cDT.Rows[0]["FC01"].ToString();
                ddl_class.Enabled = false;

            }
        }
    }

    private void bindClass()
    {
        ddl_class.Items.Clear();
        DataTable dt = CFacade.GetFac.ForumCFac.GetUserFORUMC();
        foreach (DataRow dr in dt.Rows)
        {
            ddl_class.Items.Add(new ListItem(dr["FC02"].ToString(), dr["FC01"].ToString()));
        }
    }
    protected void btn_upimg_Click(object sender, EventArgs e)
    {
        //if (FileUpload1.PostedFile.FileName == "")
        //{
        //    lit_up_msg.Text = "請選擇圖片!";
        //    return;
        //}
        //else
        //{
        //    string filename = FileUpload1.PostedFile.FileName;
        //    string fileEX = filename.Substring(filename.LastIndexOf(".") + 1).ToUpper();
        //    if (fileEX.Equals("JPG") || fileEX.Equals("JPEG") || fileEX.Equals("PNG") || fileEX.Equals("GIF"))
        //    {
        //        //可上傳
        //    }
        //    else
        //    {
        //        lit_up_msg.Text = "請選擇檔案!";
        //    }
        //}
    }
    protected void btn_use_Click(object sender, EventArgs e)
    {
        //if (hf_upimg.Value != "")
        //{
        //    txt_content.Text = Server.HtmlEncode(txt_content.Text + "<img src=\"http://localhost:63156/images/forum/" + hf_upimg.Value + "\" />");

        //    ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "setcontent", "setcontent();", true);
        //}
        //else
        //{
        //    ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('請先上傳圖片。');", true);
        //}
    }
    protected void btn_del_Click(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        string error = "";
        if (txt_FM02.Text.Trim().Equals(""))
        {
            error += "請輸入主題 \\n";
        }
        if (hf_content.Value.Equals(""))
        {
            error += "請輸入內容 \\n";
        }
        if (chk_check.Checked != true)
        {
            error += "請勾選同意討論區規則 \\n";
        }
        if (error.Length == 0)
        {
            bool rval = false;

            if (hf_FM01.Value != "")
            {
                FORUMM objFORUMM = new FORUMM();
                objFORUMM.FM01 = Convert.ToInt32(hf_FM01.Value);
                objFORUMM.FM07 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                objFORUMM.FM03 = hf_content.Value;
                rval = CFacade.GetFac.ForumMFac.UserEditForumm(objFORUMM);
            }
            else
            {
                FORUMM objFORUMM = new FORUMM();
                objFORUMM.FM02 = txt_FM02.Text.Trim();
                objFORUMM.FM03 = hf_content.Value;
                objFORUMM.FM04 = 1;
                objFORUMM.FM05 = 1;
                objFORUMM.FM06 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                objFORUMM.FM07 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:sss");
                objFORUMM.FM08 = PbClass.GetClientIP();
                objFORUMM.FM09 = "";
                objFORUMM.FM10 = "";
                objFORUMM.FM11 = "";
                if (hf_FM12.Value != "")
                    objFORUMM.FM12 = Convert.ToInt32(hf_FM12.Value);
                else
                    objFORUMM.FM12 = 0;
                objFORUMM.FC01 = Convert.ToInt32(ddl_class.SelectedValue.ToString());
                objFORUMM.A01 = Convert.ToInt32(Session["A01"].ToString());
                rval = CFacade.GetFac.ForumMFac.insertFORUMM(objFORUMM);
            }

            if (rval)
            {
                ScriptManager.RegisterClientScriptBlock(up_edit, typeof(UpdatePanel), "msg", "alert('送出成功');location.href='forum.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(up_edit, typeof(UpdatePanel), "msg", "alert('送出失敗');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(up_edit, typeof(UpdatePanel), "errormsg", "alert('" + error + "');", true);
        }
    }
}