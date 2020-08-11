using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_2019cny : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        bindDT();
    }



    private void bindDT()
    {
        SqlCommand cmd = new SqlCommand();
        SearchProp prop = new SearchProp();
        prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
        prop.WhereTxts.Add("SPD01=@SPD01");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, 484));
        prop.page = 1;
        prop.pcount = 1000;
        prop.LgType = (this.Master as mobile).LgType;
        prop.OrderBy = "ORDER BY SPD05 DESC,WP01 DESC";
        //sb.Append(" ORDER BY WP18 DESC ");


        cmd.CommandText = ProductBL.GetProductSqlTxt(prop);
        DataTable dt = SqlDbmanager.queryBySql(cmd);


        rp1.DataSource = dt;
        rp1.DataBind();
        rp2.DataSource = dt;
        rp2.DataBind();
        rp3.DataSource = dt;
        rp3.DataBind();

   

    }

}