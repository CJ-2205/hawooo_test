using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index2 : Compress.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string email = "";
            if (Session["A08"] != null)
            {
                email = Session["A08"].ToString();
            }
            string cstr = criteo.HomepageTag(email);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "hometag", cstr, true);


            //tb1(限時折扣),tb2(熱銷商品),tb3(最新商品),tb4(團購商品),tb5(廣告列表)
            //DataSet ds = CFacade.UserFac.GetMobileIndexDS();
            DataSet ds = GetDT();

            //限時折扣
            rp_discount.DataSource = ds.Tables[0];
            rp_discount.DataBind();

            //熱銷商品
            rp_hot.DataSource = ds.Tables[1];
            rp_hot.DataBind();

            //最新商品
            rp_news.DataSource = ds.Tables[2];
            rp_news.DataBind();

            //團購商品
            //rp_group_product.DataSource = ds.Tables[3];
            //rp_group_product.DataBind();

            //上方輪播廣告
            DataTable ADDT = ds.Tables[3];
            string str = "";
            DataRow[] MI01 = ADDT.Select("F02='MI01'");
            if (MI01.Length > 0)
            {
                int i = 1;
                foreach (DataRow dr in MI01)
                {
                    str += "<li><a href=\"" + dr["F04"].ToString() + "\"><img src=\"../images/adimgs/" + dr["F14"].ToString() + "\" /></a> </li>";
                    i += 1;
                }
                lit_ad_slides.Text = str.ToString();
            }
            //中間橫幅一張
            str = "";
            DataRow[] MI05 = ADDT.Select("F02='MI05'");
            if (MI05.Length > 0)
            {
                str += "<div class=\"am-u-sm-12\" style='padding:0px'>";
                str += "<a href=\"" + MI05[0]["F04"].ToString() + "\" class=\"link-advert\">";
                str += "<img src=\"../images/adimgs/" + MI05[0]["F14"].ToString() + "\" class=\"link-advert-img\" alt=\"\"></a>";
                str += "</div>";
            }

            //中間三格廣告

            DataRow[] MI04 = ADDT.Select("F02='MI04'");
            if (MI04.Length > 0)
            {
                int i = 0;
                foreach (DataRow dr in MI04)
                {
                    if (i == 3)
                    {
                        break;
                    }
                    str += "<div class=\"am-u-sm-4\" style='padding:0px'>";
                    str += "<a href=\"" + dr["F04"].ToString() + "\" class=\"link-advert\">";
                    str += "<img src=\"../images/adimgs/" + dr["F14"].ToString() + "\" class=\"link-advert-img\" alt=\"\"></a>";
                    str += "</div>";
                    i += 1;
                }
                lit_md_ad.Text = str.ToString();
            }


        }
    }

    public DataSet GetDT()
    {
        List<SqlCommand> cmdList = new List<SqlCommand>();

        //限時折扣
        //string strSql = "SELECT TOP 5 WP.WP01,WP.WP21,WP.WP24,WP02,min(WPA06) as WPA06,min(WPA10) as WPA10,WP08_1 as WP08_1,WP25,(SELECT WPT02 FROM WPTAG WHERE WPT01=WP30) as WP30 FROM WP INNER JOIN WPA ON WPA.WP01=WP.WP01 WHERE WP07=1 AND WP06 != 0 AND WPA08=1 AND '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm") + "' BETWEEN WP09 AND WP10  GROUP BY WP.WP01,WP02,WP08_1,WP24,WP21,WP18,WP25,WP30  ORDER BY WP18 DESC";
        SqlCommand cmd = new SqlCommand();

        //string strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(1, null, 6, "ORDER BY NEWID() DESC");
        List<string> innTB = new List<string>();
        innTB.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
        innTB.Add("INNER JOIN SPRODUCTSM ON SPM01=SPD01");
        List<string> wStr = new List<string>();
        wStr.Add("SPM01=@SPM01");
        string strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(1, wStr, 6, "ORDER BY NEWID()", innTB, false, new List<string> { "SPM02", "SPM08" });
        int id = 317;
        cmd = SqlExtension.getSqlCmd(strSql, new PropertyVal() { pName = "SPM01", pType = typeof(int), pValue = id.ToString() });
        cmdList.Add(cmd);

        //熱銷商品tb1
        cmd = new SqlCommand();
        strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(1, null, 6, "ORDER BY (SELECT COUNT(ORD06) FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORM03 BETWEEN '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "' AND ORD01=WP.WP01) DESC");
        cmd.CommandText = strSql;
        cmdList.Add(cmd);

        //最新商品tb2
        cmd = new SqlCommand();
        strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(1, new List<string> { "WP11 >= '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "'" }, 20, "ORDER BY NEWID()");
        cmd.CommandText = strSql;
        cmdList.Add(cmd);

        //團購推薦tb3
        //cmd = new SqlCommand();
        //strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(3, null, 3, "ORDER BY WP18 DESC");
        //cmd.CommandText = strSql;
        //cmdList.Add(cmd);

        //廣告列表tb4
        cmd = new SqlCommand();
        strSql = "SELECT F01,F02,F04,F14 FROM F WHERE F12=1 AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "' BETWEEN F06 AND F07 AND F02 IN ('MI01','MI04','MI05') ORDER BY F08 DESC";
        cmd.CommandText = strSql;
        cmdList.Add(cmd);

        DataSet ds = new DataSet();
        ds = SqlDbmanager.queryBySql(cmdList);
        return ds;
    }
}