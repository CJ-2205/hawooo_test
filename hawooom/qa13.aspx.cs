using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_qa13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
        if (!IsPostBack)
        {
            string title = "";
            zhPanel.Visible = false;
            enPanel.Visible = false;
            LangType lg = (this.Master as mobile).LgType; //正式 LangType 
                                                                    //LangType lg = LangType.en; //測試
            if (lg.Equals(LangType.en))//英文版
            {
                title = "What are the payment methods available?";
                enPanel.Visible = true;
            }
            else//中文版
            {
                title = "如何付款？";
                zhPanel.Visible = true;
            }
                   ((Literal)member_class.FindControl("lit_class_txt")).Text = title;
        }

    }
}