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

public partial class _180313 : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/180313.aspx" + qstr);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        bindProduct1(403);//

    }


    private void bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list_1.DataSource = dt;
        rp_product_list_1.DataBind();
    }

    public string GetProductListSql2(int? _type = null, List<string> WhereStrs = null, int? ProductCount = null, string oStr = null, List<string> JoinStrs = null, bool SelTotalRow = false, List<string> OtherCells = null)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");

        if (ProductCount != null)
            sb.Append("TOP " + ProductCount + " ");
        if (SelTotalRow == true)
            sb.Append("(COUNT(*) OVER()) as 'ASUM',");
        if (OtherCells != null)
        {
            foreach (string s in OtherCells)
            {
                sb.Append(s.ToString() + ",");
            }
        }

        sb.Append("WP.WP01,"); //商品ID
        sb.Append("WP.WP02,"); //商品名稱
        sb.Append("WP.WP06,"); // 商城類型
        sb.Append("WP.WP24,"); //補充說明          
        sb.Append("WP.WP08_1,"); //商品圖片
        sb.Append("PV.Price as WPA06,"); //商品售價
        sb.Append("PV.OPrice as WPA10,"); //商品市價
        sb.Append("B01,"); //品牌ID
        sb.Append("ISNULL(CmtAvgTotal,'0') as CmtAvgTotal,ISNULL(CmtTotal,'0') as CmtTotal,"); //評價分數
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01=WP30) as WP30 "); //TAG 名稱
        sb.Append("FROM WP ");

        sb.Append("CROSS APPLY (SELECT * FROM ProductPriceView WHERE ProductPriceView.PID = WP01) as PV "); //銷售價格
        if (JoinStrs != null)
        {
            foreach (string s in JoinStrs)
            {
                sb.Append(s + " ");
            }
        }
        sb.Append("OUTER APPLY (SELECT * FROM ProductCommentView WHERE CmtPID=WP01) as PC ");
        sb.Append("WHERE WP.WP07>=1 ");
        sb.Append("AND WP.WP05=1 ");
        sb.Append("AND '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' BETWEEN WP.WP09 AND WP.WP10 ");
        if (_type != null)
            sb.Append("AND WP06=" + _type + " ");
        else
            sb.Append("AND WP06 != 0 ");
        if (WhereStrs != null)
        {
            foreach (string s in WhereStrs)
            {
                sb.Append("AND " + s + " ");
            }
        }
        if (oStr != null)
            sb.Append(oStr);
        return sb.ToString();
    }

}