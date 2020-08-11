using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Text;
using System.Data.SqlClient;

public partial class user_admproductshow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ADM01"] == null)
            {
                Response.Redirect("index.aspx");
            }
            if (Request.QueryString["id"] != null)
            {
                int i = 0;
                if (int.TryParse(Request.QueryString["id"].ToString(), out i))
                {
                    int pid = Convert.ToInt32(Request.QueryString["id"].ToString());
                    bindDT(pid);
                    //bindProductComment(pid);
                    bindGiftList(pid);

                }
                else
                {
                    Response.Redirect("shop.aspx");
                }
            }
            else
            {
                Response.Redirect("shop.aspx");
            }
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
    //private void bindProductComment(int pid)
    //{
    //    DataTable dt = CFacade.UserFac.GetProductCommend(pid);
    //    rp_comment_list.DataSource = dt;
    //    rp_comment_list.DataBind();
    //    if (dt.Rows.Count == 0)
    //    {
    //        lit_msg.Text = "尚無任何評價";
    //    }
    //}
    private void getClassName(int WP01, int type)
    {
        DataTable dt = CFacade.GetFac.GetWPLSFac.getProductShowCLS(WP01);
        StringBuilder sb = new StringBuilder();
        if (type.Equals(1))
        {
            //好物市集;
            lit_class.Text = "<li><a href=\"market.aspx\">好物市集</a></li>";
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append("<a href=\"shop.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,");
                }
            }
            if (sb.ToString().Length > 0)
            {
                lit_class.Text += "<li>" + sb.ToString().Trim(',') + "</li>";
            }

        }
        else if (type.Equals(2))
        {
            //跨國快送
            lit_class.Text = "<li><a href=\"fast.aspx\">跨國快送</a></li>";
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append("<a href=\"fast.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,");
                }
            }
            if (sb.ToString().Length > 0)
            {
                lit_class.Text += "<li>" + sb.ToString().Trim(',') + "</li>";
            }
        }


    }
    public Tuple<DataTable, DataTable> GetProductDetailTwInfo(int pID, string ptype = "s")
    {
        string pSql = "SELECT WP01,WP02,WP02,WP03,WP05,WP06,WP08_1,WP08_2,WP08_3,WP08_4,WP08_5,WP21,C01,B01,BB01,WP28,WP29 FROM WP WHERE ";
        pSql += " WP01=@WP01 ";

        SqlCommand cmd1 = new SqlCommand();
        cmd1.Parameters.Add(SafeSQL.CreateInputParam("WP01", SqlDbType.BigInt, pID));
        cmd1.CommandText = pSql;
        DataTable WPDT = new DataTable();
        WPDT = SqlDbmanager.queryBySql(cmd1);

        string pdSql = "SELECT WP01,WPA01,WPA02,WPA04,WPA06,WPA10 FROM WPA WHERE WPA08=1 AND WP01=@WP01 ORDER BY WPA11 DESC";
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Parameters.Add(SafeSQL.CreateInputParam("WP01", SqlDbType.BigInt, pID));
        cmd2.CommandText = pdSql;
        DataTable WPADT = new DataTable();
        WPADT = SqlDbmanager.queryBySql(cmd2);

        Tuple<DataTable, DataTable> rTup = new Tuple<DataTable, DataTable>(WPDT, WPADT);
        return rTup;
    }
    private void bindDT(int pID)
    {
        Tuple<DataTable, DataTable> pDT = GetProductDetailTwInfo(pID);
        if (pDT.Item1.Rows.Count > 0)
        {
            //增加點擊次數
            CFacade.GetFac.GetWPFac.AddWpCount(pID);
            hf_WP06.Value = pDT.Item1.Rows[0]["WP06"].ToString();
            if (hf_WP06.Value.Equals("1"))
            {
                //好物市集
                //<uc1:shopclass runat="server" ID="shopclass" />
                UserControl uc = (UserControl)Page.LoadControl("control/shopclass.ascx");
                PlaceHolder1.Controls.Add(uc);
            }
            else
            {
                UserControl uc = (UserControl)Page.LoadControl("control/fastclass.ascx");
                PlaceHolder1.Controls.Add(uc);
            }
            getClassName(Convert.ToInt32(pDT.Item1.Rows[0]["WP01"].ToString()), Convert.ToInt32(hf_WP06.Value));
            Page.Title = Server.HtmlDecode(pDT.Item1.Rows[0]["WP02"].ToString());
            //getClassName(Convert.ToInt32(pDT.Item1.Rows[0]["C01"].ToString()));
            hf_WP01.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP01"].ToString());
            hf_WP28.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP28"].ToString());
            hf_WP29.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP29"].ToString());
            lit_WP02.Text = Server.HtmlDecode(pDT.Item1.Rows[0]["WP02"].ToString());
            lit_WP21.Text = Server.HtmlDecode(pDT.Item1.Rows[0]["WP21"].ToString());
            hf_WP08_1.Value = Server.HtmlDecode(pDT.Item1.Rows[0]["WP08_1"].ToString());
            mimg.ImageUrl = "../images/webimgs/" + Server.HtmlDecode(pDT.Item1.Rows[0]["WP08_1"].ToString());
            string fimgs = "";
            if (!pDT.Item1.Rows[0]["WP08_1"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + pDT.Item1.Rows[0]["WP08_1"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_2"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + pDT.Item1.Rows[0]["WP08_2"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_3"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + pDT.Item1.Rows[0]["WP08_3"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_4"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + pDT.Item1.Rows[0]["WP08_4"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            if (!pDT.Item1.Rows[0]["WP08_5"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + pDT.Item1.Rows[0]["WP08_5"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
            lit_img_group.Text = fimgs;
            lit_product_detail.Text = Server.HtmlDecode(pDT.Item1.Rows[0]["WP03"].ToString());
            StringBuilder fbSB = new StringBuilder();
            fbSB.Append("<meta property=\"og:title\" content=\"" + pDT.Item1.Rows[0]["WP02"].ToString() + "\"></meta>");
            fbSB.Append("<meta property=\"og:url\" content=\"" + Request.Url.OriginalString + "\"></meta>");
            fbSB.Append("<meta property=\"og:image\" content=\"http://www.hawooo.com/images/webimgs/" + pDT.Item1.Rows[0]["WP08_1"].ToString() + "\"></meta>");
            fbSB.Append("<meta property=\"og:site_name\" content=\"Hawooo.com 好物飛行\"></meta>");
            user_user MyMasterPage = (user_user)Page.Master;
            (MyMasterPage.FindControl("lit_fb") as Literal).Text = fbSB.ToString();
            //fbq('track', 'ViewContent', { content_name: 'Really Fast Running Shoes',  content_category: 'Apparel & Accessories > Shoes',  content_ids: ['1234'],  content_type: 'product',  product_catalog_id: '<catalog_id>',  value: 0.50,  currency: 'MYR' })
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
            //int p = 0;
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
            //getWPA06(pDT.Item2.Rows[0]["WPA01"].ToString());
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
            decimal _WPA06 = hawooo.PbClass.CashRate(sDR[0]["WPA06"].ToString(), Application["mycashrate"].ToString());
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
        //int _可賣數量 = Convert.ToInt32(Math.Floor(pCount / pOneCount));
        int _可賣數量 = CFacade.GetFac.GetWPBFac.GetItemCanBuyQty(WPA01, 0);
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

    /// <summary>
    /// 快送判斷可賣數量
    /// </summary>
    /// <param name="pCount">可賣總數量</param>
    /// <param name="pOneCount">每份數量</param>
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
    protected void lnk_add_cart_Click(object sender, EventArgs e)
    {
        if (ddl_WPA02.SelectedValue.ToString().Equals("0"))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('請先選擇規格');", true);
        }
        else
        {
            string rval = addCart();
            if (rval.Equals("OK"))
            {
                user_user mpage = (user_user)Page.Master;
                mpage.bindCart();
                string acStr = hawooo.facebook.getAddToCartStr(Request.QueryString["id"].ToString());
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "fbac", acStr, false);
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('加入成功');showmincart();", true);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + rval + "');", true);
            }
        }
    }
    protected void lnk_push_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            bool recom = CFacade.GetFac.GetACFac.CanRecommend(Convert.ToInt32(Session["A01"].ToString()), Convert.ToInt32(hf_WP01.Value));
            if (recom)
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "openPMODAL();", true);
            else
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('已於7日內推薦過此商品。');", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin('" + Request.Url.PathAndQuery + "');", true);
            //Response.Redirect("login.aspx?url=productdetail.aspx?id=" + hf_WP01.Value);
        }
    }
    protected void lnk_add_track_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            int _pid = Convert.ToInt32(hf_WP01.Value);
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
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin('" + Request.Url.PathAndQuery + "');", true);
        }
    }
    protected void rp_comment_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            decimal d = Convert.ToDecimal(((HiddenField)e.Item.FindControl("hf_ORC02")).Value);
            if (d > 0)
            {
                string s = "";
                decimal count = d * 5;
                for (int i = 0; i <= count; i++)
                {
                    s += "<i class=\"am-icon-star\" style=\"color: #ffd800\"></i>";
                }
                ((Literal)e.Item.FindControl("lit_start")).Text = s;
            }
            if (((Image)e.Item.FindControl("img_A18")).ImageUrl == "")
            {
                ((Image)e.Item.FindControl("img_A18")).ImageUrl = "../images/userimgs/member-default.png";
            }
        }
    }
    protected void btn_recommnet_Click(object sender, EventArgs e)
    {
        if (txt_AC04.Text.Trim().Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('請輸入推薦內容。');", true);
        }
        else if (Session["A21"].ToString() == "")
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('尚未輸入暱稱。');location.href='memberinfo.aspx';", true);
        }
        else
        {
            AC objAC = new AC();
            objAC.A01 = Convert.ToInt32(Session["A01"].ToString());
            objAC.WP01 = Convert.ToInt32(hf_WP01.Value);
            objAC.AC01 = Guid.NewGuid().ToString();
            objAC.AC02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            objAC.AC03 = 1;
            objAC.AC04 = txt_AC04.Text.Trim();
            objAC.AC05 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            bool rval = CFacade.GetFac.GetACFac.insertAC(objAC);
            if (rval)
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('推薦成功。');closePMODAL();", true);
            else
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('推薦失敗。');", true);
        }

    }
    protected void lnk_buy_now_Click(object sender, EventArgs e)
    {
        if (ddl_WPA02.SelectedValue.ToString().Equals("0"))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('請先選擇規格');", true);
        }
        else
        {
            string rval = addCart();
            if (rval.Equals("OK"))
            {
                string acStr = hawooo.facebook.getAddToCartStr(Request.QueryString["id"].ToString());
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "fbac", acStr, false);
                if (Session["A01"] != null)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='cart1.aspx?ctype=" + hf_WP06.Value + "';", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "doLogin('cart1.aspx?ctype=" + hf_WP06.Value + "');", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + rval + "');", true);
            }
        }
    }
}