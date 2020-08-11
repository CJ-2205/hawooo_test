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

public partial class mobile_static_0302womens_day_hot_deal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetTime();

        DataTable dt = new DataTable();
        DateTime st = DateTime.Now;
        DateTime et = Convert.ToDateTime("2020-03-08 00:00:00");

        if (st < et)
        {
            dt = BindData(798);
        }
        else
        {
            img.Src = ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bbn_02m.png";
            pd.Attributes.Add("style", "background:#286F6A");
            dt = BindData(790);
        }
        var take = dt.AsEnumerable().Take(8).CopyToDataTable();
        Repeater rp = products.FindControl("rp_goods") as Repeater;
        rp.DataSource = take;
        rp.DataBind();

    }

    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime("2020-03-08 00:00:00");
        DateTime etime2 = Convert.ToDateTime("2020-03-17 00:00:00");
        TimeSpan ts;
        if (stime < etime)
        {
            ts = etime - stime;

        }
        else
        {
            img.Src = ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bbn_02m.png";
            ts = etime2 - stime;
        }
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
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
        return dt;

    }
}