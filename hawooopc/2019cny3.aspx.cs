using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_2019cny3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!IsPostBack)
            {
                string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
                bool ismobile = PbClass.isMobile(u);
                if (Session["desktop"] == null)
                {
                    if (ismobile)
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/2019cny3.aspx'", true);
                    }
                }
                //BindBrand();
                bindDT();
                BindLike();
            }


        }
    }
    private void bindDT()
    {
        SqlCommand cmd = new SqlCommand();
        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("WP31");
        prop.Cells.Add("WP32");
        prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
        //正式
        //prop.WhereTxts.Add("SPD01=640 ");
        //測試
        prop.WhereTxts.Add("SPD01 IN (484,483,482) ");
        prop.page = 1;
        prop.pcount = 1000;
        //prop.LgType = (this.Master as user_user).LgType;
        //正式
        //prop.OrderBy = "ORDER BY SPD08 DESC,WP01 DESC";
        //測試
        prop.OrderBy = "ORDER BY WP01 DESC";
        cmd.CommandText = ProductBL.GetProductSqlTxt(prop);
        //Response.Write(cmd.CommandText);
        DataTable dt = SqlDbmanager.queryBySql(cmd);


        DataRow[] drs1_1 = dt.Select("SPD01=484");
        if (drs1_1.Length > 0)
        {
            rp1.DataSource = drs1_1.CopyToDataTable();
            rp1.DataBind();
        }
        DataRow[] drs1_2 = dt.Select("SPD01=483");
        if (drs1_2.Length > 0)
        {
            rp1_1.DataSource = drs1_2.CopyToDataTable();
            rp1_1.DataBind();
        }
        DataRow[] drs1_3 = dt.Select("SPD01=482");
        if (drs1_3.Length > 0)
        {
            rpType1.DataSource = drs1_3.CopyToDataTable();
            rpType1.DataBind();
        }
        DataRow[] drs1_4 = dt.Select("SPD01=482");
        if (drs1_4.Length > 0)
        {
            rpType2.DataSource = drs1_4.CopyToDataTable();
            rpType2.DataBind();
        }
        DataRow[] drs1_5 = dt.Select("SPD01=482");
        if (drs1_5.Length > 0)
        {
            rpType3.DataSource = drs1_5.CopyToDataTable();
            rpType3.DataBind();
        }
        DataRow[] drs1_6 = dt.Select("SPD01=482");
        if (drs1_6.Length > 0)
        {
            rpType4.DataSource = drs1_6.CopyToDataTable();
            rpType4.DataBind();
        }


        SqlCommand cmdB = new SqlCommand();
        SearchProp propB = new SearchProp();
        propB.Cells.Add("B01");
        propB.Cells.Add("WP31");
        propB.Cells.Add("WP32");
        propB.WhereTxts.Add(" B01 IN (229,208,51,235,186,108,151,292)  ");
        propB.page = 1;
        propB.pcount = 1000;
        //prop.LgType = (this.Master as user_user).LgType;
        propB.OrderBy = "ORDER BY WP39 DESC,WP01 DESC";
        cmdB.CommandText = ProductBL.GetProductSqlTxt(propB);
        //Response.Write(cmdB.CommandText);
        DataTable dtBrand = SqlDbmanager.queryBySql(cmdB);


        rp1.DataSource = dt;
        rp1.DataBind();



        //DataRow[] drs1 = dt.Select("SPD01=640");
        //if (drs1.Length > 0)
        //{
        //    rp1.DataSource = drs1.CopyToDataTable();
        //    rp1.DataBind();
        //    //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setTime", "timeEvent('" + Convert.ToDateTime(drs1[0]["WP31"]).ToString("yyyy-MM-dd HH:mm:ss") + "');", true);
        //}


        DataRow[] drs2_1 = dtBrand.Select("B01=229");
        if (drs2_1.Length > 0)
        {
            rp2_1.DataSource = drs2_1.CopyToDataTable();
            rp2_1.DataBind();
        }
        DataRow[] drs2_2 = dtBrand.Select("B01=208");
        if (drs2_2.Length > 0)
        {
            rp2_2.DataSource = drs2_2.CopyToDataTable();
            rp2_2.DataBind();
        }
        DataRow[] drs2_3 = dtBrand.Select("B01=51");
        if (drs2_3.Length > 0)
        {
            rp2_3.DataSource = drs2_3.CopyToDataTable();
            rp2_3.DataBind();
        }
        DataRow[] drs2_4 = dtBrand.Select("B01=235");
        if (drs2_4.Length > 0)
        {
            rp2_4.DataSource = drs2_4.CopyToDataTable();
            rp2_4.DataBind();
        }
        DataRow[] drs3_1 = dtBrand.Select("B01=186");
        if (drs3_1.Length > 0)
        {
            rp3_1.DataSource = drs3_1.CopyToDataTable();
            rp3_1.DataBind();
        }
        DataRow[] drs3_2 = dtBrand.Select("B01=108");
        if (drs3_2.Length > 0)
        {
            rp3_2.DataSource = drs3_2.CopyToDataTable();
            rp3_2.DataBind();
        }
        DataRow[] drs3_3 = dtBrand.Select("B01=151");
        if (drs3_3.Length > 0)
        {
            rp3_3.DataSource = drs3_3.CopyToDataTable();
            rp3_3.DataBind();
        }
        DataRow[] drs3_4 = dtBrand.Select("B01=292");
        if (drs3_4.Length > 0)
        {
            rp3_4.DataSource = drs3_4.CopyToDataTable();
            rp3_4.DataBind();
        }



    }

    private void BindLike()
    {    
        string strSql = @"SELECT NEWID() AS NID,* FROM
(
SELECT 
ROW_NUMBER() OVER(PARTITION BY WP02 ORDER BY WPA06 ASC) AS R ,
WP.WP01 AS WP01,WP02 AS WP02,WP08_1 AS WP08_1,WP27 AS WP27,WP30 AS WP30,WPA06 AS WPA06,WPA10 AS WPA10,WPT06 AS WPT06,WPT07 AS WPT07 FROM WP
INNER JOIN WPA ON WP.WP01=WPA.WP01
INNER JOIN WPTAG ON WP30=WPT01 
WHERE WP.WP01 IN
( 
SELECT  TOP 500 ORD01
FROM ORDERM 
INNER JOIN ORDERD ON ORDERM.ORM01=ORDERD.ORM01 
WHERE ORD01 NOT IN (SELECT WP01 FROM WP INNER JOIN SPRODUCTSD ON WP01=SPD02 WHERE SPD01=610 ) 
AND ORM19=1 
AND ORM24>=0 
GROUP BY ORD01 
ORDER BY COUNT(ORD01) DESC
) AND WP07=1 AND WPT03=1 AND WPA08=1 AND (GETDATE() BETWEEN WP09 AND WP10)
) AS DTT WHERE R=1 ORDER BY NID ASC";
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

 

    //private void BindBrand()
    //{
    //    List<BrandCs> list = listBrand();
    //    rpBrand.DataSource = listBrand();
    //    rpBrand.DataBind();
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
        listBc.Add(new BrandCs(1, 199, "bn_01", "全館買就送面膜 2片", "logo_01", "Dayla"));
        listBc.Add(new BrandCs(2, 247, "bn_02", "全館滿RM99，20% OFF", "logo_02", "BeautyMaker"));
        listBc.Add(new BrandCs(3, 115, "bn_03", "全館滿150 折15", "logo_03", "艾黎亞"));
        listBc.Add(new BrandCs(4, 222, "bn_04", "Up to 60% off 再享滿額送", "logo_04", "Dr.Lady"));
        listBc.Add(new BrandCs(4, 186, "bn_05", "全館UP TO 40% OFF", "logo_05", "BC"));
        listBc.Add(new BrandCs(4, 128, "bn_06", "全館最高折 RM80", "logo_06", "Qmomo"));
        listBc.Add(new BrandCs(4, 168, "bn_07", "全館UP TO 35% OFF", "logo_07", "櫻桃爺爺"));
        listBc.Add(new BrandCs(4, 139, "bn_08", "全館UP TO 35% OFF", "logo_08", "頂級乾燥"));
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