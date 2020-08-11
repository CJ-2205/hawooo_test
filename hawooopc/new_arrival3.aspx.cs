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
using System.Globalization;


public partial class user_static_new_arrival3 : System.Web.UI.Page
{
    //第一組品牌ID
    private string _b101 = "208";
    private string _b201 = "235";
    private string _b301 = "413";
    private string _b401 = "432";

    //第二組品牌ID
    private string _b102 = "450";
    private string _b202 = "222";
    private string _b302 = "11";
    private string _b402 = "420";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
            {
                Response.Redirect("../mobile/new_arrival3.aspx" + Request.Url.Query);
            }

            BindBrandData();
            //BindNewProductsData();
        }
    }

    public class BrandCs
    {
        public int number { get; set; }
        public string url { get; set; }
        public string img { get; set; }
        public BrandCs(int _number, string _url, string _img)
        {
            number = _number;
            url = _url;
            img = _img;
        }
    }

    private void BindBrandData()
    {

        string url = "https://www.hawooo.com/user/brands.aspx?bid=";
        string urlSrh = "https://www.hawooo.com/user/search.aspx?stxt=";

        string cm_a = ConfigurationManager.AppSettings["imgUrl"];

        List<BrandCs> list = new List<BrandCs>
        {
            new BrandCs(101, url + _b101, cm_a + "ftp/2019newarv/20191031/bd_01.png"),
            new BrandCs(102, url + _b201, cm_a + "ftp/2019newarv/20191031/bd_02.png"),
            new BrandCs(103, url + _b301, cm_a + "ftp/2019newarv/20191031/bd_03.png"),
            new BrandCs(104, url + _b401, cm_a + "ftp/2019newarv/20191031/bd_04.png"),

            new BrandCs(201, url + _b102, cm_a + "ftp/2019newarv/20191031/bd_01_2.png"),
            new BrandCs(202, url + _b202, cm_a + "ftp/2019newarv/20191031/bd_02_2.png"),
            new BrandCs(203, url + _b302, cm_a + "ftp/2019newarv/20191031/bd_03_2.png"),
            new BrandCs(204, url + _b402, cm_a + "ftp/2019newarv/20191031/bd_04_2.png"),
        };

        DateTime nowTime = DateTime.Now;
        int dayWeek = GetWeekOfYear(nowTime) + 1;//數字每過1個禮拜+1，設定星期1為每週的第1天
        //Response.Write(dayWeek);
        if ((dayWeek + 1) % 4 == 0 || dayWeek % 4 == 0)//47,48 51,52 55,56...週，跑這邊
        {
            Bind4BrandData(_b102, _b202, _b302, _b402);
            List<BrandCs> filtered1 = new List<BrandCs>(list.Where(p => p.number.Equals(201)).ToList());
            ListView1.DataSource = filtered1;
            ListView1.DataBind();
            List<BrandCs> filtered2 = new List<BrandCs>(list.Where(p => p.number.Equals(202)).ToList());
            ListView2.DataSource = filtered2;
            ListView2.DataBind();
            List<BrandCs> filtered3 = new List<BrandCs>(list.Where(p => p.number.Equals(203)).ToList());
            ListView3.DataSource = filtered3;
            ListView3.DataBind();
            List<BrandCs> filtered4 = new List<BrandCs>(list.Where(p => p.number.Equals(204)).ToList());
            ListView4.DataSource = filtered4;
            ListView4.DataBind();
        }
        else//45,46 49,50 53,54...週，跑這邊
        {
            Bind4BrandData(_b101, _b201, _b301, _b401);
            List<BrandCs> filtered1 = new List<BrandCs>(list.Where(p => p.number.Equals(101)).ToList());
            ListView1.DataSource = filtered1;
            ListView1.DataBind();
            List<BrandCs> filtered2 = new List<BrandCs>(list.Where(p => p.number.Equals(102)).ToList());
            ListView2.DataSource = filtered2;
            ListView2.DataBind();
            List<BrandCs> filtered3 = new List<BrandCs>(list.Where(p => p.number.Equals(103)).ToList());
            ListView3.DataSource = filtered3;
            ListView3.DataBind();
            List<BrandCs> filtered4 = new List<BrandCs>(list.Where(p => p.number.Equals(104)).ToList());
            ListView4.DataSource = filtered4;
            ListView4.DataBind();
        }

    }

    private static int GetWeekOfYear(DateTime dt)//回傳指定日期為該年第幾週
    {
        GregorianCalendar gc = new GregorianCalendar();
        int weekOfYear = gc.GetWeekOfYear(dt, CalendarWeekRule.FirstDay, DayOfWeek.Monday);
        return weekOfYear;
    }

    private void Bind4BrandData(string b1, string b2, string b3, string b4)
    {
        SqlCommand cmd = new SqlCommand();
        string sqlStr = @"SELECT WP.WP02,WP.WP24,WPT02 AS WP30,WPT07,WP.WP01,WP.WP06,WP.WP08_1,WP.WP27,Price AS WPA06,OPrice AS WPA10,WP39,WP23,B01
    FROM WP WITH(NOLOCK)
    INNER JOIN ProductPriceView WITH(NOLOCK)
     ON PID = WP01
    LEFT JOIN WPTAG WITH(NOLOCK)
     ON WPT01 = WP30
    LEFT JOIN WPLG WITH(NOLOCK)
     ON WPLG01 = WP01
    WHERE WP.WP05 = 1
     AND GETDATE()
     BETWEEN WP.WP09
     AND WP.WP10
     AND WP06 = 1
     AND WP.WP07 = 1
     AND WP01 IN
     (SELECT WP01
     FROM
       (SELECT DISTINCT B01,
       WP01,
       WP02,
       ROW_NUMBER() OVER(PARTITION BY B01
       ORDER BY WP27 DESC, WP11 DESC) AS R
       FROM wp
       WHERE B01 IN(" + b1 + ", " + b2 + ", " + b3 + "," + b4 + @")
         AND WP07 = 1
         AND GETDATE()
         BETWEEN WP09
         AND WP10) AS DT
       WHERE R <= 3)
     ORDER BY WP01 DESC";
        cmd.CommandText = sqlStr;
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Select("B01=" + b1).Length > 0)
        {
            Repeater1.DataSource = dt.Select("B01=" + b1).CopyToDataTable();
            Repeater1.DataBind();
        }

        if (dt.Select("B01=" + b2).Length > 0)
        {
            Repeater2.DataSource = dt.Select("B01=" + b2).CopyToDataTable();
            Repeater2.DataBind();
        }

        if (dt.Select("B01=" + b3).Length > 0)
        {
            Repeater3.DataSource = dt.Select("B01=" + b3).CopyToDataTable();
            Repeater3.DataBind();
        }

        if (dt.Select("B01=" + b4).Length > 0)
        {
            Repeater4.DataSource = dt.Select("B01=" + b4).CopyToDataTable();
            Repeater4.DataBind();
        }
    }

    private void BindNewProductsData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType);
        Repeater rp = products1.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt.AsEnumerable().OrderByDescending(r => r.Field<int>("WP27")).CopyToDataTable();
        rp.DataBind();

    }


    public DataTable GetGoods(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("Where WP07=1 and GETDATE() between WP09 and WP10 and WP11 between DATEADD(day,-14,GETDATE()) and GETDATE()");
        sb.Append("ORDER BY WP27 DESC");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);

        return dt;
    }

    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType);
        DataTable take = new DataTable();
        if (ddlType.SelectedIndex == 0)
        {
            take = dt.AsEnumerable().OrderByDescending(r => r.Field<int>("WP27")).CopyToDataTable();
        }

        if (ddlType.SelectedIndex == 1)
        {
            take = dt.AsEnumerable().OrderBy(r => r.Field<decimal>("WPA06")).CopyToDataTable();
        }

        if (ddlType.SelectedIndex == 2)
        {
            take = dt.AsEnumerable().OrderByDescending(r => r.Field<decimal>("WPA06")).CopyToDataTable();
        }

        Repeater rp = products1.FindControl("rp_goods") as Repeater;
        rp.DataSource = take;
        rp.DataBind();
    }

}