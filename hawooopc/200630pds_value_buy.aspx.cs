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
using hawooo;

public partial class user_static_200630pds_value_buy : System.Web.UI.Page
{
    public string cacheVersion = "1";
    public Dictionary<string, dynamic> optionValueBuy = new Dictionary<string, dynamic>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200630pds_value_buy.aspx" + Request.Url.Query);
            }
            
            // Related to "special stylee goods", but have no "Fire and pregress bar" logic:
            setDics();
            BindSpecialStyleeGoods(optionValueBuy);

            //BindProduct(productValueBuy, 1018, 0);
            //BindTop8ClassData();
        }
    }
    public void setDics ()
    {
        optionValueBuy.Add("webControlIds", rpValueBuy);
        optionValueBuy.Add("eventId", 1018);
        //optionValueBuy.Add("eventId", 777);
        optionValueBuy.Add("take", 0);
        optionValueBuy.Add("productDt", new DataTable());
    }

    // Not used in this event.
    //private void BindProduct(dynamic webControlId, int eventId, int take = 0)
    //{
    //    //�`�N�A1. �C�� block ("HotDeal", for "ValueBuy", for "HighlightedBrand" ...) �����ۤv������ ID�AID ����B�n�C2. ���ʶ}�l�e�A�Y�ϬO���T ID �i��]�|������F��C
    //    DataTable dt = GetDataDt(eventId); //eventId ������ID


    //    if (dt.Rows.Count > 0)
    //    {
    //        if (take != 0)
    //        {
    //            dt = dt.AsEnumerable().Take(take).CopyToDataTable(); //�a�J12���ӫ~�A�p�G�n���a�����j�wdt (var take = dt;)
    //        }
    //        Repeater rp = webControlId.FindControl("rp_goods") as Repeater; //product1�O�e��<uc1:products>��ID
    //        rp.DataSource = dt;
    //        rp.DataBind();
    //    }
    //}

    /// <summary>
    /// ���ʰӫ~��ƪ�
    /// </summary>
    /// <param name="id">���ʽs��</param>
    /// <returns></returns>
    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //�馩�u�f����: WP31�u�f�}�l�ɶ�,WP32�u�f�����ɶ�
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    // �o�����ʡA�l������� category.
    //private void BindTop8ClassData()
    //{
    //    DataTable dt = GetCategoryGoodsRank((this.Master as user_user).LgType);
    //    if (dt.Rows.Count > 0)
    //    {
    //        if (dt.Select("CNAME='�m��'").Length > 0)
    //        {
    //            Repeater rp2 = productCategorySec1.FindControl("rp_goods") as Repeater;
    //            rp2.DataSource = dt.Select("CNAME='�m��'").Take(8).CopyToDataTable();
    //            rp2.DataBind();
    //        }

    //        if (dt.Select("CNAME='�O�i'").Length > 0)
    //        {
    //            Repeater rp3 = productCategorySec2.FindControl("rp_goods") as Repeater;
    //            rp3.DataSource = dt.Select("CNAME='�O�i'").Take(8).CopyToDataTable();
    //            rp3.DataBind();
    //        }

    //        if (dt.Select("CNAME='�O��'").Length > 0)
    //        {
    //            Repeater rp4 = productCategorySec3.FindControl("rp_goods") as Repeater;
    //            rp4.DataSource = dt.Select("CNAME='�O��'").Take(8).CopyToDataTable();
    //            rp4.DataBind();
    //        }

    //        if (dt.Select("CNAME='�ͬ�'").Length > 0)
    //        {
    //            Repeater rp5 = productCategorySec4.FindControl("rp_goods") as Repeater;
    //            rp5.DataSource = dt.Select("CNAME='�ͬ�'").Take(8).CopyToDataTable();
    //            rp5.DataBind();
    //        }

    //        if (dt.Select("CNAME='����'").Length > 0)
    //        {
    //            Repeater rp6 = productCategorySec5.FindControl("rp_goods") as Repeater;
    //            rp6.DataSource = dt.Select("CNAME='����'").Take(8).CopyToDataTable();
    //            rp6.DataBind();
    //        }

    //        if (dt.Select("CNAME='����'").Length > 0)
    //        {
    //            Repeater rp7 = productCategorySec6.FindControl("rp_goods") as Repeater;
    //            rp7.DataSource = dt.Select("CNAME='����'").Take(8).CopyToDataTable();
    //            rp7.DataBind();
    //        }
    //    }
    //}

    // �o�����ʡA�l������� category.
    /// <summary>
    /// �ӫ~���O
    /// </summary>
    /// <param name="lg"></param>
    /// <returns></returns>
    //public DataTable GetCategoryGoodsRank(LangType lg)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append("SELECT ");
    //    sb.Append("B01,");
    //    sb.Append("WP01,");
    //    sb.Append("WP18,");
    //    sb.Append("WP23,");
    //    sb.Append("WP08_1,");
    //    sb.Append("WPT07,");
    //    sb.Append("WP27,");
    //    if (lg == LangType.zh)
    //    {
    //        sb.Append("WPT02 as WP30,");
    //        sb.Append("WP02,");
    //    }
    //    else if (lg == LangType.en)
    //    {
    //        sb.Append("WP23 as WP02,");
    //        sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
    //    }
    //    sb.Append("CAST(Price as decimal) as WPA06,");
    //    sb.Append("CAST(OPrice as decimal) as WPA10,");
    //    sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount,");
    //    sb.Append("CNAME,VRANK ");
    //    sb.Append("FROM WP ");
    //    sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
    //    sb.Append("INNER JOIN VW_CATEGORY_RANK  AS TA ON TA.PID=WP01 ");
    //    sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sb.ToString();
    //    var dt = SqlDbmanager.queryBySql(cmd);
    //    return dt;
    //}




    // Below is related to "special stylee goods", but have no "Fire and pregress bar" logic:
    // =====================================================================================
    private void BindSpecialStyleeGoods (Dictionary<string, dynamic> option)
    {
        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
        //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
        prop.SelectIDS.Add((int) option["eventId"]);
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
        
        if ((int) option["take"] != 0)
        {
            dt = dt.AsEnumerable().Take((int) option["take"]).CopyToDataTable(); //�a�J12���ӫ~�A�p�G�n���a�����j�wdt (var take = dt;)
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
    /// <param name="sold">SPD07���ƶq</param>
    /// <param name="stock">SPD06����ƶq</param>
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
        dt.Columns.Add("SPD05", typeof(int)); //�v��
        dt.Columns.Add("SPD06"); //����ƶq,�w�s
        dt.Columns.Add("SPD07"); //���ƶq
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

    protected void rp_plist_ItemDataBoundValueBuy (object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionValueBuy);
    }

    protected void rp_plist_ItemDataBound_main (object sender, RepeaterItemEventArgs e, Dictionary<string, dynamic> option)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            int pid = Convert.ToInt32(((HiddenField)e.Item.FindControl("hfWP01")).Value);
            var options = ((DataTable) option["productDt"]).AsEnumerable().Where(v => v.Field<Int64>("WP01").Equals(pid))
                .OrderByDescending(v => v.Field<int>("SPD05"));

            decimal WPA06 = options.Min(p => p.Field<decimal>("WPA06"));
            decimal WPA10 = options.Min(p => p.Field<decimal>("WPA10"));
            decimal Discount = options.Min(p => p.Field<decimal>("WPA06")) - options.Min(p => p.Field<decimal>("WPA10"));//12/4�s�W�j�w�馩����

            ((Literal)e.Item.FindControl("lit_WPA06")).Text = "RM " + PbClass.GetPrice(WPA06.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_WPA10")).Text = "" + PbClass.GetPrice(WPA10.ToString(), "1");
            ((Literal)e.Item.FindControl("lit_save")).Text = PbClass.GetPrice(Discount.ToString(), "1").ToString().Replace("-", "");
            ((Literal)e.Item.FindControl("lit_off")).Text = Math.Round(100 * Discount / WPA10, 0, MidpointRounding.AwayFromZero).ToString().Replace("-", "");

        }
    }
}