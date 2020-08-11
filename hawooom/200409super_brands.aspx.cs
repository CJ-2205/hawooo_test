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
using System.Text;

public partial class mobile_static_200409super_brands : System.Web.UI.Page
{
    private List<BrandInfo> _sourceBrandsInfo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            _sourceBrandsInfo = listBrand();
            rp1.DataSource = FilterBrand(1);
            rp1.DataBind();

            rp2.DataSource = FilterBrand(2);
            rp2.DataBind();

            rp3.DataSource = FilterBrand(3);
            rp3.DataBind();

            rp4.DataSource = FilterBrand(4);
            rp4.DataBind();

            rp5.DataSource = FilterBrand(5);
            rp5.DataBind();
        }
    }

    private List<BrandInfo> FilterBrand(int groupNum)
    {
        var filterBI = _sourceBrandsInfo.Where(v => v._group == groupNum).OrderBy(v => v._orderBy).ToList();

        return filterBI;
    }

    public class BrandInfo
    {
        public int _bid { get; set; }
        public string _url { get; set; }
        public string _info { get; set; }
        public string _image { get; set; }
        public int _group { get; set; }
        public int _orderBy { get; set; }
        public string _rankImage { get; set; }

        public BrandInfo(int bid, string url, string info, string image, int group, int orderBy, string rankImage)
        {
            _bid = bid;
            _url = url;
            _info = info;
            _image = image;
            _group = group;
            _orderBy = orderBy;
            _rankImage = rankImage;
        }
    }

    public List<BrandInfo> listBrand()
    {

        List<BrandInfo> listBrandsInfo = new List<BrandInfo>();
        string url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
        string srh_url = "https://www.hawooo.com/mobile/search.aspx?stxt=";
        string cm = ConfigurationManager.AppSettings["imgUrl"];

        listBrandsInfo.Add(new BrandInfo(208, url + 208.ToString(), "總值RM1300滿額贈", cm + "ftp/20200402/logo_01_01.png", 1, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(307, url + 307.ToString(), "滿99送10片面膜", cm + "ftp/20200402/logo_01_02.png", 1, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(72, url + 72.ToString(), "下單抽好禮&滿額送面膜保濕組", cm + "ftp/20200402/logo_01_03.png", 1, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(287, url + 287.ToString(), "下單送卸妝精露+精華液試用包", cm + "ftp/20200402/logo_01_04.png", 1, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(450, url + 450.ToString(), "xx", cm + "ftp/20200402/logo_01_05.png", 1, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(334, url + 334.ToString(), "全館滿RM388 現折8%", cm + "ftp/20200402/logo_02_01.png", 2, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(180, url + 180.ToString(), "全館滿RM188 現折8%", cm + "ftp/20200402/logo_02_02.png", 2, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(301, url + 301.ToString(), "全館滿RM388 現折8%", cm + "ftp/20200402/logo_02_03.png", 2, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(11, url + 11.ToString(), "全館滿RM288現折8%", cm + "ftp/20200402/logo_02_04.png", 2, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(318, url + 318.ToString(), "滿額送蠟筆+保溫瓶", cm + "ftp/20200402/logo_02_05.png", 2, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(235, url + 235.ToString(), "全館滿350折25", cm + "ftp/20200402/logo_03_01.png", 3, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(345, url + 345.ToString(), "全館滿300折20", cm + "ftp/20200402/logo_03_02.png", 3, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(203, url + 203.ToString(), "全館滿299折20", cm + "ftp/20200402/logo_03_03.png", 3, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(222, url + 222.ToString(), "滿額送髮根精華+面膜+原生凍/養紅顏", cm + "ftp/20200402/logo_03_04.png", 3, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(349, url + 349.ToString(), "全館滿199現折5%", cm + "ftp/20200402/logo_03_05.png", 3, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(208, url + 208.ToString(), "總值RM1300滿額贈", cm + "ftp/20200402/logo_04_01.png", 4, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(283, url + 283.ToString(), "下單送隔離乳+滿額送RM145好禮", cm + "ftp/20200402/logo_04_02.png", 4, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(297, url + 297.ToString(), "全館限時 UP TO 50% OFF", cm + "ftp/20200402/logo_04_03.png", 4, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(322, url + 322.ToString(), "全館限時UP TO 55% OFF", cm + "ftp/20200402/logo_04_04.png", 4, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(439, srh_url + "NES", "全館 UP TO 20% OFF", cm + "ftp/20200402/logo_04_05.png", 4, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(131, url + 131.ToString(), "全館UP TO 30% OFF", cm + "ftp/20200402/logo_05_01.png", 5, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(140, srh_url + "愛D菇", "全館UP TO 20% OFF", cm + "ftp/20200402/logo_05_02.png", 5, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(375, url + 375.ToString(), "全館UP TO 10% OFF", cm + "ftp/20200402/logo_05_03.png", 5, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(27, url + 27.ToString(), "全館UP TO 70% OFF", cm + "ftp/20200402/logo_05_04.png", 5, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(155, url + 155.ToString(), "全館UP TO 20% OFF", cm + "ftp/20200402/logo_05_05.png", 5, 5, cm + "ftp/20191127/aw_05.png"));

        return listBrandsInfo;
    }
}