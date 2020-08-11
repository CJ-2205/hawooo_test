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

public partial class user_static_200709beauty_sale_preorder : System.Web.UI.Page
{
    public int serverType = 1;
    public string cacheVersion = "5";
    // Todo_treegb: Set this to real time.
    public string datePreorderEnd = "2001-01-01 01:01:01";
    public string dateFlashsaleEnd = "2001-01-01 01:01:01";
    public Dictionary<string, dynamic> optionPreorder = new Dictionary<string, dynamic>();

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        setOptions();
        if (DateTime.Now >= Convert.ToDateTime(datePreorderEnd))
        {
            Response.Redirect("200709beauty_sale_flashsale.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200709beauty_sale_preorder.aspx" + Request.Url.Query);
            }
            // Moved to Page_PreLoad(). 
            //setOptions();
            setCountdown(datePreorderEnd, dateFlashsaleEnd);
            // Pre-loead "preorder cart" products.
            BindAddList();
            BindPreorderProductList(optionPreorder);
        }

    }
    public T toggleSvr<T>(int serverType, T realValue, T testValue)
    {
        return (serverType == 0) ? (T) testValue : (T) realValue;
    }
    public void setOptions()
    {
        datePreorderEnd = toggleSvr<string>(serverType, "2020-07-11 23:59:59", "2020-07-09 23:00:00") ;
        dateFlashsaleEnd = toggleSvr<string>(serverType, "2020-07-15 23:59:00", "2020-07-09 23:50:00") ;

        optionPreorder.Add("webControlIds", rpPreorder);
        optionPreorder.Add("eventId", toggleSvr<int>(serverType, 1040, 798));
        optionPreorder.Add("take", toggleSvr<int>(serverType, 0, 7));
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
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, (int) optionPreorder["eventId"]));
        _preOrderDT = SqlDbmanager.queryBySql(cmd);

        _preOrderDT = ChangPrice(_preOrderDT);

        _preOrderSumInfo = PreOrderProductBL.GetPreOrderSumInfo();

        if (_preOrderDT.Rows.Count > 0)
        {
            DataView dv = new DataView(_preOrderDT);
            dv.Sort = "SPD05 DESC";
            DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD08");
            //mdt.Select("SPD08='A'").CopyToDataTable();

            optionPreorder["webControlIds"].DataSource = (optionPreorder["take"] == 0) ? mdt : mdt.AsEnumerable().Take((int) optionPreorder["take"]).CopyToDataTable();
            optionPreorder["webControlIds"].DataBind();
        }
    }
    // comment this if this method been defined twice.
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
    protected void rpPreProducts_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        int boostRatio = 4;
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
                showBuyQty = (boostRatio * (Convert.ToInt32(buySum["BCOUNT"].ToString()) + plusCount)).ToString();
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
            
        } else if (dateNow < dateFlashsaleEnd)
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