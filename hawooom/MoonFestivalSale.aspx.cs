using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Configuration;

public partial class mobile_static_MoonFestivalSale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = BindData(482);
            //var rand = new Random();
            var take = dt.AsEnumerable().Take(4).CopyToDataTable();
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            dt = BindData(482);
            var rand2 = new Random();
            var take2 = dt.AsEnumerable().Take(4).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

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
AND NOT EXISTS (SELECT 1 FROM SPRODUCTSD WHERE SPD02=WP01 AND SPD01 IN (765,766))
AND ORM03 >= DATEADD(dd,-45,GETDATE())
GROUP BY ORD01,B01) AS TA
WHERE TA.RNUM<=3)");
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        Repeater rp = products3.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();

    }


    public class BrandCs
    {
        public int bid { get; set; }
        public string name { get; set; }
        public string logo { get; set; }
        public string title { get; set; }
        public string url { get; set; }
        public string img { get; set; }
        public BrandCs(int _bid, string _name, string _logo, string _title, string _url, string _img)
        {
            bid = _bid;
            name = _name;
            logo = _logo;
            title = _title;
            url = _url;
            img = _img;
        }
    }

    private void BindBrand()
    {
        string url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>();

        list.Add(new BrandCs(235, "DV", cm_a + "ftp/20190903/logo_01.png", "全館滿350送醇養妍活化青春錠", url + 235.ToString(), cm_a + "ftp/20190903/bd_01.png"));
        list.Add(new BrandCs(321, "CHOYeR", cm_a + "ftp/20190903/logo_02.png", "全館滿598折50", url + 321.ToString(), cm_a + "ftp/20190903/bd_02.png"));
        list.Add(new BrandCs(307, "森田藥粧", cm_a + "ftp/20190903/logo_03.png", "全館up to 50% Discount,限量特殺", url + 307.ToString(), cm_a + "ftp/20190903/bd_03.png"));
        list.Add(new BrandCs(297, "UNICAT", cm_a + "ftp/20190903/logo_04.png", "9/3-9/26全館30%,滿199送果凍面膜一片+黃金黑面膜一片", url + 297.ToString(), cm_a + "ftp/20190903/bd_04.png"));

        list.Add(new BrandCs(343, "KALOYA", cm_a + "ftp/20190903/logo_05.png", "滿RM100贈防水眼線筆,滿RM180贈眼影盤", url + 343.ToString(), cm_a + "ftp/20190903/bd_05.png"));
        list.Add(new BrandCs(29, "歐可茶葉", cm_a + "ftp/20190903/logo_06.png", "買就送1包試喝包", url + 29.ToString(), cm_a + "ftp/20190903/bd_06.png"));
        list.Add(new BrandCs(96, "Mollifix", cm_a + "ftp/20190903/logo_07.png", "全館滿RM99送隱形翅膀舒膚生理褲(黑XL)", url + 96.ToString(), cm_a + "ftp/20190903/bd_07.png"));
        list.Add(new BrandCs(77, "Life8", cm_a + "ftp/20190903/logo_08.png", "滿RM150折RM15，滿RM250折RM25", url + 77.ToString(), cm_a + "ftp/20190903/bd_08.png"));

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}