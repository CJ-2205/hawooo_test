using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_webevent : System.Web.UI.Page
{
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
        using (SqlDataReader dr = SqlDbmanager.excuteReturnDataReader(cmd))
        {
            while (dr.Read())
            {
                lit_event_msg.Text = dr["WE02"].ToString();
            }
            dr.Close();
        }
    }
}