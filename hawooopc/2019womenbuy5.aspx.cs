using hawooo;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_2019womenbuy5 : System.Web.UI.Page
{
    private int did = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (Session["desktop"] == null)
            {
                if (ismobile)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/2019womenbuy3.aspx'", true);
                }
            }
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());
            }
            List<int> listId = new List<int>();


            int id = 734;
            switch (did)
            {
                case 2:
                    {
                        id = 735;
                        break;
                    }
                case 3:
                    {
                        id = 736;
                        break;
                    }
                case 4:
                    {
                        id = 737;
                        break;
                    }

            }


            bindDT(id);



            ScriptManager.RegisterStartupScript(Page, typeof(Page), "tabsIndex", "tabActive('tab" + did + "');", true);

            //if (did.Equals(1))
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "top30();", true);
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SetSelClass(" + did + ");", true);
        }
    }


    private void bindDT(List<int> ids)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");

        string strIns = "INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 FROM SPRODUCTSD WHERE SPD01 IN (";
        int i = 0;
        foreach (int id in ids)
        {
            strIns += "@SP" + i.ToString() + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SP" + i.ToString(), System.Data.SqlDbType.Int, id));
            i++;
        }
        strIns = strIns.TrimEnd(',');
        strIns += ") ) AS DT ON WP01=DT.SPD02 ";
        searchProp.JoinTxts.Add(strIns);


        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.OrderBy = "ORDER BY SPD05 DESC";

        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        //if (dt.Select("SPD01='641'").Length > 0)
        //{
        //    rp1.DataSource = dt.Select("SPD01='641'").CopyToDataTable();
        //    rp1.DataBind();
        //}
        //if (dt.Select("SPD01='642'").Length > 0)
        //{
        //    rp2.DataSource = dt.Select("SPD01='642'").CopyToDataTable();
        //    rp2.DataBind();
        //}
        //if (dt.Select("SPD01='643'").Length > 0)
        //{
        //    rp3.DataSource = dt.Select("SPD01='643'").CopyToDataTable();
        //    rp3.DataBind();
        //}
        //if (dt.Select("SPD01='644'").Length > 0)
        //{
        //    rp4.DataSource = dt.Select("SPD01='644'").CopyToDataTable();
        //    rp4.DataBind();
        //}

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
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.OrderBy = "ORDER BY SPD05 DESC";

        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        rp1.DataSource = dt;
        rp1.DataBind();

    }

  
}

