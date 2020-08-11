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

public partial class user_static_NewFolder1_FriendshipDaySale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/FriendshipDaySale.aspx");


        DataTable dt = BindData(738);
        var rand = new Random();
        var take = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
        Repeater rp = products.FindControl("rp_goods") as Repeater;
        rp.DataSource = take;
        rp.DataBind();


        DataTable dt2 = BindData(738);
        var rand2 = new Random();
        var take2 = dt2.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
        Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
        rp2.DataSource = take2;
        rp2.DataBind();

        DataTable dt3 = BindData(738);
        var rand3 = new Random();
        var take3 = dt3.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
        Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
        rp3.DataSource = take3;
        rp3.DataBind();

        DataTable dt4 = BindData(738);
        var rand4 = new Random();
        var take4 = dt4.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
        Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
        rp4.DataSource = take4;
        rp4.DataBind();

        BindBrand();

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
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }
    public class BrandCs
    {
        public string _url { get; set; }
        public string _img { get; set; }
        public BrandCs(string url, string img)
        {
            _url = url;
            _img = img;
        }
    }

    private void BindBrand()
    {
        List<BrandCs> list = new List<BrandCs>();

        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=77", "bd_01"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=326", "bd_02"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=304", "bd_03"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=186", "bd_04"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=299", "bd_05"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=264", "bd_06"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=297", "bd_07"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=72", "bd_08"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=235", "bd_09"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=170", "bd_10"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=320", "bd_11"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=283", "bd_12"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=102", "bd_13"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=329", "bd_14"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=11", "bd_15"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=116", "bd_16"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=%e6%b7%a8%e6%af%92%e4%ba%94%e9%83%8e", "bd_17"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=32", "bd_18"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=229", "bd_19"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=328", "bd_20"));
        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}