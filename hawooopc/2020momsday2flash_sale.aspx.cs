using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_static_2020momsday2flash_sale : System.Web.UI.Page
{

    //private int eid = 949;
    private int eid = 798;//測試版專用

    //protected void Page_PreLoad(object sender, EventArgs e)
    //{
    //    if (DateTime.Now < Convert.ToDateTime("2020-05-10 00:00:00"))
    //    {
    //        Response.Redirect("2020momsday2_preorder.aspx");
    //    }

    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/2020momsday2flash_sale.aspx" + Request.Url.Query);
        if (!IsPostBack)
        {
            SetTime();
            BindProductList(eid);
        }
    }


    private void SetTime()
    {
        DateTime stime = DateTime.Now;
        DateTime etime = Convert.ToDateTime("2020-05-12 00:00:00");
        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
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
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;


        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, selectID));
        _preOrderDt = SqlDbmanager.queryBySql(cmd);
        _preOrderDt = ChangPrice(_preOrderDt);

        DataView dv = new DataView(_preOrderDt);
        dv.Sort = "SPD05 DESC";

        DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06", "SPD07", "SPD08");


        rp1.DataSource = mdt;
        rp1.DataBind();


        rp2.DataSource = mdt;
        rp2.DataBind();

        rp3.DataSource = mdt;
        rp3.DataBind();

        //if (mdt.Select("SPD08='A'").Length > 0)
        //{
        //    rp1.DataSource = mdt.Select("SPD08='A'").CopyToDataTable();
        //    rp1.DataBind();

        //}
        //if (mdt.Select("SPD08='B'").Length > 0)
        //{
        //    rp2.DataSource = mdt.Select("SPD08='B'").CopyToDataTable();
        //    rp2.DataBind();

        //}
        //if (mdt.Select("SPD08='C'").Length > 0)
        //{
        //    rp3.DataSource = mdt.Select("SPD08='C'").CopyToDataTable();
        //    rp3.DataBind();
        //}


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
}