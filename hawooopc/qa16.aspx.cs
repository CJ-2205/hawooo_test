using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_qa16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //((Literal)qa_class.FindControl("lit_class_txt")).Text = "如何加入會員？";
            string title = "";
            zhPanel.Visible = false;
            enPanel.Visible = false;
            LangType lg = (this.Master as user_user).LgType; //正式 LangType 
                                                                       //LangType lg = LangType.en; //測試
            if (lg.Equals(LangType.en))//英文版
            {
                title = "What is Ha Coin?";
                enPanel.Visible = true;
            }
            else//中文版
            {
                title = "什麼是Ha幣？";
                zhPanel.Visible = true;
            }
                     ((Literal)qa_title.FindControl("lit_title_txt")).Text = title;


        }
    }
}