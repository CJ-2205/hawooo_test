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

public partial class user_carttrack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Form["oid"] != null)
            {
                Guid g;
                if (Guid.TryParse(Request.Form["oid"].ToString(), out g))
                {
                    string ORM01 = Request.Form["oid"].ToString();
                    StringBuilder sb = new StringBuilder();
                    sb.Append("SELECT ");
                    sb.Append("ORM02,");
                    sb.Append("ORM06,");
                    sb.Append("ORM08,");
                    sb.Append("ORM12,");
                    sb.Append("ORM17,");
                    sb.Append("ORD01,");
                    sb.Append("ORD02,");
                    sb.Append("ORD03,");
                    sb.Append("ORD04,");
                    sb.Append("ORD05,");
                    sb.Append("ORD06,");
                    sb.Append("(SELECT TOP 1 B02 FROM B INNER JOIN WP ON WP01=ORD01 WHERE WP.B01=B.B01) as B02,");
                    sb.Append("(SELECT TOP 1 C06 FROM C INNER JOIN WPCLS ON C01=WPC03 WHERE WPC02=ORD01 AND C03=0 AND C02=1 ) as C06 ");
                    sb.Append("FROM ORDERM ");
                    sb.Append("INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 ");
                    sb.Append("WHERE ORDERM.ORM01=@ORM01 ");
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = sb.ToString();
                    //string ORM01 = Request.QueryString["oid"].ToString();
                    cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM01", SqlDbType.UniqueIdentifier, ORM01));
                    DataTable dt = SqlDbmanager.queryBySql(cmd);


                    string payStr = "";
                    switch (dt.Rows[0]["ORM12"].ToString())
                    {
                        case "0":
                            {
                                payStr += "ATM CIMB";
                                break;
                            }
                        case "1":
                            {
                                payStr += "Molpay";
                                break;
                            }
                        case "2":
                            {
                                payStr += "COD";
                                break;
                            }
                        case "3":
                            {
                                payStr += "Public Bank";
                                break;
                            }
                    }

                    sb.Clear();
                    //ga checkout
                    sb.Append(GoogleBL.GoogleOrderTrack(dt));
                    //facebook
                    sb.Append(AdTrack.FacebookOrderTrack(dt));
                    //criteo
                    sb.Append(criteo.SaleTag(dt));
                    //sb.Append("location.href='" + url + "';"); //最後導向頁面
                    //Page.ClientScript.RegisterStartupScript(Page, typeof(Page), sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "track_step3", sb.ToString(), true);
                }
            }
        }
    }
}