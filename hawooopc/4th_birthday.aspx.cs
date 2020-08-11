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

public partial class user_static_4th_birthday : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/4th_birthday.aspx");

            DataTable dt = BindData(799);
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = dt;
            rp.DataBind();

            //var rand = new Random();

            dt = BindData(800);
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = dt;
            rp2.DataBind();

            dt = BindData(801);
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = dt;
            rp3.DataBind();

            dt = BindData(802);
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = dt;
            rp4.DataBind();

            dt = BindData(803);
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = dt;
            rp5.DataBind();

            dt = BindData(804);
            Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
            rp6.DataSource = dt;
            rp6.DataBind();

            dt = BindData(805);
            Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
            rp7.DataSource = dt;
            rp7.DataBind();

            dt = BindData(806);
            Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
            rp8.DataSource = dt;
            rp8.DataBind();

            dt = BindData(807);
            Repeater rp9 = products9.FindControl("rp_goods") as Repeater;
            rp9.DataSource = dt;
            rp9.DataBind();

            BindBrandData();
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

    private void BindBrandData()
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
        searchProp.SelectIDS.Add(808);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        DataTable bindDt = TransDt(dt);
        //Repeater rp = products1.FindControl("rp_goods") as Repeater;
        rpBrand1.DataSource = bindDt;
        rpBrand1.DataBind();
    }


    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01");
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("WPA06");
        dt.Columns.Add("WPA10");
        dt.Columns.Add("PERSENT");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");
        dt.Columns.Add("P_id");
        dt.Columns.Add("BrandName");
        dt.Columns.Add("BrandUrl");
        //dt.Columns.Add("P_img");

        //Plist pl = new Plist();
        //Dictionary<int, string> Plist = pl.SetPlist();
        List<BrandCs> Blist = SetBrandList();
        int count = 0;

        foreach (DataRow dr in sdt.Rows)
        {
            DataRow ndr = dt.NewRow();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();
            if (count <= 7)
            {
                ndr["BrandName"] = Blist[count].name;
                ndr["BrandUrl"] = Blist[count].url;
            }
            dt.Rows.Add(ndr);
            count++;
        }
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

    string brandUrl = "https://www.hawooo.com/user/brands.aspx?bid=";
    public List<BrandCs> SetBrandList()
    {
        List<BrandCs> list = new List<BrandCs>
            {
                new BrandCs(208, "Cink", "", "", brandUrl + 208.ToString(), ""),
                new BrandCs(297, "Unicat", "", "", brandUrl + 297.ToString(), ""),
                new BrandCs(235, "DV", "", "", brandUrl + 235.ToString(), ""),
                new BrandCs(345, "Laler", "", "", brandUrl + 345.ToString(), ""),
                new BrandCs(115, "艾黎亞", "", "", brandUrl + 115.ToString(), ""),
                new BrandCs(318, "Hallmark", "", "", brandUrl + 318.ToString(), ""),
                new BrandCs(283, "莎菲亞", "", "", brandUrl + 283.ToString(), ""),
                new BrandCs(299, "NANOone", "", "", brandUrl + 299.ToString(), ""),
            };
        return list;
    }

    private void BindBrand()
    {
        string url = "https://www.hawooo.com/user/brands.aspx?bid=";
        string srh_url = "https://www.hawooo.com/user/search.aspx?stxt=";

        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>
        {
            new BrandCs(72, "天堂花園", cm_a + "ftp/20191010/logo_01.png", "買就送木槿卸妝體驗組", url + 72.ToString(), cm_a + "ftp/20191010/bd_01.png"),
            new BrandCs(264, "HH", cm_a + "ftp/20191010/logo_02.png", "館內滿150 HH護幼安淨膚防護液(150ppm)50m", url + 264.ToString(), cm_a + "ftp/20191010/bd_02.png"),
            new BrandCs(51, "Beauty小舖", cm_a + "ftp/20191010/logo_03.png", "全館滿470 送雅詩蘭黛特潤超導修護露7ml 送完為止", url + 51.ToString(), cm_a + "ftp/20191010/bd_03.png"),
            new BrandCs(222, "Dr.Lady", cm_a + "ftp/20191010/logo_04.png", "9/20-10/31 全館滿500 送 爵士芭蕾睫毛膏8ml", url + 222.ToString(), cm_a + "ftp/20191010/bd_04.png"),

            new BrandCs(116, "清檜", cm_a + "ftp/20191010/logo_05.png", "全館 Up to 40%OFF", url + 116.ToString(), cm_a + "ftp/20191010/bd_05.png"),
            new BrandCs(102, "戀家小舖", cm_a + "ftp/20191010/logo_06.png", "買一件12%off 再享滿180折20 滿280折30 滿380折40", url + 102.ToString(), cm_a + "ftp/20191010/bd_06.png"),
            new BrandCs(310, "糖鼎", cm_a + "ftp/20191010/logo_07.png", "養生茶磚華人第一品牌 買就送試喝包2包", url + 310.ToString(), cm_a + "ftp/20191010/bd_07.png"),
            new BrandCs(96, "Mollifix", cm_a + "ftp/20191010/logo_08.png", "全館滿99送生理褲", url + 96.ToString(), cm_a + "ftp/20191010/bd_08.png"),
        };

        rpBrand2.DataSource = list;
        rpBrand2.DataBind();
    }

}