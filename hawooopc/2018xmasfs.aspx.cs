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

public partial class user_2018xmasfs : System.Web.UI.Page
{
    private int eid = 483; //測試
    //private int eid = 596; //正式 


    protected void Page_PreLoad(object sender, EventArgs e)
    {
        //DateTime time = new DateTime(2018,12,12,00,00,00);
        //if(DateTime.Now<time)
        //    Response.Redirect("../user/2018xmaspreorder.aspx");
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            if (PbClass.isMobile(u))
            {
                Response.Redirect("../mobile/2018xmasfs.aspx");
            }
            BindProductList(eid);
            //BindAddList();
        }
    }
    //[System.Web.Services.WebMethod]
    //public static string DoAdd(PreOrderProduct obj)
    //{
    //    int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());

    //    PreOrderProduct p = PreOrderProductBL.GetPreOrderObj(memberID, Convert.ToInt32(obj.POP03), obj.POP02, obj.POP07);

    //    PreOrderProductBL popBL = new PreOrderProductBL(memberID);

    //    bool rval = popBL.AddPreOrder(p);
    //    if (rval)
    //        return "TRUE";
    //    else
    //        return "FALSE";

    //}
    //[System.Web.Services.WebMethod]
    //public static string DoDel(PreOrderProduct obj)
    //{
    //    int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
    //    PreOrderProductBL popBL = new PreOrderProductBL(memberID);
    //    obj.POP01 = memberID;

    //    bool rval = popBL.DelPreOrder(obj);
    //    if (rval)
    //        return "TRUE";
    //    else
    //        return "FALSE";
    //}
    //[System.Web.Services.WebMethod]
    //public static string GetAddList(string LG)
    //{
    //    int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
    //    PreOrderProductBL popBL = new PreOrderProductBL(memberID);
    //    if (LG == "en")
    //        popBL.LG = LangType.en;
    //    else
    //        popBL.LG = LangType.zh;

    //    DataTable dt = popBL.GetPreOrderList();
    //    dt = ChangPrice(dt);
    //    string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
    //    return json;
    //}
    //[System.Web.Services.WebMethod]
    //public static string GetItem(string LG, string itemID)
    //{
    //    int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
    //    PreOrderProductBL popBL = new PreOrderProductBL(memberID);
    //    if (LG == "en")
    //        popBL.LG = LangType.en;
    //    else
    //        popBL.LG = LangType.zh;

    //    DataTable dt = popBL.GetPreOrderItem(itemID);
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        dr["WPA06"] = Convert.ToInt32(dr["WPA06"].ToString()) - Convert.ToInt32(dr["WPA07"].ToString());
    //    }
    //    string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
    //    return json;
    //}


    private DataTable PreOrderDT = new DataTable();
    private DataTable _preOrderSumInfo = new DataTable();
    public void BindProductList(int selectID)
    {
        //SearchProp prop = new SearchProp();
        //prop.GoodsState.Add(0);
        //prop.GoodsState.Add(1);
        //prop.Cells.Add("SPD06");
        //prop.Cells.Add("SPD05");
        //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        //prop.LgType = (this.Master as user_user).LgType;
        //string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = sqlTxt;
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, selectID));
        //PreOrderDT = SqlDbmanager.queryBySql(cmd);

        //PreOrderDT = ChangPrice(PreOrderDT);

        //_preOrderSumInfo = PreOrderProductBL.GetPreOrderSumInfo();


        SearchProp prop = new SearchProp();
        prop.GoodsState.Add(0);
        prop.GoodsState.Add(1);
        prop.GoodsState.Add(3);
        prop.Cells.Add("SPD05"); //權重
        prop.Cells.Add("SPD06"); //限制數量,庫存
        prop.Cells.Add("SPD07"); //假數量
                                 //SPD02  商品ID-WP01,ORD01=SPD02 ORDERD.ORD01=SPD02,有下單就要扣庫存,sum(ORD06),實際銷售數量,火大於等於60%,(假數量+實際銷售數量)/限制數量,假數量+實際數量>=限制數量,壓soldout
                                 //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON WP.WP01=DT.SPD02  ");
        prop.WhereTxts.Add("WP05=1");
        prop.OrderBy = "ORDER BY SPD05 DESC";
        //prop.LgType = (this.Master as mobile).LgType;
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        dt = dt.DefaultView.ToTable(true, "WP01", "WP02", "WPA06", "WPA10", "WP08_1", "WP30", "SPD05", "SPD06", "SPD07");
        //DataView dv = new DataView(PreOrderDT);
        //DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06");


        DataTable dtRealStock = GetRealStock(eid);
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


        rp.DataSource = dt;
        rp.DataBind();
        //Response.Write(cmd.CommandText);
    }


    public DataTable GetRealStock(int eid)
    {
        string strSql = @"SELECT ORD01,SUM(ORD06) AS C FROM ORDERM 
	  INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
	  INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON ORD01=DT.SPD02  
	  WHERE ORM24>=0 AND ORM03>='2018-12-12 00:00:00' GROUP BY ORD01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
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

    //SearchProp prop = new SearchProp();
    //prop.GoodsState.Add(0);
    //prop.GoodsState.Add(1);
    //prop.Cells.Add("SPD07"); //假數量
    //prop.Cells.Add("SPD06"); //限制數量 
    //prop.Cells.Add("SPD05"); //權重
    ////SPD02  商品ID-WP01,ORD01=SPD02 ORDERD.ORD01=SPD02,有下單就要扣庫存,sum(ORD06),實際銷售數量,火大於等於60%,(假數量+實際銷售數量)/限制數量,假數量+實際數量>=限制數量,壓soldout
    //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 "); 
    //prop.LgType = (this.Master as mobile).LgType;
    //string sqlTxt = ProductBL.GetProductAndOptionSqlTxt(prop);
    //SqlCommand cmd = new SqlCommand();
    //cmd.CommandText = sqlTxt;
    //   cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, 565));



    //private static DataTable ChangPrice(DataTable dt)
    //{
    //    DataTable rDT = new DataTable();
    //    rDT = dt;
    //    foreach (DataRow dr in rDT.Rows)
    //    {
    //        dr["WPA06"] = Convert.ToInt32(dr["WPA06"].ToString()) - Convert.ToInt32(dr["WPA07"].ToString());
    //    }
    //    return rDT;
    //}
    //protected void rpPreProducts_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
    //    {
    //        int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
    //        var options = PreOrderDT.AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid));
    //        DropDownList ddlOption = (DropDownList)e.Item.FindControl("ddl_Option");
    //        DropDownList ddlQty = (DropDownList)e.Item.FindControl("ddl_Qty");
    //        ddlOption.Items.Clear();
    //        ddlOption.Items.Add(new ListItem("", ""));
    //        //ddlQty.Items.Clear();
    //        //ddlQty.Items.Add(new ListItem("", ""));

    //        decimal WPA06 = options.Min(p => p.Field<int>("WPA06"));
    //        decimal WPA10 = options.Min(p => p.Field<int>("WPA10"));
    //        ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "7.6");
    //        ((Literal)e.Item.FindControl("lit_WPA10")).Text = "RM " + PbClass.GetPrice(WPA10.ToString(), "7.6");
    //        foreach (DataRow dr in options)
    //        {
    //            int qty = Convert.ToInt32(dr["WPA04"].ToString());

    //            ; ddlOption.Items.Add(new ListItem(dr["WPA02"].ToString(), dr["WPA01"].ToString() + "#" + qty));

    //        }
    //        Literal info = (Literal)e.Item.FindControl("lit_Info");
    //        info.Text = "HOT ITEM";
    //        var buySum = _preOrderSumInfo.AsEnumerable().FirstOrDefault(r => r.Field<int>("POP03").Equals(pid));
    //        if (buySum != null)
    //            info.Text = string.Format("pre order {0} <i class='am-icon-user'></i>", buySum["BPEP"].ToString());

    //        Literal limit = (Literal)e.Item.FindControl("lit_limit");
    //    }

    //}

    //public void BindAddList()
    //{
    //    if (Session["A01"] != null)
    //    {
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "bind", "GetList();", true);
    //    }

    //}

}

