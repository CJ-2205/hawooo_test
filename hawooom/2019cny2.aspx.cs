using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_2019cny2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        bindDT();
        BindBrand();
        BindLike((this.Master as mobile).LgType);
    }



    private void bindDT()
    {
        SqlCommand cmd = new SqlCommand();
        SearchProp prop = new SearchProp();
        prop.LgType = (this.Master as mobile).LgType;
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("WP31");
        prop.Cells.Add("WP32");
        prop.Cells.Add("ISNULL(SCOUNT,0) AS SCOUNT");
        prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
        prop.JoinTxts.Add("LEFT JOIN GetSaleQty('2019-01-03 00:00:00','2019-02-09 00:00:00') as TB ON TB.PID=WP.WP01");
        //prop.WhereTxts.Add("SPD01 IN (610,624,625,626,627,628,629,630,631,632,634,635,636,637,638)");
        prop.WhereTxts.Add("SPD01 IN (440)");

        //prop.WhereTxts.Add("SPD01=@SPD01");
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, 610));
        prop.page = 1;
        prop.pcount = 1000;
        //prop.LgType = (this.Master as user_user).LgType;
        prop.OrderBy = "ORDER BY SPD05 DESC,WP01 DESC";
        //sb.Append(" ORDER BY WP18 DESC ");


        cmd.CommandText = ProductBL.GetProductSqlTxt(prop);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //DataRow[] drs1 = dt.Select("SPD01=610");
        DataRow[] drs1 = dt.Select("SPD01=440");
        if (drs1.Length > 0)
        {
            //rp1.DataSource = drs1.Take(4).CopyToDataTable();
            rp1.DataSource = drs1.CopyToDataTable();
            rp1.DataBind();
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setTime", "timeEvent('" + Convert.ToDateTime(drs1[0]["WP31"]).ToString("yyyy-MM-dd HH:mm:ss") + "');", true);
        }
        DataRow[] drs2_1 = dt.Select("SPD01=624");
        if (drs2_1.Length > 0)
        {
            rp2_1.DataSource = drs2_1.CopyToDataTable();
            rp2_1.DataBind();
        }
        DataRow[] drs2_2 = dt.Select("SPD01=625");
        if (drs2_2.Length > 0)
        {
            rp2_2.DataSource = drs2_2.CopyToDataTable();
            rp2_2.DataBind();
        }
        DataRow[] drs2_3 = dt.Select("SPD01=626");
        if (drs2_3.Length > 0)
        {
            rp2_3.DataSource = drs2_3.CopyToDataTable();
            rp2_3.DataBind();
        }
        DataRow[] drs2_4 = dt.Select("SPD01=627");
        if (drs2_4.Length > 0)
        {
            rp2_4.DataSource = drs2_4.CopyToDataTable();
            rp2_4.DataBind();
        }
        DataRow[] drs3_1 = dt.Select("SPD01=628");
        if (drs3_1.Length > 0)
        {
            rp3_1.DataSource = drs3_1.CopyToDataTable();
            rp3_1.DataBind();
        }
        DataRow[] drs3_2 = dt.Select("SPD01=629");
        if (drs3_2.Length > 0)
        {
            rp3_2.DataSource = drs3_2.CopyToDataTable();
            rp3_2.DataBind();
        }
        DataRow[] drs3_3 = dt.Select("SPD01=630");
        if (drs3_3.Length > 0)
        {
            rp3_3.DataSource = drs3_3.CopyToDataTable();
            rp3_3.DataBind();
        }
        DataRow[] drs3_4 = dt.Select("SPD01=631");
        if (drs3_4.Length > 0)
        {
            rp3_4.DataSource = drs3_4.CopyToDataTable();
            rp3_4.DataBind();
        }



    }

    private void BindLike(LangType lang)
    {

        string strSql = @"SELECT NEWID() AS NID,* FROM
(
SELECT 
ROW_NUMBER() OVER(PARTITION BY WP02 ORDER BY WPA06 ASC) AS R ,
WP.WP01 AS WP01,";
        if (lang.Equals(LangType.zh))
        {
            strSql += "WP02,";
            strSql += "WPT02 as WP30,"; //TAG名稱
        }
        else if (lang.Equals(LangType.en))
        {
            strSql += "(CASE WHEN ISNULL(WP23,'')='' THEN WP02 ELSE WP23 END) as WP02,";
            strSql += "(CASE WHEN ISNULL(WPT06,'')='' THEN WPT02 ELSE WPT06 END) as WP30,"; //TAG英文
        }
        strSql+=@"
WP08_1 AS WP08_1,
WP27 AS WP27,
WPA06 AS WPA06,
WPA10 AS WPA10,
WPT06 AS WPT06,
WPT07 AS WPT07
FROM WP
INNER JOIN WPA ON WP.WP01 = WPA.WP01
INNER JOIN WPTAG ON WP30 = WPT01
WHERE WP.WP01 IN
(
SELECT
TOP 500 ORD01
FROM ORDERM
INNER JOIN ORDERD ON ORDERM.ORM01 = ORDERD.ORM01
WHERE ORD01 NOT IN(SELECT WP01 FROM WP INNER JOIN SPRODUCTSD ON WP01 = SPD02 WHERE SPD01 = 610)
AND ORM19 = 1
AND ORM24 >= 0
GROUP BY ORD01
ORDER BY COUNT(ORD01) DESC
) AND WP07 = 1 AND WPT03 = 1 AND WPA08 = 1
) AS DTT WHERE R = 1 ORDER BY NID ASC";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, 610));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            string[] strCol = { "WP01", "WP02", "WP08_1", "WP27", "WP30", "WPA06", "WPA10", "WPT06", "WPT07" };
            dt = dt.DefaultView.ToTable(true, strCol).Rows.Cast<DataRow>().Take(40).CopyToDataTable();

            rpLike.DataSource = dt;
            rpLike.DataBind();
        }
    }

    private void BindBrand()
    {
        List<BrandCs> list = listBrand((this.Master as mobile).LgType);
        rpBrand.DataSource = list;
        rpBrand.DataBind();
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

    public List<BrandCs> listBrand(LangType lang)
    {
        List<BrandCs> listBc = new List<BrandCs>();
        if (lang.Equals(LangType.zh))
        {
            listBc.Add(new BrandCs(1, 199, "bn_01", "全館買就送面膜 2片", "logo_01", "Dayla"));
            listBc.Add(new BrandCs(2, 247, "bn_02", "全館滿RM99，20% OFF", "logo_02", "BeautyMaker"));
            listBc.Add(new BrandCs(3, 115, "bn_03", "全館滿150 折15", "logo_03", "艾黎亞"));
            listBc.Add(new BrandCs(4, 222, "bn_04", "Up to 60% off 再享滿額送", "logo_04", "Dr.Lady"));
            listBc.Add(new BrandCs(4, 186, "bn_05", "全館UP TO 40% OFF", "logo_05", "BC"));
            listBc.Add(new BrandCs(4, 128, "bn_06", "全館最高折 RM80", "logo_06", "Qmomo"));
            listBc.Add(new BrandCs(4, 168, "bn_07", "全館UP TO 40% OFF", "logo_07", "櫻桃爺爺"));
            listBc.Add(new BrandCs(4, 139, "bn_08", "全館UP TO 35% OFF", "logo_08", "頂級乾燥"));
        }
        else if (lang.Equals(LangType.en))
        {
            listBc.Add(new BrandCs(1, 199, "bn_01", "Max 62% OFF + free gift", "logo_01", "Dayla"));
            listBc.Add(new BrandCs(2, 247, "bn_02", "20% OFF (min spend 99)", "logo_02", "BeautyMaker"));
            listBc.Add(new BrandCs(3, 115, "bn_03", "RM15 OFF (min spend 150)", "logo_03", "ANRIEA"));
            listBc.Add(new BrandCs(4, 222, "bn_04", "Max 60% OFF + free gift", "logo_04", "Dr.Lady"));
            listBc.Add(new BrandCs(4, 186, "bn_05", "Max 40% OFF ", "logo_05", "BC"));
            listBc.Add(new BrandCs(4, 128, "bn_06", "Max RM80 OFF ", "logo_06", "Qmomo"));
            listBc.Add(new BrandCs(4, 168, "bn_07", "Up to 40% OFF", "logo_07", "Cherry Grandfather"));
            listBc.Add(new BrandCs(4, 139, "bn_08", "Up to 35% OFF", "logo_08", "TOPDRY"));
        }

    
        return listBc;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sold">SPD07假數量</param>
    /// <param name="stock">SPD06限制數量</param>
    /// <returns></returns>
    public static int FireCount(int sold, int stock)
    {
        decimal i = (decimal)sold;
        decimal s = (decimal)stock;
        if (s > 0)
        {
            i = i / s * 100;
            return Convert.ToInt32(100 - i);
            //w = Convert.ToInt32(d * 100);
            //w = 100 - w;

        }
        return 100;
    }


    public static string SoldOut(int sold, int stock)
    {
        string str = "false";
        if (sold >= stock)
            str = "true";
        return str;
    }

}