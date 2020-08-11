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

public partial class mobile_static_200325supplement_mega : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            DataTable dt = BindData(798);
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();


            dt = BindData(797);
            var take2 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            dt = BindData(798);
            var take3 = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take3;
            rp3.DataBind();

            dt = BindData(797);
            Repeater rptBrand = brands.FindControl("rp_goods") as Repeater;
            rptBrand.DataSource = dt;
            rptBrand.DataBind();


        }
    }

    private DataTable BindData(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //DataTable bindDt = TransDt(dt);

        return dt;

    }
}