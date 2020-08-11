using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercode_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["stxt"] != null)
            {
                string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
                bool ismobile = PbClass.isMobile(u);
                if (Session["desktop"] == null)
                {
                    if (ismobile)
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/search.aspx?stxt=" + Request.QueryString["stxt"].ToString().Trim() + "'", true);
                    }
                }
                string stxt = PbClass.GB2312translateBig5(Request.QueryString["stxt"].ToString().Trim());
                if (stxt != "")
                {
                    SKEY _skey = new SKEY();
                    _skey.SKEY01 = Guid.NewGuid().ToString();
                    _skey.SKEY02 = Request.QueryString["stxt"].ToString();
                    _skey.SKEY03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    _skey.SKEY04 = "";
                    _skey.SKEY05 = "";
                    SKEYFac _FAC = new SKEYFac();
                    _FAC.insertSKEY(_skey);
                    DataTable dt = CFacade.UserFac.GetSearchProducts(stxt);
                    if (dt.Rows.Count > 0)
                    {
                        p_non_result.Visible = false;
                        rp_product_list.DataSource = dt;
                        rp_product_list.DataBind();

                        //appier開始
                        string _key = stxt;
                        string _idList = "" + string.Join("','", dt.Rows.OfType<DataRow>().Select(r => r["WP01"].ToString())) + "";
                        ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "send2", "sendAppierSearchData('" + _key + "',['" + _idList + "']);", true);
                        //appier結束

                    }
                    else
                    {
                        p_non_result.Visible = true;
                        lit_stxt.Text = stxt.ToString();

                    }
                }
                else
                {
                    lit_stxt.Text = "無任何搜尋關鍵字";
                    p_non_result.Visible = true;
                }

            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    protected void lnk_like_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            RepeaterItem ritem = (RepeaterItem)((Control)sender).NamingContainer;
            int _pid = Convert.ToInt32(((HiddenField)ritem.FindControl("hf_WP01")).Value);
            AA objAA = new AA();
            objAA.A01 = Convert.ToInt32(Session["A01"].ToString());
            objAA.WP01 = _pid;
            objAA.AA01 = Guid.NewGuid().ToString();
            objAA.AA02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            objAA.AA03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            objAA.AA04 = 1;
            bool rval = CFacade.GetFac.GetAAFac.SaveTrack(objAA);
            if (rval)
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤成功');", true);
            else
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤失敗');", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin();", true);
        }

        //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + _pid + "');", true);
    }
    protected void rp_product_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager script = ScriptManager.GetCurrent(this.Page);
        LinkButton lnkBtn = e.Item.FindControl("lnk_like") as LinkButton;
        if (lnkBtn != null)
        {
            script.RegisterAsyncPostBackControl(lnkBtn);
        }
    }

    protected void rp_product_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (((Literal)e.Item.FindControl("lit_WP06_1")).Text.Trim().Equals("1"))
            {
                ((Literal)e.Item.FindControl("lit_WP06_1")).Text = " <i class=\"am-icon-shopping-cart\"></i>&nbsp;好物市集";
            }
            else if (((Literal)e.Item.FindControl("lit_WP06_1")).Text.Trim().Equals("2"))
            {
                ((Literal)e.Item.FindControl("lit_WP06_1")).Text = "<i class=\"am-icon-plane\"></i>&nbsp;跨國快送";
            }

            if (((Literal)e.Item.FindControl("lit_WP06_2")).Text.Trim().Equals("1"))
            {
                ((Literal)e.Item.FindControl("lit_WP06_2")).Text = "";
            }
            else if (((Literal)e.Item.FindControl("lit_WP06_2")).Text.Trim().Equals("2"))
            {
                ((Literal)e.Item.FindControl("lit_WP06_2")).Text = "<img src=\"../images/icon/ficon.png\">";
            }
        }
    }
}