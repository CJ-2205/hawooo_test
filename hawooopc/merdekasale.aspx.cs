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

public partial class user_static_merdeka_sale_merdekasale : System.Web.UI.Page
{
    //private int _eventId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SetTime();

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/merdekasale.aspx");

            DataTable dt = BindData(486);
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = dt;
            rp.DataBind();

            dt = BindData(482);
            var rand = new Random();
            var take2 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            dt = BindData(759);
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = dt;
            rp3.DataBind();

            dt = BindData(760);
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = dt;
            rp4.DataBind();

            dt = BindData(761);
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = dt;
            rp5.DataBind();

            dt = BindData(762);
            Repeater rp6 = products6.FindControl("rp_goods") as Repeater;
            rp6.DataSource = dt;
            rp6.DataBind();

            dt = BindData(763);
            Repeater rp7 = products7.FindControl("rp_goods") as Repeater;
            rp7.DataSource = dt;
            rp7.DataBind();

            dt = BindData(764);
            Repeater rp8 = products8.FindControl("rp_goods") as Repeater;
            rp8.DataSource = dt;
            rp8.DataBind();

            BindBrand();
        }
    }

    private void SetTime()
    {
        string sqlTxt = "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01 IN (486) AND GETDATE() BETWEEN SPM04 AND SPM05";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable sDt = SqlDbmanager.queryBySql(cmd);
        if (sDt.Rows.Count > 0)
        {
            DateTime stime = DateTime.Now;
            //DateTime etime = Convert.ToDateTime(sDt.Rows[0]["SPM05"].ToString());
            DateTime etime = Convert.ToDateTime(DateTime.Now.AddDays(1).ToString("yyyy-MM-dd 00:00:00"));
            //_eventId = Convert.ToInt32(sDt.Rows[0]["SPM01"].ToString());
            TimeSpan ts = etime - stime;
            var spend = ts.TotalSeconds;
            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "set", "setTime(" + spend + ");", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "set", "alert2url('Oops, the sale is over! No worries, check out more hot deals on our website!','index.aspx');", true);
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
        public int _bid { get; set; }
        public string _name { get; set; }
        public string _logo { get; set; }
        public string _title { get; set; }
        public string _url { get; set; }
        public string _img { get; set; }
        public BrandCs(int bid, string name, string logo, string title, string url, string img)
        {
            _bid = bid;
            _name = name;
            _logo = logo;
            _title = title;
            _url = url;
            _img = img;
        }
    }

    private void BindBrand()
    {
        string url = "https://www.hawooo.com/user/brands.aspx?bid=";
        string srh_url = "https://www.hawooo.com/user/search.aspx?stxt=";
        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>();

        list.Add(new BrandCs(371, "mooimom", cm_a + "ftp/20190822/logo_01.png", "Extra 20 % OFF", url + 371.ToString(), cm_a + "ftp/20190822/bd_01.png"));
        list.Add(new BrandCs(102, "戀家小舖", cm_a + "ftp/20190822/logo_02.png", "涼感專區 滿1件extra10%off", url + 102.ToString(), cm_a + "ftp/20190822/bd_02.png"));
        list.Add(new BrandCs(313, "THECURVE", cm_a + "ftp/20190822/logo_03.png", "滿 RM99 送 黑色纖腿套1雙(M-Size)", srh_url + "THECURVE", cm_a + "ftp/20190822/bd_03.png"));
        list.Add(new BrandCs(77, "Life8", cm_a + "ftp/20190822/logo_04.png", "滿RM180折RM20，滿RM330折RM35", url + 77.ToString(), cm_a + "ftp/20190822/bd_04.png"));
        list.Add(new BrandCs(307, "森田藥粧", cm_a + "ftp/20190822/logo_05.png", "滿RM180折RM20，滿RM330折RM35", url + 307.ToString(), cm_a + "ftp/20190822/bd_05.png"));

        list.Add(new BrandCs(297, "Unicat", cm_a + "ftp/20190822/logo_06.png", "全館30%Off，滿188贈新款面膜1片", url + 297.ToString(), cm_a + "ftp/20190822/bd_06.png"));
        list.Add(new BrandCs(264, "HH", cm_a + "ftp/20190822/logo_07.png", "滿RM180折RM20，滿RM330折RM35", url + 264.ToString(), cm_a + "ftp/20190822/bd_07.png"));
        list.Add(new BrandCs(309, "初時肌", cm_a + "ftp/20190822/logo_08.png", "滿180折20、滿330折35，滿額贈好禮", url + 309.ToString(), cm_a + "ftp/20190822/bd_08.png"));
        list.Add(new BrandCs(96, "Mollifix", cm_a + "ftp/20190822/logo_09.png", "RM99 送撞色運動短褲(灰L)", url + 96.ToString(), cm_a + "ftp/20190822/bd_09.png"));
        list.Add(new BrandCs(235, "DV", cm_a + "ftp/20190822/logo_10.png", "滿180折20、滿330折35，滿額贈好禮", url + 235.ToString(), cm_a + "ftp/20190822/bd_10.png"));

        list.Add(new BrandCs(312, "Check2Check", cm_a + "ftp/20190822/logo_11.png", "滿180折20、滿330折35，滿額贈好禮", url + 312.ToString(), cm_a + "ftp/20190822/bd_11.png"));
        list.Add(new BrandCs(345, "Laler", cm_a + "ftp/20190822/logo_12.png", "滿180折20、滿330折35", url + 345.ToString(), cm_a + "ftp/20190822/bd_12.png"));
        list.Add(new BrandCs(320, "許氏", cm_a + "ftp/20190822/logo_13.png", " 滿180折20、滿330折35", url + 320.ToString(), cm_a + "ftp/20190822/bd_13.png"));
        list.Add(new BrandCs(321, "CHOYeR", cm_a + "ftp/20190822/logo_14.png", "滿180折20、滿330折35、滿520折50", url + 321.ToString(), cm_a + "ftp/20190822/bd_14.png"));
        list.Add(new BrandCs(186, "BC", cm_a + "ftp/20190822/logo_15.png", "RM199 送 復古瘦腰長腿褲(黑S-M)1件", url + 186.ToString(), cm_a + "ftp/20190822/bd_15.png"));

        list.Add(new BrandCs(295, "deseno", cm_a + "ftp/20190822/logo_16.png", "漫威新款 拉鍊箱 Crazy Deal 50%off", url + 295.ToString(), cm_a + "ftp/20190822/bd_16.png"));
        list.Add(new BrandCs(339, "美孕佳", cm_a + "ftp/20190822/logo_17.png", "MAX 20%OFF (with promo code)", url + 339.ToString(), cm_a + "ftp/20190822/bd_17.png"));
        list.Add(new BrandCs(340, "CARUN", cm_a + "ftp/20190822/logo_18.png", "MAX 40%OFF (with promo code)", url + 340.ToString(), cm_a + "ftp/20190822/bd_18.png"));
        list.Add(new BrandCs(72, "天堂花園", cm_a + "ftp/20190822/logo_19.png", "買就送 卸妝體驗雙享組，滿額贈好禮", url + 72.ToString(), cm_a + "ftp/20190822/bd_19.png"));
        list.Add(new BrandCs(319, "Naturero", cm_a + "ftp/20190822/logo_20.png", "滿180折20、滿330折35", url + 319.ToString(), cm_a + "ftp/20190822/bd_20.png"));

        list.Add(new BrandCs(326, "CACO", cm_a + "ftp/20190822/logo_21.png", "滿180折20、滿330折35", url + 326.ToString(), cm_a + "ftp/20190822/bd_21.png"));
        list.Add(new BrandCs(304, "WAVE SHINE", cm_a + "ftp/20190822/logo_22.png", "滿180折20、滿330折35", url + 304.ToString(), cm_a + "ftp/20190822/bd_22.png"));
        list.Add(new BrandCs(299, "NANOone", cm_a + "ftp/20190822/logo_23.png", "全館買就送負離子膠原蛋白面膜1片", url + 299.ToString(), cm_a + "ftp/20190822/bd_23.png"));
        list.Add(new BrandCs(344, "NANA MAGIC", cm_a + "ftp/20190822/logo_24.png", "全館買就送三角小褲(L)1件", url + 344.ToString(), cm_a + "ftp/20190822/bd_24.png"));

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }

    public class EventRegister
    {
        private String _MID = null;
        public String MID
        {
            get { return _MID; }
            set { _MID = value; }
        }

        private String _RegisterTime = null;
        public String RegisterTime
        {
            get { return _RegisterTime; }
            set { _RegisterTime = value; }
        }

        private int? _State = null;
        public int? State
        {
            get { return _State; }
            set { _State = value; }
        }
    }

    public class RegisterInfoFac
    {
        public bool InsertEventRegister(EventRegister obj)
        {
            return SqlDbmanager.executeNonQry(SqlExtension.getInsertSqlCmd("EventRegister", obj));
        }
    }


    private void Register()
    {
        EventRegister er = new EventRegister();
        RegisterInfoFac ri = new RegisterInfoFac();
        if (Session["A01"] != null)
        {
            er.MID = Session["A01"].ToString();
            er.RegisterTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            er.State = 1;
            bool rval = ri.InsertEventRegister(er);
            if (rval)
                ScriptManager.RegisterStartupScript(Page, GetType(), "alert", "alert('Register successfully')", true);
            else
            {
                ScriptManager.RegisterStartupScript(Page, GetType(), "alert", "alert('You had already registered')", true);
            }
        }
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Register();
    }


}