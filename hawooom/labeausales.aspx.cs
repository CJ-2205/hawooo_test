using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_labeausales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataTable dt = getDt(498);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();     
        }

    }

    //private int did = 1;
    private DataTable getDt(int i)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("(COUNT(*) OVER()) as PCOUNT,");
        sb.Append("SPD01,");
        sb.Append("WP01,");
        sb.Append("WP02,");
        sb.Append("WP27,");
        sb.Append("WP08_1,");
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
        sb.Append("Price as WPA06,");
        sb.Append("OPrice as WPA10 ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 IN (498) AND SPD02=WP01 ) AS DT ");
        sb.Append("WHERE WP05=1 ");
        //sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
        sb.Append("AND WP07=1 ");
        sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01="+i.ToString()+" )");
        //sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,338,340) )");
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        return dt;
    }
}