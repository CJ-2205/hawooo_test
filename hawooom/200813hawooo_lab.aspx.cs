using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_static_200813hawooo_lab : System.Web.UI.Page
{
    private int HwLabEventId = 798; // 777
    public string cacheVersion = "1";


    protected void Page_PreLoad(object sender, EventArgs e)
    {
        DateTime _time = new DateTime(2020, 08, 15, 19, 59, 59);

        if (DateTime.Now >= _time)
        {
            //PrintDebugMessage("debug","test");
            Response.Redirect("https://www.hawooo.com/mobile/index.aspx");

        }
        //PrintDebugMessage("debug2", "test2");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = GetDataDt(this.HwLabEventId);
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = dt;
            rp.DataBind();
            SetTime();

        }
    }
    //debug start
    //public void PrintDebugMessage(string key, string msg)
    //{
    //    ScriptManager.RegisterStartupScript(Page, typeof(Page), key, "printDebugMessage(`" + msg + "`);", true);
    //}
    //debug end
    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime("2020-08-15 19:59:59");

        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }


    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
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