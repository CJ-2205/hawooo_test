using hawooo;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;






public partial class user_2018xmas : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (Session["desktop"] == null)
            {
                if (ismobile)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/2018xmas.aspx'", true);
                }
            }

            if (Session["A01"] != null)
            {
                string c = GetDt();
                litCount.Text = c;
                litTotal.Text = (Convert.ToInt32(c) * 100).ToString();
            }
            bindDT();
        }
    }


    public class BrandCs
    {
        public int IND { get; set; }
        public int BID { get; set; }
        public string IMG { get; set; }
        public string NOTE { get; set; }
        public string LOGO { get; set; }
        public string NAME { get; set; }
        public BrandCs(int _IND, int _BID, string _IMG, string _NOTE, string _LOGO, string _NAME)
        {
            IND = _IND;
            BID = _BID;
            IMG = _IMG;
            NOTE = _NOTE;
            LOGO = _LOGO;
            NAME = _NAME;
        }

    }

    public List<BrandCs> listBrand()
    {
        List<BrandCs> listBc = new List<BrandCs>();
        listBc.Add(new BrandCs(1, 12, "bn_01", "Max 25% OFF", "logo_01", "BHK's"));
        listBc.Add(new BrandCs(2, 264, "bn_02", "Selected Items 25% OFF", "logo_02", "HH"));
        listBc.Add(new BrandCs(3, 239, "bn_03", "Max 40% OFF", "logo_03", "userISM"));
        listBc.Add(new BrandCs(4, 128, "bn_04", "Free Shipping", "logo_04", "Qmomo"));
        listBc.Add(new BrandCs(5, 235, "bn_05", "Free Gift (Value RM35)", "logo_05", "DV笛絲薇夢"));
        listBc.Add(new BrandCs(6, 115, "bn_06", "Max 45% OFF", "logo_06", "ANRIEA艾黎亞"));
        listBc.Add(new BrandCs(7, 247, "bn_07", "Buy 1 Free 1", "logo_07", "beautymaker"));
        listBc.Add(new BrandCs(8, 51, "bn_08", "Max 35% OFF", "logo_08", "Beauty小舖"));

        //listBc.Add(new BrandCs(8, 1, "bn_01", "", "logo_01", "自然主義"));


        //listBc.Add(new BrandCs(1, 235, "bn_01", "Up to 28% off", "logo_01", "DV笛絲薇夢"));
        //listBc.Add(new BrandCs(2, 51, "bn_02", "Up to 45% off", "logo_02", "Beauty小舖"));
        //listBc.Add(new BrandCs(3, 170, "bn_03xxx", "Up to 38% off", "logo_03xxx", "KGCHECK 凱綺萃"));
        //listBc.Add(new BrandCs(4, 115, "bn_04", "Up to 45% off", "logo_04", "ANRIEA艾黎亞"));
        //listBc.Add(new BrandCs(5, 238, "bn_05", "Up to 52% off", "logo_05", "嚴總‧嚴選"));
        //listBc.Add(new BrandCs(6, 138, "bn_06", "Up to 40% off<br/>+Free Gift (RM21.3)", "logo_06", "icon愛康"));
        //listBc.Add(new BrandCs(7, 136, "bn_07", "Up to 30% off", "logo_07", "伊黛爾"));
        //listBc.Add(new BrandCs(8, 128, "bn_08", "Up to 20% off", "logo_08", "Qmomo"));
        //listBc.Add(new BrandCs(9, 33, "bn_09", "Up to 53% off", "logo_09", "MY BRA"));
        //listBc.Add(new BrandCs(10, 186, "bn_10xxx", "Up to 50% off", "logo_10xxx", "BC"));
        //listBc.Add(new BrandCs(11, 273, "bn_11", "Up to 50% off<br/>+ Free Gift (RM39)", "logo_11", "葵柏兒"));
        //listBc.Add(new BrandCs(12, 227, "bn_12", "Up to 35% off<br/>+ Free Gift (RM110)", "logo_12", "薇佳"));
        //listBc.Add(new BrandCs(13, 154, "bn_13", "Up to 60% off<br/>+ Free Gift (RM23.9)", "logo_13", "UNT"));
        //listBc.Add(new BrandCs(14, 99, "bn_14", "Up to 39% off<br/>+ Free Gift (RM19)", "logo_14", "瓷肌萃"));
        //listBc.Add(new BrandCs(15, 208, "bn_15", "Up to 55% off<br/>+ Free Gift (RM26)", "logo_15", "Dr Cink"));
        //listBc.Add(new BrandCs(16, 184, "bn_16", "Up to 40% off", "logo_16", "妍霓絲"));
        //listBc.Add(new BrandCs(17, 117, "bn_17", "Up to 50% off<br/>+ Free Gift (RM50)", "logo_17", "Nature Tree"));
        //listBc.Add(new BrandCs(18, 275, "bn_18", "Up to 65% off", "logo_18", "M22"));
        //listBc.Add(new BrandCs(19, 247, "bn_19", "Up to 50% off<br/>+ Free Gift (RM120)", "logo_19", "Beautymaker"));
        //listBc.Add(new BrandCs(20, 29, "bn_20", "Up to 25% off", "logo_20", "歐可茶葉"));
        //listBc.Add(new BrandCs(21, 131, "bn_21", "Up to 45% off", "logo_21", "快車肉乾"));
        //listBc.Add(new BrandCs(22, 142, "bn_22", "Up to 53% off", "logo_22", "台灣茶人"));
        return listBc;
    }


    //public class SearchProp
    //{
    //    public int ClassID { get; set; }
    //    public int BrandID { get; set; }

    //    public LangType LgType { get; set; }
    //    public int page { get; set; }
    //    public int pcount { get; set; }

    //    public List<string> Cells = new List<string>();

    //    private List<string> _WhereTxts = new List<string>();

    //    public List<string> WhereTxts
    //    {
    //        get { return _WhereTxts; }
    //        set { _WhereTxts = value; }
    //    }

    //    private List<string> _joinTxts = new List<string>();

    //    public List<string> JoinTxts
    //    {
    //        get { return _joinTxts; }
    //        set { _joinTxts = value; }
    //    }

    //    public string OrderBy { get; set; }

    //    public object Clone()
    //    {
    //        return this.MemberwiseClone();
    //    }

    //    public enum EmTagType { TEXT, IMG }

    //    private EmTagType _TagType = EmTagType.TEXT;
    //    public EmTagType TagType
    //    {
    //        get { return _TagType; }
    //        set { _TagType = value; }
    //    }
    //}

    public DataTable GetTop40Look()
    {
        string strSql = "SELECT TOP 40 WP27,WP01,WP02 FROM WP  WHERE WP07=1 AND  NOT EXISTS (SELECT SPD02  FROM SPRODUCTSD WHERE SPD01 IN (596,597,598,599,600,601) AND WP01=SPD02 )  ORDER BY WP27 DESC";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        return dt;
    }

    private void bindDT()
    {
        List<BrandCs> list = listBrand();
        //list.RemoveAt(3);
        //list.RemoveAt(10);
        rpBrand.DataSource = listBrand();
        rpBrand.DataBind();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD05");
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        //searchProp.Cells.Add("ISNULL(SCOUNT,0) AS SCOUNT");
        searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,ISNULL(SPD05,0) as SPD05 FROM SPRODUCTSD WHERE SPD01 IN (598,599,600,601) ) AS DT ON  WP01=DT.SPD02  ");
        //目前販售的數量
        //searchProp.JoinTxts.Add("LEFT JOIN GetSaleQty('2018-09-18 00:00:00','2018-10-18 00:00:00') as TB ON TB.PID=WP.WP01");
        //searchProp.JoinTxts.Add("INNER JOIN ProductQtyView ON ProductQtyView.PID=WP01 ");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.OrderBy = "ORDER BY SPD05 DESC,WP18 ASC";
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        //litMsg.Text = cmd.CommandText;


        //ScriptManager.RegisterStartupScript(Page,GetType(), "alert", "alert('" + cmd.CommandText + "')", true);

        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            DataTable sortTB = new DataTable();
            if (dt.Select("SPD01=598").Length > 0)
            {
                rp1.DataSource = dt.Select("SPD01=598").CopyToDataTable();
                rp1.DataBind();
            }

            if (dt.Select("SPD01=599").Length > 0)
            {
                rp2.DataSource = dt.Select("SPD01=599").CopyToDataTable();
                rp2.DataBind();
            }
            if (dt.Select("SPD01=600").Length > 0)
            {
                rp3.DataSource = dt.Select("SPD01=600").CopyToDataTable();
                rp3.DataBind();
            }
            if (dt.Select("SPD01=601").Length > 0)
            {
                rp4.DataSource = dt.Select("SPD01=601").CopyToDataTable();
                rp4.DataBind();
            }
            //if (dt.Select("SPD01=570").Length > 0)
            //{
            //    rp5.DataSource = dt.Select("SPD01=570").CopyToDataTable();
            //    rp5.DataBind();
            //}
            //if (dt.Select("SPD01=571").Length > 0)
            //{
            //    rp6.DataSource = dt.Select("SPD01=571").CopyToDataTable();
            //    rp6.DataBind();
            //}
            //if (dt.Select("SPD01=572").Length > 0)
            //{
            //    rp7.DataSource = dt.Select("SPD01=572").CopyToDataTable();
            //    rp7.DataBind();
            //}





            int[] ids = {13879,
13296,
638,
16836,
14523,
14259,
1852,
13286,
9181,
2569,
13875,
15195,
12500,
12980,
15425,
15862,
14627,
636,
15859,
7257,
13878,
13184,
13874,
12222,
15072,
13673,
15847,
15206,
15423,
15207,
16703,
15921,
15598,
15877,
13898,
15763,
13171,
15860,
13275,
15071,
14342,
16691,
14805,
12219,
12868,
13527,
12979,
15064,
17050,
13217,
15844,
1754,
15227,
12188,
17068,
12349,
13172,
7682,
2726,
15919,
15068,
8063,
16607,
15278,
15920,
13873,
15846,
13764,
4848,
12256,
9182,
15069,
12212,
15421,
13472,
9363,
16269,
9850,
9938,
650,
17048,
11614,
12220,
16127,
15828,
15381,
15923,
10669,
9112,
12320,
12001,
15166,
13872,
14807,
13509,
12202,
15922,
12474,
14715,
12506,
12166,
5249,
15276,
13214,
12066,
1433,
15451,
14027,
13046,
16125,
13130,
14964,
15394,
641,
16338,
15845,
7232,
10982,
9921,
14401};



            DataTable dtLike = new DataTable();
            //Random rand = new Random();
            //int[] rids = ids.AsEnumerable().OrderBy(r => rand.Next()).Skip(0).Take(40).ToArray();
            dtLike = GetLikeDt(ids);
            if (dtLike.Rows.Count > 0)
            {
                int i = dtLike.Rows.Count;
                if (i > 40)
                    i = 40;
                Random rand = new Random();
                dtLike = dtLike.AsEnumerable().OrderBy(r => rand.Next()).Skip(0).Take(i).CopyToDataTable();

                rp8.DataSource = dtLike;
                rp8.DataBind();
            }


         
            //rp8.DataSource = dtLike;
            //rp8.DataBind();

















            //DataTable dtLike = new DataTable();
            //if (dt.Select("SPD01 IN (598,599,600,601) ").Length > 0)
            //    dtLike = dt.Select("SPD01 IN (598,599,600,601) ").CopyToDataTable();

            //DataTable bindLikeDT = new DataTable();
            ////bindLikeDT = GetTop40Look();
            ////rp8.DataSource = bindLikeDT;
            ////rp8.DataBind();

            //bindLikeDT = dtLike.Copy();

            //if (bindLikeDT.Rows.Count > 0)
            //{
            //    int i = bindLikeDT.Rows.Count;
            //    if (i > 40)
            //        i = 40;
            //    Random rand = new Random();
            //    bindLikeDT = bindLikeDT.AsEnumerable().OrderBy(r => rand.Next()).Skip(0).Take(i).CopyToDataTable();

            //    rp8.DataSource = bindLikeDT;
            //    rp8.DataBind();
            //}
        }

    }

    public DataTable GetLikeDt(int[] ids)
    {
        SqlCommand cmd = new SqlCommand();
        SearchProp searchProp = new SearchProp();
        //searchProp.Cells.Add("SPD05");
        //searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        //searchProp.Cells.Add("ISNULL(SCOUNT,0) AS SCOUNT");
        //searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 FROM SPRODUCTSD WHERE SPD01 IN (598,599,600,601) ) AS DT ON  WP01=DT.SPD02  ");
        //searchProp.JoinTxts.Add("LEFT JOIN GetSaleQty('2018-09-18 00:00:00','2018-10-18 00:00:00') as TB ON TB.PID=WP.WP01");
        string strWer = "WP01 IN (";
        int c = 1;
        foreach (int i in ids)
        {
            strWer += "@id" + c.ToString() + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("id" + c.ToString(), SqlDbType.Int, i));
            c++;
        }
        strWer = strWer.TrimEnd(',');
        strWer += ")";
        searchProp.WhereTxts.Add(strWer);
        //searchProp.OrderBy = "ORDER BY SPD05 DESC";
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;

        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }

    [System.Web.Services.WebMethod]
    public static string AddCoupon(string d)
    {
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
        CoinFac coinFac = new CoinFac();
        Coin coin = new Coin();
        coin.CN01 = Guid.NewGuid().ToString();
        coin.CN02 = memberID; //會員ID
        coin.CN03 = 100; //HaCoin
        coin.CN04 = 1;
        coin.CN06 = d; //2018xmas1~15
        coin.CN07 = "2018xmas"; //2018xmas
        coin.CN08 = memberID.ToString();
        coin.CN11 = "Event";
        bool rval = coinFac.AddCoinCheckNote(coin);
        if (rval)
        {
            //return "OK";
            return GetDt();

        }
        else
            return "ERROR";
    }


    public static string GetDt()
    {
        string count = "0";
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
        string strSql = "SELECT COUNT(CN01) AS C FROM COIN WHERE CN02=@CN02 AND CN07='2018xmas' ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CN02", SqlDbType.Int, memberID));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
            count = dt.Rows[0]["C"].ToString();
        return count;
    }

    [System.Web.Services.WebMethod]
    public static string GetCoinDt(string m)
    {
        int memberID = int.Parse(m);
        string strSql = "SELECT CN06 AS C FROM COIN WHERE CN02=@CN02 AND CN07='2018xmas' ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CN02", SqlDbType.Int, memberID));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
        return json;
    }
}

