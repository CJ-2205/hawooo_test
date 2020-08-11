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
using hawooo;

public partial class mobile_static_200730mit_editors_picks: System.Web.UI.Page
{

    private int EditorsPicksEventId = 1078; //1078

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindEditorsPicks();
        }
    }
    private DataTable GetDataDt(int id, bool showSpdGid = false)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("SPD08");
        searchProp.Cells.Add("WP31");  //活動價格開始
        searchProp.Cells.Add("WP32");  //活動價格結束
        searchProp.Cells.Add("SPD05");
        if (showSpdGid)
        {
            searchProp.Cells.Add("SPD08");
        }
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


    //flashsale fire
    private DataTable _productDt = new DataTable();
    private void BindEditorsPicks()
    {
        if (EditorsPicksEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(EditorsPicksEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            //DataTable dtRealStock = GetRealStock(EditorsPicksEventId, _stime);

            //foreach (DataRow dr in dtRealStock.Rows)
            //{
            //    if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
            //    {
            //        int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
            //        int rs = Convert.ToInt32(dr["C"].ToString());
            //        i += rs;
            //        dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
            //    }
            //}
            _productDt = TransDt(dt);

            if (_productDt.Rows.Count >= 0)

            {
                rp1.DataSource = _productDt;
                rp1.DataBind();
            }

        }
    }

    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01", typeof(long));
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("SPD05", typeof(int)); //權??
        dt.Columns.Add("SPD06"); //??制????,庫??
        dt.Columns.Add("SPD07"); //??數??
        dt.Columns.Add("WPA06", typeof(decimal));
        dt.Columns.Add("WPA10", typeof(decimal));
        dt.Columns.Add("PERSENT");
        dt.Columns.Add("PC01");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");


        foreach (DataRow dr in sdt.Rows)
        {
            DataRow ndr = dt.NewRow();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["SPD05"] = dr["SPD05"].ToString();
            ndr["SPD06"] = dr["SPD06"].ToString();
            ndr["SPD07"] = dr["SPD07"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            dt.Rows.Add(ndr);
        }
        return dt;
    }

    protected void rp1_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4????綁????扣??格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

        }
    }
    public static string SoldOut(int sold, int stock)
    {
        string str = "false";
        if (stock.Equals(0))
            str = "false";
        else if (sold >= stock)
            str = "true";
        return str;
    }
    //flashsaleclose
}