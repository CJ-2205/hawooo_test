using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_posttrack : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        purchaseOrderTest();
        //if (Request.QueryString["oid"] != null)
        //{
        //    if (FieldCheck.isGuid(Request.QueryString["oid"].ToString()))
        //    {
        //        //purchaseOrderTest();
        //        purchaseOrder(Request.QueryString["oid"].ToLower());
        //    }

        //}
    }
    private void purchaseOrder(string ORM01)
    {
        string strSql = "SELECT ORM02,ORM06,ORM08,ORM09,ORD01,ORD02,ORD03,ORD04,ORD05,ORD06," +
            "(SELECT TOP 1 C06 FROM C INNER JOIN WPCLS ON C01=WPC03 WHERE WPC02=ORD01 AND C03=0 ) as C06," +
            "(SELECT TOP 1 B01 FROM B WHERE B01=ORDERD.ORD01) as B01 " +
            "FROM ORDERM INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORDERM.ORM01=@ORM01";
        //string strSql = "SELECT ORD01,ORM02,ORM08 FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORDERM.ORM01=@ORM01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM01", SqlDbType.UniqueIdentifier, ORM01));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        string trackStr = "";
        trackStr += AdTrack.GoogleOrderTrack(dt);
        trackStr += AdTrack.FacebookOrderTrack(dt);
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "Purchase", trackStr, true);
    }
    private void purchaseOrderTest()
    {
        List<string> cList = new List<string>() { "ORM02", "ORM06", "ORM08", "ORM09", "ORD01", "ORD02", "ORD03", "ORD04", "ORD05", "ORD06", "C06", "B01" };
        DataTable dt = new DataTable();
        foreach (string s in cList)
        {
            dt.Columns.Add(s);
        }
        DataRow nDR = dt.NewRow();
        nDR["ORM02"] = "T001";
        nDR["ORM06"] = 0;
        nDR["ORM08"] = 10;
        nDR["ORM09"] = "";
        nDR["ORD01"] = 4686;
        nDR["ORD02"] = "I001";
        nDR["ORD03"] = "TITEM01";
        nDR["ORD04"] = "TEST";
        nDR["ORD05"] = 10;
        nDR["ORD06"] = 1;
        nDR["C06"] = 0;
        nDR["B01"] = 0;
        dt.Rows.Add(nDR);
        string trackStr = "";
        trackStr += AdTrack.GoogleOrderTrack(dt);
        trackStr += AdTrack.FacebookOrderTrack(dt);
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "Purchase", trackStr, true);
    }
}