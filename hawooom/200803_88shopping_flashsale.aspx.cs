using System;
using System.Activities.Debugger;
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
using System.Xml.Serialization;
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
    // Purpose: Use Panel to toggle visibility. Related to this eventId.
    public Control panelUlBlock;
    public Control panelCountdown;
    // All redirect except one.
    public Boolean ifProductHrefRedirect = true;
}

public partial class mobile_static_200803_88shopping_flashsale : System.Web.UI.Page
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

    public void setOptions()
    {
        optionFlashSalePeriod1 = new Options()
        {
            control = rpFlashSalePeriod1,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 0),
            spdGid = SwitchServer<string>(serverType, "A", "11"),
            periodStart = SwitchServer<string>(serverType, "2020-08-03 12:00:00", "2020-08-03 23:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-03 23:59:59", "2020-08-05 18:00:00"),
            panelUlBlock = panelFlashSalePeriod1,
            panelCountdown = panelFlashSaleCountPeriod1
        };
        optionFlashSalePeriod2 = new Options()
        {
            control = rpFlashSalePeriod2,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 0),
            spdGid = SwitchServer<string>(serverType, "B", "1"),
            periodStart = SwitchServer<string>(serverType, "2020-08-04 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-04 23:59:59", "2020-08-05 23:50:00"),
            panelUlBlock = panelFlashSalePeriod2,
            panelCountdown = panelFlashSaleCountPeriod2
        };
        optionFlashSalePeriod3 = new Options()
        {
            control = rpFlashSalePeriod3,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 0),
            spdGid = SwitchServer<string>(serverType, "C", "0"),
            periodStart = SwitchServer<string>(serverType, "2020-08-05 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-05 23:59:59", "2020-08-05 23:51:00"),
            panelUlBlock = panelFlashSalePeriod3,
            panelCountdown = panelFlashSaleCountPeriod3
        };
        optionFlashSalePeriod4 = new Options()
        {
            control = rpFlashSalePeriod4,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 0),
            spdGid = SwitchServer<string>(serverType, "D", "1"),
            periodStart = SwitchServer<string>(serverType, "2020-08-06 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-06 23:59:59", "2020-08-05 23:52:00"),
            panelUlBlock = panelFlashSalePeriod4,
            panelCountdown = panelFlashSaleCountPeriod4
        };
        optionFlashSalePeriod5 = new Options()
        {
            control = rpFlashSalePeriod5,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 0),
            spdGid = SwitchServer<string>(serverType, "E", "0"),
            periodStart = SwitchServer<string>(serverType, "2020-08-07 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-07 23:59:59", "2020-08-05 23:53:00"),
            panelUlBlock = panelFlashSalePeriod5,
            panelCountdown = panelFlashSaleCountPeriod5
        };
        optionFlashSalePeriod6 = new Options()
        {
            control = rpFlashSalePeriod6,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 0),
            spdGid = SwitchServer<string>(serverType, "F", "1"),
            periodStart = SwitchServer<string>(serverType, "2020-08-08 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-08 23:59:59", "2020-08-06 23:54:00"),
            panelUlBlock = panelFlashSalePeriod6,
            panelCountdown = panelFlashSaleCountPeriod6
        };
        optionFlashSalePeriod7 = new Options()
        {
            control = rpFlashSalePeriod7,
            eventId = SwitchServer<int>(serverType, 1094, 798),
            take = SwitchServer<int>(serverType, 0, 4),
            spdGid = SwitchServer<string>(serverType, "G", "11"),
            periodStart = SwitchServer<string>(serverType, "2020-08-09 00:00:00", "2020-08-05 00:00:00"),
            periodEnd = SwitchServer<string>(serverType, "2020-08-11 11:59:59", "2020-08-11 11:59:59"),
            panelUlBlock = panelFlashSalePeriod7,
            panelCountdown = panelFlashSaleCountPeriod7
        };
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            setOptions();
            showImgOfPeriod();

            List<Options> optionList = new List<Options>();
            optionList.Add(optionFlashSalePeriod1);
            optionList.Add(optionFlashSalePeriod2);
            optionList.Add(optionFlashSalePeriod3);
            optionList.Add(optionFlashSalePeriod4);
            optionList.Add(optionFlashSalePeriod5);
            optionList.Add(optionFlashSalePeriod6);
            optionList.Add(optionFlashSalePeriod7);
            setFlashSaleLogic(optionList);

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
        DateTime periodImgSwitch = Convert.ToDateTime( SwitchServer<string>(serverType, "2020-08-09 00:00:00", "2020-08-07 19:05:00") );
        if (DateTime.Now < periodImgSwitch)
        {
            panelImgBbn01Period1.Visible = true;
            panelImgElevatorPeriod1.Visible = true;
            panelTermsPeriod1.Visible = true;
            panelImgBbn01Period1.DataBind();
            panelImgElevatorPeriod1.DataBind();
            panelTermsPeriod1.DataBind();
        } else
        {
            panelImgBbn01Period2.Visible = true;
            panelImgElevatorPeriod2.Visible = true;
            panelTermsPeriod2.Visible = true;
            panelImgBbn01Period2.DataBind();
            panelImgElevatorPeriod2.DataBind();
            panelTermsPeriod2.DataBind();
        }
    }
    
    // Only at date 2020-08-08: Enable the clipboard just like other coupons ; The rest date: show special message.
    public void ifShowCoupon4()
    {
        DateTime periodCoupon4Start = Convert.ToDateTime( SwitchServer<string>(serverType, "2020-08-08 00:00:00", "2020-08-06 21:40:00") );
        DateTime periodCoupon4End = Convert.ToDateTime( SwitchServer<string>(serverType, "2020-08-09 00:00:00", "2020-08-06 22:10:00") );
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
        searchProp.LgType = (this.Master as mobile).LgType;
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
        //prop.LgType = (this.Master as mobile).LgType;
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
        // (Start) Only for ifProductHrefRedirect related logic.
        options.productDt.Columns.Add("ifProductHrefRedirect");
        foreach (DataRow dr in options.productDt.Rows)
        {
            dr["ifProductHrefRedirect"] = options.ifProductHrefRedirect;
        }
        // (End) Only for ifProductHrefRedirect related logic.
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

    protected void rp_plist_ItemDataBound_FlashSalePeriod1(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod1);
    }
    protected void rp_plist_ItemDataBound_FlashSalePeriod2(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod2);
    }
    protected void rp_plist_ItemDataBound_FlashSalePeriod3(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod3);
    }
    protected void rp_plist_ItemDataBound_FlashSalePeriod4(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod4);
    }
    protected void rp_plist_ItemDataBound_FlashSalePeriod5(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod5);
    }
    protected void rp_plist_ItemDataBound_FlashSalePeriod6(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod6);
    }
    protected void rp_plist_ItemDataBound_FlashSalePeriod7(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSalePeriod7);
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


    // Switch between 7 stage of FlashSaleStage1 available products and set counter (countdown).
    private void setFlashSaleLogic (List<Options> optionList)
    {
        DateTime dateNow = DateTime.Now;
        Double spend = 0d;
        // While "i" means the index for both "unvisible" and "visible", "visibleI" means the index of only those visibles (optionList item).
        int visibleI = -1;
        // While "optionList.Count" means the length for both "unvisible" and "visible", "visibleLength" means the length of only those visibles (optionList item).
        int visibleLength = 0;

        for (int i = 0 ; i < optionList.Count ; i++)
        {
            DateTime datePeriodN = Convert.ToDateTime(optionList[i].periodEnd);
            if (dateNow < datePeriodN)
            {
                visibleI++;
                // The first displaying/visible Options.
                if (visibleI == 0)
                {
                    // Set visibleLength only once.
                    visibleLength = optionList.Count - i;
                    spend = ((TimeSpan) (datePeriodN - dateNow)).TotalSeconds;
                    optionList[i].ifProductHrefRedirect = false;
                    
                    ((Panel) optionList[i].panelCountdown).Visible = true;
                    ((Panel) optionList[i].panelCountdown).DataBind();
                }

                // ??
                if (visibleLength > 1 && visibleI != visibleLength - 1)
                {
                    BindRibbonFireGoods(optionList[i]);
                    ((Panel) optionList[i].panelUlBlock).Visible = true;
                    ((Panel) optionList[i].panelUlBlock).DataBind();
                }
                if (visibleLength > 1 && visibleI == visibleLength - 1)
                {
                    // Do nothing (don't make round7 block visible).
                }
                if (visibleLength == 1 /*&& visibleI == optionList.Count - 1*/)
                {
                    // Make round7 block visible.
                    BindRibbonFireGoods(optionList[i]);
                    ((Panel) optionList[i].panelUlBlock).Visible = true;
                    ((Panel) optionList[i].panelUlBlock).DataBind();
                }
            }
        }

        ScriptManager.RegisterStartupScript(Page, typeof(Page), "setCountdown", "setCountdown(" + spend + ", 'ms', '.clock-countdown-shared');", true);
    }


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