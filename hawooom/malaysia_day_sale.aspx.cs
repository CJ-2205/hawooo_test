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
using System.Web.Services;

public partial class mobile_static_malaysia_day_sale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataTable dt = BindData(770);
            var rand = new Random();
            var take = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            dt = BindData(771);
            var take2 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            dt = BindData(772);
            var take3 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take3;
            rp3.DataBind();

            dt = BindData(773);
            var take4 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = take4;
            rp4.DataBind();

            dt = BindData(774);
            var take5 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = take5;
            rp5.DataBind();

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
        string srh_url = "https://www.hawooo.com/mobile/search.aspx?stxt=";
        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>();

        list.Add(new BrandCs(235, "DV", cm_a + "ftp/20190913/LOGO_01.png", "全館滿350送蔬暢輕飲粉包(價值135)", url + 235.ToString(), cm_a + "ftp/20190913/BD_01.png"));
        list.Add(new BrandCs(345, "Laler", cm_a + "ftp/20190913/LOGO_02.png", "全館滿299送晶野玫瑰素顏膠囊(價值180)", url + 345.ToString(), cm_a + "ftp/20190913/BD_02.png"));
        list.Add(new BrandCs(319, "Naturero", cm_a + "ftp/20190913/LOGO_03.png", "全館買就送", url + 319.ToString(), cm_a + "ftp/20190913/BD_03.png"));
        list.Add(new BrandCs(362, "Crisstar", cm_a + "ftp/20190913/LOGO_04.png", "全館買一件折10", url + 362.ToString(), cm_a + "ftp/20190913/BD_04.png"));

        list.Add(new BrandCs(94, "阿嬤的配方", cm_a + "ftp/20190913/LOGO_05.png", "13/9-17/9 滿RM100送 台東紅烏龍(水腫適用)2片", url + 94.ToString(), cm_a + "ftp/20190913/BD_05.png"));
        list.Add(new BrandCs(371, "MOOIMOM", cm_a + "ftp/20190913/LOGO_06.png", "至20/9 20% OFF rebate for every item on MOOIMOM.", url + 371.ToString(), cm_a + "ftp/20190913/BD_06.png"));
        list.Add(new BrandCs(96, "MCG", cm_a + "ftp/20190913/LOGO_07.png", "開館慶 買就送最高價值RM56.5贈品", srh_url + "MCG", cm_a + "ftp/20190913/BD_07.png"));
        list.Add(new BrandCs(295, "Deseno", cm_a + "ftp/20190913/LOGO_08.png", "酷比行李箱系列Max70%OFF", url + 295.ToString(), cm_a + "ftp/20190913/BD_08.png"));

        list.Add(new BrandCs(343, "Viage", cm_a + "ftp/20190913/LOGO_09.png", "1/9-30/9開館慶 全館免運！", srh_url + "Viage", cm_a + "ftp/20190913/BD_09.png"));
        list.Add(new BrandCs(310, "糖鼎", cm_a + "ftp/20190913/LOGO_10.png", "買就送2包試喝包", url + 310.ToString(), cm_a + "ftp/20190913/BD_10.png"));
        list.Add(new BrandCs(368, "Ready To Shine", cm_a + "ftp/20190913/LOGO_11.png", "1/9-30/9開館慶 全館免運！", url + 368.ToString(), cm_a + "ftp/20190913/BD_11.png"));
        list.Add(new BrandCs(343, "KALOYA", cm_a + "ftp/20190913/LOGO_12.png", "滿RM100送防水眼線筆，滿RM180送魅彩眼影盤", url + 343.ToString(), cm_a + "ftp/20190913/BD_12.png"));

        list.Add(new BrandCs(29, "歐可茶葉", cm_a + "ftp/20190913/LOGO_13.png", "買就送歐可茶葉試喝包1包", url + 29.ToString(), cm_a + "ftp/20190913/BD_13.png"));
        list.Add(new BrandCs(199, "Dayla", cm_a + "ftp/20190913/LOGO_14.png", "滿RM79 送 復活草深層保濕面膜x1片", url + 199.ToString(), cm_a + "ftp/20190913/BD_14.png"));
        list.Add(new BrandCs(154, "UNT", cm_a + "ftp/20190913/LOGO_15.png", "任選2支水指彩15%OFF", url + 154.ToString(), cm_a + "ftp/20190913/BD_15.png"));
        list.Add(new BrandCs(77, "Life8", cm_a + "ftp/20190913/LOGO_16.png", "滿RM270折RM30，滿RM350送禮物", url + 77.ToString(), cm_a + "ftp/20190913/BD_16.png"));

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}