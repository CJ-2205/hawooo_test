using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_static_CelebritySquad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = BindData(765);
            var take = dt.AsEnumerable().OrderByDescending(r => r.Field<int>("WP27")).CopyToDataTable();
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }

    //private void BindData()
    //{
    //    SqlCommand cmd = new SqlCommand();
    //    //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
    //    SearchProp searchProp = new SearchProp();
    //    searchProp.Cells.Add("SPD01");
    //    searchProp.Cells.Add("WP31");
    //    searchProp.Cells.Add("WP32");
    //    searchProp.Cells.Add("SPD05");
    //    //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
    //    searchProp.LgType = (this.Master as mobile).LgType;
    //    searchProp.page = 1;
    //    searchProp.pcount = 1000;
    //    searchProp.SelectIDS.Add(765);
    //    searchProp.OrderBy = "ORDER BY SPD05 DESC";
    //    cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
    //    DataTable dt = SqlDbmanager.queryBySql(cmd);
    //    Repeater rp = products.FindControl("rp_goods") as Repeater;
    //    rp.DataSource = dt;
    //    rp.DataBind();
    //}
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
        return dt;

    }

    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = BindData(765);
        DataTable take =new DataTable();
        if (ddlType.SelectedIndex == 0)
        {
            take = dt.AsEnumerable().OrderByDescending(r => r.Field<int>("WP27")).CopyToDataTable();
        }

        if (ddlType.SelectedIndex == 1)
        {
            take = dt.AsEnumerable().OrderBy(r => r.Field<decimal>("WPA06")).CopyToDataTable();
        }

        if (ddlType.SelectedIndex == 2)
        {
            take = dt.AsEnumerable().OrderByDescending(r => r.Field<decimal>("WPA06")).CopyToDataTable();
        }

        Repeater rp = products.FindControl("rp_goods") as Repeater;
        rp.DataSource = take;
        rp.DataBind();

    }
}