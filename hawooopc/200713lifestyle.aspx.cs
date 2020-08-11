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

public partial class user_static_200713lifestyle : System.Web.UI.Page
{
    //public int serverType = 1;
    public string cacheVersion = "4";
    // New arival product li style is Not used in this event.
    //private int _eventId = 1054;
    protected string dateDiscountEnd = "2020-07-16 00:00:00";
    public Dictionary<string, dynamic> optionNewArrival = new Dictionary<string, dynamic>();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200713lifestyle.aspx" + Request.Url.Query);
            }
            setOptions();
            setCountdown(dateDiscountEnd);
            BindSpecialStyleeGoods(optionNewArrival);


            // New arival product li style is Not used in this event.
            //SetTime();
            //BindGoods();
        }
    }

    public void setOptions()
    {

        optionNewArrival.Add("webControlIds", rpNewArrival);
        //optionNewArrival.Add("eventId", 1054);
        optionNewArrival.Add("eventId", 798);
        optionNewArrival.Add("take", 0);
    }

    private void setCountdown(string dateDiscountEndStr)
    {
        DateTime dateNow = DateTime.Now;
        DateTime dateDiscountEnd = Convert.ToDateTime(dateDiscountEndStr);
        Double spend = 0d;
        if (dateNow < dateDiscountEnd)
        {
            TimeSpan ts = dateDiscountEnd - dateNow;
            spend = ts.TotalSeconds;

        }
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setCountdown(" + spend + ");", true);
    }


    // (Start) Related to "special stylee goods", but have no "Fire and pregress bar" logic:
    // =====================================================================================
    private void BindSpecialStyleeGoods(Dictionary<string, dynamic> option)
    {
        // If offer spdGid (both case will be safe).
        Boolean ifSpdGid = option.ContainsKey("spdGid");

        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
        if (ifSpdGid)
        {
            prop.Cells.Add("SPD08");
        }
        //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.SelectIDS.Add((int)option["eventId"]);
        prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetSelectProduct(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable dt = SqlDbmanager.queryBySql(cmd);


        // We don't need stock related logic for this event.
        //string _stime = "2020-06-18 12:00:00";
        //DataTable dtRealStock = GetRealStock(eventId, _stime);
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

        if (dt.Rows.Count == 0)
        {
            return;
        }

        if (ifSpdGid)
        {
            var tmpSelect = dt.Select("SPD08 = '" + ((string)option["spdGid"]) + "'");
            if (tmpSelect.Length == 0)
            {
                return;
            }
            dt = tmpSelect.CopyToDataTable();
        }
        if ((int)option["take"] != 0)
        {
            dt = dt.AsEnumerable().Take((int)option["take"]).CopyToDataTable();
        }

        option["productDt"] = TransDt(dt);
        option["webControlIds"].DataSource = option["productDt"];
        option["webControlIds"].DataBind();
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

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sold">SPD07假數量</param>
    /// <param name="stock">SPD06限制數量</param>
    /// <returns></returns>
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
        dt.Columns.Add("SPD05", typeof(int)); //權重
        dt.Columns.Add("SPD06"); //限制數量,庫存
        dt.Columns.Add("SPD07"); //假數量
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
            //ndr["SPD07"] = Convert.ToInt32(dr["SPD07"].ToString()) + Convert.ToInt32(dr["BCOUNT"].ToString());
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            dt.Rows.Add(ndr);
        }
        return dt;
    }

    protected void rp_plist_ItemDataBound_NewArrival(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionNewArrival);
    }

    protected void rp_plist_ItemDataBound_main(object sender, RepeaterItemEventArgs e, Dictionary<string, dynamic> option)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = ((DataTable)option["productDt"]).AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");
        }
    }
    // (End) Related to "special stylee goods", but have no "Fire and pregress bar" logic:
    // =====================================================================================


    // (Start) New arival product li style is Not used in this event.
    //private void SetTime()
    //{
    //    string sqlTxt =
    //        "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01 IN (362,370) AND GETDATE() BETWEEN SPM04 AND SPM05";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sqlTxt;
    //    DataTable sDt = SqlDbmanager.queryBySql(cmd);

    //    if (sDt.Rows.Count > 0)
    //    {
    //        _eventId = Convert.ToInt32(sDt.Rows[0]["SPM01"].ToString());
    //    }
    //}

    //    private void BindGoods()
    //    {
    //        if (_eventId != 0)
    //        {
    //            SearchProp prop = new SearchProp();
    //            prop.Cells.Add("SPD01");
    //            prop.Cells.Add("SPD07");
    //            prop.Cells.Add("SPD06");
    //            prop.Cells.Add("SPD05");
    //            prop.Cells.Add("PC01");
    //            prop.Cells.Add("PC09");
    //            prop.Cells.Add("(SELECT ISNULL(COUNT(ORD01),0) as BCOUNT FROM ORDERD " +
    //                           "INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 " +
    //                           "WHERE ORD01=WP01 AND ORM03>=SPM04) as BCOUNT ");
    //            prop.JoinTxts.Add("CROSS APPLY (SELECT TOP 1 PC01,PC09 FROM ProductCoupon " +
    //                "INNER JOIN ProductCouponSel " +
    //                "ON PC01=PCS01 WHERE PCS02=WP01 " +
    //                "ORDER BY PC04 DESC) as TA ");
    //            prop.SelectIDS.Add(_eventId);
    //            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
    //            prop.LgType = ((user_user)this.Master).LgType;
    //            string sqlTxt = ProductBL.GetSelectProduct(prop);
    //            SqlCommand cmd = new SqlCommand();
    //            cmd.CommandText = sqlTxt;
    //            DataTable dt = SqlDbmanager.queryBySql(cmd);
    //            DataTable bindDt = TransDt(dt);
    //            rp_plist.DataSource = bindDt;
    //            rp_plist.DataBind();
    //        }
    //    }

    //    private DataTable TransDt(DataTable sdt)
    //    {
    //        DataTable dt = new DataTable();
    //        dt.Columns.Add("WP01");
    //        dt.Columns.Add("WP02");
    //        dt.Columns.Add("B01");
    //        dt.Columns.Add("WP23");
    //        dt.Columns.Add("WP08_1");
    //        dt.Columns.Add("WPA06");
    //        dt.Columns.Add("WPA10");
    //        dt.Columns.Add("SPD07");
    //        dt.Columns.Add("PERSENT");
    //        dt.Columns.Add("PC01");
    //        dt.Columns.Add("COUPON");
    //        foreach (DataRow dr in sdt.Rows)
    //        {
    //            DataRow ndr = dt.NewRow();
    //            ndr["WP01"] = dr["WP01"].ToString();
    //            ndr["WP02"] = dr["WP02"].ToString();
    //            ndr["B01"] = dr["B01"].ToString();
    //            ndr["WP23"] = dr["WP23"].ToString();
    //            ndr["WP08_1"] = dr["WP08_1"].ToString();
    //            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
    //            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
    //            ndr["SPD07"] = Convert.ToInt32(dr["SPD07"].ToString()) + Convert.ToInt32(dr["BCOUNT"].ToString());
    //            ndr["PC01"] = dr["PC01"].ToString();
    //            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
    //            ndr["COUPON"] = "RM" + dr["PC09"].ToString().Split('.')[0];
    //            dt.Rows.Add(ndr);
    //        }
    //        return dt;
    //    }

    //    protected void btn_get_one_coupon_OnClick(object sender, EventArgs e)
    //    {
    //        if (Session["A01"] == null)
    //        {
    //            Response.Redirect("login.aspx?rurl=200713lifestyle.aspx");
    //        }
    //        else
    //        {
    //            ProductCouponUserGetFac pcfac = new ProductCouponUserGetFac();
    //            string rval = pcfac.GetProductCoupon(hf_pc01.Value.ToString(), int.Parse(Session["A01"].ToString()));
    //            if (rval.Equals("OK"))
    //            {
    //                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('You get this coupon! Shop Now!');", true);
    //            }
    //            else
    //            {
    //                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Error');", true);
    //            }
    //        }
    //    }

    //    public DataTable GetGoods(LangType lg)
    //    {
    //        StringBuilder sb = new StringBuilder();
    //        sb.Append("SELECT TOP 24 ");
    //        sb.Append("WP.B01,");
    //        sb.Append("WP.WP01,");
    //        sb.Append("WP23,");
    //        sb.Append("WP08_1,");
    //        sb.Append("WPT07,");
    //        sb.Append("WP27,");
    //        if (lg == LangType.zh)
    //        {
    //            sb.Append("WPT02 as WP30,");
    //            sb.Append("WP02,");
    //        }
    //        else if (lg == LangType.en)
    //        {
    //            sb.Append("WP23 as WP02,");
    //            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
    //        }
    //        sb.Append("CAST(Price as decimal) as WPA06,");
    //        sb.Append("CAST(OPrice as decimal) as WPA10,");
    //        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
    //        sb.Append("FROM WP ");
    //        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
    //        sb.Append("LEFT JOIN WPTAG WITH(NOLOCK) ON WPT01 = WP30 ");
    //        sb.Append(@"INNER JOIN(
    //SELECT B01,WP01
    //FROM(
    //SELECT 
    //B01,
    //WP01,
    //ROW_NUMBER() Over (Partition By B01 Order By WP11 Desc) As R
    //FROM WP 
    //INNER JOIN ProductPriceView ON PID=WP01 
    //LEFT JOIN WPTAG ON WP30=WPT01 
    //Where WP05=1 and WP07=1 and GETDATE() between WP09 and WP10 and WP11 between DATEADD(day,-60,GETDATE()) and GETDATE()
    //) AS DT 
    //WHERE R=1) AS TA ON TA.WP01=WP.WP01 ");
    //        sb.Append("WHERE NOT EXISTS(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,370) AND WP.WP01=SPD02) ");
    //        sb.Append("ORDER BY WP11 DESC");

    //        SqlCommand cmd = new SqlCommand();
    //        cmd.CommandText = sb.ToString();
    //        var dt = SqlDbmanager.queryBySql(cmd);

    //        return dt;
    //    }
    // (End) New arival product li style is Not used in this event.
}