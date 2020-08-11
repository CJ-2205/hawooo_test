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

public partial class user_20181111preorder : System.Web.UI.Page
{
    private int eid = 483;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindAddList();
            BindProductList(eid);
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
        string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
        return json;
    }


    private DataTable PreOrderDT = new DataTable();
    public void BindProductList(int selectID)
    {
        SearchProp prop = new SearchProp();
        prop.GoodsState.Add(0);
        prop.GoodsState.Add(1);
        prop.Cells.Add("SPD05");
        prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, selectID));
        PreOrderDT = SqlDbmanager.queryBySql(cmd);
        PreOrderDT.DefaultView.ToTable(true, "WP01", "WP08_1", "WP02", "WPA06", "WPA10");
        DataTable mdt = PreOrderDT.DefaultView.ToTable();
        rpPreProducts.DataSource = mdt;
        rpPreProducts.DataBind();
    }
    protected void rpPreProducts_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = PreOrderDT.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid));
            DropDownList ddlOption = (DropDownList)e.Item.FindControl("ddl_Option");
            DropDownList ddlQty = (DropDownList)e.Item.FindControl("ddl_Qty");
            ddlOption.Items.Clear();
            ddlOption.Items.Add(new ListItem("", ""));
            //ddlQty.Items.Clear();
            //ddlQty.Items.Add(new ListItem("", ""));
            foreach (DataRow dr in options)
            {
                int qty = Convert.ToInt32(dr["WPA04"].ToString());
                ddlOption.Items.Add(new ListItem(dr["WPA02"].ToString(), dr["WPA01"].ToString() + "#" + qty));
                //for (int i = 1; i <= qty; i++)
                //{
                //    ddlQty.Items.Add(new ListItem(i.ToString(), i.ToString()));
                //}
            }
        }

    }

    public void BindAddList()
    {
        if (Session["A01"] != null)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "bind", "GetList();", true);
        }

    }
    public static string test1()
    {
        return "123";
    }
}

