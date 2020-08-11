﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data.SqlClient;

public partial class mobile_2018xmas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
        listBc.Add(new BrandCs(1, 235, "bn_01", "Up to 28% off", "logo_01", "DV笛絲薇夢"));
        listBc.Add(new BrandCs(2, 51, "bn_02", "Up to 45% off", "logo_02", "Beauty小舖"));
        //listBc.Add(new BrandCs(3, 170, "bn_03xxx", "Up to 38% off", "logo_03xxx", "KGCHECK 凱綺萃"));
        listBc.Add(new BrandCs(4, 115, "bn_04", "Up to 45% off", "logo_04", "ANRIEA艾黎亞"));
        listBc.Add(new BrandCs(5, 238, "bn_05", "Up to 52% off", "logo_05", "嚴總‧嚴選"));
        listBc.Add(new BrandCs(6, 138, "bn_06", "Up to 40% off<br/>+Free Gift (RM21.3)", "logo_06", "icon愛康"));
        listBc.Add(new BrandCs(7, 136, "bn_07", "Up to 30% off", "logo_07", "伊黛爾"));
        listBc.Add(new BrandCs(8, 128, "bn_08", "Up to 20% off", "logo_08", "Qmomo"));
        listBc.Add(new BrandCs(9, 33, "bn_09", "Up to 53% off", "logo_09", "MY BRA"));
        //listBc.Add(new BrandCs(10, 186, "bn_10xxx", "Up to 50% off", "logo_10xxx", "BC"));
        listBc.Add(new BrandCs(11, 273, "bn_11", "Up to 50% off<br/>+ Free Gift (RM39)", "logo_11", "葵柏兒"));
        listBc.Add(new BrandCs(12, 227, "bn_12", "Up to 35% off<br/>+ Free Gift (RM110)", "logo_12", "薇佳"));
        listBc.Add(new BrandCs(13, 154, "bn_13", "Up to 60% off<br/>+ Free Gift (RM23.9)", "logo_13", "UNT"));
        listBc.Add(new BrandCs(14, 99, "bn_14", "Up to 39% off<br/>+ Free Gift (RM19)", "logo_14", "瓷肌萃"));
        listBc.Add(new BrandCs(15, 208, "bn_15", "Up to 55% off<br/>+ Free Gift (RM26)", "logo_15", "Dr Cink"));
        listBc.Add(new BrandCs(16, 184, "bn_16", "Up to 40% off", "logo_16", "妍霓絲"));
        listBc.Add(new BrandCs(17, 117, "bn_17", "Up to 50% off<br/>+ Free Gift (RM50)", "logo_17", "Nature Tree"));
        listBc.Add(new BrandCs(18, 275, "bn_18", "Up to 65% off", "logo_18", "M22"));
        listBc.Add(new BrandCs(19, 247, "bn_19", "Up to 50% off<br/>+ Free Gift (RM120)", "logo_19", "Beautymaker"));
        listBc.Add(new BrandCs(20, 29, "bn_20", "Up to 25% off", "logo_20", "歐可茶葉"));
        listBc.Add(new BrandCs(21, 131, "bn_21", "Up to 45% off", "logo_21", "快車肉乾"));
        listBc.Add(new BrandCs(22, 142, "bn_22", "Up to 53% off", "logo_22", "台灣茶人"));
        return listBc;
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
        searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 FROM SPRODUCTSD WHERE SPD01 IN (595) ) AS DT ON  WP01=DT.SPD02  ");
        //searchProp.JoinTxts.Add("LEFT JOIN GetSaleQty('2018-09-18 00:00:00','2018-10-18 00:00:00') as TB ON TB.PID=WP.WP01");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Select("SPD01=595").Length > 0)
        {
            rp1.DataSource = dt.Select("SPD01=595").CopyToDataTable();
            rp1.DataBind();
            rp2.DataSource = dt.Select("SPD01=595").CopyToDataTable();
            rp2.DataBind();
            rp3.DataSource = dt.Select("SPD01=595").CopyToDataTable();
            rp3.DataBind();
            rp4.DataSource = dt.Select("SPD01=595").CopyToDataTable();
            rp4.DataBind();
        }


        //if (dt.Select("SPD01=567").Length > 0)
        //{
        //    rp6.DataSource = dt.Select("SPD01=567").CopyToDataTable();
        //    rp6.DataBind();
        //}
        //if (dt.Select("SPD01=568").Length > 0)
        //{
        //    rp7.DataSource = dt.Select("SPD01=568").CopyToDataTable();
        //    rp7.DataBind();
        //}
        //if (dt.Select("SPD01=569").Length > 0)
        //{
        //    rp8.DataSource = dt.Select("SPD01=569").CopyToDataTable();
        //    rp8.DataBind();
        //}
        //if (dt.Select("SPD01=570").Length > 0)
        //{
        //    rp9.DataSource = dt.Select("SPD01=570").CopyToDataTable();
        //    rp9.DataBind();
        //}
        //if (dt.Select("SPD01=571").Length > 0)
        //{
        //    rp10.DataSource = dt.Select("SPD01=571").CopyToDataTable();
        //    rp10.DataBind();
        //}
        //if (dt.Select("SPD01=572").Length > 0)
        //{
        //    rp11.DataSource = dt.Select("SPD01=572").CopyToDataTable();
        //    rp11.DataBind();
        //}

        DataTable dtLike = new DataTable();
        if (dt.Select("SPD01 IN (595) ").Length > 0)
            dtLike = dt.Select("SPD01 IN (595) ").CopyToDataTable();

        if (dtLike.Rows.Count > 0)
        {
            int i = dtLike.Rows.Count;
            if (i > 40)
                i = 40;
            Random rand = new Random();
            dtLike = dtLike.AsEnumerable().OrderBy(r => rand.Next()).Skip(0).Take(i).CopyToDataTable();
            rp15.DataSource = dtLike;
            rp15.DataBind();
        }


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
}