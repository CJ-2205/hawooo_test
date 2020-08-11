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

public partial class user_telsearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["id"].ToString()))
                {
                    int pID = Convert.ToInt32(Request.QueryString["id"].ToString());
                    bindDT(pID);
                }
            }
        }
    }
    public void bindDT(int pid)
    {
        string strSql = "";
        SqlCommand cmd = new SqlCommand();
        strSql = GetProductListSql(1, new List<string> { "WP01=@PID" }, 1);
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, pid));
        DataTable SDT = SqlDbmanager.queryBySql(cmd);
        rp_product_list.DataSource = SDT;
        rp_product_list.DataBind();

        if (SDT.Rows.Count > 0)
        {
            //同訂購商品
            strSql = @"EXISTS (SELECT TOP 10 ORD01 as WP01  FROM ORDERD as A WHERE EXISTS
                 (SELECT ORM01 FROM ORDERD as B WHERE ORD01 = @PID AND B.ORM01 = A.ORM01)
                 AND ORD01!= @PID AND ORD01=WP01 GROUP BY ORD01 ORDER BY SUM(ORD06) DESC)";
            strSql = GetProductListSql(1, new List<string> { strSql }, 10, "ORDER BY SCOUNT DESC");
            cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, pid));
            DataTable nonSel = SqlDbmanager.queryBySql(cmd);
            Repeater1.DataSource = nonSel;
            Repeater1.DataBind();
            lit_other_msg.Text = "";
            if (nonSel.Rows.Count == 0)
            {
                lit_other_msg.Text = "[無訂購紀錄]";
            }

            //同品牌商品
            strSql = "B01=@B01 AND WP01 != @PID";
            strSql = GetProductListSql(1, new List<string> { strSql }, 10, "ORDER BY SCOUNT DESC");
            cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, pid));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("B01", SqlDbType.Int, SDT.Rows[0]["B01"].ToString()));
            DataTable BDT = SqlDbmanager.queryBySql(cmd);
            Repeater2.DataSource = BDT;
            Repeater2.DataBind();
            lit_brand.Text = "";
            if (BDT.Rows.Count == 0)
            {
                lit_brand.Text = "[品牌無其他商品]";
            }

            //同品牌商品
            strSql = "C.C01=@C01 AND WP01 != @PID";
            strSql = GetProductListSql(1, new List<string> { strSql }, 10, "ORDER BY SCOUNT DESC");
            cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, pid));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("C01", SqlDbType.Int, SDT.Rows[0]["C01"].ToString()));
            DataTable CDT = SqlDbmanager.queryBySql(cmd);
            Repeater3.DataSource = CDT;
            Repeater3.DataBind();
            lit_class.Text = "";
            if (CDT.Rows.Count == 0)
            {
                lit_class.Text = "[類別無其他商品]";
            }
        }

    }
    public string GetProductListSql(int? _type = null, List<string> WhereStrs = null, int? ProductCount = null, string oStr = null, List<string> JoinStrs = null, bool SelTotalRow = false, List<string> OtherCells = null)
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
                               //sb.Append("WP.WP25,");  
        sb.Append("WP.WP08_1,"); //商品圖片
        sb.Append("PV.Price as WPA06,"); //商品售價
        sb.Append("PV.OPrice as WPA10,"); //商品市價
        sb.Append("B01,"); //品牌ID
        sb.Append("C.C01,"); //類別ID
        sb.Append("ISNULL((SELECT SUM(ORD06) FROM ORDERD WHERE ORD01=WP01),0) as SCOUNT,"); //銷售數量
        sb.Append("ISNULL(CmtAvgTotal,'0') as CmtAvgTotal,ISNULL(CmtTotal,'0') as CmtTotal,"); //評價分數
        sb.Append("(SELECT WPT02 FROM WPTAG WHERE WPT01=WP30) as WP30 "); //TAG 名稱
        sb.Append("FROM WP ");
        sb.Append("CROSS APPLY (SELECT Price,OPrice FROM ProductPriceView WHERE ProductPriceView.PID = WP01) as PV "); //銷售價格
        sb.Append("CROSS APPLY (SELECT TOP 1 C01 FROM WPCLS INNER JOIN C ON C01=WPC03 WHERE WPC02=WP01 AND C03=0) as C "); //類別ID
        if (JoinStrs != null)
        {
            foreach (string s in JoinStrs)
            {
                sb.Append(s + " ");
            }
        }
        sb.Append("OUTER APPLY (SELECT * FROM ProductCommentView WHERE CmtPID=WP01) as PC ");
        sb.Append("WHERE WP.WP07=1 ");
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

    protected void btn_search_Click(object sender, EventArgs e)
    {
        string strmsg = "";
        if (!FieldCheck.isInt(txt_pid.Text.Trim()))
        {
            strmsg += "請輸入商品編號 ";
        }
        else
        {
            Response.Redirect("telsearch.aspx?id=" + txt_pid.Text.Trim());
        }
    }
}