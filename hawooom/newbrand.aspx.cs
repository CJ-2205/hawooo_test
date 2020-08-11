using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newbrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindProduct1(432);//
        bindProduct2(433);//
        bindProduct3(434);//
        bindProduct4(435);//
        bindProduct5(436);// 
        bindProduct6(437);// 
        bindProduct7(438);// 
        bindProduct8(439);// 

    }


    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_1.DataSource = dt;
        rp_product_list_1.DataBind();
    }
    private void bindProduct2(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_2.DataSource = dt;
        rp_product_list_2.DataBind();
    }

    private void bindProduct3(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_3.DataSource = dt;
        rp_product_list_3.DataBind();
    }

    private void bindProduct4(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_4.DataSource = dt;
        rp_product_list_4.DataBind();
    }
    private void bindProduct5(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_5.DataSource = dt;
        rp_product_list_5.DataBind();
    }
    private void bindProduct6(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_6.DataSource = dt;
        rp_product_list_6.DataBind();
    }
    private void bindProduct7(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_7.DataSource = dt;
        rp_product_list_7.DataBind();
    }
    private void bindProduct8(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_8.DataSource = dt;
        rp_product_list_8.DataBind();
    }

}