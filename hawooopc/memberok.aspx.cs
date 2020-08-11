using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;

public partial class user_memberok : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //判斷是否有贈送折扣卷號
            if (Session["A01"] != null)
            {
                string strSql = "SELECT TOP 1 GA01,GA02 FROM GA INNER JOIN G ON GA.G01=G.G01 WHERE GA08=@GA08 AND GA03=1 AND @G05 < G05";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = strSql;
                cmd.Parameters.Add(SafeSQL.CreateInputParam("GA08", SqlDbType.BigInt, Convert.ToInt32(Session["A01"].ToString())));
                cmd.Parameters.Add(SafeSQL.CreateInputParam("G05", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd")));
                DataTable dt = SqlDbmanager.queryBySql(cmd);
                if (dt.Rows.Count > 0)
                {
                    lit_GA01.Text = dt.Rows[0]["GA01"].ToString();
                    lit_GA02.Text = dt.Rows[0]["GA02"].ToString();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "close panel", "disapanel()", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "close panel", "disapanel()", true);
            }


        }
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        //lit_count.Text = ((Literal)Master.FindControl("lit_cart_count")).Text;
    }
}