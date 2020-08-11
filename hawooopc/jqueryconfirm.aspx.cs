using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_jqueryconfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "confirm", "confirm2url('是否前往手機版本?','http://www.google.com.tw');", true);
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "alert", "alert('錯誤訊息');", true);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
}