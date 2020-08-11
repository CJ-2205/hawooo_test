using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
public partial class user_static_YesTaiwanSale : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/YesTaiwanSale.aspx");


        BindBrand();


        Repeater rp = products.FindControl("rp_goods") as Repeater;
        rp.DataSource = BindData(728);
        rp.DataBind();


        Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
        rp2.DataSource = BindData(728);
        rp2.DataBind();

        Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
        rp3.DataSource = BindData(728);
        rp3.DataBind();
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
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=%e5%a4%a9%e6%b3%89%e8%8d%89%e6%9c%ac", "bd_05"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=%e6%a9%99%e5%a7%91%e5%a8%98", "bd_06"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=203", "bd_07"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=11", "bd_08"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=116", "bd_09"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=%E6%B7%A8%E6%AF%92%E4%BA%94%E9%83%8E", "bd_10"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=102", "bd_11"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=229", "bd_12"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=230", "bd_13"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=322", "bd_14"));
        list.Add(new BrandCs("https://www.hawooo.com/user/brands.aspx?bid=199", "bd_15"));
        list.Add(new BrandCs("https://www.hawooo.com/user/search.aspx?stxt=solis", "bd_16"));
        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}