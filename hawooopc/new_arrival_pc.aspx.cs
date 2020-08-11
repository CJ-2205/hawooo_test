using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_static_week_offer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGoods();
            SetTime();
        }
    }
    private DataTable _dt;
    private DataTable _dt1;
    private DataTable _dt2;
    private void BindGoods()
    {
        GetData();
        TransDt();

        rp_top_products.DataSource = _dt1;
        rp_top_products.DataBind();

        rp_products2.DataSource = _dt2;
        rp_products2.DataBind();
    }
    private void SetTime()
    {
        string sqlTxt = "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01=@SPM01 AND GETDATE() BETWEEN SPM04 AND SPM05";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM01", SqlDbType.Int, _eid));
        cmd.CommandText = sqlTxt;
        DataTable sDt = SqlDbmanager.queryBySql(cmd);
        if (sDt.Rows.Count > 0)
        {
            DateTime stime = DateTime.Now;
            DateTime etime = Convert.ToDateTime(sDt.Rows[0]["SPM05"].ToString());

            TimeSpan ts = etime - stime;
            var spend = ts.TotalSeconds;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "alert2url('Oops, the sale is over! No worries, check out more hot deals on our website!','index.aspx');", true);
        }
    }
    private int _eid = 0;
    private void GetData()
    {
        _dt = new DataTable();
        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");//選品主表編號
        prop.Cells.Add("SPD07");//額外增加數量(銷售假數量)
        prop.Cells.Add("SPD06");//限量
        prop.Cells.Add("SPD05");//權重
        prop.Cells.Add("SPD08"); //群組ID
        prop.Cells.Add("WP24");//手機版說明


        DateTime ntime = DateTime.Now;

        if (ntime.DayOfWeek.Equals(DayOfWeek.Sunday))
        {
            ntime = ntime.AddDays(-1);
        }
        int dayWeek = GetWeekNumberOfMonth(ntime);
        if (ntime.DayOfWeek.Equals(DayOfWeek.Monday))
        {
            //if (ntime.Hour < 12)
            //{
            dayWeek = dayWeek - 1;
            //}
        }

        if (dayWeek % 2 != 0) //單週
        {
            _eid = 362;
            prop.SelectIDS.Add(362);
        }
        else //雙週
        {
            _eid = 370;
            prop.SelectIDS.Add(370);
        }
        //prop.TagType = SearchProp.EmTagType.IMG;
        prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
        prop.LgType = ((mobile)this.Master).LgType;



        string sqlTxt = ProductBL.GetSelectProduct(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;

        _dt = SqlDbmanager.queryBySql(cmd);
    }
    private void TransDt()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01");//銷售商品系統編號
        dt.Columns.Add("WP24");//手機版說明
        dt.Columns.Add("WP02");//商品名稱
        dt.Columns.Add("B01");//FK B01 - 電商編號
        dt.Columns.Add("WP23");//英文名稱
        dt.Columns.Add("WP08_1");//商品主圖1
        dt.Columns.Add("WPA06");//銷售價格
        dt.Columns.Add("WPA10");//市場價格
        dt.Columns.Add("SPD07");//額外增加數量(銷售假數量)
        dt.Columns.Add("PERSENT");//折扣%數
        dt.Columns.Add("WP30");//TAG ID
        dt.Columns.Add("WPT07");//
        _dt1 = new DataTable();
        _dt2 = new DataTable();
        _dt1 = dt.Clone();
        _dt2 = dt.Clone();
        foreach (DataRow dr in _dt.Rows)
        {
            DataRow ndr = null;
            if (dr["SPD08"].ToString().Equals("A"))
            {
                ndr = _dt1.NewRow();
            }
            else
            {
                ndr = _dt2.NewRow();
            }
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP24"] = dr["WP24"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            //ndr["SPD07"] = Convert.ToInt32(dr["SPD07"].ToString()) + Convert.ToInt32(dr["BCOUNT"].ToString());
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";

            if (dr["SPD08"].ToString().Equals("A"))//如果群組ID=A
                _dt1.Rows.Add(ndr);
            else
                _dt2.Rows.Add(ndr);
        }
    }



    public int GetWeekNumberOfMonth(DateTime date)
    {
        return date.GetWeekOfMonth();
    }

}
static class DateTimeExtensions
{
    static GregorianCalendar _gc = new GregorianCalendar();
    public static int GetWeekOfMonth(this DateTime time)
    {
        DateTime first = new DateTime(time.Year, time.Month, 1);
        return time.GetWeekOfYear() - first.GetWeekOfYear() + 1;
    }

    static int GetWeekOfYear(this DateTime time)
    {
        return _gc.GetWeekOfYear(time, CalendarWeekRule.FirstDay, DayOfWeek.Sunday);
    }
}