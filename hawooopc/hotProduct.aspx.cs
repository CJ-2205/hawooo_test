using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_hotProduct : System.Web.UI.Page
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
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add(" WP01 IN (SELECT TOP 100 ORD01 FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORM19=1 AND ORM24 >= 0 AND ORM03 BETWEEN '" + DateTime.Now.AddDays(-15).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "' GROUP BY ORD01 ORDER BY SUM(ORD06) DESC ) ");
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(1, qList, 40, null, null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }

}