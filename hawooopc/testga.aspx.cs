using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_testga : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //S180723174416100
        //S180723174522071

        //S180723103103616(5DBBBA99-34E8-4DAF-83A6-E3A3208D09B9)
        //S180723113932037(120F7A19-454C-4388-A7C3-7CD60926F438)
        //S180723121647207(08A2D043-0EA3-4188-B1FF-6A806AFABA47)
        string track = AdTrack.PurchaseOrder("5440E52D-C263-4EFE-AC9C-A9CA2CC78445");
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "Purchase", track, true);

        //S180723114140226(A07C7BE3-3566-4AC3-877F-00376403636B)
        //S180723115309255(E4BDA956-3DC4-4B9D-A08D-F8788735724C)
        //purchaseOrder("E4BDA956-3DC4-4B9D-A08D-F8788735724C");
        //Response.Write(msg.ToString());
    }
    private void purchaseOrder(string ORM01)
    {
        string strSql = "SELECT ORM02,ORM06,ORM08,ORM09,ORD01,ORD02,ORD03,ORD04,ORD05,ORD06,(SELECT TOP 1 C06 FROM C INNER JOIN WPCLS ON C01=WPC03 WHERE WPC02=ORD01 AND C03=0 ) as C06  FROM ORDERM INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORDERM.ORM01=@ORM01";
        //string strSql = "SELECT ORD01,ORM02,ORM08 FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORDERM.ORM01=@ORM01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM01", SqlDbType.UniqueIdentifier, ORM01));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        string trackStr = "";
        trackStr += AdTrack.GoogleOrderTrack(dt);
        //trackStr += AdTrack.FacebookOrderTrack(dt);
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "Purchase", trackStr, true);
    }
}