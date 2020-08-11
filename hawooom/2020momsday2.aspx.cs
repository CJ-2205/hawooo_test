using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_static_2020momsday2 : System.Web.UI.Page
{
    private string str_preorder_start_time = "2020-05-05 00:00:00";  //2020-05-05 00:00:00
    private string str_flash_start_time = "2020-07-10 00:00:00"; //2020-05-10 00:00:00
    private string str_flash_end_time = "2020-07-12 00:00:00"; //2020-05-12 00:00:00
    private int eid = 798; //949

    //測試版專用
    //private string str_preorder_start_time = "2020-05-04 14:00:00";
    //private string str_flash_start_time = "2020-05-04 14:05:00";
    //private string str_flash_end_time = "2020-05-11 00:00:00";
    //private int eid = 798;//測試版專用

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductList(eid);
            SetPanel();
            SetTime();
            BindHotDeal();
            BindHightBrand();
            BindTop8ClassData();
            BindRandom15Data();

        }
    }

    private void SetPanel()
    {
        DateTime preorder_start_time = Convert.ToDateTime(str_preorder_start_time);
        DateTime flash_start_time = Convert.ToDateTime(str_flash_start_time);
        DateTime now = DateTime.Now;
        if (now < preorder_start_time)
            before_preorder.Visible = true;
        else if (now < flash_start_time)
            preorder.Visible = true;
        else
            flash_sale.Visible = true;
    }
    private void BindHotDeal()
    {
        DataTable dt = BindData(942);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }


    private void BindHightBrand()
    {
        //DataTable dt = BindData(942);
        DataTable dt = BindData(944);
        if (dt.Rows.Count > 0)
        {
            var take = dt.AsEnumerable().Take(8).CopyToDataTable();
            Repeater rp = products3.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();
        }
    }
    private DataTable BindData(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
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
        DataTable dt = GetGoods((this.Master as mobile).LgType, "top4");
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='彩妝'").Length > 0)
            {
                Repeater rp = products4.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='彩妝'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='保養'").Length > 0)
            {
                Repeater rp = products5.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='保養'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='保健'").Length > 0)
            {
                Repeater rp = products6.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='保健'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='生活'").Length > 0)
            {
                Repeater rp = products7.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='生活'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='美食'").Length > 0)
            {
                Repeater rp = products8.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='美食'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
            if (dt.Select("CNAME='母嬰'").Length > 0)
            {
                Repeater rp = products9.FindControl("rp_goods") as Repeater;
                rp.DataSource = dt.Select("CNAME='母嬰'").Take(8).CopyToDataTable();
                rp.DataBind();
            }
        }
    }
    private void BindRandom15Data()
    {
        DataTable dt = GetGoods((this.Master as mobile).LgType, "top15");
        Repeater rp = products10.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();
    }
    public DataTable GetGoods(LangType lg, string et = "")
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        if (et == "top15")
        {
            sb.Append("TOP 15 ");
        }
        sb.Append("B01,");
        sb.Append("WP01,");
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
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("INNER JOIN EVENT0420 AS T ON T.PID=WP01 ");
        sb.Append("WHERE NOT EXISTS");
        sb.Append("(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (931,932) AND WP01=SPD02) ");
        if (et == "top4")
        {
            sb.Append("AND WP01!=21569 ");
            sb.Append("AND VRANK<12 ");
        }
        if (et == "top15")
        {
            sb.Append("AND VRANK>=12 ");
            sb.Append("ORDER BY NEWID()");
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime(str_preorder_start_time);
        if (stime >= etime)
            etime = Convert.ToDateTime(str_flash_end_time);
        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }

    protected void rpPreProducts_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _preOrderDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("WPA11"));
            DropDownList ddlOption = (DropDownList)e.Item.FindControl("ddl_Option");
            DropDownList ddlQty = (DropDownList)e.Item.FindControl("ddl_Qty");
            ddlQty.Items.Add(new ListItem("1", "1"));
            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "7.6");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(Discount.ToString(), "7.6").Replace("-", "-RM");

            foreach (DataRow dr in options)
            {
                int qty = Convert.ToInt32(dr["WPA04"].ToString());
                ddlOption.Items.Add(new ListItem(dr["WPA02"].ToString(), dr["WPA01"].ToString() + "#" + qty));
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
        prop.Cells.Add("SPD08");//群組
        prop.Cells.Add("WPA11");
        prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.LgType = (this.Master as mobile).LgType;
        string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;


        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, selectID));
        _preOrderDt = SqlDbmanager.queryBySql(cmd);
        _preOrderDt = ChangPrice(_preOrderDt);

        if (_preOrderDt.Rows.Count > 0)
        {
            DataView dv = new DataView(_preOrderDt);
            dv.Sort = "SPD05 DESC";
            DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD08");
            rp1.DataSource = mdt.AsEnumerable().Take(6).CopyToDataTable();
            rp1.DataBind();

            mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD07", "SPD08");
            rp_flash.DataSource = mdt.AsEnumerable().Take(6).CopyToDataTable();
            rp_flash.DataBind();

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



    /// <param name="sold">商品售出數量</param>
    /// <returns></returns>
    public static int FireCount(int sold)
    {
        decimal i = (decimal)sold;
        decimal s = 300;//總進度條商品數目
        if (s > 0)
        {
            i = i / s * 100;
            return Convert.ToInt32(100 - i);
        }
        return 100;
    }


    protected void rp_flash_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = _preOrderDt.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("WPA11"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4新增綁定折扣價格

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "7.6");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "7.6");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "7.6").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

            Image img_fire = ((Image)e.Item.FindControl("img_fire"));
            Literal lit_buy = ((Literal)e.Item.FindControl("lit_buy"));
            lit_buy.Text = "0";
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
            if (Convert.ToInt32(showBuyQty) >= 100)
                img_fire.ImageUrl = @"https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/fire.svg";
            else
                img_fire.ImageUrl = "";
            lit_buy.Text = string.Format("{0}", showBuyQty);
        }

    }
}