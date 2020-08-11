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


public class Options {
    public Control control;
    public int eventId;
    public int take;
    public string spdGid = "";
    public DataTable productDt = new DataTable();
}

public partial class user_static_200716friendship_bundle : System.Web.UI.Page
{
    public int serverType = 1;
    public string cacheVersion = "1";
    public Options optionBundle;

    public void setOptions()
    {
        optionBundle = new Options () {
            control = rpBundle,
            eventId = SwitchServer<int>(serverType, 1060, 798),
            take = SwitchServer<int>(serverType, 0, 7),
        };
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/200716friendship_hotdeal.aspx" + Request.Url.Query);
            }

            setOptions();

            BindSpecialStyleeGoods(optionBundle);
            BindCoupnCount();

            // Not used in this event.
            //BindProduct(productHighlightedBrands, 777, 12);
        }
    }
    // Toggle data for different server type. 0 = test server, 1 or other int = real server
    public T SwitchServer<T>(int serverType, T realValue, T testValue)
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
    private void BindSpecialStyleeGoods(Options options)
    {
        // If offer spdGid (both case will be safe).
        Boolean ifSpdGid = options.spdGid != "";

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
        prop.SelectIDS.Add(options.eventId);
        prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetSelectProduct(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable dt = SqlDbmanager.queryBySql(cmd);


        // Todo_treegb: Do we need stock related logic for this event?
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

    protected void rp_plist_ItemDataBound_Bundle(object sender, RepeaterItemEventArgs e)
    {
        rp_plist_ItemDataBound_main(sender, e, optionBundle);
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
    // (End) Related to "special stylee goods", but have no "Fire and pregress bar" logic:
    // =====================================================================================


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
        // Boosting (fake) number.
        var listBoostNum = new List<int>();
        listBoostNum.Add(200);
        listBoostNum.Add(200);
        listBoostNum.Add(200);
        var list2 = new List<string>();
        list2.Add("MID25");
        list2.Add("MID40");
        list2.Add("MID65");
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