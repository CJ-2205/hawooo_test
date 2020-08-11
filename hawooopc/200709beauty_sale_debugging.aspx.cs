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
//using System.Web.UI.UserControl;
using hawooo;
using Newtonsoft.Json;


public class foo
{
    public int intt = 0;
    public string stringg = "";
}
public partial class user_static_200709beauty_sale_debugging : System.Web.UI.Page
{
    public int serverType = 0;
    public string cacheVersion = "8";
    // Todo_treegb: change to real time.
    public string datePreorderEnd = "2001-01-01 01:01:01";
    public string dateFlashsaleEnd = "2001-01-01 01:01:01";
    public Dictionary<string, dynamic> optionFlashSale = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionHotDeal = new Dictionary<string, dynamic>();
    public Dictionary<string, dynamic> optionPreorder = new Dictionary<string, dynamic>();


    public void setOptions()
    {
        datePreorderEnd = toggleSvr<string>(serverType, "2020-07-11 23:59:59", "2020-07-13 13:00:00");
        dateFlashsaleEnd = toggleSvr<string>(serverType, "2020-07-15 23:59:00", "2020-07-14 23:50:00");

        optionPreorder.Add("webControlIds", rpPreorder);
        optionPreorder.Add("eventId", toggleSvr<int>(serverType, 1040, 798));
        optionPreorder.Add("take", toggleSvr<int>(serverType, 8, 7));

        optionFlashSale.Add("webControlIds", rpFlashSale);
        optionFlashSale.Add("eventId", toggleSvr<int>(serverType, 1040, 798));
        optionFlashSale.Add("take", toggleSvr<int>(serverType, 8, 7));
        optionFlashSale.Add("productDt", new DataTable());

        optionHotDeal.Add("webControlIds", rpHotDeal);
        optionHotDeal.Add("eventId", toggleSvr<int>(serverType, 1041, 798));
        optionHotDeal.Add("take", toggleSvr<int>(serverType, 8, 7));
        optionHotDeal.Add("productDt", new DataTable());
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200709beauty_sale.aspx" + Request.Url.Query);
            }

            foo fooo = new foo();
            fooo.intt = 1;
            fooo.stringg = 3;
            Response.Write("<h1>xxoo," + fooo.intt + fooo.stringg + "</h1>");
            // Related to "special stylee goods", but have no "Fire and pregress bar" logic:
            setOptions();

            
            //toggleVisible();
            //setCountdown(datePreorderEnd, dateFlashsaleEnd);

