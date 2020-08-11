using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Configuration;

public partial class mobile_2019womenbuy : System.Web.UI.Page
{
    private int did = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());
            }

            int id = 666;
            switch (did)
            {
                case 2:
                    {
                        id = 667;
                        break;
                    }
                case 3:
                    {
                        id = 668;
                        break;
                    }
                case 4:
                    {
                        id = 669;
                        break;
                    }

            }


            bindDT(id);



            ScriptManager.RegisterStartupScript(Page, typeof(Page), "tabsIndex", "tabActive('tab" + did + "');", true);
        }
    }

    private void bindDT(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");

        string strIns = "INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON WP01=DT.SPD02 ";

        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", System.Data.SqlDbType.Int, id));

        searchProp.JoinTxts.Add(strIns);


        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.OrderBy = "ORDER BY SPD05 DESC";

        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        rp1.DataSource = dt;
        rp1.DataBind();

    }

  
}