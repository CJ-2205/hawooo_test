using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_hotsale_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["id"].ToString()))
                {
                    bindDT(Convert.ToInt32(Request.QueryString["id"].ToString()));
                }
                else
                {
                    Response.Redirect("hotsale.aspx");
                }
            }
            else
            {
                bindDT(0);
                //Response.Redirect("group.aspx");
            }

        }
    }
    private void bindDT(int id)
    {
        int _sType;
        SqlCommand cmd = new SqlCommand();
        if (id != 0)
        {
            _sType = 1; //類別商品
            List<string> innTB = new List<string>();
            innTB.Add("INNER JOIN SPRODUCTSD ON SPD02=WP01");
            innTB.Add("INNER JOIN SPRODUCTSM ON SPM01=SPD01");
            List<string> wStr = new List<string>();
            wStr.Add("SPM01=@SPM01");
            string strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(1, wStr, null, "ORDER BY WP18 DESC", innTB, false, new List<string> { "SPM02", "SPM08" });
            cmd = SqlExtension.getSqlCmd(strSql, new PropertyVal() { pName = "SPM01", pType = typeof(int), pValue = id.ToString() });
        }
        else
        {
            _sType = 0; //全部商品
            string strSql = CFacade.GetFac.GetWPFac.GetProductListSql2(3, null, null, "ORDER BY WP18 DESC", null, false, null);
            cmd.CommandText = strSql;
        }

        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            DataTable imgDT = new DataTable();
            if (id != 0)
            {
                string strSql = "SELECT SPI01,SPI04,SPI05 FROM SPRODUCTSI WHERE SPI02='HM01' AND SPI01=@SPI01";
                cmd = new SqlCommand();
                cmd.CommandText = strSql;
                cmd.Parameters.Add(SafeSQL.CreateInputParam("SPI01", SqlDbType.Int, id));
                imgDT = SqlDbmanager.queryBySql(cmd);
            }


            if (_sType == 1)
            {
                if (imgDT.Rows.Count > 0)
                {
                    lit_SPM02.Text = "<img src='../images/adimgs/" + imgDT.Rows[0]["SPI04"].ToString() + "' style='width:100%'></img>";
                }
                else
                {
                    lit_SPM02.Text = dt.Rows[0]["SPM02"].ToString();
                }
                lit_SPM02_NAV.Text = dt.Rows[0]["SPM02"].ToString();
                //lit_SPM08.Text = dt.Rows[0]["SPM08"].ToString();
            }
            else if (_sType == 0)
            {
                lit_SPM02.Text = "全部商品";
                lit_SPM02_NAV.Text = "全部商品";
                //lit_SPM08.Text = "歡迎來到「團購專區」！ 在這裡，我們幫忙代購台灣熱門商品，並且買越多，價格更低！";
            }
            rp_product_list.DataSource = dt;
            rp_product_list.DataBind();
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('無任何商品資訊');", true);
        }

    }
}