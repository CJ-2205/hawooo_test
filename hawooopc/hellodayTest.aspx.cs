using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class helloday : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/helloday.aspx" + qstr);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        DateTime week0 = new DateTime(2018, 04, 9, 00, 00, 00);

        DateTime week1 = new DateTime(2018, 04, 16, 00, 00, 00);
        DateTime week2 = new DateTime(2018, 04, 23, 00, 00, 00);
        DateTime week3 = new DateTime(2018, 04, 30, 00, 00, 00);
        DateTime week4 = new DateTime(2018, 04, 30, 00, 00, 00);

        if (today >= week0 && today < week1)
        {
            WeekOdd();
        }
        else if (today >= week1 && today < week2)
        {
            WeekEven();
        }
        else if (today >= week2 && today < week3)
        {
            WeekOdd();
        }
        else if (today >= week3 && today < week4)
        {
            WeekEven();
        }



    }


    void WeekOdd()
    {
        bindProduct1(338);//
        bindProduct2(340);//
        bindProduct3(370);//
        gosale1.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/edm_01.png";
        gosale2.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/edm_03.png";
        gosale3.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/edm_05.png";


        side1.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/sidebar_01.png";
        side2.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/sidebar_02.png";
        side3.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/sidebar_03.png";
        side4.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/sidebar_04.png";
        side5.ImageUrl = "https://www.hawooo.com/images/ftp/20180409/sidebar_05.png";


    }

    void WeekEven()
    {
        bindProduct1(334);//
        bindProduct2(335);//
        bindProduct3(336);//

        gosale1.ImageUrl = "https://www.hawooo.com/images/ftp/week1/edm_01.png";
        gosale2.ImageUrl = "https://www.hawooo.com/images/ftp/week1/edm_02.png";
        gosale3.ImageUrl = "https://www.hawooo.com/images/ftp/week1/edm_03.png";

        side1.ImageUrl = "https://www.hawooo.com/images/ftp/week1/sidebar_01.png";
        side2.ImageUrl = "https://www.hawooo.com/images/ftp/week1/sidebar_02.png";
        side3.ImageUrl = "https://www.hawooo.com/images/ftp/week1/sidebar_03.png";
        side4.ImageUrl = "https://www.hawooo.com/images/ftp/week1/sidebar_04.png";
        side5.ImageUrl = "https://www.hawooo.com/images/ftp/week1/sidebar_05.png";
    }



    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_1.DataSource = dt;
        rp_product_list_1.DataBind();
    }
    private void bindProduct2(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_2.DataSource = dt;
        rp_product_list_2.DataBind();
    }
    private void bindProduct3(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_3.DataSource = dt;
        rp_product_list_3.DataBind();
    }
}