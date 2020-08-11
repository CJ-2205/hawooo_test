using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_brands : Compress.BasePage
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        string bcid = "";
        string bid = "";
        string url = "https://www.hawooo.com/mobile/brand_1.aspx";
        string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
        bool ismobile = PbClass.isMobile(u);

        if (Request.QueryString["bid"] != null)
        {
            bid = Request.QueryString["bid"].ToString();
            url = url + "?bid=" + bid;
        }
        else if (Request.QueryString["cid"] != null)
        {
            bcid = Request.QueryString["cid"].ToString();
            url = url + "&bcid=" + bcid;
        }
        if (ismobile)
        {
            Response.Redirect(url);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 0;

            if (Request.QueryString["page"] != null)
            {
                if (FieldCheck.isInt(Request.QueryString["page"].ToString()))
                    page = int.Parse(Request.QueryString["page"].ToString());
            }

            if (Request.QueryString["bid"] != null)
            {
                if (int.TryParse(Request.QueryString["bid"], out i))
                {
                    int _bid = Convert.ToInt32(Request.QueryString["bid"].ToString());
                    int _cid = 0;
                    if (Request.QueryString["cid"] != null)
                    {
                        if (int.TryParse(Request.QueryString["cid"], out i))
                        {
                            _cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                        }
                    }
                    //bindTopAD(_bid);
                    bindProuctData(_bid, _cid);
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
    public string _FBSTR = "";
    //綁定上方資料
    private void bindTopAD(DataTable dt)
    {
        //DataTable dt = CFacade.UserFac.GetBrandAD(B01);
        StringBuilder sb = new StringBuilder();
        if (dt != null)
        {
            sb.Append("<div class=\"am-g\" style=\"padding: 0px 15px 10px 15px;\">");
            DataRow[] SDR = dt.Select("BD10='T01'");
            if (SDR.Length > 0)
            {
                sb.Append(CETADSTR(SDR[0]));
            }
            SDR = dt.Select("BD10='T02'");
            if (SDR.Length > 0)
            {
                sb.Append(CETADSTR(SDR[0]));
            }
            SDR = dt.Select("BD10='T03'");
            if (SDR.Length > 0)
            {
                sb.Append(CETADSTR(SDR[0]));
            }
            sb.Append("</div>");
            SDR = dt.Select("BD10='B01'");
            if (SDR.Length > 0)
            {
                img_B01.ImageUrl = "../images/adimgs/" + SDR[0]["BD02"].ToString();
            }

        }
        lit_Top_AD_List.Text = sb.ToString();
        //<div class="am-g" style="padding: 0px 15px 10px 15px;">
        //<div class="am-u-sm-4 mid_ad_show">
        //    <a href="http://www.hawooo.com/user/brands.aspx?bid=5">
        //        <img src="../images/index/b-m-2.jpg" /></a>
        //</div>
        //<div class="am-u-sm-4 mid_ad_show">
        //    <a href="http://www.hawooo.com/user/brands.aspx?bid=4">
        //        <img src="../images/index/b-m-1.jpg" /></a>
        //</div>
        //<div class="am-u-sm-4 mid_ad_show">
        //    <a href="http://www.hawooo.com/user/shop.aspx?bid=9">
        //        <img src="../images/index/b-m-3.jpg" /></a>
        //</div>
    }
    private string CETADSTR(DataRow SDR)
    {
        string strAD = "";
        strAD += "<div class=\"am-u-sm-4 mid_ad_show\">";
        strAD += "<a href=\"" + SDR["BD04"].ToString() + "\">";
        strAD += "<img src=\"../images/adimgs/" + SDR["BD02"].ToString() + "\" />";
        strAD += "</a>";
        strAD += "</div>";
        return strAD;
    }
    private int page = 1;
    private int pcount = 40;
    private void bindProuctData(int bid, int cid)
    {
        SearchProp searchProp = new SearchProp();
        searchProp.BrandID = bid;
        searchProp.ClassID = cid;
        searchProp.page = page;
        searchProp.pcount = pcount;
        searchProp.LgType = (this.Master as user_user).LgType;
        DataSet ds = BrandBL.GetBrandPage(searchProp);
        DataTable BPDT = ds.Tables["BA"];

        //DataTable BPDT = CFacade.UserFac.GetBrandsPageDT(bid);
        if (BPDT.Rows.Count > 0)
        {

            //品牌故事
            lit_BA03.Text = BPDT.Rows[0]["BA03"].ToString();
            //品牌右邊logo
            img_BA08.ImageUrl = "../images/brandimgs/" + BPDT.Rows[0]["BA17"].ToString();

            DataTable productDT = ds.Tables["BWP"];
            rp_product_list.DataSource = productDT;
            rp_product_list.DataBind();
            if (productDT.Rows.Count > 0)
            {

                lit_page.Text = PbClass.GetPageNum2(int.Parse(productDT.Rows[0]["ASUM"].ToString()), pcount);
            }
            else
            {
                lit_page.Text = "No Products..";
            }


            DataTable CDT = ds.Tables["BCLASS"];
            if (CDT.Rows.Count > 0)
            {
                string allProductTxt = "全部商品";
                string className = "";
                switch ((this.Master as user_user).LgType)
                {
                    case LangType.zh:
                        {
                            allProductTxt = "全部商品";
                            className = CDT.Rows[0]["BB07_TW"].ToString();
                            break;
                        }
                    case LangType.en:
                        {
                            allProductTxt = "All Products";
                            className = CDT.Rows[0]["BB07_EN"].ToString();
                            break;
                        }
                }
                //帶入類別編號
                if (cid != 0)
                {
                    //DataTable cDT = CFacade.UserFac.GetBrandClassByClassID(cid);


                    if (CDT.Rows.Count > 0)
                    {
                        lit_class.Text = "<li><a href=\"#\" style=\"color:#fff;\" >" + BPDT.Rows[0]["BA02"].ToString() + "</a></li>" + "<li><a href=\"#\" style=\"color:#fff;\">" + className + "</a></li>";
                    }
                    else
                    {
                        lit_class.Text = "<li><a href=\"#\" style=\"color:#fff;\" >" + BPDT.Rows[0]["BA02"].ToString() + "</a></li>" + "<li><a href=\"#\" style=\"color:#fff;\">" + allProductTxt + "</a></li>";
                    }
                }
                else
                {
                    lit_class.Text = "<li><a href=\"#\" style=\"color:#fff;\" >" + BPDT.Rows[0]["BA02"].ToString() + "</a></li>" + "<li><a href=\"#\" style=\"color:#fff;\">" + allProductTxt + "</a></li>";
                }
            }

            //綁定上方廣告
            bindTopAD(ds.Tables["BAD"]);

        }
        else
        {
            Response.Redirect("index.aspx");
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

    protected void rp_product_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (((HiddenField)e.Item.FindControl("hf_WP06")).Value.Equals("2"))
            {
                ((Literal)e.Item.FindControl("lit_WP06")).Text = "<img src=\"../images/icon/ficon.png\"  />";
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_WP06")).Text = "";
            }
        }
    }
}