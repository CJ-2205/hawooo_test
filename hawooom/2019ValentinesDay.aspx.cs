using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_static_ValentinesDay_2019ValentinesDay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = BindData(482);
            var rand = new Random();
            var take = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            DataTable dt2 = BindData(482);
            var rand2 = new Random();
            var take2 = dt2.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            DataTable dt3 = BindData(482);
            var rand3 = new Random();
            var take3 = dt3.AsEnumerable().OrderBy(r => rand.Next()).Take(6).CopyToDataTable();
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take3;
            rp3.DataBind();

            DataTable dt4 = BindData(482);
            var rand4 = new Random();
            var take4 = dt4.AsEnumerable().OrderBy(r => rand.Next()).Take(6).CopyToDataTable();
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = take4;
            rp4.DataBind();

            DataTable dt5 = BindData(482);
            var rand5 = new Random();
            var take5 = dt5.AsEnumerable().OrderBy(r => rand.Next()).Take(6).CopyToDataTable();
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = take5;
            rp5.DataBind();

            BindBrand();

            BindData();
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

    private void BindData()
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.WhereTxts.Add(@"WP01 IN (SELECT TOP 40 ORD01 FROM (
SELECT ORD01,ROW_NUMBER() over (
      PARTITION BY B01
      order by SUM(ORD06) DESC
  ) AS RNUM,B01 FROM ORDERD AS OD WITH(NOLOCK)
INNER JOIN WP WITH(NOLOCK) ON WP01=ORD01
INNER JOIN ORDERM AS OM WITH(NOLOCK) ON OM.ORM01=OD.ORM01
WHERE WP07=1 AND GETDATE() BETWEEN WP09 AND WP10
AND NOT EXISTS (SELECT 1 FROM SPRODUCTSD WHERE SPD02=WP01 AND SPD01 IN (752,753,754,755,756))
AND ORM03 >= DATEADD(dd,-365,GETDATE())
GROUP BY ORD01,B01) AS TA
WHERE TA.RNUM<=3)");
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        Repeater rp = products6.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();

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

        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=77", "bd_01m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=326", "bd_02m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=304", "bd_03m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=199", "bd_04m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=235", "bd_05m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=320", "bd_06m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=345", "bd_07m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=343", "bd_08m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=102", "bd_09m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=295", "bd_10m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=340", "bd_11m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=339", "bd_12m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=151", "bd_13m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=163", "bd_14m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=283", "bd_15m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=310", "bd_16m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=264", "bd_17m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=309", "bd_18m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=362", "bd_19m"));
        list.Add(new BrandCs("https://www.hawooo.com/mobile/brand_1.aspx?bid=96", "bd_20m"));
        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }

}