            //BindPreorderProductList(optionPreorder);
            //BindSpecialStyleeGoods(optionFlashSale);
            //BindSpecialStyleeGoods(optionHotDeal);


      
            // Not used in this event.
            //BindProduct(productHighlightedBrands, 777, 12);
        }

    }
    // Toggle data for different server type. 0 = test server, 1 or other int = real server
    public T toggleSvr<T>(int serverType, T realValue, T testValue)
    {
        return (serverType == 0) ? (T)testValue : (T)realValue;
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

    protected void rp_plist_ItemDataBound_FlashSale(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionFlashSale);
    }
    protected void rp_plist_ItemDataBound_HotDeal(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionHotDeal);
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


    // (Start) Related to "preorder" logic:
    // =====================================================================================
    [System.Web.Services.WebMethod]
    public static string DoAdd(PreOrderProduct obj)
    {
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());

        PreOrderProduct p = PreOrderProductBL.GetPreOrderObj(memberID, Convert.ToInt32(obj.POP03), obj.POP02, obj.POP07);

        PreOrderProductBL popBL = new PreOrderProductBL(memberID);

        bool rval = popBL.AddPreOrder(p);
        if (rval)
            return "TRUE";
        else
            return "FALSE";

    }
    [System.Web.Services.WebMethod]
    public static string DoDel(PreOrderProduct obj)
    {
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
        PreOrderProductBL popBL = new PreOrderProductBL(memberID);
        obj.POP01 = memberID;

        bool rval = popBL.DelPreOrder(obj);
        if (rval)
            return "TRUE";
        else
            return "FALSE";
    }
    [System.Web.Services.WebMethod]
    public static string GetAddList(string LG)
    {
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
        PreOrderProductBL popBL = new PreOrderProductBL(memberID);
        if (LG == "en")
            popBL.LG = LangType.en;
        else
            popBL.LG = LangType.zh;

        DataTable dt = popBL.GetPreOrderList();
        dt = ChangPrice(dt);
        string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
        return json;
    }
    [System.Web.Services.WebMethod]
    public static string GetItem(string LG, string itemID)
    {
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
        PreOrderProductBL popBL = new PreOrderProductBL(memberID);
        if (LG == "en")
            popBL.LG = LangType.en;
        else
            popBL.LG = LangType.zh;

        DataTable dt = popBL.GetPreOrderItem(itemID);
        foreach (DataRow dr in dt.Rows)
        {
            dr["WPA06"] = Convert.ToDecimal(dr["WPA06"].ToString()) - Convert.ToDecimal(dr["WPA07"].ToString());
        }
        string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
        return json;
    }


    private DataTable _preOrderDT = new DataTable();
    private DataTable _preOrderSumInfo = new DataTable();
    public void BindPreorderProductList(Dictionary<string, dynamic> optionPreorder)
    {
        SearchProp prop = new SearchProp();
        prop.GoodsState.Add(0);
        prop.GoodsState.Add(1);
        prop.Cells.Add("ISNULL(SPD07,0) as SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
        prop.Cells.Add("SPD08");//群組
        prop.Cells.Add("WPA11");
        prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, (int)optionPreorder["eventId"]));
        _preOrderDT = SqlDbmanager.queryBySql(cmd);

        _preOrderDT = ChangPrice(_preOrderDT);

        _preOrderSumInfo = PreOrderProductBL.GetPreOrderSumInfo();

        if (_preOrderDT.Rows.Count > 0)
        {
            DataView dv = new DataView(_preOrderDT);
            dv.Sort = "SPD05 DESC";
            DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD08");
            //mdt.Select("SPD08='A'").CopyToDataTable();

            optionPreorder["webControlIds"].DataSource = (optionPreorder["take"] == 0) ? mdt : mdt.AsEnumerable().Take((int)optionPreorder["take"]).CopyToDataTable();
            optionPreorder["webControlIds"].DataBind();
        }
    }
    // comment this if this method been defined twice.
    //private static DataTable ChangPrice(DataTable dt)
    //{
    //    DataTable rDT = new DataTable();
    //    rDT = dt;
    //    foreach (DataRow dr in rDT.Rows)
    //    {
    //        dr["WPA06"] = Convert.ToDecimal(dr["WPA06"].ToString()) - Convert.ToDecimal(dr["WPA07"].ToString());
    //    }
    //    return rDT;
    //}
    protected void rpPreProducts_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _preOrderDT.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("WPA11"));
            DropDownList ddlOption = (DropDownList)e.Item.FindControl("ddl_Option");
            DropDownList ddlQty = (DropDownList)e.Item.FindControl("ddl_Qty");
            ddlOption.Items.Clear();
            ddlOption.Items.Add(new ListItem("", ""));
            //ddlQty.Items.Clear();
            //ddlQty.Items.Add(new ListItem("", ""));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM" + PbClass.GetPrice(WPA06.ToString(), "7.6");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(Discount.ToString(), "7.6").Replace("-", "-RM");
            foreach (DataRow dr in options)
            {
                int qty = Convert.ToInt32(dr["WPA04"].ToString());

                ; ddlOption.Items.Add(new ListItem(dr["WPA02"].ToString(), dr["WPA01"].ToString() + "#" + qty));

            }
            Literal info = (Literal)e.Item.FindControl("lit_Info");
            info.Text = "0";
            var buySum = _preOrderSumInfo.AsEnumerable().FirstOrDefault(r => r.Field<int>("POP03").Equals(pid));
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
    public void BindAddList()
    {
        if (Session["A01"] != null)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "bind", "GetList();", true);
        }

    }

    private void toggleVisible()
    {
        //PanelPreorder.Visible = false;
        //PanelFlashsale.Visible = true;

        //Response.Write("<script>console.log('" + "setttt ..." + "');</script>");

        if (DateTime.Now <= Convert.ToDateTime(datePreorderEnd))
        {
            //Response.Write("<script>console.log('" + "PanelPreorder ..." + "');</script>");
            PanelPreorder.Visible = true;
            PanelFlashsale.Visible = false;
        }
        else
        {
            //Response.Write("<script>console.log('" + "PanelFlashsale ..." + "');</script>");
            PanelPreorder.Visible = false;
            PanelFlashsale.Visible = true;
        }
        //PanelPreorder.DataBind();
        //PanelFlashsale.DataBind();
    }
    
    private void setCountdown(string datePreorderEndStr, string dateFlashsaleEndStr)
    {
        DateTime dateNow = DateTime.Now;
        DateTime datePreorderEnd = Convert.ToDateTime(datePreorderEndStr);
        DateTime dateFlashsaleEnd = Convert.ToDateTime(dateFlashsaleEndStr);
        Double spend = 0d;
        if (dateNow < datePreorderEnd)
        {
            TimeSpan ts = datePreorderEnd - dateNow;
            spend = ts.TotalSeconds;

        }
        else if (dateNow < dateFlashsaleEnd)
        {
            TimeSpan ts = dateFlashsaleEnd - dateNow;
            spend = ts.TotalSeconds;
        }
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setCountdown(" + spend + ");", true);
    }
    // =====================================================================================
    // (End) Related to "preorder" logic:


    //For Debug purpose.Convert DataTable to Json(datatype is string).
    protected string dt2Json(DataTable dt)
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