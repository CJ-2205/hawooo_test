using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_20181111brand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
         
            List<BrandCs> lbc = listBrand();

            var v = from BrandCs in lbc select BrandCs.BID;
            string strBids = string.Join(",", v.ToArray());

            DataTable dt = GetBA20(strBids);
            foreach (BrandCs bc in lbc)
            {
                if (dt.Select("B01=" + bc.BID).Length > 0)
                    bc.IMG = "../images/brandimgs/" + dt.Select("B01=" + bc.BID)[0]["BA20"].ToString();
                else
                    bc.IMG = "#";
            }

            //Response.Write(strBids);


            ViewState["dt"] = GetBeand(lbc);
            rp0.DataSource = lbc;
            rp0.DataBind();
        }
    }

    public DataTable GetBA20(string strBids)
    {
        string strSql = "SELECT DISTINCT BA20,B01 FROM BA WHERE BA.B01 IN (" + strBids + ")";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        return dt;
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
        //listBc.Add(new BrandCs(1, 235, "bn_01", "Up to 28% off", "logo_01", "DV笛絲薇夢"));
        //listBc.Add(new BrandCs(2, 51, "bn_02", "Up to 45% off", "logo_02", "Beauty小舖"));
        //listBc.Add(new BrandCs(3, 170, "bn_03xxx", "Up to 38% off", "logo_03xxx", "KGCHECK 凱綺萃"));
        //listBc.Add(new BrandCs(4, 115, "bn_04", "Up to 45% off", "logo_04", "ANRIEA艾黎亞"));
        //listBc.Add(new BrandCs(5, 238, "bn_05", "Up to 52% off", "logo_05", "嚴總‧嚴選"));
        //listBc.Add(new BrandCs(6, 138, "bn_06", "Up to 41% off<br/>(全館滿RM99送日用2包 價值21.3）", "logo_06", "icon愛康"));
        //listBc.Add(new BrandCs(7, 136, "bn_07", "Up to 30% off", "logo_07", "伊黛爾"));
        //listBc.Add(new BrandCs(8, 128, "bn_08", "Up to 20% off", "logo_08", "Qmomo"));
        //listBc.Add(new BrandCs(9, 33, "bn_09", "Up to 53% off", "logo_09", "MY BRA"));
        //listBc.Add(new BrandCs(10, 186, "bn_10xxx", "Up to 50% off", "logo_10xxx", "BC"));
        //listBc.Add(new BrandCs(11, 273, "bn_11", "Up to 50% off<br/>買就送水潤光日+夜精華", "logo_11", "葵柏兒"));
        //listBc.Add(new BrandCs(12, 227, "bn_12", "（全館滿RM400送 生物纖維眼膜5片 價值110馬幣)", "logo_12", "薇佳"));
        //listBc.Add(new BrandCs(13, 154, "bn_13", "(全館滿RM66送水指彩MG095 價值23.9）", "logo_13", "UNT"));
        //listBc.Add(new BrandCs(14, 99, "bn_14", "（全館買就送 龍血保養修護系列 ）", "logo_14", "瓷肌萃"));
        //listBc.Add(new BrandCs(15, 208, "bn_15", "Up to 55% off<br/>買就送 CC霜體驗包", "logo_15", "Dr Cink"));
        //listBc.Add(new BrandCs(16, 184, "bn_16", "Up to 40% off", "logo_16", "妍霓絲"));
        //listBc.Add(new BrandCs(17, 117, "bn_17", "Up to 50% off<br/>買就送 緊緻賦活液", "logo_17", "Nature Tree"));
        //listBc.Add(new BrandCs(18, 275, "bn_18", "Up to 65% off", "logo_18", "M22"));
        //listBc.Add(new BrandCs(19, 247, "bn_19", "Up to 50% off<br/>滿RM100送Beauty Maker Matte Cushion 1st Gen.", "logo_19", "Beautymaker"));
        //listBc.Add(new BrandCs(20, 29, "bn_20", "Up to 25% off", "logo_20", "歐可茶葉"));
        //listBc.Add(new BrandCs(21, 131, "bn_21", "Up to 45% off", "logo_21", "快車肉乾"));
        //listBc.Add(new BrandCs(22, 142, "bn_22", "Up to 53% off", "logo_22", "台灣茶人"));

        //BA20 品牌手機上方小BN
        //位置,品牌ID,IMG檔名,備註,LOGO檔名
        listBc.Add(new BrandCs(1, 235, "bn_01", "Up to 28% off", "logo_01", "DV笛絲薇夢"));
        listBc.Add(new BrandCs(2, 51, "bn_02", "Up to 45% off", "logo_02", "Beauty小舖"));
        listBc.Add(new BrandCs(3, 170, "bn_03xxx", "Up to 38% off", "logo_03xxx", "KGCHECK 凱綺萃"));
        listBc.Add(new BrandCs(4, 115, "bn_04", "Up to 45% off", "logo_04", "ANRIEA艾黎亞"));
        listBc.Add(new BrandCs(5, 238, "bn_05", "Up to 52% off", "logo_05", "嚴總‧嚴選"));
        listBc.Add(new BrandCs(6, 138, "bn_06", "Up to 40% off<br/>+Free Gift (RM21.3)", "logo_06", "icon愛康"));
        listBc.Add(new BrandCs(7, 136, "bn_07", "Up to 30% off", "logo_07", "伊黛爾"));
        listBc.Add(new BrandCs(8, 128, "bn_08", "Up to 20% off", "logo_08", "Qmomo"));
        listBc.Add(new BrandCs(9, 33, "bn_09", "Up to 53% off", "logo_09", "MY BRA"));
        listBc.Add(new BrandCs(10, 186, "bn_10xxx", "Up to 50% off", "logo_10xxx", "BC"));
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

    public DataTable GetBeand(List<BrandCs> listBc)
    {

        LangType lang = (this.Master as mobile).LgType;
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


    //private void bindDT(int did, List<int> ids)
    //{
    //    SqlCommand cmd = new SqlCommand();
    //    //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
    //    SearchProp searchProp = new SearchProp();
    //    searchProp.Cells.Add("SPD01");
    //    searchProp.Cells.Add("WP31");
    //    searchProp.Cells.Add("WP32");
    //    searchProp.Cells.Add("SPD05");
    //    string strIns = "INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 FROM SPRODUCTSD WHERE SPD01 IN (";
    //    int i = 0;
    //    foreach (int id in ids)
    //    {
    //        strIns += "@SP" + i.ToString() + ",";
    //        cmd.Parameters.Add(SafeSQL.CreateInputParam("SP" + i.ToString(), System.Data.SqlDbType.Int, id));
    //        i++;
    //    }
    //    strIns = strIns.TrimEnd(',');
    //    strIns += ") ) AS DT ON WP01=DT.SPD02 ";
    //    searchProp.JoinTxts.Add(strIns);
    //    //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
    //    searchProp.LgType = (this.Master as mobile).LgType;
    //    searchProp.page = 1;
    //    searchProp.pcount = 1000;
    //    searchProp.OrderBy = "ORDER BY SPD05 DESC";
    //    cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
    //    DataTable dt = SqlDbmanager.queryBySql(cmd);
    //    //string strDate = DateTime.Now.ToString("yyyy-MM-dd") + " 00:00:00";
    //    //rp13_1.DataSource = dt.Select("SPD01='529'").CopyToDataTable().AsEnumerable().Take(4);
    //    if (did.Equals(2))
    //    {
    //        if (dt.Select("SPD01=362").Length > 0)
    //        {
    //            rp1.DataSource = dt.Select("SPD01=362").CopyToDataTable();
    //            rp1.DataBind();
    //        }
    //        if (dt.Select("SPD01=387").Length > 0)
    //        {
    //            rp2.DataSource = dt.Select("SPD01=387").CopyToDataTable();
    //            rp2.DataBind();
    //        }
    //        if (dt.Select("SPD01=370").Length > 0)
    //        {
    //            rp3.DataSource = dt.Select("SPD01=370").CopyToDataTable();
    //            rp3.DataBind();
    //        }
    //        if (dt.Select("SPD01=340").Length > 0)
    //        {
    //            rp4.DataSource = dt.Select("SPD01=340").CopyToDataTable();
    //            rp4.DataBind();
    //        }
    //        if (dt.Select("SPD01=338").Length > 0)
    //        {
    //            rp5.DataSource = dt.Select("SPD01=338").CopyToDataTable();
    //            rp5.DataBind();
    //        }
    //        if (dt.Select("SPD01=484").Length > 0)
    //        {
    //            rp6.DataSource = dt.Select("SPD01=484").CopyToDataTable();
    //            rp6.DataBind();
    //        }

    //    }
    //    else
    //    {
    //        rp1.DataSource = dt;
    //        rp1.DataBind();
    //    }

    //    //if (dt.Select("SPD01='540' ").Length > 0)
    //    //{
    //    //    rp1.DataSource = dt.Select("SPD01='540'").CopyToDataTable();
    //    //    rp1.DataBind();
    //    //}
    //    //if (dt.Select("SPD01='541' ").Length > 0)
    //    //{
    //    //    rp2.DataSource = dt.Select("SPD01='541'").CopyToDataTable();
    //    //    rp2.DataBind();
    //    //}
    //    //if (dt.Select("SPD01='542' ").Length > 0)
    //    //{
    //    //    rp3.DataSource = dt.Select("SPD01='542'").CopyToDataTable();
    //    //    rp3.DataBind();
    //    //}
    //    //if (dt.Select("SPD01='529' AND '"+ strDate + "'>WP31 ").Length > 0)
    //    //{
    //    //rp2.DataSource = dt.Select("SPD01='529' AND '" + strDate + "'>WP31").CopyToDataTable();
    //    //rp2.DataBind();
    //    //}
    //    //if (dt.Select("SPD01='529' AND '" + strDate + "'<WP31").Length > 0)
    //    //{
    //    //rp3.DataSource = dt.Select("SPD01='529' AND '" + strDate + "'<WP31").CopyToDataTable();
    //    //rp3.DataBind();
    //    //}

    //    //rp1.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
    //    //rp1.DataBind();
    //    //rp2.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
    //    //rp2.DataBind();
    //    //rp3.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
    //    //rp3.DataBind();

    //}


    //public static int id2stock(int id)
    //{
    //    int stock = 0;
    //    Dictionary<int, int> dic = new Dictionary<int, int>();
    //    dic.Add(12998, 410);
    //    dic.Add(16728, 240);
    //    dic.Add(16730, 200);
    //    dic.Add(14038, 800);
    //    dic.Add(11720, 1800);
    //    dic.Add(16732, 500);
    //    dic.Add(14406, 200);
    //    dic.Add(16733, 30);
    //    dic.Add(16734, 180);
    //    dic.Add(16735, 120);
    //    dic.Add(16736, 80);
    //    dic.Add(16737, 120);
    //    dic.Add(12255, 405);
    //    dic.Add(16738, 100);
    //    dic.Add(14330, 155);
    //    dic.Add(16739, 100);
    //    dic.Add(16740, 400);
    //    dic.Add(14354, 453);
    //    dic.Add(14811, 120);
    //    dic.Add(14350, 120);
    //    dic.Add(7446, 2100);
    //    dic.Add(14312, 200);
    //    dic.Add(12525, 50);
    //    dic.Add(16742, 200);

    //    if (dic.ContainsKey(id))
    //        stock = dic[id];
    //    return stock;
    //}


    //public static int FireCount(int id, int stock)
    //{
    //    int i = id2stock(id);
    //    i = Convert.ToInt32(i / stock * 100);
    //    return 100 - i;
    //}

    protected void rp0_ItemDataBound(object sender, RepeaterItemEventArgs e)
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