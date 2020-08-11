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

public partial class mobile_static_YesTaiwanSale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = BindData(738);
            var rand = new Random();
            var take = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8);
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            if(take.Any())//或 if(take.count()>0)
            rp.DataSource = take.CopyToDataTable();
            rp.DataBind();



            DataTable dt2 = BindData(739);
            var rand2 = new Random();
            var take2 = dt2.AsEnumerable().OrderBy(r => rand.Next()).Take(8);
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            if (take2.Any())
            rp2.DataSource = take2.CopyToDataTable();
            rp2.DataBind();


            DataTable dt3 = BindData(740);
            var rand3 = new Random();
            var take3 = dt3.AsEnumerable().OrderBy(r => rand.Next()).Take(8);
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            if (take3.Any())
            rp3.DataSource = take3.CopyToDataTable();
            rp3.DataBind();



            rpBrand1.DataSource = listBrand();
            rpBrand1.DataBind();
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
    public List<BrandCs> listBrand()
    {
        string url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
        string srh_url = "https://www.hawooo.com/mobile/search.aspx?stxt=";

        List<BrandCs> list = new List<BrandCs>();
        list.Add(new BrandCs(srh_url + "%e5%a4%a9%e6%b3%89%e8%8d%89%e6%9c%ac", "bd_05m"));
        list.Add(new BrandCs(srh_url + "%e6%a9%99%e5%a7%91%e5%a8%98", "bd_06m"));
        list.Add(new BrandCs(url + 203.ToString(), "bd_07m"));
        list.Add(new BrandCs(url + 11.ToString(), "bd_08m"));
        list.Add(new BrandCs(url + 116.ToString(), "bd_09m"));
        list.Add(new BrandCs(srh_url + "%E6%B7%A8%E6%AF%92%E4%BA%94%E9%83%8E", "bd_10m"));
        list.Add(new BrandCs(url + 102.ToString(), "bd_11m"));
        list.Add(new BrandCs(url + 229.ToString(), "bd_12m"));
        list.Add(new BrandCs(url + 230.ToString(), "bd_13m"));
        list.Add(new BrandCs(url + 322.ToString(), "bd_14m"));
        list.Add(new BrandCs(url + 199.ToString(), "bd_15m"));
        list.Add(new BrandCs(srh_url + "solis", "bd_16m"));
        return list;
    }
    public class BrandCs
    {
        public string _src { get; set; }
        public string _image { get; set; }
        public BrandCs(string src, string image)
        {
            _src = src;
            _image = image;
        }
    }
}