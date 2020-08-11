using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class mobile_userview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetUserView(HttpContext.Current.Request.AnonymousID.ToString());
        }
    }
    public void GetUserView(string _id)
    {
        LangType lg = (this.Master as mobile).LgType;

        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT WP01,Price as WPA06,OPrice as WPA10,WP08_1,WP27,");
        switch (lg)
        {
            case LangType.en:
                {
                    sb.Append("(CASE WHEN ISNULL(WP23,'')='' THEN WP02 ELSE WP23 END) as WP02,");
                    sb.Append("(SELECT (CASE WHEN ISNULL(WPT07,'')='' THEN WPT02 ELSE WPT07 END) FROM WPTAG WHERE WPT01=WP30) as WP30 ");
                    break;
                }
            case LangType.zh:
                {
                    sb.Append("WP02,");
                    sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01=WP30) as WP30 ");
                    break;
                }
        }
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("INNER JOIN (SELECT DISTINCT TOP 20 UV03,MAX(UV05) as UV05 FROM UserView WHERE UV02=@UV02 GROUP BY UV03 ORDER BY UV05 DESC) as UV ON UV03=WP01 ");
        sb.Append("WHERE WP07=1 AND GETDATE() BETWEEN WP09 AND WP10 ");
        sb.Append("ORDER BY UV05 DESC ");
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("UV02", SqlDbType.UniqueIdentifier, _id));
        cmd.CommandText = sb.ToString();
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        p_list.DataSource = dt;
        p_list.DataBind();
    }
}