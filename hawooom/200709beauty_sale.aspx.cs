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

public partial class mobile_static_200709beauty_sale: System.Web.UI.Page
{
    public string cacheVersion = "10";
    public string sale = "start or end";

    private int FlashSaleEventId = 1040; //1040
    private int HotDealEventId = 1041; //1041
    //private int HiglightedEventId = 798;  //1019

    private string _stime = "2020-07-09 12:00:00";

    private int FlashSaleProducts = 6;
    private int HotDealProducts = 6;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetTime();
         //   SetTime2();

            BindPreOrder(FlashSaleEventId);
            BindFlashSale();
            BindHotDeal();
            //BindHiglighted();
        }
    }

    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("SPD08");
        searchProp.Cells.Add("WP31");  //活動價格開始
        searchProp.Cells.Add("WP32");  //活動價格結束
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

    //private void BindHiglighted()
    //{
    //    DataTable dt = GetDataDt(this.HiglightedEventId);
    //    if (dt.Rows.Count > 0)
    //    {
    //        Repeater rp1 = productsHB.FindControl("rp_goods") as Repeater;
    //        rp1.DataSource = dt;
    //        rp1.DataBind();
    //    }
    //}


    //flashsale fire
    private DataTable _preOrderDt = new DataTable();
    private DataTable _preOrderSumInfo = new DataTable();
    private void BindPreOrder(int selectID)
    {
        if (FlashSaleEventId != 0)
        {
            _preOrderSumInfo = PreOrderProductBL.GetPreOrderSumInfo();

            SearchProp prop = new SearchProp();
            prop.GoodsState.Add(0);
            prop.GoodsState.Add(1);
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            prop.Cells.Add("SPD08");//群組
            prop.Cells.Add("WPA11");
            prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;


            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, selectID));
            _preOrderDt = SqlDbmanager.queryBySql(cmd);
            _preOrderDt = ChangPrice(_preOrderDt);

            DataView dv = new DataView(_preOrderDt);
            dv.Sort = "SPD05 DESC";

            DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD08");

            //if (mdt.Select("SPD08='1'").Length > 0)
            //{
            //    rp1.DataSource = mdt.Select("SPD08='1'").Take(6).CopyToDataTable();
            //    rp1.DataBind();
            //    rp1all.DataSource = mdt.Select("SPD08='1'").CopyToDataTable();
            //    rp1all.DataBind();
            //}
            if (mdt.Rows.Count >= 8)
            {
                
                rp1.DataSource = mdt.AsEnumerable().Take(this.FlashSaleProducts).CopyToDataTable();
                rp1.DataBind();
                //rp1all.DataSource = mdt;
                //rp1all.DataBind();
            }

        }
    }


    private static DataTable ChangPrice(DataTable dt)
    {
        DataTable rDT = new DataTable();
        rDT = dt;
        foreach (DataRow dr in rDT.Rows)
        {
            dr["WPA06"] = Convert.ToDecimal(dr["WPA06"].ToString()) - Convert.ToDecimal(dr["WPA07"].ToString());
        }
        return rDT;
    }

    //private void SetTime()
    //{
    //    DateTime stime = DateTime.Now;
    //    //DateTime etime = Convert.ToDateTime("2019-12-08 00:00:00");
    //    DateTime etime = Convert.ToDateTime("2020-07-12 00:00:00");

    //    DateTime etime2 = Convert.ToDateTime("2020-07-15 23:59:59");

    //    TimeSpan ts2 = etime2 - stime;
    //    var spend2 = ts2.TotalSeconds;

    //    TimeSpan ts = etime - stime;
    //    var spend = ts.TotalSeconds;
    //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime1(" + spend + "," + spend2 + ");", true);
    //}

    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        //DateTime etime = Convert.ToDateTime("2020-07-12 00:00:00");
        //DateTime etime = Convert.ToDateTime("2020-07-15 23:59:59");

        DateTime preorderEnd = Convert.ToDateTime("2020-07-11 23:59:59");
        DateTime flashSaleEnd = Convert.ToDateTime("2020-07-15 23:59:59");
        DateTime etime;
        if (stime < preorderEnd)
        {
            etime = preorderEnd;
        }
        else
        {
            etime = flashSaleEnd;
        }

        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }


    private DataTable _productDtFlashSale = new DataTable();
    private void BindFlashSale()
    {
        if (FlashSaleEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(FlashSaleEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(FlashSaleEventId, _stime);

            foreach (DataRow dr in dtRealStock.Rows)
            {
                if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
                {
                    int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
                    int rs = Convert.ToInt32(dr["C"].ToString());
                    i += rs;
                    dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
                }
            }
            _productDtFlashSale = TransDt(dt);

            if (_productDtFlashSale.Rows.Count >= 8)

            {
                flashsale_rp.DataSource = _productDtFlashSale.AsEnumerable().Take(this.FlashSaleProducts).CopyToDataTable();
                flashsale_rp.DataBind();
            }

        }
    }


    private DataTable _productHotDeal = new DataTable();
    private void BindHotDeal()
    {
        if (HotDealEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(HotDealEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(HotDealEventId, _stime);

            foreach (DataRow dr in dtRealStock.Rows)
            {
                if (dt.Select("WP01='" + dr["ORD01"].ToString() + "'").Length > 0)
                {
                    int i = Convert.ToInt32(dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"].ToString());
                    int rs = Convert.ToInt32(dr["C"].ToString());
                    i += rs;
                    dt.Select("WP01='" + dr["ORD01"].ToString() + "'")[0]["SPD07"] = i.ToString();
                }
            }
            _productHotDeal = TransDt(dt);

            if (_productHotDeal.Rows.Count >= 8)

            {
                hotdeal_rp.DataSource = _productHotDeal.AsEnumerable().Take(this.HotDealProducts).CopyToDataTable();
                hotdeal_rp.DataBind();
            }

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

    protected void rpPreProducts_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _preOrderDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("WPA11"));
            DropDownList ddlOption = (DropDownList)e.Item.FindControl("ddl_Option");
            DropDownList ddlQty = (DropDownList)e.Item.FindControl("ddl_Qty");
            ddlOption.Items.Clear();
            ddlOption.Items.Add(new ListItem("", ""));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "7.6");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(Discount.ToString(), "7.6").Replace("-", "-RM");
            foreach (DataRow dr in options)
            {
                int qty = Convert.ToInt32(dr["WPA04"].ToString());
                ddlOption.Items.Add(new ListItem(dr["WPA02"].ToString(), dr["WPA01"].ToString() + "#" + qty));
            }

            Literal info = (Literal)e.Item.FindControl("lit_Info");
            info.Text = "0";
            var buySum = _preOrderSumInfo.AsEnumerable().FirstOrDefault(r => r.Field<int>("POP03").Equals(pid));

            //if (buySum != null)
            //{
            //    string showBuyQty = "0";
            //    int plusCount = options.First().Field<int>("SPD07");
            //    showBuyQty = (4 * (Convert.ToInt32(buySum["BCOUNT"].ToString()) + plusCount)).ToString();
            //    info.Text = string.Format("{0}", showBuyQty);
            //}
            string showBuyQty = "0";
            int plusCount = options.First().Field<int>("SPD07");
            if (buySum != null)
            {
                showBuyQty = (4 * (Convert.ToInt32(buySum["BCOUNT"].ToString()) + plusCount)).ToString();
            }
            else if (plusCount > 0)
            {
                showBuyQty = plusCount.ToString();
            }
            info.Text = string.Format("{0}", showBuyQty);
        }

    }

    protected void flashrp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDtFlashSale.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
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

    protected void hotrp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productHotDeal.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
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

    public DataTable GetRealStock(int eid, string stime)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM 
	  INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
	  INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON ORD01=DT.SPD02  
	  WHERE ORM24>=0 AND ORM03>=@SPM04 GROUP BY ORD01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM04", SqlDbType.VarChar, stime));

        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    public static int FireCount(int sold, int stock)
    {
        decimal i = (decimal)sold;
        decimal s = (decimal)stock;
        if (s > 0)
        {
            i = i / s * 100;
            return Convert.ToInt32(100 - i);
            //w = Convert.ToInt32(d * 100);
            //w = 100 - w;
        }
        return 100;
    }
    //flashsaleclose

}