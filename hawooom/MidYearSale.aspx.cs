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

public partial class mobile_static_MidYearSale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = BindData(725);
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = dt;
            rp.DataBind();

            dt = BindData(726);
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt;
            rp2.DataBind();


            rpBrand1.DataSource = listBrand();
            rpBrand1.DataBind();


            rpBrand2.DataSource = listBrand(false);
            rpBrand2.DataBind();
            //DataTable dt = BindData(719);
            //Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            //rp2.DataSource = dt;
            //rp2.DataBind();

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

    public List<BrandCs> listBrand(bool 旗艦店 = true)
    {
        string url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
        string srh_url = "https://www.hawooo.com/mobile/search.aspx?stxt=";
        List<BrandCs> listB = new List<BrandCs>();
        if (旗艦店)
        {
            listB.Add(new BrandCs(235, "DV", 1, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_01m.png", "滿445送保濕面膜(5片/盒)", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_01m.png", url + 235.ToString()));
            listB.Add(new BrandCs(312, "Check2Check", 2, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_02m.png", "限定商品滿299送塑型髮泥", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_02m.png", url + 312.ToString()));
            listB.Add(new BrandCs(222, "Dr.lady", 3, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_03m.png", "Up to 70% off 滿800送萬用烤鍋", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_03m.png", url + 222.ToString()));
            listB.Add(new BrandCs(320, "許氏", 4, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_04m.png", "Up to 26% off", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_04m.png", url + 320.ToString()));
            listB.Add(new BrandCs(184, "妍霓絲", 5, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_05m.png", "滿400送玫瑰凍膜+黑凍膜(旅行裝)", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_05m.png", url + 184.ToString()));
            listB.Add(new BrandCs(72, "天堂花園", 6, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_06m.png", "150送手提袋,250送仙履蘭旅行組", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_06m.png", url + 72.ToString()));
            listB.Add(new BrandCs(208, "Dr.cink", 7, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_07m.png", "Up to 65% off, 滿額贈好禮", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_07m.png", url + 208.ToString()));
            listB.Add(new BrandCs(264, "HH", 8, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_08m.png", "滿額贈好禮", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_08m.png", url + 264.ToString()));
            listB.Add(new BrandCs(269, "健康食妍", 9, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_09m.png", "Up to 70% off", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_09m.png", url + 269.ToString()));
            listB.Add(new BrandCs(270, "自然革命", 10, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_10m.png", "Up to 80% off", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_10m.png", url + 270.ToString()));
            listB.Add(new BrandCs(305, "Sweety Curve", 11, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_11m.png", "Up to 65% off, 滿額贈好禮", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_11m.png", url + 305.ToString()));
            listB.Add(new BrandCs(77, "Life8", 12, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/logo_12m.png", "Up to 67% off", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/fs_12m.png", url + 77.ToString()));

        }
        else
        {
            listB.Add(new BrandCs(51, "Beauty小舖", 1, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd01m.png", url + 51.ToString()));
            listB.Add(new BrandCs(170, "KGCHECK", 2, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd02m.png", url + 170.ToString()));
            listB.Add(new BrandCs(321, "CHOYeR", 3, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd03m.png", srh_url + "CHOYER"));
            listB.Add(new BrandCs(316, "橙姑娘", 4, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd04m.png", srh_url + "%e6%a9%99%e5%a7%91%e5%a8%98"));
            listB.Add(new BrandCs(319, "Naturero", 5, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd05m.png", srh_url + "Naturero"));
            listB.Add(new BrandCs(309, "初時肌", 6, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd06m.png", url + 309.ToString()));
            listB.Add(new BrandCs(297, "Unicat", 7, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd07m.png", url + 297.ToString()));
            listB.Add(new BrandCs(229, "FreshO2", 8, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd08m.png", url + 229.ToString()));
            listB.Add(new BrandCs(199, "Dayla", 9, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd09m.png", url + 199.ToString()));
            listB.Add(new BrandCs(322, "文森先生", 10, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bd10m.png", url + 322.ToString()));
        }
        return listB;
    }

    public class BrandCs
    {
        public int _ids { get; set; }
        public string _name { get; set; }
        public int _orderby { get; set; }
        public string _logo { get; set; }
        public string _title { get; set; }
        public string _image { get; set; }
        public string _src { get; set; }
        public BrandCs(int ids, string name, int orderby, string logo, string title, string image, string src)
        {
            _ids = ids;
            _name = name;
            _orderby = orderby;
            _logo = logo;
            _title = title;
            _image = image;
            _src = src;
        }
    }
}