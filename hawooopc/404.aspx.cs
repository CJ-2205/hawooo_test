using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_404 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strSql = "SELECT TOP 6 WP01,WP08_1 FROM WP WHERE WP07=1 AND WP06=1 AND '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm") + "' BETWEEN WP09 AND WP10 ORDER BY NEWID()";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}