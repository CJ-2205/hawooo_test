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

public partial class mobile_static_200811new_brands : System.Web.UI.Page
{
    public string cacheVersion = "6";


    private int TopBrandsEventId = 1116; //testing:  //real:1116
    private int BestSellersEventId = 1117; //testing:  //real:1117
    private int BrandsEventId = 1118;  //testing:  //real:1118

    private string _stime = "2020-08-11 12:00:00";

    private int TopBrandsProduct = 8;
    private int BestSellersProduct = 8;
    private int BrandsProduct = 3;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindTopBrands();
            BindBestSellers();
            BindBrands();
            BindCoupnCount();


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

    //flashsale fire
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

    private DataTable _productDtTopBrands = new DataTable();
    private void BindTopBrands()
    {
        if (TopBrandsEventId != 0) //!!change eventID
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(TopBrandsEventId); 

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(TopBrandsEventId, _stime);  

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
            _productDtTopBrands = TransDt(dt);

            if (_productDtTopBrands.Rows.Count >= 1)

            {
                topbrands_rp.DataSource = _productDtTopBrands.AsEnumerable().Take(this.TopBrandsProduct).CopyToDataTable();
                topbrands_rp.DataBind(); 
            }

        }
    }


    private DataTable _productBestSellers = new DataTable();
    private void BindBestSellers()
    {
        if (BestSellersEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(BestSellersEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(BestSellersEventId, _stime);

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
            _productBestSellers = TransDt(dt);

            if (_productBestSellers.Rows.Count >= 1)

            {
                bestseller_rp.DataSource = _productBestSellers.AsEnumerable().Take(this.BestSellersProduct).CopyToDataTable();
                bestseller_rp.DataBind();
            }

        }
    }

    private DataTable _productBrands = new DataTable();
    private void BindBrands()
    {
        if (BrandsEventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("B01");
            //prop.Cells.Add("WP01");

            //prop.Cells.Add("WPA11");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.SelectIDS.Add(BrandsEventId);

            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, _eventId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            DataTable dtRealStock = GetRealStock(BrandsEventId, _stime);

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
            _productBrands = TransDt(dt);

            //if (_productBrands.Rows.Count >= 1)
            //{
            //    brands1_rp.DataSource = _productBrands.AsEnumerable().Take(this.BestSellersProduct).CopyToDataTable();
            //    brands1_rp.DataBind();
            //}

            //brands1
            if (dt.Select("B01=458").Length > 0) //TEST:151 //REAL:458
            {

                brands1_rp.DataSource = dt.Select("B01=458").AsEnumerable().Take(3).CopyToDataTable();
                brands1_rp.DataBind();
            }
            //brands2
            if (dt.Select("B01=455").Length > 0) //TEST:171 //REAL:455
            {

                brands2_rp.DataSource = dt.Select("B01=455").AsEnumerable().Take(3).CopyToDataTable();
                brands2_rp.DataBind();
            }
            //brands3
            if (dt.Select("B01=454").Length > 0) //TEST:310
            {

                brands3_rp.DataSource = dt.Select("B01=454").AsEnumerable().Take(3).CopyToDataTable();
                brands3_rp.DataBind();
            }
            //brands4
            if (dt.Select("B01=235").Length > 0) 
            {

                brands4_rp.DataSource = dt.Select("B01=235").AsEnumerable().Take(3).CopyToDataTable();
                brands4_rp.DataBind();
            }
            //brands5
            if (dt.Select("B01=459").Length > 0) 
            {

                brands5_rp.DataSource = dt.Select("B01=459").AsEnumerable().Take(3).CopyToDataTable();
                brands5_rp.DataBind();
            }
            //brands6
            if (dt.Select("B01=456").Length > 0) 
            {

                brands6_rp.DataSource = dt.Select("B01=456").AsEnumerable().Take(3).CopyToDataTable();
                brands6_rp.DataBind();
            }
            //brands7
            if (dt.Select("B01=334").Length > 0) 
            {

                brands7_rp.DataSource = dt.Select("B01=334").AsEnumerable().Take(3).CopyToDataTable();
                brands7_rp.DataBind();
            }
            //brands8
            if (dt.Select("B01=297").Length > 0) 
            {

                brands8_rp.DataSource = dt.Select("B01=297").AsEnumerable().Take(3).CopyToDataTable();
                brands8_rp.DataBind();
            }
            //brands9
            if (dt.Select("B01=440").Length > 0) 
            {

                brands9_rp.DataSource = dt.Select("B01=440").AsEnumerable().Take(3).CopyToDataTable();
                brands9_rp.DataBind();
            }
            //brands10
            if (dt.Select("B01=461").Length > 0) 
            {

                brands10_rp.DataSource = dt.Select("B01=461").AsEnumerable().Take(3).CopyToDataTable();
                brands10_rp.DataBind();
            }
            //brands11
            if (dt.Select("B01=131").Length > 0) 
            {

                brands11_rp.DataSource = dt.Select("B01=131").AsEnumerable().Take(3).CopyToDataTable();
                brands11_rp.DataBind();
            }
            //brands12
            if (dt.Select("B01=27").Length > 0) 
            {

                brands12_rp.DataSource = dt.Select("B01=27").AsEnumerable().Take(3).CopyToDataTable();
                brands12_rp.DataBind();
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

   

    protected void topbrands_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDtTopBrands.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
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

    protected void bestseller_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productBestSellers.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
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


    protected void brands_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productBrands.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
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


    // (Start) Coupon count.
    // ================================
    public void BindCoupnCount()
    {
        string ColKeyName = "CODE";
        string ColValueName = "COUNT";
        var list1 = new List<dynamic>();
        list1.Add(Coupon1);
        // Boosting (fake) number.
        var listBoostNum = new List<int>();
        listBoostNum.Add(300);
        var list2 = new List<string>();
        list2.Add("BRAND25");

        DataTable dt = GetCoupnCount(list2);

        for (int i = 0; i < list1.Count; i++)
        {
            if (dt.Rows.Count == 0)
            {
                list1[i].Text = Convert.ToString(listBoostNum[i]);
            }
            else
            {
                DataRow[] drs = dt.Select("[" + ColKeyName + "] LIKE '" + list2[i] + "'");

                if (drs.Length > 0)
                {
                    list1[i].Text = Convert.ToString(
                        Convert.ToInt32(
                            drs[0][ColValueName].ToString()
                        ) + listBoostNum[i]
                    );
                }
            }
        }
    }

    // Get a datatable about current coupon count.
    // To use it:
    //   List<string> list = new List<string>();
    //   list.Add("CNY20");
    //   list.Add("CNY30");
    //   DataTable dt = GetCoupnCount(list);
    // Returned DataTable will look something like this:
    //   CODE   COUNT
    //   CNY20   50
    //   CNY30   10
    // Notice, the count is not remaining count, but already taken count.
    public DataTable GetCoupnCount(List<string> listCode)
    {
        DataTable dt = new DataTable();
        if (listCode.Count.Equals(0))
            return dt;
        SqlCommand cmd = new SqlCommand();
        string strSql = @"SELECT COUNT(ORM01) AS 'COUNT',ORM09 AS 'CODE' FROM ORDERM  WITH(NOWAIT)  WHERE ORM09 IN (";
        for (int i = 0; i < listCode.Count; i++)
        {
            strSql += "@CODE" + i.ToString() + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("CODE" + i.ToString(), SqlDbType.VarChar, listCode[i]));
        }
        strSql = strSql.TrimEnd(',');
        strSql += @")  GROUP BY ORM09";
        cmd.CommandText = strSql;
        dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
    // ================================
    // (End) Coupon count.


}