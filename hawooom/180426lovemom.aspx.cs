using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _180426lovemom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckImg();
        bindProduct1(447);//
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
    private void CheckImg()
    {

        DateTime today = DateTime.Today;
        DateTime d0 = new DateTime(2018, 04, 25);
        DateTime d1 = new DateTime(2018, 04, 26);
        DateTime d2 = new DateTime(2018, 04, 27);
        DateTime d3 = new DateTime(2018, 04, 28);
        DateTime d4 = new DateTime(2018, 04, 29);

        if (today == d1 || today == d0)
        {
            Image1.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0426M.png";
            Image2.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0427M_wait.png";
            Image3.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0428M_wait.png";
            Image4.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0429M_wait.png";

        }
        else if (today == d2)
        {
            Image1.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0426M_bye.png";
            Image2.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0427M.png";
            Image3.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0428M_wait.png";
            Image4.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0429M_wait.png";

        }
        else if (today == d3)
        {
            Image1.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0426M_bye.png";
            Image2.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0427M_bye.png";
            Image3.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0428M.png";
            Image4.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0429M_wait.png";

        }
        else if (today == d4)
        {
            Image1.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0426M_bye.png";
            Image2.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0427M_bye.png";
            Image3.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0428M_bye.png";
            Image4.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0429M.png";

        }
        else
        {
            Image1.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0426M_bye.png";
            Image2.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0427M_bye.png";
            Image3.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0428M_bye.png";
            Image4.ImageUrl = "https://www.hawooo.com/images/ftp/20180426/0429M_bye.png";
        }



    }

}