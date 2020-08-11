using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _180314 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindProduct1(405);//
    }


    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        List<string> lCell = new List<string>();

        lCell.Add("WP18");
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true, lCell);
        dt = SqlDbmanager.queryBySql(cmd);

        DataTable dt1 = dt.Select("WP18='2' OR WP18='1'").CopyToDataTable();
        DataTable dt2 = dt.Select("WP18='4' OR WP18='3'").CopyToDataTable();
        DataTable dt3 = dt.Select("WP18='6' OR WP18='5'").CopyToDataTable();
        DataTable dt4 = dt.Select("WP18='8' OR WP18='7'").CopyToDataTable();
        DataTable dt5 = dt.Select("WP18='10' OR WP18='9'").CopyToDataTable();
        DataTable dt6 = dt.Select("WP18='12' OR WP18='11'").CopyToDataTable();
        DataTable dt7 = dt.Select("WP18='14' OR WP18='13'").CopyToDataTable();
        DataTable dt8 = dt.Select("WP18='16' OR WP18='15'").CopyToDataTable();
        DataTable dt9 = dt.Select("WP18='18' OR WP18='17'").CopyToDataTable();
        DataTable dt10 = dt.Select("WP18='20' OR WP18='19'").CopyToDataTable();

        DataView dv10 = new DataView(dt10);
        dv10.Sort = "wp18 desc";
        dt10 = dv10.ToTable();

        DataView dv9 = new DataView(dt9);
        dv9.Sort = "wp18 desc";
        dt9 = dv9.ToTable();

        DataView dv8 = new DataView(dt8);
        dv8.Sort = "wp18 desc";
        dt8 = dv8.ToTable();

        DataView dv7 = new DataView(dt7);
        dv7.Sort = "wp18 desc";
        dt7 = dv7.ToTable();

        DataView dv6 = new DataView(dt6);
        dv6.Sort = "wp18 desc";
        dt6 = dv6.ToTable();


        DataView dv5 = new DataView(dt5);
        dv5.Sort = "wp18 desc";
        dt5 = dv5.ToTable();

        DataView dv4 = new DataView(dt4);
        dv4.Sort = "wp18 desc";
        dt4 = dv4.ToTable();


        DataView dv3 = new DataView(dt3);
        dv3.Sort = "wp18 desc";
        dt3 = dv3.ToTable();


        DataView dv2 = new DataView(dt2);
        dv2.Sort = "wp18 desc";
        dt2 = dv2.ToTable();

        DataView dv1 = new DataView(dt1);
        dv1.Sort = "wp18 desc";
        dt1 = dv1.ToTable();

        ////dt1.DefaultView.Sort = "WP18";
        ////dt2.DefaultView.Sort = "WP18";
        ////dt3.DefaultView.Sort = "WP18 ASC";
        ////dt4.DefaultView.Sort = "WP18 ASC";
        ////dt5.DefaultView.Sort = "WP18 ASC";
        ////dt6.DefaultView.Sort = "WP18 ASC";
        ////dt7.DefaultView.Sort = "WP18 ASC";
        ////dt8.DefaultView.Sort = "WP18 ASC";
        ////dt9.DefaultView.Sort = "WP18 ASC";
        ////dt10.DefaultView.Sort = "WP18 ASC";

        //dt1 = dt1.DefaultView.ToTable();




        rp_product_list_1.DataSource = dt10;
        rp_product_list_2.DataSource = dt9;
        rp_product_list_3.DataSource = dt8;
        rp_product_list_4.DataSource = dt7;
        rp_product_list_5.DataSource = dt6;
        rp_product_list_6.DataSource = dt5;
        rp_product_list_7.DataSource = dt4;
        rp_product_list_8.DataSource = dt3;
        rp_product_list_9.DataSource = dt2;
        rp_product_list_10.DataSource = dt1;


        rp_product_list_1.DataBind();
        rp_product_list_2.DataBind();
        rp_product_list_3.DataBind();
        rp_product_list_4.DataBind();
        rp_product_list_5.DataBind();
        rp_product_list_6.DataBind();
        rp_product_list_7.DataBind();
        rp_product_list_8.DataBind();
        rp_product_list_9.DataBind();
        rp_product_list_10.DataBind();
    }

}