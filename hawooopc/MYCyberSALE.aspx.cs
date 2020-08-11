﻿using System;
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

public partial class user_static_mycybersale : System.Web.UI.Page
{

    private int _eventId = 482;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetTime();

            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/mycybersale.aspx");

            var rand = new Random();

            DataTable dt = BindData(482);
            var take = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(8).CopyToDataTable();
            Repeater rp = products1.FindControl("rp_goods") as Repeater;
            rp.DataSource = take;
            rp.DataBind();

            dt = BindData(482);
            var take2 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(4).CopyToDataTable();
            Repeater rp2 = products2.FindControl("rp_goods") as Repeater;
            rp2.DataSource = take2;
            rp2.DataBind();

            dt = BindData(482);
            var take3 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(4).CopyToDataTable();
            Repeater rp3 = products3.FindControl("rp_goods") as Repeater;
            rp3.DataSource = take3;
            rp3.DataBind();

            dt = BindData(482);
            var take4 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(4).CopyToDataTable();
            Repeater rp4 = products4.FindControl("rp_goods") as Repeater;
            rp4.DataSource = take4;
            rp4.DataBind();

            dt = BindData(482);
            var take5 = dt.AsEnumerable().OrderBy(r => rand.Next()).Take(4).CopyToDataTable();
            Repeater rp5 = products5.FindControl("rp_goods") as Repeater;
            rp5.DataSource = take5;
            rp5.DataBind();

            BindBrand();
        }
    }

    private void SetTime()
    {
        string sqlTxt =
            "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01=@SPM01";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPM01", SqlDbType.Int, _eventId));
        cmd.CommandText = sqlTxt;
        DataTable sDt = SqlDbmanager.queryBySql(cmd);
        if (sDt.Rows.Count > 0)
        {
            DateTime stime = DateTime.Now;
            DateTime preorderEnd = Convert.ToDateTime("2019-10-02 00:00:00");
            DateTime flashSaleEnd = Convert.ToDateTime("2019-10-04 00:00:00");
            DateTime etime;
            if (stime < preorderEnd)
            {
                etime = preorderEnd;
            }
            else
            {
                etime = flashSaleEnd;
            }
            TimeSpan ts = etime - stime;
            var spend = ts.TotalSeconds;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "alert2url('Oops, the sale is over! No worries, check out more hot deals on our website!','index.aspx');", true);
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

        List<BrandCs> list = new List<BrandCs>
        {
            new BrandCs(235, "DV", cm_a + "ftp/20190927/logo_01.png", "全館滿350送醇養妍活化青春錠", url + 235.ToString(), cm_a + "ftp/20190927/bd_01.png"),
            new BrandCs(345, "Laler", cm_a + "ftp/20190927/logo_02.png", "全館滿299送Laler冰晶野玫瑰素顏膠囊", url + 345.ToString(), cm_a + "ftp/20190927/bd_02.png"),
            new BrandCs(309, "初時肌", cm_a + "ftp/20190927/logo_03.png", "買就送玫瑰補水保濕原生露", url + 309.ToString(), cm_a + "ftp/20190927/bd_03.png"),
            new BrandCs(72, "天堂花園", cm_a + "ftp/20190927/logo_04.png", "買就送卸妝體驗雙享組", url + 72.ToString(), cm_a + "ftp/20190927/bd_04.png"),
            new BrandCs(102, "戀家小舖", cm_a + "ftp/20190927/logo_05.png", "品牌特殺再折扣MAX30%off", url + 102.ToString(), cm_a + "ftp/20190927/bd_05.png"),

            new BrandCs(295, "Deseno", cm_a + "ftp/20190927/logo_06.png", "酷比行李箱系列Max70%OFF", url + 295.ToString(), cm_a + "ftp/20190927/bd_06.png"),
            new BrandCs(96, "Mollifix", cm_a + "ftp/20190927/logo_07.png", "買一送一 零感FIT輕體塑身衣送牛仔肚新纖體感塑身衣", url + 96.ToString(), cm_a + "ftp/20190927/bd_07.png"),
            new BrandCs(344, "NANA MAGIC", cm_a + "ftp/20190927/logo_08.png", "全館買就送三角小褲褲L碼 （款式隨機）", url + 344.ToString(), cm_a + "ftp/20190927/bd_08.png"),
            new BrandCs(199, "Dayla", cm_a + "ftp/20190927/logo_09.png", "滿RM150送金緻不沾杯水潤唇釉#復刻回憶x1支", url + 199.ToString(), cm_a + "ftp/20190927/bd_09.png"),
            new BrandCs(310, "糖鼎", cm_a + "ftp/20190927/logo_10.png", "買就送糖鼎試喝包2包", url + 310.ToString(), cm_a + "ftp/20190927/bd_10.png"),

            new BrandCs(29, "歐可茶葉", cm_a + "ftp/20190927/logo_11.png", "買就送歐可茶葉試喝包1包", url + 29.ToString(), cm_a + "ftp/20190927/bd_11.png"),
            new BrandCs(77, "Life8", cm_a + "ftp/20190927/logo_12.png", "MAX 21% off", url + 77.ToString(), cm_a + "ftp/20190927/bd_12.png")
        };

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}