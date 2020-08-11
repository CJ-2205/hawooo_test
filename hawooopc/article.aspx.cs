using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_article : Compress.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //bindAdSilder();
            int cid = 0;
            if (Request.QueryString["cid"] != null)
            {
                int i = 0;
                if (int.TryParse(Request.QueryString["cid"].ToString(), out i))
                {
                    cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                }
            }
            bindArticleList(cid);
            bindArticleAD();
        }
    }
    private void bindArticleAD()
    {
        DataTable dt = CFacade.GetFac.GetATCBFac.GetArticleAD();
        dt.DefaultView.RowFilter = "F02='A01'";
        DataTable ADDT = dt.DefaultView.ToTable();
        rp_ad_list.DataSource = ADDT;
        rp_ad_list.DataBind();

        DataRow[] SDR = dt.Select("F02='A02'");
        if (SDR.Length > 0)
        {
            ((Literal)articleright.FindControl("lit_AD_A02")).Text = "<a href=\"" + SDR[0]["F04"].ToString() + "\"><img src=\"../images/adimgs/" + SDR[0]["F14"].ToString() + "\" style=\"width:260px\" /></a>";
        }
    }
    private void bindArticleList(int cid)
    {
        DataTable dt = CFacade.GetFac.GetATCBFac.GetArticleList(cid);
        List<string> qStr = new List<string>();
        if (cid != 0)
        {
            qStr.Add("cid=" + cid);
        }
        lit_page.Text = PbClass.GetPageNum(dt, rp_List, 20, qStr);
        if (dt.Rows.Count > 0)
        {
            lit_no_msg.Text = "";
        }
        else
        {
            lit_no_msg.Text = "無相關文章，努力增加中!";
        }
    }
    private void bindAdSilder()
    {
        DataTable dt = CFacade.GetFac.GetATCCFac.GetAdList("D");
        rp_ad_list.DataSource = dt;
        rp_ad_list.DataBind();
    }
}