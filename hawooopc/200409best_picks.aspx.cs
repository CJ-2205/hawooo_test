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

public partial class user_static_200409best_picks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindbannerInfo();
        }
    }

    public class BannerInfo
    {
        public string _url { get; set; }
        public string _image { get; set; }

        public BannerInfo(string url, string image)
        {
            _url = url;
            _image = image;
        }
    }

    public void BindbannerInfo()
    {
        List<BannerInfo> bi = new List<BannerInfo>();
        string url = "https://www.hawooo.com/user/productdetail.aspx?id=";
        string cm = ConfigurationManager.AppSettings["imgUrl"];


        bi.Add(new BannerInfo(url + "20112", cm + "ftp/20200409/hw_01.png"));
        bi.Add(new BannerInfo(url + "27369", cm + "ftp/20200409/hw_02.png"));
        bi.Add(new BannerInfo(url + "18105", cm + "ftp/20200409/hw_03.png"));
        bi.Add(new BannerInfo(url + "27514", cm + "ftp/20200409/hw_04.png"));
        bi.Add(new BannerInfo(url + "24936", cm + "ftp/20200409/hw_05.png"));

        bi.Add(new BannerInfo(url + "25480", cm + "ftp/20200409/hw_06.png"));
        bi.Add(new BannerInfo(url + "27384", cm + "ftp/20200409/hw_07.png"));
        bi.Add(new BannerInfo(url + "21758", cm + "ftp/20200409/hw_08.png"));
        bi.Add(new BannerInfo(url + "25509", cm + "ftp/20200409/hw_09.png"));
        bi.Add(new BannerInfo(url + "26902", cm + "ftp/20200409/hw_10.png"));

        Repeater1.DataSource = bi;
        Repeater1.DataBind();

    }
}