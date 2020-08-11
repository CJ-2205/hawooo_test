using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
public partial class user_qa : System.Web.UI.Page
{
    //public enum LangType { zh, en }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            zhPanel.Visible = false;
            enPanel.Visible = false;
            LangType lg = (this.Master as user_user).LgType; //正式 LangType 
                                                             //LangType lg = LangType.en; //測試
            if (lg.Equals(LangType.en))//英文版
            {
                enPanel.Visible = true;
            }
            else//中文版
            {
                zhPanel.Visible = true;
            }
        }
    }
}