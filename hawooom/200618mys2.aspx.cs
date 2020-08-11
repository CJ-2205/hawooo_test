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

public partial class mobile_static_200618mys2 : System.Web.UI.Page
{

    private int FlashSaleEventId = 1001; //1001

    private int HotDealEventId = 1002; 
    private int ValueBuyEventId = 1003;
    private int HiglightedEventId = 1004; 


    private string _stime = "2020-06-18 12:00:00";

    private int FlashSaleProducts = 8;
    private int HotDealProducts = 8;
    private int ValueBuyProducts = 8;
    private int HiglightedProducts = 12;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //BindFlashSale();
            BindGoods();
            BindHotDeal();
            BindValueBuy();
            BindHiglighted();

            BindTop8ClassData();
            BindRandom15Data();

            BindCoupnCount();

        }
    }
    //private void BindFlashSale()
    //{
    //    DataTable dt = GetDataDt(this.FlashSaleEventId);
    //    if (dt.Rows.Count > 0)
    //    {
    //        var take = dt.AsEnumerable().Take(this.FlashSaleProducts).CopyToDataTable();
    //        //Repeater rp = products1.FindControl("rp_goods") as Repeater;
    //        rp.DataSource = take;
    //        rp.DataBind();
    //    }
    //}
    private void BindHotDeal()
    {
        DataTable dt = GetDataDt(this.HotDealEventId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(this.HotDealProducts).CopyToDataTable();
            Repeater rp1 = products2.FindControl("rp_goods") as Repeater;
            rp1.DataSource = take;
            rp1.DataBind();
        }
    }

    private void BindValueBuy()
    {
        DataTable dt = GetDataDt(this.ValueBuyEventId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(this.ValueBuyProducts).CopyToDataTable();
            Repeater rp2 = products3.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take;
            rp2.DataBind();
        }
    }

    private void BindHiglighted()
    {
        DataTable dt = GetDataDt(this.HiglightedEventId);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(this.HiglightedProducts).CopyToDataTable();
            Repeater rp3 = products4.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take;
            rp3.DataBind();
        }
    }


    public void BindCoupnCount()
    {
        string ColKeyName = "CODE";
        string ColValueName = "COUNT";
        var list1 = new List<dynamic>();
        list1.Add(Coupon1);
        list1.Add(Coupon2);
        list1.Add(Coupon3);
        var listDisplayNum = new List<int>();
        listDisplayNum.Add(445);
        listDisplayNum.Add(555);
        listDisplayNum.Add(489);
        var list2 = new List<string>();
        list2.Add("MID25");
        list2.Add("MID40");
        list2.Add("MID65");
        DataTable dt = GetCoupnCount(list2);

        for (int i = 0; i < list1.Count; i++)
        {
            if (dt.Rows.Count == 0)
            {
                list1[i].Text = Convert.ToString(listDisplayNum[i]);
            }
            else
            {

                DataRow[] drs = dt.Select("[" + ColKeyName + "] LIKE '" + list2[i] + "'");

                if (drs.Length > 0)
                {
                    list1[i].Text = Convert.ToString(
                        Convert.ToInt32(
                            drs[0][ColValueName].ToString()
                        ) + listDisplayNum[i]
                    );
                }


            }
        }


    }


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

    //flashsale fire
    private DataTable _productDt = new DataTable();
    private void BindGoods()
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


            //_productDt = TransDt(dt);
            //rp_plist.DataSource = _productDt;
            //rp_plist.DataBind();


            //_productDt = dt;
            //DataView dv = new DataView(_productDt);
            //dv.Sort = "SPD05 DESC";

            //DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD07");
            //rp_plist.DataSource = mdt;
            //rp_plist.DataBind();

            _productDt = TransDt(dt);

            if (_productDt.Rows.Count >= 8)

            {
                rp_plist.DataSource = _productDt.AsEnumerable().Take(8).CopyToDataTable();
                rp_plist.DataBind();
            }

        }
    }
    public static string SoldOut(int sold, int stock)
    {
        string str = "false";
        if (sold >= stock)
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
        dt.Columns.Add("SPD05", typeof(int)); //æ¬Šé?
        dt.Columns.Add("SPD06"); //?åˆ¶?¸é?,åº«å?
        dt.Columns.Add("SPD07"); //?‡æ•¸??
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
    protected void rp_plist_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _productDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4?°å?ç¶å??˜æ‰£?¹æ ¼

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

    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //§é¦©Àu´f´Á¶¡: WP31Àu´f¶}©l®É¶¡,WP32Àu´fµ²§ô®É¶¡
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


    private void BindTop8ClassData()
    {
        DataTable dt = GetCategoryGoodsRank((this.Master as mobile).LgType);
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='±m§©'").Length > 0)
            {
                Repeater rp4 = products5.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("CNAME='±m§©'").Take(8).CopyToDataTable();
                rp4.DataBind();
            }

            if (dt.Select("CNAME='«O¾i'").Length > 0)
            {
                Repeater rp5 = products6.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("CNAME='«O¾i'").Take(8).CopyToDataTable();
                rp5.DataBind();
            }

            if (dt.Select("CNAME='«O°·'").Length > 0)
            {
                Repeater rp6 = products7.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("CNAME='«O°·'").Take(8).CopyToDataTable();
                rp6.DataBind();
            }

            if (dt.Select("CNAME='¥Í¬¡'").Length > 0)
            {
                Repeater rp7 = products8.FindControl("rp_goods") as Repeater;
                rp7.DataSource = dt.Select("CNAME='¥Í¬¡'").Take(8).CopyToDataTable();
                rp7.DataBind();
            }

            if (dt.Select("CNAME='¬ü­¹'").Length > 0)
            {
                Repeater rp8 = products9.FindControl("rp_goods") as Repeater;
                rp8.DataSource = dt.Select("CNAME='¬ü­¹'").Take(8).CopyToDataTable();
                rp8.DataBind();
            }

            if (dt.Select("CNAME='¥ÀÀ¦'").Length > 0)
            {
                Repeater rp9 = products10.FindControl("rp_goods") as Repeater;
                rp9.DataSource = dt.Select("CNAME='¥ÀÀ¦'").Take(8).CopyToDataTable();
                rp9.DataBind();
            }
        }

    }
    private void BindRandom15Data()
    {
        DataTable dt = GetOrderRank((this.Master as mobile).LgType);
        if (dt.Rows.Count > 0)
        {
            Repeater rp10 = products11.FindControl("rp_goods") as Repeater;
            rp10.DataSource = dt.AsEnumerable().Take(12).CopyToDataTable();
            rp10.DataBind();
        }
    }

    public DataTable GetCategoryGoodsRank(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP18,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount,");
        sb.Append("CNAME,VRANK ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("INNER JOIN VW_CATEGORY_RANK AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


    public DataTable GetOrderRank(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP18,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("INNER JOIN VW_SALE_RANK AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

}