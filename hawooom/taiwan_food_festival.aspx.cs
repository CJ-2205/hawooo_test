using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class mobile_static_taiwan_food_festival : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //DataTable dt = BindData(792);
            //Repeater rp = products1.FindControl("rp_goods") as Repeater;
            //rp.DataSource = dt;
            //rp.DataBind();
            BindGoods();

            var rand = new Random();

            DataTable dt = BindData(793);
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt;
            rp2.DataBind();

            dt = BindData(794);
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = dt;
            rp3.DataBind();

            dt = BindData(795);
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = dt;
            rp4.DataBind();

            dt = BindData(482);
            var take1 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(2).CopyToDataTable();
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = take1;
            rp5.DataBind();

            dt = BindData(482);
            var take2 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(2).CopyToDataTable();
            Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
            rp6.DataSource = take2;
            rp6.DataBind();

            dt = BindData(482);
            var take3 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(2).CopyToDataTable();
            Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
            rp7.DataSource = take3;
            rp7.DataBind();


            BindBrand();
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
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }

    private void BindGoods()
    {
        //SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        //SearchProp searchProp = new SearchProp();
        //searchProp.Cells.Add("SPD01");
        //searchProp.Cells.Add("WP31");
        //searchProp.Cells.Add("WP32");
        //searchProp.Cells.Add("SPD05");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        //searchProp.LgType = (this.Master as mobile).LgType;
        //searchProp.page = 1;
        //searchProp.pcount = 1000;
        //searchProp.SelectIDS.Add(id);
        //searchProp.OrderBy = "ORDER BY SPD05 DESC";
        //cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        //DataTable dt = SqlDbmanager.queryBySql(cmd);
        //return dt;
        DataTable dt = GetGoods((this.Master as mobile).LgType, 482);
        //DataTable bindDt = TransDt(dt);
        Repeater rp = products1.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();

    }

    public DataTable GetGoods(LangType lg, int eventId)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
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
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("INNER JOIN SPRODUCTSD ON SPD02=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("WHERE WP07=1 ");
        sb.Append("AND SPD01=@EID ");
        sb.Append("ORDER BY SPD05 DESC,WP01 DESC ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("EID", SqlDbType.Int, eventId));
        var dt = SqlDbmanager.queryBySql(cmd);
        foreach (DataRow dr in dt.Rows)
        {
            var price = PbClass.GetPrice(dr["WPA06"].ToString(), "7.6");
            var oprice = PbClass.GetPrice(dr["WPA10"].ToString(), "7.6");
            var decreaseAmount = PbClass.GetPrice(dr["decreaseAmount"].ToString(), "7.6");
            dr["WPA06"] = price;
            dr["WPA10"] = oprice;
            dr["decreaseAmount"] = decreaseAmount;
        }
        return dt;
    }


    public class BrandCs
    {

        public string url { get; set; }
        public string img { get; set; }
        public BrandCs(string _url, string _img)
        {
            url = _url;
            img = _img;
        }
    }

    private void BindBrand()
    {
        string url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
        string srh_url = "https://www.hawooo.com/mobile/search.aspx?stxt=";
        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>
        {
            new BrandCs(url + 131.ToString(), cm_a +  "ftp/20191004/bn_08.png"),
            new BrandCs(url + 29.ToString(),  cm_a +  "ftp/20191004/bn_09.png"),
            new BrandCs(url + 170.ToString(), cm_a +  "ftp/20191004/bn_10.png"),
            new BrandCs(url + 151.ToString(), cm_a +  "ftp/20191004/bn_11.png"),

            new BrandCs(url + 62.ToString(),  cm_a +  "ftp/20191004/bn_12.png"),
            new BrandCs(url + 359.ToString(), cm_a +  "ftp/20191004/bn_13.png"),
            new BrandCs(srh_url + "Magi-Planet", cm_a +  "ftp/20191004/bn_14.png"),
            new BrandCs(url + 171.ToString(), cm_a +  "ftp/20191004/bn_15.png"),
            new BrandCs(url + 310.ToString(), cm_a +  "ftp/20191004/bn_16.png")

        };

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }

}