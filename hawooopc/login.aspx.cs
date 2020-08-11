using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_login : System.Web.UI.Page
{
    public LangType LgType = LangType.zh;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Cookie.Get("LG").Equals(""))
        //{
        //    LgType = Cookie.Get("LG").ToString();
        //}
        if (!IsPostBack)
        {
            if (Request.QueryString["rurl"] != null)
            {
                (Master.FindControl("rurl") as HiddenField).Value = Request.QueryString["rurl"].ToString();
            }
        }
    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {

        string error = "";
        if (txt_account.Text.Trim().Equals(""))
        {
            error += "Please enter your Account <br/>";
        }
        if (txt_password.Text.Trim().Equals(""))
        {
            error += "Please enter your password <br/>";
        }
        if (error == "")
        {
            string A02 = txt_account.Text.Trim();
            string A03 = PbClass.desEncryptBase64(txt_password.Text.Trim());
            var userFac = new AFactory();
            userFac.UserLogin(A02, A03, LgType);
            if (userFac.LoginMsg.Equals("OK"))
            {
                //登入成功
              
                string rurl = "member_card.aspx";
                if (Request.QueryString["rurl"] != null)
                {
                    rurl = Request.QueryString["rurl"].ToString();
                }
                //黑卡體驗
                //DataTable TCDT = GetTrialBlack(userFac.UserId);
                //if (TCDT.Rows.Count > 0)
                //    Session["MCard"] = TCDT.Rows[0]["Card"].ToString();
                //else
                Session["MCard"] = userFac.MCardType;
                ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "loginmsg", "location.href='" + rurl + "';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "loginmsg", "alert('" + userFac.LoginMsg + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "error", "alert('" + error + "');", true);
        }
    }


    //private DataTable GetTrialBlack(int userId)
    //{
    //    string strSql = @"SELECT Card,STime,DTime FROM MemberTrialCard WHERE GETDATE() BETWEEN STime AND DTime  AND Status=1 AND MemberId=@MID ";
    //    //string strSql = @"SELECT Card,Stime,DTime FROM MemberTrialCard WHERE Status=1 AND MemberId=@MID ";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = strSql;
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("MID", SqlDbType.Int, userId));
    //    return SqlDbmanager.queryBySql(cmd);
    //}


}