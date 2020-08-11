using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_hotsale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetSelProductGup();
            GetAdList();
        }
    }

    //取得廣告列表
    public void GetAdList()
    {
        //DataTable dt = CFacade.GetFac.GetFFac.getAdList("G01");
        //rp_slides.DataSource = dt;
        //rp_slides.DataBind();
    }

    //取得活動列表
    public void GetSelProductGup()
    {
        DataTable dt = GetEventSelProducts();
        rp_group.DataSource = dt;
        rp_group.DataBind();
    }
    /// <summary>
    /// 獲得精選活動頁面
    /// </summary>
    /// <returns></returns>
    public DataTable GetEventSelProducts()
    {
        string strSql = "SELECT SPM01,SPM02,SPM08,SPM10,SPI04 FROM SPRODUCTSM ";
        strSql += "INNER JOIN SPRODUCTSI ON SPI01=SPM01 ";
        strSql += "WHERE SPM14=1 AND SPM19='Y' AND SPM03=1 AND SPI02='G01'";
        strSql += "AND GETDATE() BETWEEN SPM04 AND SPM05 ";
        strSql += "ORDER BY SPM09 DESC ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}