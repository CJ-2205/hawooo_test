using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class user_static_202003new_arrival : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/202003new_arrival.aspx" + Request.Url.Query);
            }
            BindNewProductsData();
        }
    }

    private void BindNewProductsData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType);
        Repeater rp = products1.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();

    }


    public DataTable GetGoods(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT TOP 24 ");
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG WITH(NOLOCK) ON WPT01 = WP30 ");
        sb.Append(@"INNER JOIN(
SELECT B01,WP01
FROM(
SELECT 
B01,
WP01,
ROW_NUMBER() Over (Partition By B01 Order By WP11 Desc) As R
FROM WP 
INNER JOIN ProductPriceView ON PID=WP01 
LEFT JOIN WPTAG ON WP30=WPT01 
Where WP05=1 and WP07=1 and GETDATE() between WP09 and WP10 and WP11 between DATEADD(day,-60,GETDATE()) and GETDATE()
) AS DT 
WHERE R=1) AS TA ON TA.WP01=WP.WP01 ");
        sb.Append("WHERE NOT EXISTS(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,370) AND WP.WP01=SPD02)");
        sb.Append("ORDER BY WP11 DESC");

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);

        return dt;
    }
}