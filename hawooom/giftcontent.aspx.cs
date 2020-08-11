using System;
using hawooo;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mobile_giftcontent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string GE01 = "";
            if (Request.QueryString["gid"] != null)
            {
                Guid g;
                if (Guid.TryParse(Request.QueryString["gid"], out g))
                {
                    BindDT(Request.QueryString["gid"].ToString());
                }
            }
        }
    }
    private void BindDT(string gid)
    {
        string strSql = "SELECT " +
            "GE01," +
            "GE05," +
            "GE10," +
            "GE11," +
            "GE13," +
            "GP10 " +
            "FROM GiftEvent " +
            "LEFT JOIN GiftProduct ON GP01=GE09 " +
            "WHERE GE01=@GE01 ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("GE01", System.Data.SqlDbType.UniqueIdentifier, gid));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            lit_event_name.Text = dt.Rows[0]["GE10"].ToString();
            lit_event_content.Text = dt.Rows[0]["GE11"].ToString() + dt.Rows[0]["GE13"].ToString();
            lit_event_rule.Text = dt.Rows[0]["GE05"].ToString().Equals("1") ? "累計贈送" : "固定贈送";
            lit_event_img.Text = "<img src='../images/giftimgs/" + dt.Rows[0]["GP10"].ToString() + "' style='width:100px'></img>";
        }

    }
}