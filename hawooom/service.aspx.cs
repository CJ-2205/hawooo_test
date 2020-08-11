using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_service : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void btn_send_Click(object sender, EventArgs e)
    //{
    //    string errStr = "";
    //    if (!txt_chk_code.Text.Trim().Equals(Session["validatecode"].ToString()))
    //    {
    //        errStr += "驗證碼錯誤 \\n";
    //    }
    //    if (txt_CU02.Text.Trim().Equals(""))
    //    {
    //        errStr += "請輸入聯絡姓名 \\n";
    //    }
    //    if (RegexClass.IsEmail(txt_CU03.Text.Trim()))
    //    {
    //        errStr += "請輸入Email \\n";
    //    }
    //    if (txt_CU05.Text.Trim().Equals(""))
    //    {
    //        errStr += "請輸入留言內容 \\n";
    //    }
    //    if (errStr != "")
    //    {
    //        ScriptManager.RegisterClientScriptBlock(up_send_info, typeof(UpdatePanel), "msg", "alert('" + errStr + "');", true);
    //    }
    //    else
    //    {
    //        CONTACTUS objOB = new CONTACTUS();
    //        objOB.CU01 = Guid.NewGuid().ToString();
    //        objOB.CU02 = txt_CU02.Text.Trim();
    //        objOB.CU03 = txt_CU03.Text.Trim();
    //        objOB.CU04 = txt_CU04.Text.Trim();
    //        objOB.CU05 = txt_CU05.Text.Trim();
    //        objOB.CU06 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
    //        objOB.CU07 = 0;
    //        objOB.CU08 = "";
    //        objOB.CU09 = "";
    //        objOB.CU10 = "";
    //        //bool rval;
    //        bool rval = CFacade.GetFac.GetContentUsFac.insertCONTACTUS(objOB);
    //        if (rval)
    //        {
    //            MailCls mc = new MailCls();
    //            Thread t = new Thread(mc.ContactUS);
    //            t.Start(objOB);
    //            ScriptManager.RegisterClientScriptBlock(up_send_info, typeof(UpdatePanel), "msg", "alert('感謝您的留言，我們將盡快為您處理。');location.href='service.aspx';", true);
    //        }
    //        else
    //        {
    //            ScriptManager.RegisterClientScriptBlock(up_send_info, typeof(UpdatePanel), "msg", "alert('送出錯誤，請重新送出。');", true);
    //        }
    //    }
    //}
}