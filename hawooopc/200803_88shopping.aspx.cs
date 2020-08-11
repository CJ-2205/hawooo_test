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
//using System.Web.UI.UserControl;
using hawooo;
using Newtonsoft.Json;


public class Options {
    public Control control;
    public int eventId;
    public int take;
    public string spdGid = "";
    // Purpose: Not sure, maybe a temp DB to save something related to this eventId.
    public DataTable productDt = new DataTable();
    public string periodStart;
    public string periodEnd;
}

public partial class user_static_200803_88shopping : System.Web.UI.Page
{
    public int serverType = 0;
    public string cacheVersion = "5";
    public Options optionFlashSalePeriod1;
    public Options optionFlashSalePeriod2;
    public Options optionFlashSalePeriod3;
    public Options optionFlashSalePeriod4;
    public Options optionFlashSalePeriod5;
    public Options optionFlashSalePeriod6;
    public Options optionFlashSalePeriod7;
    public Boolean isShowCoupon4;

    // For ItemDataBound only.
    public Options flashSaleDataBond;

    public Options optionBundle;
    public Options optionHighLightArea;

    public void setOptions()
    {
        optionFlashSalePeriod1 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 5),
            spdGid = SwitchServer<string>(serverType, "A", "11"),
            periodStart = SwitchServer<string>(serverType, "2020-08-03 12:00:00", "2020-08-03 12:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-03 23:59:59", "2020-08-05 23:00:00"),
        };
        optionFlashSalePeriod2 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 3),
            spdGid = SwitchServer<string>(serverType, "B", "1"),
            periodStart = SwitchServer<string>(serverType, "2020-08-04 00:00:00", "2020-08-04 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-04 23:59:59", "2020-08-05 23:50:00"),
        };
        optionFlashSalePeriod3 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 2),
            spdGid = SwitchServer<string>(serverType, "C", "0"),
            periodStart = SwitchServer<string>(serverType, "2020-08-05 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-05 23:59:59", "2020-08-05 23:51:00"),
        };
        optionFlashSalePeriod4 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 3),
            spdGid = SwitchServer<string>(serverType, "D", "1"),
            periodStart = SwitchServer<string>(serverType, "2020-08-06 00:00:00", "2020-08-06 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-06 23:59:59", "2020-08-05 23:52:00"),
        };
        optionFlashSalePeriod5 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 2),
            spdGid = SwitchServer<string>(serverType, "E", "0"),
            periodStart = SwitchServer<string>(serverType, "2020-08-07 00:00:00", "2020-08-07 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-07 23:59:59", "2020-08-05 23:53:00"),
        };
        optionFlashSalePeriod6 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 3),
            spdGid = SwitchServer<string>(serverType, "F", "1"),
            periodStart = SwitchServer<string>(serverType, "2020-08-08 00:00:00", "2020-08-08 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-08 23:59:59", "2020-08-06 23:54:00"),
        };
        optionFlashSalePeriod7 = new Options()
        {
            control = rpFlashSalePeriodShared,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 8, 1),
            spdGid = SwitchServer<string>(serverType, "G", "11"),
            periodStart = SwitchServer<string>(serverType, "2020-08-09 00:00:00", "2020-08-09 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-11 11:59:59", "2020-08-11 11:59:59"),
        };

        optionBundle = new Options()
        {
            control = rpBundle,
            eventId = SwitchServer<int>(serverType, 1097, 798),
            take = SwitchServer<int>(serverType, 8, 6),
        };
        optionHighLightArea = new Options()
        {
            control = rpHighLightArea,
            eventId = SwitchServer<int>(serverType, 1098, 798),
            take = SwitchServer<int>(serverType, 12, 12),
        };
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200803_88shopping.aspx" + Request.Url.Query);
            }
            
            setOptions();
            showImgOfPeriod();

            setFlashSaleLogic(
                optionFlashSalePeriod1,
                optionFlashSalePeriod2,
                optionFlashSalePeriod3,
                optionFlashSalePeriod4,
                optionFlashSalePeriod5,
                optionFlashSalePeriod6,
                optionFlashSalePeriod7
            );

            BindRibbonFireGoods(optionBundle);
            BindRibbonFireGoods(optionHighLightArea);

            BindCatAndYMAL();

            ifShowCoupon4();

            BindCoupnCount();
        }
    }
    // Toggle data for different server type. 0 = test server, 1 or other int = real server
    public T SwitchServer<T>(int serverType, T realValue, T testValue)
    {
        return (serverType == 0) ? (T)testValue : (T)realValue;
    }
    
    // Show the right images for the right period
    public void showImgOfPeriod ()
    {
        DateTime periodImgSwitch = Convert.ToDateTime( SwitchServer<string>(serverType, "2020-08-09 00:00:00", "2020-08-08 09:05:00") );
        if (DateTime.Now < periodImgSwitch)
        {
            panelImgBn01Period1.Visible = true;
            panelFlashSaleSvgPeriod1.Visible = true;
            panelImgElevatorPeriod1.Visible = true;
            panelTermsPeriod1.Visible = true;
            panelImgBn01Period1.DataBind();
            panelFlashSaleSvgPeriod1.DataBind();
            panelImgElevatorPeriod1.DataBind();
            panelTermsPeriod1.DataBind();
        } else
        {
            panelImgBn01Period2.Visible = true;
            panelFlashSaleSvgPeriod2.Visible = true;
            panelImgElevatorPeriod2.Visible = true;
            panelTermsPeriod2.Visible = true;
            panelImgBn01Period2.DataBind();
            panelFlashSaleSvgPeriod2.DataBind();
            panelImgElevatorPeriod2.DataBind();
            panelTermsPeriod2.DataBind();
        }
    }

    // Only at date 2020-08-08: Enable the clipboard just like other coupons ; The rest date: show special message.
    public void ifShowCoupon4()
    {
        DateTime periodCoupon4Start = Convert.ToDateTime( SwitchServer<string>(serverType, "2020-08-08 00:00:00", "2020-08-06 21:00:00") );
        DateTime periodCoupon4End = Convert.ToDateTime( SwitchServer<string>(serverType, "2020-08-09 00:00:00", "2020-08-06 22:00:00") );
        if (DateTime.Now > periodCoupon4Start && DateTime.Now < periodCoupon4End)
        {
            // Could use coupon4.
            coupon4a.Attributes["class"] += " btnn";
            coupon4a.Attributes["data-clipboard-text"] = "SHOP88";
            coupon4a.Attributes["href"] = "#!";
            coupon4Text1.Visible = false;
            coupon4Text2.Visible = true;
            coupon4a.DataBind();
            coupon4Text1.DataBind();
            coupon4Text2.DataBind();
        } else
        {
            // Could not use coupon4.
            coupon4a.Attributes["class"] += " couponMsg";
            coupon4Text1.Visible = true;
            coupon4Text2.Visible = false;
            coupon4a.DataBind();
            coupon4Text1.DataBind();
            coupon4Text2.DataBind();
        }
    }

    // Bind default style product.
    private void BindProduct(Control webControlId, int eventId, int take = 0)
    {
        //每個 block ("HotDeal", for "ValueBuy", for "HighlightedBrand" ...) 都有自己的活動 ID，ID 跟維運要。
        DataTable dt = GetDataDt(eventId);

        if (dt.Rows.Count > 0)
        {
            if (take != 0)
            {
                dt = dt.AsEnumerable().Take(take).CopyToDataTable(); //帶入12隻商品，如果要全帶直接綁定dt (var take = dt;)
            }
            Repeater rp = webControlId.FindControl("rp_goods") as Repeater; //product1是前端<uc1:products>的ID
            rp.DataSource = dt;
            rp.DataBind();
        }
    }
    private DataTable GetDataDt(int id, bool showSpdGid = false)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        // 是否有額外指定商品群組 ID。
        if (showSpdGid)
        {
            searchProp.Cells.Add("SPD08");
        }
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }


    // (Start) Related to "RibbonFireTemp", but have no "Fire and pregress bar" logic:
    // =====================================================================================
    private void BindRibbonFireGoods(Options options)
    {
        // If offer spdGid (both case will be safe).
        Boolean ifSpdGid = options.spdGid != "";

        //SearchProp prop = new SearchProp();
        //prop.Cells.Add("SPD01");
        //prop.Cells.Add("SPD07");
        //prop.Cells.Add("SPD06");
        //prop.Cells.Add("SPD05");
        //if (ifSpdGid)
        //{
        //    prop.Cells.Add("SPD08");
        //}
        ////prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        //prop.SelectIDS.Add(options.eventId);
        //prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
        //prop.LgType = (this.Master as user_user).LgType;
        //string sqlTxt = ProductBL.GetSelectProduct(prop);
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = sqlTxt;
        //DataTable dt = SqlDbmanager.queryBySql(cmd);

        // Whati s this: I comment code above (ProductBL.GetSelectProduct(prop)) and replace with below one, since this event, all 6 rounds needs to shows up, but only one round is allow to sell (withing a time range), thus WP.WP09, and WP.WP10 logic needs to be remove to make these producs visible.
        string cmdTextWithoutWp09 = @"
SELECT
(COUNT(*) OVER()) as 'ASUM',
SPD01,
SPD07,
SPD06,
SPD05,
SPD08,
WP.WP02,
WP.WP24,
WPT02 as WP30,
WPT07,
WP.WP01,
WP.WP06,
WP.WP08_1,
WP.WP27,
Price as WPA06,
OPrice as WPA10,
WP39,
WP23,
B01
FROM WP WITH(NOLOCK)
INNER JOIN ProductPriceView WITH(NOLOCK) ON PID=WP01
LEFT JOIN WPTAG WITH(NOLOCK) ON WPT01=WP30
LEFT JOIN WPLG WITH(NOLOCK) ON WPLG01=WP01
INNER JOIN SPRODUCTSD ON SPD02=WP01
INNER JOIN SPRODUCTSM ON SPM01=SPD01
WHERE WP.WP05=1
AND WP06=1
AND WP.WP07=1
AND SPD01 IN (@eventId)
ORDER BY SPD05 DESC,WP01 DESC
";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = cmdTextWithoutWp09;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("eventId", System.Data.SqlDbType.Int, options.eventId));
        DataTable dt = SqlDbmanager.queryBySql(cmd);


        DataTable dtRealStock = GetRealStock(options.eventId, options.periodStart);
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

        if (dt.Rows.Count == 0)
        {
            return;
        }

        if (ifSpdGid)
        {
            var tmpSelect = dt.Select("SPD08 = '" + options.spdGid + "'");
            if (tmpSelect.Length == 0)
            {
                return;
            }
            dt = tmpSelect.CopyToDataTable();
        }

        if (options.take != 0)
        {
            dt = dt.AsEnumerable().Take(options.take).CopyToDataTable();
        }

        options.productDt = TransDt(dt);
        ((Repeater) options.control).DataSource = options.productDt;
        options.control.DataBind();
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
        Boolean ifFakeStock = true;
        decimal fakeStock = 500;

        decimal i = (decimal)sold;
        decimal s = (decimal)stock;
        if (ifFakeStock)
        {
            s = fakeStock;
        }
        
        if (s > 0)
        {
            i = i / s * 100;
            return Convert.ToInt32(100 - i);
            //w = Convert.ToInt32(d * 100);
            //w = 100 - w;
        }
        return 100;
    }

    // Todo_treegb: Recover!
    public static string SoldOut(int sold, int stock)
    {
        //string str = "false";
        //if (sold >= stock)
        //    str = "true";
        //return str;
        return "false";
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

    protected void rp_plist_ItemDataBound_FlashSaleShared(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, flashSaleDataBond);
    }
    //protected void rp_plist_ItemDataBound_FlashSalePeriod1(object sender, RepeaterItemEventArgs e)
    //{
    //    rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod1);
    //}
    //protected void rp_plist_ItemDataBound_FlashSalePeriod2(object sender, RepeaterItemEventArgs e)
    //{
    //    rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod2);
    //}
    //protected void rp_plist_ItemDataBound_FlashSalePeriod3(object sender, RepeaterItemEventArgs e)
    //{
    //    rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod3);
    //}
    //protected void rp_plist_ItemDataBound_FlashSalePeriod4(object sender, RepeaterItemEventArgs e)
    //{
    //    rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod4);
    //}
    //protected void rp_plist_ItemDataBound_FlashSalePeriod5(object sender, RepeaterItemEventArgs e)
    //{
    //    rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod5);
    //}
    //protected void rp_plist_ItemDataBound_FlashSalePeriod6(object sender, RepeaterItemEventArgs e)
    //{
    //    rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod6);
    //}

    protected void rp_plist_ItemDataBound_Bundle (object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionBundle);
    }
    protected void rp_plist_ItemDataBound_HighLightArea(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHighLightArea);
    }

    protected void rp_plist_ItemDataBound_main(object sender, RepeaterItemEventArgs e, Options options)
    {
        // Todo_treegb: Optimize it, follow what Derrick demonstrated.
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options2 = options.productDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options2.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options2.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options2.Min(p => p.Field<decimal>("WPA06")) - options2.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");
        }
    }
    // (End) Related to "RibbonFireTemp", but have no "Fire and pregress bar" logic:
    // =====================================================================================


    // Switch between 6 stage of FlashSaleStage1 available products and set counter (countdown).
    private void setFlashSaleLogic (
        Options optionFlashSalePeriod1,
        Options optionFlashSalePeriod2,
        Options optionFlashSalePeriod3,
        Options optionFlashSalePeriod4,
        Options optionFlashSalePeriod5,
        Options optionFlashSalePeriod6,
        Options optionFlashSalePeriod7
    )
    {
        DateTime dateNow = DateTime.Now;
        DateTime dateFlashSalePeriod1End = Convert.ToDateTime(optionFlashSalePeriod1.periodEnd);
        DateTime dateFlashSalePeriod2End = Convert.ToDateTime(optionFlashSalePeriod2.periodEnd);
        DateTime dateFlashSalePeriod3End = Convert.ToDateTime(optionFlashSalePeriod3.periodEnd);
        DateTime dateFlashSalePeriod4End = Convert.ToDateTime(optionFlashSalePeriod4.periodEnd);
        DateTime dateFlashSalePeriod5End = Convert.ToDateTime(optionFlashSalePeriod5.periodEnd);
        DateTime dateFlashSalePeriod6End = Convert.ToDateTime(optionFlashSalePeriod6.periodEnd);
        DateTime dateFlashSalePeriod7End = Convert.ToDateTime(optionFlashSalePeriod7.periodEnd);
        Double spend = 0d;
        Boolean ifCountdownUseDayUnit = false;

        if (dateNow < dateFlashSalePeriod1End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod1End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod1;
            BindRibbonFireGoods(optionFlashSalePeriod1);
        }
        else if (dateNow < dateFlashSalePeriod2End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod2End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod2;
            BindRibbonFireGoods(optionFlashSalePeriod2);
        }
        else if (dateNow < dateFlashSalePeriod3End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod3End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod3;
            BindRibbonFireGoods(optionFlashSalePeriod3);
        }
        else if (dateNow < dateFlashSalePeriod4End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod4End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod4;
            BindRibbonFireGoods(optionFlashSalePeriod4);
        }
        else if (dateNow < dateFlashSalePeriod5End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod5End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod5;
            BindRibbonFireGoods(optionFlashSalePeriod5);
        }
        else if (dateNow < dateFlashSalePeriod6End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod6End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod6;
            BindRibbonFireGoods(optionFlashSalePeriod6);
        }
        else if (dateNow < dateFlashSalePeriod7End)
        {
            spend = ((TimeSpan) (dateFlashSalePeriod7End - dateNow)).TotalSeconds;
            flashSaleDataBond = optionFlashSalePeriod7;
            BindRibbonFireGoods(optionFlashSalePeriod7);
            ifCountdownUseDayUnit = true;
        } else
        {
            // After event, have no real purpose, just for display something and not without anything.
            flashSaleDataBond = optionFlashSalePeriod7;
            BindRibbonFireGoods(optionFlashSalePeriod7);
            ifCountdownUseDayUnit = true;
        }

        if (!ifCountdownUseDayUnit)
        {
            panelFlashSalePeriod1To6.Visible = true;
            panelFlashSalePeriod1To6.DataBind();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setCountdown", "setCountdown(" + spend + ", 'ms', '.clock-countdown-shared');", true);

        } else
        {
            panelFlashSalePeriod7.Visible = true;
            panelFlashSalePeriod7.DataBind();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setCountdown", "setCountdown(" + spend + ", 'd', '.clock-countdown-shared');", true);
        }
    }


    // (Start) Bind Category and You May Also Like products.
    // =========================================================
    private void BindCatAndYMAL()
    {
        DataTable catDt = BindCategoryData(8);
        BindYMALData(catDt, 20);
    }

    // Bind Category product, also return those product it used.
    private DataTable BindCategoryData(int take = 0)
    {
        DataTable dt = GetCategoryGoodsRank((this.Master as user_user).LgType);

        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp1 = productCategorySec1.FindControl("rp_goods") as Repeater;
                rp1.DataSource = dt.Select("CNAME='彩妝'").Take(take).CopyToDataTable();
                rp1.DataBind();
            }

            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp2 = productCategorySec2.FindControl("rp_goods") as Repeater;
                rp2.DataSource = dt.Select("CNAME='保養'").Take(take).CopyToDataTable();
                rp2.DataBind();
            }

            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp3 = productCategorySec3.FindControl("rp_goods") as Repeater;
                rp3.DataSource = dt.Select("CNAME='保健'").Take(take).CopyToDataTable();
                rp3.DataBind();
            }

            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp4 = productCategorySec4.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("CNAME='生活'").Take(take).CopyToDataTable();
                rp4.DataBind();
            }

            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp5 = productCategorySec5.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("CNAME='美食'").Take(take).CopyToDataTable();
                rp5.DataBind();
            }

            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp6 = productCategorySec6.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("CNAME='母嬰'").Take(take).CopyToDataTable();
                rp6.DataBind();
            }
        }
        return dt;
    }

    /// <summary>
    /// 商品類別
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
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
        sb.Append("INNER JOIN VW_CATEGORY_RANK  AS TA ON TA.PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);

        return dt;
    }

    // Bind You May Also Like products.
    private void BindYMALData(DataTable catDt, int take = 0)
    {
        DataTable yMAL = FilterYMALData(catDt);

        if (yMAL.Rows.Count == 0)
        {
            return;
        }
        if (take != 0)
        {
            yMAL = yMAL.AsEnumerable().Take(take).CopyToDataTable();
        }
        Repeater rp = productYouMayAlsoLike.FindControl("rp_goods") as Repeater;
        rp.DataSource = yMAL;
        rp.DataBind();
    }

    private DataTable FilterYMALData(DataTable catDt)
    {
        // You May Also Like products, before doing any excluding.
        DataTable yMALFull = GetOrderRank((this.Master as user_user).LgType);
        if (yMALFull.Rows.Count == 0)
        {
            return yMALFull;
        }

        // You May Also Like products, have to exclude all "visible" Category products.
        List<long> excludeList = new List<long>();

        foreach (DataRow row in catDt.Rows)
        {
            excludeList.Add(Convert.ToInt64(row["WP01"].ToString()));
        }

        var yMALNew = from dr in yMALFull.AsEnumerable()
                      where !excludeList.Contains(dr.Field<long>("WP01"))
                      select dr;

        // Prevent yMALNew.CopyToDataTable() error when count is 0.
        if (yMALNew.Count() == 0) {
            return new DataTable();
        }
        return yMALNew.CopyToDataTable();
    }

    /// <summary>
    /// 你可能會喜歡
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
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
    // =========================================================
    // (End) Bind Category and You May Also Like products.



    // (Start) Coupon count.
    // ================================
    public void BindCoupnCount()
    {
        string ColKeyName = "CODE";
        string ColValueName = "COUNT";
        var list1 = new List<dynamic>();
        list1.Add(Coupon1);
        list1.Add(Coupon2);
        list1.Add(Coupon3);
        list1.Add(Coupon4);
        // Boosting (fake) number.
        var listBoostNum = new List<int>();
        listBoostNum.Add(200);
        listBoostNum.Add(200);
        listBoostNum.Add(200);
        listBoostNum.Add(200);
        var list2 = new List<string>();
        list2.Add("SHOP18");
        list2.Add("SHOP38");
        list2.Add("SHOP58");
        list2.Add("SHOP88");
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


    // For Debug purpose.
    public void PrintDebugMessage (string key, string msg) {
        ScriptManager.RegisterStartupScript(Page, typeof(Page), key, "printDebugMessage(`" + msg + "`);", true);
    }

    // For Debug purpose. - Convert DataTable to Json(datatype is string).
    protected string Dt2Json(DataTable dt)
    {
        //convert datatable to list using LINQ. Input datatable is "dt", returning list of "name:value" tuples
        var lst = dt.AsEnumerable()
            .Select(r => r.Table.Columns.Cast<DataColumn>()
                    .Select(c => new KeyValuePair<string, object>(c.ColumnName, r[c.Ordinal])
                   ).ToDictionary(z => z.Key, z => z.Value)
            ).ToList();
        //now serialize it
        var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        return serializer.Serialize(lst);
    }
}