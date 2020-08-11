using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_fast : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;
            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out i))
                {
                    i = Convert.ToInt32(Request.QueryString["cid"].ToString());
                }
            }
            BindDt(i);
        }
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
    //private void bindClass(int cid)
    //{
    //    DataTable dt = CFacade.UserFac.HawoooClassTW(2);
    //    if (dt.Rows.Count > 0)
    //    {
    //        StringBuilder sb = new StringBuilder();
    //        sb.Append("<a href=\"fast.aspx\">全部商品</a>");
    //        foreach (DataRow dr in dt.Rows)
    //        {
    //            if (dr["C01"].ToString().Equals(cid))
    //            {
    //                sb.Append("<a class=\"active\" href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>");
    //            }
    //            else
    //            {
    //                sb.Append("<a href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>");
    //            }
    //        }
    //        lit_class.Text = sb.ToString();
    //    }
    //}
    private void BindDt(int i)
    {
        DataTable dt = CFacade.UserFac.getWpList(i);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
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
    protected void rp_event_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        //{
        //int SPM01 = Convert.ToInt32(((HiddenField)e.Item.FindControl("hf_SPM01")).Value);
        //DataTable dt = CFacade.UserFac.GetShopIndexProducts(SPM01);
        //((Repeater)e.Item.FindControl("rp_product_list")).DataSource = dt;
        //((Repeater)e.Item.FindControl("rp_product_list")).DataBind();
        //}
    }
}