using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_membercommend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                bindDT(Convert.ToInt32(Session["A01"].ToString()));
            }
        }
    }
    private void bindDT(int A01)
    {
        DataTable dt = CFacade.UserFac.GetMemberRecommedList(A01);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
        UpdatePanel1.Update();
    }
    protected void rp_product_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager scriptMan = ScriptManager.GetCurrent(this.Page);
        ImageButton _edit = e.Item.FindControl("img_edit") as ImageButton;
        if (_edit != null)
        {
            scriptMan.RegisterAsyncPostBackControl(_edit);
        }

        ImageButton _del = e.Item.FindControl("img_del") as ImageButton;
        if (_del != null)
        {
            scriptMan.RegisterAsyncPostBackControl(_del);
        }
    }
    protected void img_edit_Click(object sender, ImageClickEventArgs e)
    {
        //編輯
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        string _id = ((HiddenField)ri.FindControl("hf_AC01")).Value;
        DataTable dt = CFacade.GetFac.GetACFac.GetMemberAC(Convert.ToInt32(Session["A01"].ToString()), _id);
        if (dt.Rows.Count > 0)
        {
            hf_AC01.Value = dt.Rows[0]["AC01"].ToString();
            txt_AC04.Text = dt.Rows[0]["AC04"].ToString();
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "openPMODAL();", true);
        }

    }
    protected void img_del_Click(object sender, ImageClickEventArgs e)
    {
        //刪除
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        string _id = ((HiddenField)ri.FindControl("hf_AC01")).Value;

        AC objAC = new AC();
        objAC.AC01 = _id;
        objAC.AC05 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        bool rval = CFacade.GetFac.GetACFac.DelMemberAC(objAC);
        if (rval)
        {
            bindDT(Convert.ToInt32(Session["A01"].ToString()));
            ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('刪除成功');closePMODAL();", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('刪除失敗');", true);
        }
    }
    protected void btn_recommnet_Click(object sender, EventArgs e)
    {
        AC objAC = new AC();
        objAC.AC01 = hf_AC01.Value;
        objAC.AC05 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        objAC.AC04 = txt_AC04.Text.Trim();
        bool rval = CFacade.GetFac.GetACFac.EditMemberAC(objAC);
        if (rval)
        {
            bindDT(Convert.ToInt32(Session["A01"].ToString()));
            ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('編輯成功');closePMODAL();", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel2, typeof(UpdatePanel), "msg", "alert('編輯失敗');", true);
        }
    }
}