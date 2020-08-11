using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_event2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        string errStr = "";
        if (txt_HG02.Text.Trim().Equals(""))
        {
            errStr += "請輸入姓名 \\n";
        }
        if (txt_HG03.Text.Trim().Equals(""))
        {
            errStr += "請輸入電話 \\n";
        }
        if (txt_HG04.Text.Trim().Equals(""))
        {
            errStr += "請輸入Email \\n";
        }
        if (txt_HG05.Text.Trim().Equals(""))
        {
            errStr += "請輸入收件地址 \\n";
        }
        if (txt_HG06.Text.Trim().Equals(""))
        {
            errStr += "請輸入FB LINK \\n";
        }
        string _HG09 = "";
        foreach (ListItem li in chk_HG09.Items)
        {
            if (li.Selected.Equals(true))
            {
                _HG09 += li.Value + ",";
            }
        }
        _HG09 = _HG09.Trim(',');
        if (_HG09.Equals(""))
        {
            errStr += "請選擇希望商品 \\n";
        }
        if (errStr.Equals(""))
        {
            HWGIRL hgirl = new HWGIRL();
            hgirl.HG01 = Guid.NewGuid().ToString();
            hgirl.HG02 = txt_HG02.Text.Trim();
            hgirl.HG03 = txt_HG03.Text.Trim();
            hgirl.HG04 = txt_HG04.Text.Trim();
            hgirl.HG05 = txt_HG05.Text.Trim();
            hgirl.HG06 = txt_HG06.Text.Trim();
            hgirl.HG07 = txt_HG07.Text.Trim();
            hgirl.HG08 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            hgirl.HG09 = _HG09;
            hgirl.HG10 = "";
            hgirl.HG11 = 0;
            HWGIRLFactory hgFAC = new HWGIRLFactory();
            bool isOK = hgFAC.insertHWGIRL(hgirl);
            if (isOK)
            {
                ScriptManager.RegisterClientScriptBlock(up_send, typeof(UpdatePanel), "msg", "alert('送出成功');location.href='event2.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(up_send, typeof(UpdatePanel), "msg", "alert('送出失敗');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(up_send, typeof(UpdatePanel), "errmsg", "alert('" + errStr + "');", true);
            
        }

    }
}