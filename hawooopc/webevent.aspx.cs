using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_webevent : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
        bool ismobile = PbClass.isMobile(u);
        if (Session["desktop"] == null)
        {
            if (ismobile)
            {
                Response.Redirect("../mobile/webevent.aspx" + Request.Url.Query);
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href=''", true);
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["weid"] != null)
            {
                if (FieldCheck.isGuid(Request.QueryString["weid"].ToString()))
                {
                    BindData(Request.QueryString["weid"].ToString());
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    private void BindData(string weid)
    {
        DataTable dt = CFacade.UserFac.GetShopList2(0, 0, "WP01 DESC", 0, 1000, 0, "", "", "", weid);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
        GetEventName(weid);

    }
    private void GetEventName(string weid)
    {
        lit_event_msg.Text = "";
        string strSql = "SELECT TOP 1 WE02 FROM WebEvent WHERE WE01=@WE01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("WE01", SqlDbType.UniqueIdentifier, weid));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            lit_event_msg.Text = dt.Rows[0]["WE02"].ToString();
        }
       
    }
}