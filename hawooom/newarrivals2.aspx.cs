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

public partial class mobile_newarrivals2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //did = 1;
            //if (Request.QueryString["did"] != null)
            //{
            //    did = int.Parse(Request.QueryString["did"].ToString());
            //}
            bindDT();
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SetSelClass(" + did + ");", true);
        }

    }



    private void bindDT()
    {
        SqlCommand cmd = new SqlCommand();
        SearchProp searchProp = new SearchProp();
        searchProp.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
        searchProp.WhereTxts.Add("SPD01=@SPD01");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, 392));
        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 100;
        searchProp.OrderBy = "ORDER BY SPD05 DESC,WP01 DESC";
        searchProp.TagType = SearchProp.EmTagType.IMG;
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();


    }


    //private void bindDT()
    //{
    //    //string strCmd = "";
    //    SearchProp prop = new SearchProp();
    //    prop.page = 1;
    //    prop.pcount = 100;
    //    bool b = true;
    //    switch (did)
    //    {
    //        case 1: //限量超值組合
    //            {
    //                lit_title.Text = "新品排行榜";
    //                prop.WhereTxts.Add(" WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=392) ");
    //                imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //                imgPanel.Visible = true;
    //                b = false;
    //                break;
    //            }
    //        //case 2: //戴美妝旅行去
    //        //    {
    //        //        lit_title.Text = "保健食品 ";
    //        //        strCmd = "AND WPC03=43 AND DATEDIFF(DAY,WP11,GETDATE())<=60 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
    //        //        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //        //        //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=IJEALOUS";

    //        //        break;
    //        //    }
    //        //case 3: //帶禮物回家去
    //        //    {
    //        //        lit_title.Text = "美體保養";
    //        //        strCmd = "AND WPC03=42 AND DATEDIFF(DAY,WP11,GETDATE())<=60 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
    //        //        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //        //        //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=KiKi%E6%8B%8C%E9%BA%B5";
    //        //        break;
    //        //    }
    //        //case 4:
    //        //    {
    //        //        lit_title.Text = "服裝內衣";
    //        //        strCmd = "AND WPC03=44 AND DATEDIFF(DAY,WP11,GETDATE())<=60 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
    //        //        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //        //        //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=%E7%97%95%E5%8E%B2%E5%AE%B3";
    //        //        break;
    //        //    }
    //        //case 5:
    //        //    {
    //        //        lit_title.Text = "生活用品";
    //        //        strCmd = "AND WPC03=48 AND DATEDIFF(DAY,WP11,GETDATE())<=60 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
    //        //        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //        //        break;
    //        //    }
    //        //case 6:
    //        //    {
    //        //        lit_title.Text = "時尚彩妝";
    //        //        strCmd = "AND WPC03=16  AND DATEDIFF(DAY,WP11,GETDATE())<=60 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
    //        //        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //        //        break;
    //        //    }
    //        //case 7:
    //        //    {
    //        //        lit_title.Text = "品味美食";
    //        //        strCmd = "AND WPC03=47  AND DATEDIFF(DAY,WP11,GETDATE())<=60 AND  GETDATE()>=WP09 AND GETDATE()<WP10  ";
    //        //        imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //        //        break;
    //        //    }
    //        case 8:
    //            {
    //                lit_title.Text = "HH";
    //                prop.WhereTxts.Add(" WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=334) ");
    //                imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_02.png";
    //                hrefM.HRef = "https://www.hawooo.com/mobile/brand_1.aspx?bid=264";
    //                b = false;
    //                break;
    //            }
    //        case 9:
    //            {
    //                lit_title.Text = "涵沛";
    //                prop.WhereTxts.Add(" WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=335) ");
    //                imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_03.png";
    //                hrefM.HRef = "https://www.hawooo.com/mobile/brand_1.aspx?bid=246";
    //                b = false;
    //                break;
    //            }
    //        case 10:
    //            {
    //                lit_title.Text = "天堂花園";
    //                prop.WhereTxts.Add(" WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=336) ");
    //                imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_04.png";
    //                hrefM.HRef = "https://www.hawooo.com/mobile/brand_1.aspx?bid=72";
    //                b = false;
    //                break;
    //            }
    //    }
    //    if (b)
    //    {
    //        prop.JoinTxts.Add("CROSS APPLY (SELECT WPC03 FROM WPCLS WHERE WPC02=WP01 AND WPC03 IN (SELECT C01 FROM C WHERE  C03=0 AND C02=1 AND C01 IN (43,42,44,48,16,47))) AS DT ");
    //    }

    //    prop.OrderBy = "ORDER BY WP18 DESC";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = ProductBL.GetProductSqlTxt(prop);
    //    DataTable dt = SqlDbmanager.queryBySql(cmd);
    //    rp_product_list.DataSource = dt;
    //    rp_product_list.DataBind();
    //    //StringBuilder sb = new StringBuilder();
    //    //sb.Append("SELECT ");
    //    //sb.Append("(COUNT(*) OVER()) as PCOUNT,");
    //    //sb.Append("WP01,");
    //    //sb.Append("WP02,");
    //    //sb.Append("WP27,");
    //    //sb.Append("WP08_1,");
    //    //sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01 = WP30) as WP30,");
    //    //sb.Append("Price as WPA06,");
    //    //sb.Append("OPrice as WPA10 ");
    //    //sb.Append("FROM WP ");
    //    //sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
    //    //if (b)
    //    //{
    //    //    sb.Append("CROSS APPLY (SELECT WPC03 FROM WPCLS WHERE WPC02=WP01 AND WPC03 IN (SELECT C01 FROM C WHERE  C03=0 AND C02=1 AND C01 IN (43,42,44,48,16,47))) AS DT ");
    //    //}
    //    //sb.Append("WHERE WP05=1 ");
    //    ////sb.Append("AND NOT EXISTS (SELECT B01 FROM B WHERE B28=2 AND B.B01=WP.B01) ");
    //    //sb.Append("AND WP07=1 ");
    //    //sb.Append(strCmd);
    //    //switch (did)
    //    //{
    //    //    case 1: //限量超值組合
    //    //        {
    //    //            lit_title.Text = "新品排行榜";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=392) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";

    //    //            break;
    //    //        }
    //    //    case 2: //戴美妝旅行去
    //    //        {
    //    //            lit_title.Text = "IJEALOUS ";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=334) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //    //            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=IJEALOUS";
    //    //            break;
    //    //        }
    //    //    case 3: //帶禮物回家去
    //    //        {
    //    //            lit_title.Text = "KiKi";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=335) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //    //            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=KiKi%E6%8B%8C%E9%BA%B5";
    //    //            break;
    //    //        }
    //    //    case 4:
    //    //        {
    //    //            lit_title.Text = "痕厲害";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=336) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //    //            //hrefM.HRef = "https://www.hawooo.com/mobile/search.aspx?stxt=%E7%97%95%E5%8E%B2%E5%AE%B3";
    //    //            break;
    //    //        }
    //    //    case 5:
    //    //        {
    //    //            lit_title.Text = "更多新品";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //    //            break;
    //    //        }
    //    //    case 6:
    //    //        {
    //    //            lit_title.Text = "更多新品";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //    //            break;
    //    //        }
    //    //    case 7:
    //    //        {
    //    //            lit_title.Text = "更多新品";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png";
    //    //            break;
    //    //        }
    //    //    case 8:
    //    //        {
    //    //            lit_title.Text = "更多新品";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_02.png";
    //    //            break;
    //    //        }
    //    //    case 9:
    //    //        {
    //    //            lit_title.Text = "更多新品";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_03.png";
    //    //            break;
    //    //        }
    //    //    case 10:
    //    //        {
    //    //            lit_title.Text = "更多新品";
    //    //            sb.Append("AND WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=395) ");
    //    //            imgM.Src = "https://www.hawooo.com/images/ftp/newarivls-week2/edmm_04.png";
    //    //            break;
    //    //        }

    //    //}

    //    //ScriptManager.RegisterStartupScript(Page, GetType(), "top", "  SetSelClass("+did+");", true);


    //    if (did.Equals(1))
    //    {
    //        //cpM.Visible = true;
    //        ScriptManager.RegisterStartupScript(Page, GetType(), "top", "top10();", true);
    //    }
    //    //else if (did.Equals(5))
    //    //    cpM.Visible = true;


    //}




}