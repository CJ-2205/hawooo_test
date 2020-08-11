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


public partial class user_20181111brand : System.Web.UI.Page
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
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/20181111brand.aspx'", true);
                }
            }

            List<BrandCs> lbc = listBrand();
            ViewState["dt"] = GetBeand(lbc);
            rp.DataSource = lbc;
            rp.DataBind();

            //bindDT();
            //rp1.DataSource = GetBeand();
            //rp1.DataBind();
        }
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
        listBc.Add(new BrandCs(3, 170, "bn_03xxx", "Up to 38% off", "logo_03xxx", "KGCHECK 凱綺萃"));
        listBc.Add(new BrandCs(4, 115, "bn_04", "Up to 45% off", "logo_04", "ANRIEA艾黎亞"));
        listBc.Add(new BrandCs(5, 238, "bn_05", "Up to 52% off", "logo_05", "嚴總‧嚴選"));
        listBc.Add(new BrandCs(6, 138, "bn_06", "Up to 41% off<br/>(全館滿RM99送日用2包 價值21.3）", "logo_06", "icon愛康"));
        listBc.Add(new BrandCs(7, 136, "bn_07", "Up to 30% off", "logo_07", "伊黛爾"));
        listBc.Add(new BrandCs(8, 128, "bn_08", "Up to 20% off", "logo_08", "Qmomo"));
        listBc.Add(new BrandCs(9, 33, "bn_09", "Up to 53% off", "logo_09", "MY BRA"));
        listBc.Add(new BrandCs(10, 186, "bn_10xxx", "Up to 50% off", "logo_10xxx", "BC"));
        listBc.Add(new BrandCs(11, 273, "bn_11", "Up to 50% off<br/>買就送水潤光日+夜精華", "logo_11", "葵柏兒"));
        listBc.Add(new BrandCs(12, 227, "bn_12", "（全館滿RM400送 生物纖維眼膜5片 價值110馬幣)", "logo_12", "薇佳"));
        listBc.Add(new BrandCs(13, 154, "bn_13", "(全館滿RM66送水指彩MG095 價值23.9）", "logo_13", "UNT"));
        listBc.Add(new BrandCs(14, 99, "bn_14", "（全館買就送 龍血保養修護系列 ）", "logo_14", "瓷肌萃"));
        listBc.Add(new BrandCs(15, 208, "bn_15", "Up to 55% off<br/>買就送 CC霜體驗包", "logo_15", "Dr Cink"));
        listBc.Add(new BrandCs(16, 184, "bn_16", "Up to 40% off", "logo_16", "妍霓絲"));
        listBc.Add(new BrandCs(17, 117, "bn_17", "Up to 50% off<br/>買就送 緊緻賦活液", "logo_17", "Nature Tree"));
        listBc.Add(new BrandCs(18, 275, "bn_18", "Up to 65% off", "logo_18", "M22"));
        listBc.Add(new BrandCs(19, 247, "bn_19", "Up to 50% off<br/>滿RM100送Beauty Maker Matte Cushion 1st Gen.", "logo_19", "Beautymaker"));
        listBc.Add(new BrandCs(20, 29, "bn_20", "Up to 25% off", "logo_20", "歐可茶葉"));
        listBc.Add(new BrandCs(21, 131, "bn_21", "Up to 45% off", "logo_21", "快車肉乾"));
        listBc.Add(new BrandCs(22, 142, "bn_22", "Up to 53% off", "logo_22", "台灣茶人"));
        return listBc;
    }

    public DataTable GetBeand(List<BrandCs> listBc)
    {

        LangType lang = (this.Master as user_user).LgType;
        SqlCommand cmd = new SqlCommand();
        var sb = new System.Text.StringBuilder();
        sb.AppendLine(@"SELECT * FROM (");
        sb.AppendLine(@"SELECT");
        sb.AppendLine(@"BA.B01");
        if (lang.Equals(LangType.zh))
        {
            sb.AppendLine(@",BA02");
            sb.AppendLine(@",BA05");
            sb.AppendLine(@",BA06");
            sb.AppendLine(@",BA18");
        }
        else if (lang.Equals(LangType.en))
        {
            sb.AppendLine(@",(CASE WHEN ISNULL(BA02_EN,'')='' THEN BA02 ELSE BA02_EN END) as BA02");
            sb.AppendLine(@",(CASE WHEN ISNULL(BA05_EN,'')='' THEN BA05 ELSE BA05_EN END) as BA05");
            sb.AppendLine(@",(CASE WHEN ISNULL(BA06_EN,'')='' THEN BA06 ELSE BA06_EN END) as BA06");
            sb.AppendLine(@",(CASE WHEN ISNULL(BA18_EN,'')='' THEN BA18 ELSE BA18_EN END) as BA18");
        }

        sb.AppendLine(@",BA08");
        sb.AppendLine(@",BA10");
        sb.AppendLine(@",BA20");
        sb.AppendLine(@" FROM BA");
        sb.AppendLine(@" INNER JOIN B ON B.B01=BA.B01");
        sb.AppendLine(@" WHERE BA09=1 AND B19=1");


        //if (cid != null)
        //{
        //sb.AppendLine(@" AND B.B01 IN (SELECT BEA02 FROM BEA WHERE BEA01=@BEA01)");
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("BEA01", SqlDbType.BigInt, cid));
        //}
        sb.AppendLine(@" AND B.B01 IN (");
        int i = 0;
        string bs = "";
        foreach (BrandCs bc in listBc)
        {
            bs += "@BC" + i.ToString() + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("BC" + i.ToString(), SqlDbType.Int, bc.BID));
            i++;
        }
        bs = bs.TrimEnd(',');
        sb.AppendLine(bs);
        sb.AppendLine(@")");
        sb.AppendLine(@" ORDER BY BA10 DESC");
        sb.AppendLine(@" OFFSET 0 ROWS");
        sb.AppendLine(@" FETCH NEXT 1000 ROWS ONLY");
        sb.AppendLine(@" ) as TA");
        sb.AppendLine(@" INNER JOIN");
        sb.AppendLine(@" (");
        sb.AppendLine(@" SELECT * FROM");
        sb.AppendLine(@" (");
        sb.AppendLine(@" SELECT");
        sb.AppendLine(@" WP01");
        sb.AppendLine(@",WP08_1");
        sb.AppendLine(@",WP27");
        if (lang.Equals(LangType.zh))
        {
            sb.AppendLine(@",WP02");
            sb.AppendLine(@",WP24");
            sb.AppendLine(@",WPT02 as WP30"); //TAG名稱
        }
        else if (lang.Equals(LangType.en))
        {
            sb.AppendLine(@",(CASE WHEN ISNULL(WP23,'')='' THEN WP02 ELSE WP23 END) as WP02");
            sb.AppendLine(@",(CASE WHEN ISNULL(WPLG24,'')='' THEN WP24 ELSE WPLG24 END) as WP24");
            sb.AppendLine(@",(CASE WHEN ISNULL(WPT06,'')='' THEN WPT02 ELSE WPT06 END) as WP30"); //TAG英文
        }
        sb.AppendLine(@",WPT07");
        sb.AppendLine(@",Price as WPA06");
        sb.AppendLine(@",OPrice as WPA10");
        sb.AppendLine(@",B01");
        sb.AppendLine(@",(ROW_NUMBER() OVER (Partition By B01 ORDER BY WP18 DESC)) as SORT");
        sb.AppendLine(@" FROM WP");
        sb.AppendLine(@" INNER JOIN ProductPriceView ON PID=WP01");
        sb.AppendLine(@" LEFT JOIN WPTAG ON WPT01=WP30");
        sb.AppendLine(@" LEFT JOIN WPLG ON WPLG01=WP01");
        sb.AppendLine(@" WHERE WP07=1");
        sb.AppendLine(@" AND WP05=1");
        sb.AppendLine(@" AND GETDATE() BETWEEN WP.WP09 AND WP.WP10");
        sb.AppendLine(@" AND WP06=1");
        sb.AppendLine(@" ) as WP WHERE SORT<=12");
        sb.AppendLine(@" ) as TB");
        sb.AppendLine(@" ON TB.B01=TA.B01 ");
        sb.AppendLine(@" ORDER BY BA10 DESC");
        cmd.CommandText = sb.ToString();
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //Response.Write(cmd.CommandText);
        return dt;
    }

    //private void bindDT()
    //{
    //    //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
    //    SearchProp searchProp = new SearchProp();
    //    searchProp.Cells.Add("SPD05");
    //    searchProp.Cells.Add("SPD01");
    //    searchProp.Cells.Add("WP31");
    //    searchProp.Cells.Add("WP32");
    //    searchProp.Cells.Add("ISNULL(SCOUNT,0) AS SCOUNT");
    //    searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,ISNULL(SPD05,0) as SPD05 FROM SPRODUCTSD WHERE SPD01 IN ('482','529','528','540','541','542','543','544','545','546','547','548','549','550','551','530','531','532','533','534','535','536','537','538') ) AS DT ON  WP01=DT.SPD02  ");
    //    searchProp.JoinTxts.Add("LEFT JOIN GetSaleQty('2018-09-18 00:00:00','2018-10-18 00:00:00') as TB ON TB.PID=WP.WP01");
    //    //searchProp.JoinTxts.Add("INNER JOIN ProductQtyView ON ProductQtyView.PID=WP01 ");
    //    //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
    //    searchProp.OrderBy = "ORDER BY SPD05 DESC,WP18 ASC";
    //    searchProp.LgType = (this.Master as user_user).LgType;
    //    searchProp.page = 1;
    //    searchProp.pcount = 1000;
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
    //    //litMsg.Text = cmd.CommandText;
    //    //ScriptManager.RegisterStartupScript(Page,GetType(), "alert", "alert('" + cmd.CommandText + "')", true);
    //    DataTable dt = SqlDbmanager.queryBySql(cmd);
    //    if (dt.Rows.Count > 0)
    //    {

    //    }

    //}


    protected void rp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        HiddenField hfBID = (HiddenField)e.Item.FindControl("hfBID");
        int bid = Convert.ToInt32(hfBID.Value);
        Repeater rp = (Repeater)e.Item.FindControl("rp1");
        DataTable dt = new DataTable();
        if (ViewState["dt"] != null)
            dt = (DataTable)ViewState["dt"];
        if (dt.Select("B01=" + bid).Length > 0)
        {
            rp.DataSource = dt.Select("B01=" + bid).CopyToDataTable();
            rp.DataBind();
        }
    }
}

