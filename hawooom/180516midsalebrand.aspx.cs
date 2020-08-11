using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _180516midsalebrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Arrange();
    }


    private DataTable bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    private DataTable bindProduct1(int[] eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();

        string sJoin = "CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 in (@SPD) AND SPD02=WP01) AS SPD";
        string sList = "WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 in (@SPD))";
        string sParam = "";
        foreach (int i in eid)
        {
            sParam += "@SPD" + i + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD" + i, SqlDbType.Int, i));
        }
        sParam = sParam.Substring(0, sParam.Length - 1);
        sJoin = sJoin.Replace("@SPD", sParam);
        sList = sList.Replace("@SPD", sParam);
        List<string> JoinStrs = new List<string>();
        JoinStrs.Add(sJoin);         //補上cross apply出eid
        List<string> qList = new List<string>();
        qList.Add(sList);
        List<string> OtherCells = new List<string>();
        OtherCells.Add("SPD01");          //需要額外select出的欄位
        OtherCells.Add("WP18");
        String Z = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", JoinStrs, true, OtherCells);

        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", JoinStrs, true, OtherCells);

        dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }

    private DataTable sortPID(DataTable dt, int eid)
    {
        DataTable table = new DataTable();
        if (dt.Select("SPD01='" + eid + "'").Length > 0)
        {
            table = dt.Select("SPD01='" + eid + "'").CopyToDataTable();
            DataView dv = new DataView(table);
            dv.Sort = "WP18 DESC";
            table = dv.ToTable();
        }
        return table;
    }



    void Arrange()
    {

        int[] eid = { 461, 462, 463 };
        DataTable dt = bindProduct1(eid);

        //Select出特定的商品
        DataTable dt1 = dt.Select("B01='184'").CopyToDataTable();      //妍霓絲 
        DataTable dt2 = dt.Select("B01='231'").CopyToDataTable();      //雅聞 
        DataTable dt3 = dt.Select("B01='12'").CopyToDataTable();      //BHK
        DataTable dt4 = dt.Select("B01='170'").CopyToDataTable();      //KGCHECK 
        DataTable dt5 = dt.Select("B01='186'").CopyToDataTable();      //BC 
        DataTable dt6 = dt.Select("B01='229'").CopyToDataTable();      //FreshO2 
        DataTable dt7 = dt.Select("B01='128'").CopyToDataTable();      //Qmomo 
        DataTable dt8 = dt.Select("B01='51'").CopyToDataTable();      //Beauty小舖 
        DataTable dt9 = dt.Select("B01='206'").CopyToDataTable();     //566 
        DataTable dt10 = dt.Select("B01='167'").CopyToDataTable();      //LoveWays
        DataTable dt11 = dt.Select("B01='212'").CopyToDataTable();      //台酒TTL 
        DataTable dt12 = dt.Select("B01='170'").CopyToDataTable();      // 聯華


        //KCCheck&聯華是同一個帳號，所以要用linq把商品分出來
        DataTable filterKGCheck = dt4.AsEnumerable().Skip(0).Take(4).CopyToDataTable();
        DataTable filterLianHua = dt12.AsEnumerable().Skip(4).Take(4).CopyToDataTable();


        //做分類&排序
        DataView dv12 = new DataView(filterLianHua);
        dv12.Sort = "wp18 desc";
        filterLianHua = dv12.ToTable();

        DataView dv11 = new DataView(dt11);
        dv11.Sort = "wp18 desc";
        dt11 = dv11.ToTable();

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

        DataView dv4 = new DataView(filterKGCheck);
        dv4.Sort = "wp18 desc";
        filterKGCheck = dv4.ToTable();

        DataView dv3 = new DataView(dt3);
        dv3.Sort = "wp18 desc";
        dt3 = dv3.ToTable();

        DataView dv2 = new DataView(dt2);
        dv2.Sort = "wp18 desc";
        dt2 = dv2.ToTable();

        DataView dv1 = new DataView(dt1);
        dv1.Sort = "wp18 desc";
        dt1 = dv1.ToTable();


        rp_product_list_1.DataSource = dt1;
        rp_product_list_2.DataSource = dt2;
        rp_product_list_3.DataSource = dt3;
        rp_product_list_4.DataSource = filterKGCheck;
        rp_product_list_5.DataSource = dt5;
        rp_product_list_6.DataSource = dt6;
        rp_product_list_7.DataSource = dt7;
        rp_product_list_8.DataSource = dt8;
        rp_product_list_9.DataSource = dt9;
        rp_product_list_10.DataSource = dt10;
        rp_product_list_11.DataSource = dt11;
        rp_product_list_12.DataSource = filterLianHua;


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
        rp_product_list_11.DataBind();
        rp_product_list_12.DataBind();
    }

}