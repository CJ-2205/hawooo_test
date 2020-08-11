using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_mailtest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //MailCls mc = new MailCls();
            //mc.contactMail("derrick@hawooo.com", "HaWooo", "test", "test123", "derrick@cogood.tw", "HaWooo Service");
        }
    }
}