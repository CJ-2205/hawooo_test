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

public partial class mobile_static_2020CNY_hot_deals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetTime();
            BindData();
        }
    }
    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime("2020-01-21 12:00:00");

        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }

    private void BindData()
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
        searchProp.SelectIDS.Add(855);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        Repeater rp = products.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();
    }

    
}