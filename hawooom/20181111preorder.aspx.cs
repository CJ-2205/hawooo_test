using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;


public partial class mobile_20181111preorder : System.Web.UI.Page
{
    //private int eid = 483; //測試
    private int eid = 565; //正式 
    private void DoRedirect()
    {
        DateTime _time = new DateTime(2018, 11, 11, 00, 00, 00);
        if (DateTime.Now > _time)
        {
            //string strSql =
            
            //Response.Redirect("20181111flashsales.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DoRedirect();
            BindAddList();
            BindProductList(eid);
        }
    }
    public void BindAddList()
    {
        if (Session["A01"] != null)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "bind", "GetList();", true);
        }
    }

    private DataTable _preOrderDt = new DataTable();
    private DataTable _preOrderSumInfo = new DataTable();
    public void BindProductList(int selectID)
    {
        _preOrderSumInfo = PreOrderProductBL.GetPreOrderSumInfo();

        SearchProp prop = new SearchProp();
        prop.GoodsState.Add(0);
        prop.GoodsState.Add(1);
        prop.Cells.Add("SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
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
        DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06");
        rpPreProducts.DataSource = mdt;
        rpPreProducts.DataBind();



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
            var options = _preOrderDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid));
            DropDownList ddlOption = (DropDownList)e.Item.FindControl("ddl_Option");
            DropDownList ddlQty = (DropDownList)e.Item.FindControl("ddl_Qty");
            ddlOption.Items.Clear();
            ddlOption.Items.Add(new ListItem("", ""));
            //ddlQty.Items.Clear();
            //ddlQty.Items.Add(new ListItem("", ""));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "7.6");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "RM " + PbClass.GetPrice(WPA10.ToString(), "7.6");
            foreach (DataRow dr in options)
            {
                int qty = Convert.ToInt32(dr["WPA04"].ToString());
                ddlOption.Items.Add(new ListItem(dr["WPA02"].ToString(), dr["WPA01"].ToString() + "#" + qty));
            }

            Literal info = (Literal)e.Item.FindControl("lit_Info");
            info.Text = "HOT ITEM";
            var buySum = _preOrderSumInfo.AsEnumerable().FirstOrDefault(r => r.Field<int>("POP03").Equals(pid));

            if (buySum != null)
            {
                string showBuyQty = "0";
                int plusCount = options.First().Field<int>("SPD07");
                showBuyQty = (Convert.ToInt32(buySum["BPEP"].ToString()) + plusCount).ToString();
                info.Text = string.Format("{0} added", showBuyQty);
            }

        }
    }
}