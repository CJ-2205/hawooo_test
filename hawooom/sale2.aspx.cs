using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class sale2 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindProduct1(314);
       
        }
    }
    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList,null , "ORDER BY WP18 DESC ", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_1.DataSource = dt;
        rp_product_list_1.DataBind();
    }

}