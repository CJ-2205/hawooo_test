using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class user_static_MidYearSale2 : System.Web.UI.Page
{
    //public void DoRedirect()
    //{
    //    if (DateTime.Now >= Convert.ToDateTime("2019-06-25 12:00:00"))
    //    {
    //        Response.Redirect("../user/MidYearSale2.aspx");
    //    }
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/MidYearSale2.aspx");

            DataTable dt = BindData(482);
            var ran = new Random();
            var employees = dt.AsEnumerable().OrderBy(x => ran.Next()).Take(8).CopyToDataTable();
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = employees;
            rp.DataBind();


            dt = BindData(480);
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt;
            rp2.DataBind();


            rpBrand1.DataSource = listBrand();
            rpBrand1.DataBind();
            rpBrand2.DataSource = listBrand(false);
            rpBrand2.DataBind();
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

    public List<BrandCs> listBrand(bool 旗艦店 = true)
    {
        string url = "https://www.hawooo.com/user/brands.aspx?bid=";
        string srh_url = "https://www.hawooo.com/user/search.aspx?stxt=";
        List<BrandCs> listB = new List<BrandCs>();
        if (旗艦店)
        {
            listB.Add(new BrandCs(326, "CACO", 1, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_01.png", "RM220折RM20，RM350折RM35", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_01.png", url + 326.ToString()));
            listB.Add(new BrandCs(128, "Qmomo", 2, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_02.png", "RM199送特製捲尺+夾鏈袋,限量20組", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_02.png", url + 128.ToString()));
            listB.Add(new BrandCs(115, "艾黎亞", 3, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_03.png", "max45%off & GWP,滿額送好禮,再抽電動牙刷組(3名)", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_03.png", url + 115.ToString()));
            listB.Add(new BrandCs(102, "戀家小舖", 4, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_04.png", "UP TO 20%OFF&GWP 滿290 送午安枕,滿390 送卡通枕", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_04.png", url + 102.ToString()));
            listB.Add(new BrandCs(295, "deseno", 5, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_05.png", "MAX 40%OFF,經典箱款驚爆下殺", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_05.png", url + 295.ToString()));
            listB.Add(new BrandCs(79, "newart", 6, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_06.png", "UP TO 30%OFF& Free gift,多件商品降價,紅寶石大送小", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_06.png", url + 79.ToString()));
            listB.Add(new BrandCs(312, "Check2check", 7, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_07.png", "限定商品滿299送NABI塑型髮泥", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_07.png", url + 312.ToString()));
            listB.Add(new BrandCs(318, "Hallmark", 8, ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/logo_08.png", "max 90%off & GWP,滿額送好禮", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/fs_08.png", url + 318.ToString()));

        }
        else
        {
            listB.Add(new BrandCs(96, "Mollifix", 1, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_01.png", url + 96.ToString()));
            listB.Add(new BrandCs(317, "Apomia", 2, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_02.png", url + 317.ToString()));
            listB.Add(new BrandCs(186, "BC", 3, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_03.png", url + 186.ToString()));
            listB.Add(new BrandCs(328, "HIBIS", 4, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_04.png", url + 328.ToString()));
            listB.Add(new BrandCs(334, "歐洲保養", 5, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_05.png", url + 334.ToString()));
            listB.Add(new BrandCs(180, "舒妃", 6, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_06.png", url + 180.ToString()));
            listB.Add(new BrandCs(116, "清檜", 7, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_07.png", url + 116.ToString()));
            listB.Add(new BrandCs(292, "暖暖", 8, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_08.png", url + 292.ToString()));
            listB.Add(new BrandCs(29, "歐可", 9, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_09.png", url + 29.ToString()));
            listB.Add(new BrandCs(168, "櫻桃爺爺", 10, "", "", ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bd_10.png", url + 168.ToString()));
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