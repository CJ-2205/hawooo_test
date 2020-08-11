using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_recommand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindDT();
        }
    }
    private void bindDT(int p = 1, int c = 10)
    {
        DataTable dt = CFacade.UserFac.GetRecommedList(p, c);
        rp_recommend_list.DataSource = dt;
        rp_recommend_list.DataBind();
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        //if (Session["A01"] == null)
        //{
        //    ScriptManager.RegisterClientScriptBlock(UP_SEND, typeof(UpdatePanel), "login", "doLogin();", true);
        //}
        //else
        //{
        //    string errMsg = "";
        //    if (txt_I03.Text.Trim().Equals(""))
        //    {
        //        errMsg += "請輸入想買商品網址 \\n";
        //    }
        //    if (errMsg.Equals(""))
        //    {
        //        I objI = new I();
        //        objI.I01 = Guid.NewGuid().ToString();
        //        objI.I02 = Convert.ToInt32(Session["A01"].ToString());
        //        objI.I03 = txt_I03.Text.Trim();
        //        objI.I04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        //        objI.I05 = 0;
        //        objI.I06 = "";
        //        bool rval = CFacade.GetFac.getIFac.insertI(objI);
        //        if (rval)
        //        {
        //            txt_I03.Text = "";
        //            ScriptManager.RegisterClientScriptBlock(UP_SEND, typeof(UpdatePanel), "errmsg", "alert('送出成功');", true);
        //        }
        //        else
        //        {
        //            ScriptManager.RegisterClientScriptBlock(UP_SEND, typeof(UpdatePanel), "errmsg", "alert('送出失敗');", true);
        //        }

        //    }
        //    else
        //    {
        //        ScriptManager.RegisterClientScriptBlock(UP_SEND, typeof(UpdatePanel), "errmsg", "alert('請輸入商品網址。');", true);
        //    }
        //}
    }
}