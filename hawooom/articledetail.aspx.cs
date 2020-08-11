using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_articledetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;
            if (Request.QueryString["id"] != null)
            {
                if (int.TryParse(Request.QueryString["id"], out i))
                {
                    bindDT(Convert.ToInt32(Request.QueryString["id"].ToString()));
                }
                else
                {
                    Response.Redirect("article.aspx");
                }
            }
            else
            {
                Response.Redirect("article.aspx");
            }
        }
    }
    private void bindDT(int pid)
    {
        DataTable dt = CFacade.GetFac.GetATCBFac.ClientGetArticleDetail(pid);
        if (dt.Rows.Count > 0)
        {
            Page.Title = Server.HtmlDecode(dt.Rows[0]["ATCB03"].ToString());
            lit_ATCB03.Text = dt.Rows[0]["ATCB03"].ToString();
            lit_ATCB04.Text = dt.Rows[0]["ATCB04"].ToString();
            lit_ATCB12.Text = Convert.ToDateTime(dt.Rows[0]["ATCB12"].ToString()).ToString("yyyy/MM/dd");
            //獲取前一筆與後一筆
            Tuple<int, int> pn = CFacade.GetFac.GetATCBFac.GetPreIDandNxtID(pid);
            if (pn.Item1 != 0)
            {
                lit_pre.Text = "<li class=\"am-pagination-prev\"><a href=\"articledetail.aspx?id=" + pn.Item1.ToString() + "\"> &laquo; 上一篇</a></li>";
            }
            if (pn.Item2 != 0)
            {
                lit_nxt.Text = "<li class=\"am-pagination-next\"><a href=\"articledetail.aspx?id=" + pn.Item2.ToString() + "\"> 下一篇 &raquo;</a></li>";
            }

            //獲取相關文章資料
            DataTable dt2 = CFacade.GetFac.GetATCBFac.ClientGetSameArticle(5, pid, dt.Rows[0]["ATCB16"].ToString());
            rp_same_article.DataSource = dt2;
            rp_same_article.DataBind();
            if (dt2.Rows.Count > 0)
            {
                lit_no_same.Text = "";
            }
            else
            {
                lit_no_same.Text = "目前無相關文章..";
            }

        }




    }
   
}