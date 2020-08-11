using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product : Compress.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                CFacade.GetFac.GetUserViewFac.UpUserView(Convert.ToInt32(Request.QueryString["id"].ToString()));
                if (Request.QueryString["num"] != null)
                {
                    Session["num"] = Request.QueryString["num"].ToString();
                }
                bindCartCount();
                int i;
                if (int.TryParse(Request.QueryString["id"].ToString(), out i))
                {
                    int pid = Convert.ToInt32(Request.QueryString["id"].ToString());
                    CFacade.GetFac.GetUserViewFac.UpUserView(pid);
                    bindDT(pid);
                    bindGiftList(pid);
                    bindBrand(pid);
                    mobile MyMasterPage = (mobile)Page.Master;
                    string _viewContent = "fbq('track', 'ViewContent', { content_ids: ['" + Request.QueryString["id"].ToString() + "'],  content_type: 'product',  value: " + lit_WPA06.Text + ",  currency: 'MYR'});";
                    (MyMasterPage.FindControl("lit_fb_vc") as Literal).Text = "<script type='text/javascript'>" + _viewContent + "</script>";
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
    private void bindBrand(int PID)
    {
        string strSql = "SELECT B.B01,BA02 FROM B INNER JOIN BA ON BA.B01=B.B01 WHERE BA09=1 AND B.B01=(SELECT B01 FROM WP WHERE WP01=" + PID + ")";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        if (dt.Rows.Count > 0)
        {
            panel_brand.Visible = true;
            lit_B01.Text = "品牌：<a style=\"color:#e65e5e;text-decoration:underline;\" href='brand_1.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "'>" + dt.Rows[0]["BA02"].ToString() + "</a>";
        }
        else
        {
            panel_brand.Visible = false;
        }
    }
    private void bindGiftList()
    {
        DataTable dt = CFacade.GetFac.GetGiftEventFac.GetUserGiftEventList();
        rp_gift_event.DataSource = dt;
        rp_gift_event.DataBind();
        if (dt.Rows.Count > 0)
        {
            rp_gift_event.Visible = true;
        }
        else
        {
            rp_gift_event.Visible = false;
        }
    }
    private void bindGiftList(int pid)
    {
        DataTable dt = CFacade.GetFac.GetGiftEventFac.GetUserGiftEventList(pid);
        rp_gift_event.DataSource = dt;
        rp_gift_event.DataBind();
        if (dt.Rows.Count > 0)
        {
            rp_gift_event.Visible = true;
        }
        else
        {
            rp_gift_event.Visible = false;
        }
    }
    public static string linkUrl = "";
    private void bindCartCount()
    {
        int pcount = 0;
        if (Request.Cookies["CARTID"] != null)
        {
            pcount += CFacade.CartFac.GetCartCount(Request.Cookies["CARTID"].Value.ToString());
        }

        if (Request.Cookies["NCARTID"] != null)
        {
            pcount += CFacade.CartFac.GetCartCount(Request.Cookies["NCARTID"].Value.ToString());
        }

        lit_cart_count.Text = pcount.ToString();
        ((Literal)Page.Master.FindControl("lit_cart_count")).Text = pcount.ToString();
        ((UpdatePanel)Page.Master.FindControl("upcart")).Update();
        up_footer_fixed.Update();
    }
    private void bindClassName()
    {

    }
    private void bindDT(int pID)
    {
        Tuple<DataTable, DataTable> pDT = CFacade.UserFac.GetProductDetailTwInfo(pID);
        if (pDT.Item1.Rows.Count > 0)
        {
            //增加點擊次數
            CFacade.GetFac.GetWPFac.AddWpCount(pID);

            Page.Title = Server.HtmlDecode(pDT.Item1.Rows[0]["WP02"].ToString());
            //getClassName(Convert.ToInt32(pDT.Item1.Rows[0]["C01"].ToString()));
            hf_WP01.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP01"].ToString());
            hf_WP28.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP28"].ToString());
            hf_WP29.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP29"].ToString());
            hf_WP31.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP31"].ToString());
            hf_WP32.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP32"].ToString());
            lit_WP33_WP34.Text = pDT.Item1.Rows[0]["WP34"].ToString();
            DateTime d = new DateTime();
            if (DateTime.TryParse(hf_WP31.Value, out d) && DateTime.TryParse(hf_WP32.Value, out d))
            {
                if (DateTime.Now >= Convert.ToDateTime(hf_WP31.Value) && DateTime.Now <= Convert.ToDateTime(hf_WP32.Value))
                {
                    lit_WP33_WP34.Text = pDT.Item1.Rows[0]["WP33"].ToString();
                }
            }
            lit_WP02.Text = Server.HtmlDecode(pDT.Item1.Rows[0]["WP02"].ToString());
            lit_WP21.Text = Server.HtmlDecode(pDT.Item1.Rows[0]["WP21"].ToString());
            hf_WP08_1.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP08_1"].ToString());
            hf_WP06.Value = pDT.Item1.Rows[0]["WP06"].ToString();
            DataTable dt = CFacade.GetFac.GetWPLSFac.getProductShowCLS(Convert.ToInt32(hf_WP01.Value));
            if (hf_WP06.Value.ToString().Equals("1"))
            {
                lit_class.Text = "<a href=\"shop.aspx\">好物市集 > </a>";
                foreach (DataRow dr in dt.Rows)
                {
                    lit_class.Text += "<a href=\"shop.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                }
            }
            else
            {
                lit_class.Text = "<a href=\"fast.aspx\">跨國快送 > </a>";
                foreach (DataRow dr in dt.Rows)
                {
                    lit_class.Text += "<a href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                }
            }
            lit_class.Text = lit_class.Text.Trim(',');
            //mimg.ImageUrl = "../images/webimgs/" + Server.HtmlDecode(pDT.Item1.Rows[0]["WP08_1"].ToString());
            string fimgs = "";
            if (!pDT.Item1.Rows[0]["WP08_1"].ToString().Equals(""))
                fimgs += "<li><img src=\"http://www.hawooo.com/images/webimgs/" + pDT.Item1.Rows[0]["WP08_1"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_2"].ToString().Equals(""))
                fimgs += "<li><img src=\"http://www.hawooo.com/images/webimgs/" + pDT.Item1.Rows[0]["WP08_2"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_3"].ToString().Equals(""))
                fimgs += "<li><img src=\"http://www.hawooo.com/images/webimgs/" + pDT.Item1.Rows[0]["WP08_3"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_4"].ToString().Equals(""))
                fimgs += "<li><img src=\"http://www.hawooo.com/images/webimgs/" + pDT.Item1.Rows[0]["WP08_4"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_5"].ToString().Equals(""))
                fimgs += "<li><img src=\"http://www.hawooo.com/images/webimgs/" + pDT.Item1.Rows[0]["WP08_5"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            lit_WP08_LIST.Text = fimgs;
            lit_WP03.Text = pDT.Item1.Rows[0]["WP03"].ToString().Replace("http://", "https://").Replace("height=", "").Replace("height:", "").Replace("<img", "<img class=\"am-img-responsive\"");
            //HtmlDocument htmlDocument = new HtmlDocument();
            //htmlDocument.LoadHtml(pDT.Item1.Rows[0]["WP03"].ToString());
            //foreach(HtmlNode node in htmlDocument.DocumentNode.SelectNodes("//img"))
            //{
            //    string s = node.OuterHtml.ToString().Replace(string.Format("style=\"{0}\"", ""), ""); ;
            //    //node.SetAttributeValue(string.Format("?width={0}&height={1}", 0, 0));
            //}

            DataSet ds = CFacade.GetFac.GetWPFac.GetRecommendProducts(pID,1);
            rp_recommend1.DataSource = ds.Tables[0];
            rp_recommend1.DataBind();

            rp_recommend2.DataSource = ds.Tables[1];
            rp_recommend2.DataBind();
            //lit_WP03.Text = pDT.Item1.Rows[0]["WP03"].ToString().Replace("width=", "").Replace("width:", "").Replace("height=", "").Replace("height:", "").Replace("<img", "<img class=\"am-img-responsive\"");
            //lit_img_group.Text = fimgs;
            //lit_product_detail.Text = Server.HtmlDecode(pDT.Item1.Rows[0]["WP03"].ToString());
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('無相關商品資訊');location.href='shop.aspx';", true);
        }
        if (pDT.Item2.Rows.Count > 0)
        {
            ViewState["wpadt"] = pDT.Item2;
            ddl_WPA02.Items.Clear();
            //ddl_WPA02.Items.Add(new ListItem("請選擇規格", "0"));
            int p = 0;
            foreach (DataRow nDR in pDT.Item2.Rows)
            {
                ddl_WPA02.Items.Add(new ListItem(nDR["WPA02"].ToString(), nDR["WPA01"].ToString()));
                //if (hf_WP06.Value.ToString().Equals("1")) //市集
                //{
                //    //int pCount = int.TryParse(nDR["D10"].ToString(), out p) ? Convert.ToInt32(nDR["D10"].ToString()) : 0;
                //    getCount(nDR["WPA01"].ToString(), Convert.ToInt32(hf_WP28.Value), Convert.ToInt32(hf_WP29.Value));
                //}
                //else if (hf_WP06.Value.ToString().Equals("2")) //快送
                //{
                //    //int pCount = int.TryParse(nDR["D16"].ToString(), out p) ? Convert.ToInt32(nDR["D16"].ToString()) : 0;
                //    getCount(nDR["WPA01"].ToString());
                //}
            }
            ddl_WPA02.SelectedIndex = 0;
            ddl_WPA02_SelectedIndexChanged(null, null);
            //getWPA06(pDT.Item2.Rows[0]["WPA01"].ToString()); ;

        }
    }

    private void getWPA06(string WPA01)
    {
        string OWPA01 = WPA01;
        if (OWPA01.IndexOf("&PO") > 0)
        {
            OWPA01 = OWPA01.Split('&')[0].ToString();
        }
        DataTable dt = (ViewState["wpadt"]) as DataTable;
        DataRow[] sDR = dt.Select("WPA01='" + OWPA01 + "'");
        if (sDR.Length > 0)
        {
            DateTime d;
            decimal _WPA06 = Convert.ToDecimal(sDR[0]["WPA06"].ToString());
            if (DateTime.TryParse(hf_WP31.Value, out d) && DateTime.TryParse(hf_WP32.Value, out d))
            {
                if (DateTime.Now >= Convert.ToDateTime(hf_WP31.Value) && DateTime.Now <= Convert.ToDateTime(hf_WP32.Value))
                {
                    _WPA06 = _WPA06 - Convert.ToDecimal(sDR[0]["WPA07"].ToString());
                }
            }
            _WPA06 = hawooo.PbClass.CashRate(_WPA06.ToString(), Application["mycashrate"].ToString());
            decimal _WPA10 = hawooo.PbClass.CashRate(sDR[0]["WPA10"].ToString(), Application["mycashrate"].ToString());
            hf_WPA04.Value = sDR[0]["WPA04"].ToString();
            lit_WPA06.Text = _WPA06.ToString();
            if (_WPA10 > _WPA06)
            {
                lit_WPA10.Text = "(RM " + _WPA10.ToString() + ")";
            }

            //int pCount = 0;
            if (hf_WP06.Value.ToString().Equals("1")) //市集
            {
                //pCount = int.TryParse(sDR[0]["D10"].ToString(), out pCount) ? Convert.ToInt32(sDR[0]["D10"].ToString()) : 0;
                getCount(WPA01, Convert.ToInt32(hf_WP28.Value), Convert.ToInt32(hf_WP29.Value), Convert.ToInt32(sDR[0]["WPA04"].ToString()));
            }
            else if (hf_WP06.Value.ToString().Equals("2")) //快送
            {
                //pCount = int.TryParse(sDR[0]["D16"].ToString(), out pCount) ? Convert.ToInt32(sDR[0]["D16"].ToString()) : 0;
                getCount(WPA01, Convert.ToInt32(sDR[0]["WPA04"].ToString()));
            }

        }
    }

    /// <summary>
    /// 市集判斷可賣數量
    /// </summary>
    /// <param name="pCount">可賣總數量</param>
    /// <param name="pOneCount">每份數量</param>
    /// <param name="WPA04">購買上限</param>
    private void getCount(string WPA01, int WP28, int WP29, int WPA04)
    {
        lit_booking_info.Text = "";
        string CWPA01 = WPA01;
        if (WPA01.IndexOf("&") > 0)
        {
            CWPA01 = WPA01.Split('&')[0].ToString();
        }
        int _可賣數量 = CFacade.GetFac.GetWPBFac.GetItemCanBuyQty(CWPA01, 0);
        ddl_D10.Items.Clear();
        if (_可賣數量 > 0)
        {
            if (WPA04 < _可賣數量)
                _可賣數量 = WPA04;
            for (int i = 1; i <= _可賣數量; i++)
            {
                ddl_D10.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            if (WP28.Equals(1)) //可預購
            {
                foreach (ListItem item in ddl_WPA02.Items)
                {
                    if (item.Value.Equals(WPA01))
                    {
                        if (item.Value.IndexOf("&PO") < 0)
                        {
                            item.Text = item.Text + "(預購中)";
                            item.Value = item.Value + "&PO";
                        }
                        lit_booking_info.Text = "注意：此商品規格為預購狀態,需等候約30工作天，實際到貨日期依照廠商發貨日期為準。";
                        ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "msg", "alert('注意：此商品規格為預購狀態,需等候約30工作天，實際到貨日期依照廠商發貨日期為準。');", true);
                    }
                }
                for (int i = 1; i <= WP29; i++)
                {
                    ddl_D10.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
            else
            {
                ddl_D10.Items.Add(new ListItem("無庫存", "0"));
            }
            up_type.Update();
        }
    }
    private void getCount(string WPA01, int WPA04)
    {
        int _可賣數量 = CFacade.GetFac.GetWPBFac.GetItemCanBuyQty(WPA01, 1);
        ddl_D10.Items.Clear();
        if (_可賣數量 > 0)
        {
            if (WPA04 < _可賣數量)
                _可賣數量 = WPA04;
            for (int i = 1; i <= _可賣數量; i++)
            {
                ddl_D10.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            ddl_D10.Items.Add(new ListItem("無庫存", "0"));
        }
    }
    protected void ddl_WPA02_SelectedIndexChanged(object sender, EventArgs e)
    {
        string WPA01 = ddl_WPA02.SelectedItem.Value;
        if (WPA01.ToString().Equals("0"))
        {
            ddl_D10.Items.Clear();
            lit_WPA06.Text = "";
            lit_WPA10.Text = "";
        }
        else
        {
            getWPA06(WPA01);
        }
    }

    private string addCart()
    {
        int CTD06 = Convert.ToInt32(ddl_D10.SelectedValue.ToString());
        if (CTD06 > 0)
        {
            CARTM cm = new CARTM();

            cm.CTM02 = 0;
            if (Session["A01"] != null)
            {
                cm.CTM03 = Convert.ToInt32(Session["A01"].ToString());
            }
            else
            {
                cm.CTM03 = 0;
            }
            cm.CTM04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            cm.CTM05 = Convert.ToInt32(hf_WP06.Value);
            cm.CTM06 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            CARTD cd = new CARTD();
            cd.CTD01 = Convert.ToInt32(hf_WP01.Value);
            cd.CTD02 = lit_WP02.Text.Trim();
            if (ddl_WPA02.SelectedValue.IndexOf("&PO") > 0) //預購商品
            {
                cd.CTD10 = 1;
                cd.CTD03 = ddl_WPA02.SelectedValue.Split('&')[0].ToString();
            }
            else
            {
                cd.CTD10 = 0;
                cd.CTD03 = ddl_WPA02.SelectedValue.ToString();
            }
            cd.CTD04 = ddl_WPA02.SelectedItem.Text;
            cd.CTD05 = Convert.ToDecimal(lit_WPA06.Text);
            cd.CTD06 = CTD06;
            cd.CTD07 = 1;
            cd.CTD08 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            cd.CTD09 = hf_WP08_1.Value;
            string rval = CFacade.CartFac.AddCart(cm, cd);
            return rval;
        }
        else
        {
            return "商品無庫存";
        }
    }
    protected void lnk_ADD_Click(object sender, EventArgs e)
    {
        if (ddl_WPA02.SelectedValue.ToString().Equals("0"))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('請先選擇規格');", true);
        }
        else
        {
            //加入購物車
            string rval = addCart();
            if (rval.Equals("OK"))
            {
                bindCartCount();
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "gastep2", "ga('ec:setAction','checkout', {'step': 2});", true);
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('加入成功');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + rval + "');", true);
            }
        }
    }

    protected void lnk_BUY_Click(object sender, EventArgs e)
    {
        if (ddl_WPA02.SelectedValue.ToString().Equals("0"))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('請先選擇規格');", true);
        }
        else
        {
            //立即購買
            string rval = addCart();
            if (rval.Equals("OK"))
            {
                if (Session["A01"] != null)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='cart1.aspx?ctype=" + hf_WP06.Value + "';", true);
                }
                else
                {
                    Response.Redirect("login.aspx?rurl=cart1.aspx?ctype=" + hf_WP06.Value + "'");
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + rval + "');", true);
            }
        }
    }
}