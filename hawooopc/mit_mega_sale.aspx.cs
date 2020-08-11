using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_static_mit_mega_sale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/mit_mega_sale.aspx");

            DataTable dt = BindData(482);
            var rand = new Random();
            var take = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            dt = BindData(480);
            var take2 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(6).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            dt = BindData(480);
            var take3 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(6).CopyToDataTable();
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take3;
            rp3.DataBind();

            dt = BindData(480);
            var take4 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(6).CopyToDataTable();
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = take4;
            rp4.DataBind();

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
        List<BrandCs> list = new List<BrandCs>();
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=194", "bn_7"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=Shirley%20House", "bn_8"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=354", "bn_9"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=351", "bn_10"));

        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=Caresse", "bn_11"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=347", "bn_12"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=%E5%AF%8C%E9%9B%A8%E6%B4%8B%E5%82%98", "bn_13"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=DECUS", "bn_14"));

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}