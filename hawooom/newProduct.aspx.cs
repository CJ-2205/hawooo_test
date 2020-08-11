using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class mobile_newProduct : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindProduct();
        }
    }
    private void bindProduct()
    {
        //DataTable dt = new DataTable();
        //SqlCommand cmd = new SqlCommand();
        //List<string> qList = new List<string>();
        //qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        //cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP27 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        //dt = SqlDbmanager.queryBySql(cmd);
        //rp_product_list.DataSource = dt;
        //rp_product_list.DataBind();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(1,null,40,"ORDER BY WP11 DESC",null);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }

}