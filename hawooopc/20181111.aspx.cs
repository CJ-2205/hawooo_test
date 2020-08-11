using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public class BrandCs
{
    public int power { get; set; }
    public string name { get; set; }
    public string img { get; set; }
}


public partial class user_20181111 : System.Web.UI.Page
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
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/20181111.aspx'", true);
                }
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
        searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,ISNULL(SPD05,0) as SPD05 FROM SPRODUCTSD WHERE SPD01 IN (566,567,568,569,570,571,572) ) AS DT ON  WP01=DT.SPD02  ");
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
            if (dt.Select("SPD01=566").Length > 0)
            {
                rp1.DataSource = dt.Select("SPD01=566").CopyToDataTable();
                rp1.DataBind();
            }

            if (dt.Select("SPD01=567").Length > 0)
            {
                rp2.DataSource = dt.Select("SPD01=567").CopyToDataTable();
                rp2.DataBind();
            }
            if (dt.Select("SPD01=568").Length > 0)
            {
                rp3.DataSource = dt.Select("SPD01=568").CopyToDataTable();
                rp3.DataBind();
            }
            if (dt.Select("SPD01=569").Length > 0)
            {
                rp4.DataSource = dt.Select("SPD01=569").CopyToDataTable();
                rp4.DataBind();
            }
            if (dt.Select("SPD01=570").Length > 0)
            {
                rp5.DataSource = dt.Select("SPD01=570").CopyToDataTable();
                rp5.DataBind();
            }
            if (dt.Select("SPD01=571").Length > 0)
            {
                rp6.DataSource = dt.Select("SPD01=571").CopyToDataTable();
                rp6.DataBind();
            }
            if (dt.Select("SPD01=572").Length > 0)
            {
                rp7.DataSource = dt.Select("SPD01=572").CopyToDataTable();
                rp7.DataBind();
            }


            DataTable dtLike = new DataTable();
            if (dt.Select("SPD01 IN (566,567,568,569,570,571,572) ").Length > 0)
                dtLike = dt.Select("SPD01 IN (566,567,568,569,570,571,572) ").CopyToDataTable();

            DataTable bindLikeDT = new DataTable();
            bindLikeDT = dtLike.Copy();

            if (bindLikeDT.Rows.Count > 0)
            {
                int i = bindLikeDT.Rows.Count;
                if (i > 40)
                    i = 40;
                Random rand = new Random();
                bindLikeDT = bindLikeDT.AsEnumerable().OrderBy(r => rand.Next()).Skip(0).Take(i).CopyToDataTable();

                rp8.DataSource = bindLikeDT;
                rp8.DataBind();
            }
        }

    }

}

