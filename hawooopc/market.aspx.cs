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


public partial class user_market : Compress.BasePage
{
    string email = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool isMobile = PbClass.isMobile(Request.UserAgent);
            if (isMobile)
            {
                string qstr = Request.Url.Query.ToString();
                Response.Redirect("../mobile/shop.aspx" + qstr);
            }

            if (Request.QueryString["cid"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["cid"].ToString()))
                {
                    int cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                    hf_cid.Value = cid.ToString();
                    hf_cname.Value = GetCategoryStr(cid).ToString();
                    BindTop(cid);
                    BindList(cid);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    private string GetCategoryStr(int cid)
    {
        string name = "";
        string strSql = "SELECT C06 FROM C WHERE C01=@CID";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, cid));
        cmd.CommandText = strSql;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            name = dt.Rows[0]["C06"].ToString();
        }
        return name;
    }
    private void BindTop(int pcID)
    {
        //criteo
        if (Session["A08"] != null)
        {
            email = Session["A08"].ToString();
        }

        //DataSet ds = CFacade.UserFac.GetShopShow(pcID);
        DataSet ds = ShopBL.GetMarketSohw(pcID, LgType: (this.Master as user_user).LgType);

        //最新商品
        DataTable SDT = ds.Tables[0];
        rp_news_list.DataSource = SDT;
        rp_news_list.DataBind();

        if (SDT.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, SDT);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "productlist", cstr, true);
        }

        //熱銷商品
        SDT.Clear();
        SDT = ds.Tables[1];
        rp_hot_list.DataSource = SDT;
        rp_hot_list.DataBind();


        if (SDT.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, SDT);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "productlist2", cstr, true);
        }


        //精選商品
        SDT.Clear();
        SDT = ds.Tables[2];
        FormView1.DataSource = SDT;
        FormView1.DataBind();

        if (SDT.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, SDT);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "productlist3", cstr, true);
        }

        //左方廣告
        if (ds.Tables.Count > 3)
        {
            SDT.Clear();
            SDT = ds.Tables[3];

            DataRow[] S01 = SDT.Select("F02='S01'");
            foreach (DataRow dr in S01)
            {
                lit_AD_S01.Text += "<li><a href='" + dr["F04"].ToString() + "'><img src=\"https://www.hawooo.com/images/adimgs/" + dr["F14"].ToString() + "\" class=\"am-img-responsive\" alt=\"" + dr["F05"].ToString() + "\" /></a></li>";
            }

            DataRow[] S02 = SDT.Select("F02='S02'");
            if (S02.Length > 0)
            {
                lit_AD_S02.Text = "<a href='" + S02[0]["F04"].ToString() + "'><img src=\"https://www.hawooo.com/images/adimgs/" + S02[0]["F14"].ToString() + "\" class=\"am-img-responsive\" alt=\"" + S02[0]["F05"].ToString() + "\" /></a>";
            }
        }

    }

    //private void BindTop()
    //{
    //    DataSet ds = CFacade.UserFac.GetMarketShow();

    //    //最新商品
    //    DataTable SDT = ds.Tables[0];
    //    rp_news_list.DataSource = SDT;
    //    rp_news_list.DataBind();

    //    //熱銷商品
    //    SDT.Clear();
    //    SDT = ds.Tables[1];
    //    rp_hot_list.DataSource = SDT;
    //    rp_hot_list.DataBind();

    //    //精選商品
    //    SDT.Clear();
    //    SDT = ds.Tables[2];
    //    FormView1.DataSource = SDT;
    //    FormView1.DataBind();

    //    //左方廣告
    //    SDT.Clear();
    //    SDT = ds.Tables[3];
    //    string _AD = String.Empty;
    //    foreach (DataRow dr in SDT.Rows)
    //    {
    //        lit_AD_S01.Text += "<li><a href='" + dr["F04"].ToString() + "'><img src=\"../images/adimgs/" + dr["F14"].ToString() + "\" class=\"am-img-responsive\" alt=\"" + dr["F05"].ToString() + "\" /></a></li>";
    //    }
    //}
    private void BindList(int cid)
    {
        DataTable imgDT = CFacade.GetFac.GetSPIFac.GetImgListBySPI02(new List<string> { "D01", "D02" });


        DataTable EDT = CFacade.GetFac.GetWPFac.GetSelProductList(8, 1, "AND SPM17=@SPM17", new List<SqlParameter> { SafeSQL.CreateInputParam("SPM17", SqlDbType.Int, cid) }, "S", (this.Master as user_user).LgType);

        if (EDT.Rows.Count > 0)
        {
            string cstr = criteo.CategoryTag(email, EDT);
            Page.ClientScript.RegisterStartupScript(typeof(Page), "eventproductlist", cstr, true);
        }

        string[] mqry = new string[] { "SPM01", "SPM02" };
        //主表ID
        DataTable MDT = EDT.DefaultView.ToTable(true, mqry);
        rp_event_list.DataSource = MDT;
        rp_event_list.DataBind();


       



        //List<int> EIDLIST = new List<int>();
        //foreach (RepeaterItem ri in rp_event_list.Items)
        //{
        //    EIDLIST.Add(Convert.ToInt32(((HiddenField)ri.FindControl("hf_SPM01")).Value));
        //}

        int i = 0;
        foreach (RepeaterItem ri in rp_event_list.Items)
        {
            DataRow[] D01 = imgDT.Select("SPI01='" + ((HiddenField)ri.FindControl("hf_SPM01")).Value + "' AND SPI02='D01'");
            if (D01.Length > 0)
            {
                ((Literal)ri.FindControl("lit_D01")).Text = "<a href=\"" + D01[0]["SPI05"].ToString() + "\"><img src=\"../images/adimgs/" + D01[0]["SPI04"].ToString() + "\" style=\"max-width:970px\" /></a>";
            }

            DataRow[] D02 = imgDT.Select("SPI01='" + ((HiddenField)ri.FindControl("hf_SPM01")).Value + "' AND SPI02='D02'");
            if (D02.Length > 0)
            {
                ((Literal)ri.FindControl("lit_D02")).Text = "<a href=\"" + D02[0]["SPI05"].ToString() + "\"><img src=\"../images/adimgs/" + D02[0]["SPI04"].ToString() + "\" /></a>";
            }
            EDT.DefaultView.RowFilter = "SPM01='" + ((HiddenField)ri.FindControl("hf_SPM01")).Value + "'";
            DataTable BDT = EDT.DefaultView.ToTable();

            ((Repeater)ri.FindControl("rp_product_list")).DataSource = BDT;
            ((Repeater)ri.FindControl("rp_product_list")).DataBind();
        }
    }
    protected void lnk_like_Click(object sender, EventArgs e)
    {
        //if (Session["A01"] != null)
        //{
        //    RepeaterItem ritem = (RepeaterItem)((Control)sender).NamingContainer;
        //    int _pid = Convert.ToInt32(((HiddenField)ritem.FindControl("hf_WP01")).Value);
        //    AA objAA = new AA();
        //    objAA.A01 = Convert.ToInt32(Session["A01"].ToString());
        //    objAA.WP01 = _pid;
        //    objAA.AA01 = Guid.NewGuid().ToString();
        //    objAA.AA02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        //    objAA.AA03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        //    objAA.AA04 = 1;
        //    bool rval = CFacade.GetFac.GetAAFac.SaveTrack(objAA);
        //    if (rval)
        //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤成功');", true);
        //    else
        //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤失敗');", true);
        //}
        //else
        //{
        //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin();", true);
        //}

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