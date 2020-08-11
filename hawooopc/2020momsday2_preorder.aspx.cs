using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using Newtonsoft.Json;


public partial class user_2020momsday2_preorder : System.Web.UI.Page
{
    public string datePreorderEnd = "2020-12-08 22:45:00";
    public string dateFlashsaleEnd = "2020-12-08 23:50:00";


    //正式版測試用
    //private int eid = 1041;
    //private int eid = 949;
    //private int eid = 930;

    //測試版專用
    //private int eid = 798;

    //private int eid1 = 949;
    //private int eid2 = 950;
    //private int eid3 = 951;


    protected void Page_PreLoad(object sender, EventArgs e)
    {
        if (DateTime.Now >= Convert.ToDateTime(datePreorderEnd))
        {
            Response.Redirect("2020momsday2flash_sale.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //lit_preorder.Text = Request.Cookies["CARTID"].Value.ToString();
            //DoRedirect();
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            if (PbClass.isMobile(u))
            {
                Response.Redirect("../mobile/" + "2020momsday2_preorder.aspx");
            }
            BindProductList(eid);
            BindAddList();
        }
    }
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
    public void BindProductList(int selectID)
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
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, selectID));
        _preOrderDT = SqlDbmanager.queryBySql(cmd);

        _preOrderDT = ChangPrice(_preOrderDT);

        _preOrderSumInfo = PreOrderProductBL.GetPreOrderSumInfo();

        if (_preOrderDT.Rows.Count > 0)
        {
            DataView dv = new DataView(_preOrderDT);
            dv.Sort = "SPD05 DESC";
            DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD08");

            //rp.DataSource = mdt;
            //rp.DataBind();

            //rp2.DataSource = mdt;
            //rp2.DataBind();

            //rp3.DataSource = mdt;
            //rp3.DataBind();



            if (mdt.Select("SPD08='A'").Length > 0)
            {
                rp.DataSource = mdt.Select("SPD08='A'").CopyToDataTable();
                rp.DataBind();
            }
            if (mdt.Select("SPD08='B'").Length > 0)
            {
                rp2.DataSource = mdt.Select("SPD08='B'").CopyToDataTable();
                rp2.DataBind();
            }
            if (mdt.Select("SPD08='C'").Length > 0)
            {
                rp3.DataSource = mdt.Select("SPD08='C'").CopyToDataTable();
                rp3.DataBind();
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

}

