using hawooo;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user : System.Web.UI.MasterPage
{
    private CART _cart;
    private SqlCommand _sqlCmd;
    private int _memberID = 0;
    private string _eventID = ConfigurationManager.AppSettings["preEventId"];
    private StringBuilder _sb;
    private bool CheckInPreOrderTime()
    {
        string stime = ConfigurationManager.AppSettings["preStime"];
        string etime = ConfigurationManager.AppSettings["preEtime"];
        if (FieldCheck.isDateTime(stime) && FieldCheck.isDateTime(etime))
        {
            DateTime transStartTime = Convert.ToDateTime(stime);
            DateTime transEndTime = Convert.ToDateTime(etime);
            if (DateTime.Now >= transStartTime && DateTime.Now <= transEndTime)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }
    private bool CheckMemberHasPreOrderProduct()
    {
        _cart = new CART();
        _sqlCmd = new SqlCommand();
        _sqlCmd.CommandText = "SELECT COUNT(POP02) as PCOUNT FROM PreOrderProduct WHERE POP05=0 AND POP01=@POP01 AND POP06=@POP06";
        _sqlCmd.Parameters.Add(SafeSQL.CreateInputParam("POP01", SqlDbType.Int, int.Parse(Session["A01"].ToString())));
        _sqlCmd.Parameters.Add(SafeSQL.CreateInputParam("POP06", SqlDbType.VarChar, _eventID));
        DataTable chkDT = SqlDbmanager.queryBySql(_sqlCmd);
        if (chkDT.Rows.Count > 0)
        {
            int pcount = int.Parse(chkDT.Rows[0]["PCOUNT"].ToString());
            if (pcount <= 0)
                return false;
            _sqlCmd = new SqlCommand();
            _sqlCmd = _cart.GetCartmSqlCmd(_memberID, 1);
            SqlDbmanager.executeNonQry(_sqlCmd);
            return true;
            //if (FieldCheck.isInt(chkDT.Rows[0]["PCOUNT"].ToString()))
            //{
            //    int pcount = int.Parse(chkDT.Rows[0]["PCOUNT"].ToString());
            //    if (pcount <= 0)
            //        return false;
            //    _sqlCmd = new SqlCommand();
            //    _sqlCmd = _cart.GetCartmSqlCmd(_memberID, 1);
            //    SqlDbmanager.executeNonQry(_sqlCmd);
            //    return true;
            //}
            //else
            //{
            //    return false;
            //}
        }
        else
        {
            return false;
        }
    }
    private bool Trans2CartWork()
    {
        string CTM01 = _cart.GetCTM01; //購物車ID
        _sb = new StringBuilder();
        _sb.Append("MERGE INTO CARTD as t ");
        _sb.Append("USING (SELECT @CTM01 as CTM01,POP03,WP02,POP02,WPA02,POP07,WP08_1 " +
                   "FROM PreOrderProduct WITH(NOLOCK) ");
        _sb.Append("CROSS APPLY (SELECT WP02,WPA02,WP08_1,WPA08 FROM WPA WITH(NOLOCK) " +
                   "INNER JOIN WP WITH(NOLOCK) ON WP.WP01=WPA.WP01 WHERE WPA01=POP02 AND WPA08=1) as PP ");
        _sb.Append("WHERE POP01=@POP01 " +
                   "AND POP06=@POP06 " +
                   "AND POP05=0) as s ");
        _sb.Append("ON t.CTM01=s.CTM01 and t.CTD03=s.POP02 ");
        _sb.Append("WHEN MATCHED THEN ");
        _sb.Append("UPDATE SET CTD06=POP07 ");
        _sb.Append("WHEN NOT MATCHED THEN ");
        _sb.Append("INSERT (");
        _sb.Append("CTM01,"); //購物車ID
        _sb.Append("CTD01,"); //商品ID
        _sb.Append("CTD02,"); //商品名稱
        _sb.Append("CTD03,"); //選項編號
        _sb.Append("CTD04,"); //品項規格
        _sb.Append("CTD06,"); //數量
        _sb.Append("CTD07,");
        _sb.Append("CTD08,"); //最後編輯時間
        _sb.Append("CTD09,"); //圖片
        _sb.Append("CTD10,"); //0
        _sb.Append("CTD11,"); //0
        _sb.Append("CTD12"); //0
        _sb.Append(") VALUES (");
        _sb.Append("CTM01,"); //CTM01
        _sb.Append("POP03,"); //CTD01
        _sb.Append("WP02,"); //CTD02
        _sb.Append("POP02,"); //CTD03
        _sb.Append("WPA02,"); //CTD04
        _sb.Append("POP07,"); //CTD06
        _sb.Append("1,"); //CTD07
        _sb.Append("'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "',"); //CTD08
        _sb.Append("WP08_1,"); //CTD09
        _sb.Append(0 + ","); //CTD10
        _sb.Append(0 + ","); //CTD11
        _sb.Append(0); //CTD12
        _sb.Append(");");

        _sqlCmd = new SqlCommand();
        _sqlCmd.CommandText = _sb.ToString();
        _sqlCmd.Parameters.Add(SafeSQL.CreateInputParam("CTM01", SqlDbType.VarChar, CTM01));
        _sqlCmd.Parameters.Add(SafeSQL.CreateInputParam("POP01", SqlDbType.Int, _memberID));
        _sqlCmd.Parameters.Add(SafeSQL.CreateInputParam("POP06", SqlDbType.VarChar, _eventID));
        bool rval = SqlDbmanager.executeNonQry(_sqlCmd);
        return rval;

    }
    private bool UpPreOrderStatus()
    {
        _sqlCmd = new SqlCommand();
        _sqlCmd.CommandText = "UPDATE PreOrderProduct SET POP05=1 WHERE POP01=@POP01 ";
        _sqlCmd.Parameters.Add(SafeSQL.CreateInputParam("POP01", SqlDbType.Int, _memberID));
        bool rval = SqlDbmanager.executeNonQry(_sqlCmd);
        return rval;
    }
    public string DoTrans2Cart()
    {
        string msg = "NULL";
        if (CheckInPreOrderTime())
        {
            if (CheckMemberHasPreOrderProduct())
            {
                bool rval = Trans2CartWork();
                if (rval)
                    msg = "OK";
                else
                    msg = "ERROR";
            }
        }
        if (msg == "OK")
        {
            UpPreOrderStatus();
        }
        return msg;
    }
    private void AddPreOrderProduct()
    {
        if (Session["A01"] != null)
        {
            DateTime stime = Convert.ToDateTime(ConfigurationManager.AppSettings["preStime"].ToString());
            DateTime etime = Convert.ToDateTime(ConfigurationManager.AppSettings["preEtime"].ToString());
            if (DateTime.Now >= stime && DateTime.Now <= etime)
            {
                PreOrderProductBL preOrderBL = new PreOrderProductBL(int.Parse(Session["A01"].ToString()));
                preOrderBL.DoTrans2Cart();
            }
        }

    }

    public DateTime eventTime = new DateTime(2018, 11, 12, 00, 00, 00);
    public LangType LgType = LangType.zh;
    public DataTable ClassDT;
    protected void Page_Init(object sender, EventArgs e)
    {
        //TCODE
        if (Request.QueryString["utm_content"] != null)
        {
            if (Request.QueryString["utm_source"] != null)
            {
                if (!Request.QueryString["utm_source"].ToString().Equals("tagtoo"))
                {
                    string tcode = TCODEFactory.DoTCodeTrack();
                    if (tcode != "")
                    {
                        HttpCookie cookie = new HttpCookie("TCODE");
                        cookie.Value = tcode;
                        cookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie);
                    }
                }
            }
        }
        //判斷是否HTTPS
        string schemeTxt = Request.Url.Scheme.ToString();
        if (schemeTxt.Equals("http://"))
        {
            Response.Redirect(Request.Url.AbsoluteUri.Replace("http", "https"));
        }


        //CacheHelper.RemoveAllCache();cink
        if (Session["A08"] != null)
        {
            Cookie.Set("MAIL", Session["A08"].ToString());
        }

        //string lg = CultureInfo.CurrentCulture.TwoLetterISOLanguageName;
        string lg = "zh";
        if (!Cookie.Get("LG").Equals(""))
        {
            lg = Cookie.Get("LG").ToString();
        }
        if (Session["LG"] != null)
        {
            lg = Session["LG"].ToString();
        }
        if (Request.QueryString["lg"] != null)
        {
            switch (Request.QueryString["lg"].ToString())
            {
                case "en":
                    {
                        lg = "en";
                        break;
                    }
                case "zh":
                    {
                        lg = "zh";
                        break;
                    }
            }
        }
        BindInit(lg);


        bindClass();

        //string langTxt = 
        //bindClass();
    }



    //綁定語系資料
    public void BindInit(string lg)
    {
        if (lg.Equals("zh"))
            LgType = LangType.zh;
        else if (lg.Equals("en"))
            LgType = LangType.en;

        txt_search.Attributes.Add("placeholder", LangClass.GetMsgInfo("M047", LgType));
        if (Request.QueryString["stxt"] != null)
        {
            txt_search.Text = Request.QueryString["stxt"].ToString();
        }
        string lgUrl = "https://" + Request.Url.Authority + Request.Url.AbsolutePath + PbClass.GetPageQueryString(new List<string> { "lg" });

        StringBuilder lgTxt = new StringBuilder();
        switch (lg)
        {
            case "zh":
                {

                    lgTxt.Append("<li style=\"width:100%\"><a id=\"zh\" class=\"am-active\">中文版</a></li>");
                    lgTxt.Append("<li style=\"width:100%\"><a href=\"" + lgUrl + "&lg=en\" id=\"en\">English</a></li>");

                    break;
                }
            case "en":
                {
                    lgTxt.Append("<li style=\"width:100%\"><a id=\"zh\" href=\"" + lgUrl + "&lg=zh\">中文版</a></li>");
                    lgTxt.Append("<li style=\"width:100%\"><a id=\"en\" class=\"am-active\">English</a></li>");

                    break;
                }
        }
        lit_lg_link.Text = lgTxt.ToString();
        Session["LG"] = LgType;
        //ViewState["LG"] = LgType;
        Cookie.Set("LG", LgType.ToString());


        ScriptManager.RegisterStartupScript(Page, typeof(Page), "change", "ChangLg('" + LgType.ToString() + "');", true);

    }
    private void bindView()
    {
        string str = UserViewFac.GetDeskTopView(HttpContext.Current.Request.AnonymousID.ToString());
        lit_view.Text = str;
    }
    private void InitAD()
    {
        //DataTable msgDT = new DataTable();
        //if (CacheHelper.GetCache("PNEWS") == null)
        //{
        //    msgDT = CFacade.GetFac.GetFFac.getAdList(new List<string> { "PN01", "PN02", "PP01" });
        //    CacheHelper.SetCache("PNEWS", msgDT, TimeSpan.FromMinutes(30));
        //}
        //else
        //{
        //    msgDT = CacheHelper.GetCache("PNEWS") as DataTable;
        //}

        //if (msgDT.Rows.Count > 0)
        //{
        //彈跳廣告處理
        //if (msgDT.Rows.Count > 0)
        //{
        //DataRow[] POPDR = msgDT.Select("F02='PP01'");
        //if (POPDR.Length > 0)
        //{
        //    lit_pop_msg.Text = "<a href='" + POPDR[0]["F04"].ToString() + "' targer='_blank'>" +
        //        "<img alt='" + POPDR[0]["F05"].ToString() + "' src='../images/adimgs/" + POPDR[0]["F14"].ToString() + "' style='width: 100%;' /> " +
        //        "</a>";
        //    if (Session["fopen"] == null)
        //    {
        //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "pop", "openModal('popmsg');", true);
        //    }
        //    Session["fopen"] = true;
        //}
        //bool popup = false;

        //DataRow[] MSGDR = msgDT.Select("F02='PN01'");
        //if (MSGDR.Length > 0)
        //{
        //    popup = true;
        //    foreach (DataRow dr in MSGDR)
        //    {
        //        lit_news.Text += "<a href='" + dr["F04"].ToString() + "' style='color:black'>" + dr["F03"].ToString() + "</a> <br/><br/>";
        //    }
        //}

        //DataRow[] MSGDR2 = msgDT.Select("F02='PN02'");
        //if (MSGDR2.Length > 0)
        //{
        //    popup = true;
        //    lit_img.Text = "<a href='" + MSGDR2[0]["F04"].ToString() + "'><img src='../images/adimgs/" + MSGDR2[0]["F14"].ToString() + "' /></a>";
        //}
        //if (Session["open"] == null)
        //{
        //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "open", "firstTimeNews();", true);
        //}
        //else
        //{
        //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "open", "newsImgOnload();", true);
        //}
        //Session["open"] = true;
        //}
        //}
    }

    private void SetLgType()
    {
        pZhDes.Visible = false;
        pEnDes.Visible = false;
        StringBuilder sb = new StringBuilder();
        switch (LgType)
        {
            case LangType.en:
                {
                    pEnDes.Visible = true;
                    sb.Append("$('.table-style').css('width','320px');");
                    break;
                }
            case LangType.zh:
                {
                    pZhDes.Visible = true;
                    sb.Append("$('.table-style').css('width','230px');");
                    break;
                }
        }

        ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "set", sb.ToString(), true);

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Request.Url.Scheme.Equals("http://"))
        //{
        //    if (Request.Url.Host.ToString().IndexOf("www") > 0)
        //    {
        //        Response.Redirect("https://" + Request.Url.Host + Request.Url.PathAndQuery);
        //    }
        //    else
        //    {
        //        Response.Redirect("https://www." + Request.Url.Host + Request.Url.PathAndQuery);
        //    }
        //}

        //if (Session["popup"] == null)
        //{
        //    ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "pop", "popEvent();", true);
        //}
        //Session["popup"] = true;

        //if (Session["fopen"] == null)
        //{
        //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "openxms", "openModal('adpop');", true);
        //}
        //Session["fopen"] = DateTime.Now.ToString("yyyyMMddHHmmss");

        //ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "loaddefault", "load();", true);
        if (!IsPostBack)
        {

            AddPreOrderProduct();
            SetLgType();





            //if (Session["open"] == null)
            //{
            //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "open", "firstTimeNews();", true);
            //    Session["open"] = true;
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "open", "newsImgOnload();", true);
            //}

            InitAD();
            //登入狀態            
            StringBuilder topMenuTxt = new StringBuilder();
            StringBuilder footerTxt = new StringBuilder();
            if (Session["A01"] != null)
            {

                footerTxt.Append("<li><a href='memberorder.aspx';'><span class='txtRsc' data-id='foot020'>訂單管理</span></a></li>");
                //footerTxt.Append("<li><a href='memberborder.aspx';>Agent Order&nbsp;&nbsp;代購單管理</a></li>");
                footerTxt.Append("<li><a href='membertrack.aspx';'><span class='txtRsc' data-id='foot021'>查詢貨態</span></a></li>");
                footerTxt.Append("<li><a href='membergold.aspx';'><span class='txtRsc' data-id='foot022'>購物金查詢</span></a> </li>");
                footerTxt.Append("<li><a href='membercoupon.aspx';'><span class='txtRsc' data-id='foot023'>折扣券查詢</span></a></li>");

                topMenuTxt.Append("<li class='am-fl header-shoppingcart-item'>");
                topMenuTxt.Append("<i class='am-icon-user'></i>&nbsp;");
                topMenuTxt.Append("<a href='memberinfo.aspx'><span class='txtRsc' data-id='hal001'>會員中心</span></a>");
                topMenuTxt.Append("</li>");
                topMenuTxt.Append("<li class='am-fl header-shoppingcart-item'>");
                topMenuTxt.Append("<i class='am-icon-list-alt'></i>&nbsp;");
                topMenuTxt.Append("<a href='memberorder.aspx'><span class='txtRsc' data-id='hal002'>我的訂單</span></a>");
                topMenuTxt.Append("</li>");
                topMenuTxt.Append("<li class='am-fl header-shoppingcart-item'>");
                topMenuTxt.Append("<i class='am-icon-star-o'></i>&nbsp;");
                topMenuTxt.Append("<a href='memberhacoin.aspx'><span class='txtRsc' data-id='hal003'>我的Ha幣</span></a>");
                topMenuTxt.Append("</li>");
                topMenuTxt.Append("<li class='am-fl header-shoppingcart-item'>");
                topMenuTxt.Append("<a href='loginout.aspx'><i class='am-icon-user-times'></i>&nbsp;<span class='txtRsc' data-id='hal004'>登出</span></a>");
                topMenuTxt.Append("</li>");
            }
            else //未登入
            {
                footerTxt.Append("<li><a onclick=\"doLogin('memberorder.aspx');\"><span class='txtRsc' data-id='foot020'>訂單管理</span></a></li>");
                //footerTxt.Append("<li><a onclick=\"doLogin('memberborder.aspx');\";>Agent Order&nbsp;&nbsp;代購單管理</a></li>");
                footerTxt.Append("<li><a onclick=\"doLogin('membertrack.aspx');\"><span class='txtRsc' data-id='foot021'>查詢貨態</span></a></li>");
                footerTxt.Append("<li><a onclick=\"doLogin('membergold.aspx');\"><span class='txtRsc' data-id='foot022'>購物金查詢</span></a></li>");
                footerTxt.Append("<li><a onclick=\"doLogin('membercoupon.aspx');\"><span class='txtRsc' data-id='foot023'>折扣券查詢</span></a></li>");
                topMenuTxt.Append("<li class='am-fl header-shoppingcart-item'>");
                topMenuTxt.Append("<a onclick='doLogin();'><i class='am-icon-user'></i>&nbsp;");
                topMenuTxt.Append("<span class='txtRsc' data-id='hbl001'>會員登入</span></a>");
                topMenuTxt.Append("</li>");
                topMenuTxt.Append("<li class='am-fl header-shoppingcart-item'>");
                topMenuTxt.Append("<a href='join.aspx'> <i class='am-icon-plus'></i>&nbsp;");
                topMenuTxt.Append("<span class='txtRsc' data-id='hbl002'>會員註冊</span></a>");
                topMenuTxt.Append("</li>");

            }
            lit_top_menu.Text = topMenuTxt.ToString();
            lit_footer_order.Text = footerTxt.ToString();

            //if (Request.QueryString["session_id"] != null)
            //{
            //    HttpCookie cookie = new HttpCookie("TID");
            //    cookie.Value = Server.UrlEncode(Request.QueryString["session_id"].ToString());
            //    cookie.Expires = DateTime.Now.AddDays(30);
            //    Response.Cookies.Add(cookie);
            //}



            //if (Request.QueryString["tcode"] != null || Request.QueryString["ad_name"] != null)
            //{
            //    //確認是否有下追蹤碼
            //    string tcode = "";
            //    if (Request.QueryString["ad_name"] != null)
            //    {
            //        tcode = Request.QueryString["ad_name"].ToString();
            //    }
            //    if (Request.QueryString["tcode"] != null)
            //    {
            //        tcode = Request.QueryString["tcode"].ToString();
            //    }
            //    bool havaCode = CFacade.GetFac.GetTCODEFac.checkTCODE(tcode);
            //    if (havaCode)
            //    {
            //        HttpCookie cookie = new HttpCookie("TCODE");
            //        cookie.Value = Server.UrlEncode(tcode);
            //        cookie.Expires = DateTime.Now.AddDays(30);
            //        Response.Cookies.Add(cookie);
            //        CFacade.GetFac.GetTCODEFac.AddTCodeCount(tcode);
            //    }
            //}
            bindCart();
            bindView();

        }
    }
    //private void BindMenuBrands()
    //{
    //    DataTable dt = CFacade.UserFac.GetMenuBrandsList();
    //    if (dt.Rows.Count > 0)
    //    {
    //        string stxt = "<ul>";
    //        foreach (DataRow dr in dt.Rows)
    //        {
    //            stxt += "<li><a href=\"brands.aspx?bid=" + dr["B01"].ToString() + "\">" + dr["BA02"].ToString() + "</a></li>";
    //        }
    //        stxt += "</ul>";
    //        //lit_brandClass.Text = stxt;
    //    }
    //}
    public DataTable CartDT = new DataTable();
    public void bindCart()
    {
        lnk_cart1.Enabled = false;
        //lnk_cart2.Enabled = false;
        lit_shop_cart_count.Text = "0";
        //lit_group_cart_count.Text = "0";
        lit_shop_total_price.Text = "0.00";
        //lit_group_total_price.Text = "0.00";
        //一般購物車
        CART _cart = new CART();
        //if (Session["A01"] != null)
        //{
        //    _cart.DoMergeCart(Convert.ToInt32(Session["A01"].ToString()), 1);
        //}
        if (Request.Cookies["CARTID"] != null)
        {
            CartDT = _cart.GetSimpleCartInfo(Request.Cookies["CARTID"].Value.ToString(), 1, LgType);

            rp_shop_min_cart.DataSource = CartDT;
            rp_shop_min_cart.DataBind();
            if (CartDT.Rows.Count > 0)
            {
                var count = CartDT.AsEnumerable().Sum(x => x.Field<int>("CTD06"));
                lit_shop_cart_count.Text = count.ToString();
                //var sum = CartDT.AsEnumerable().Sum(x => Math.Round(x.Field<int>("CTD06") * (x.Field<decimal>("WPA06") / 7.6m), 1, MidpointRounding.AwayFromZero)).ToString("#0.00");
                var sum = 0;
                lit_shop_total_price.Text = sum.ToString();
                lnk_cart1.Enabled = true;

                string ematicCart = Ematic.Cart(CartDT, decimal.Parse(Application["mycashrate"].ToString()));
                litCartCount.Text = count.ToString();

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "ccmsg", ematicCart, true);
            }

        }
        //if (Request.Cookies["GCARTID"] != null)
        //{
        //    DataTable GDT = CFacade.CartFac.GetCartDT(Request.Cookies["GCARTID"].Value.ToString(), 3);
        //    rp_group_cart.DataSource = GDT;
        //    rp_group_cart.DataBind();
        //    if (GDT.Rows.Count > 0)
        //    {
        //        var count = GDT.AsEnumerable().Sum(x => x.Field<int>("CTD06"));
        //        lit_group_cart_count.Text = count.ToString();
        //        var sum = GDT.AsEnumerable().Sum(x => Math.Round(x.Field<int>("CTD06") * (x.Field<int>("WPA06")) / 7.6, 2));
        //        lit_group_total_price.Text = sum.ToString();
        //        lnk_cart2.Enabled = true;
        //    }

        //}
        up_min_shopcart.Update();

    }
    protected void btn_go_cart_Click(object sender, EventArgs e)
    {
        ViewState["url"] = "cart1.aspx?ctype=1";
        if (Session["A01"] != null)
        {
            Response.Redirect("cart1.aspx?ctype=1");
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('cart1.aspx?ctype=1');", true);
        }

    }
    protected void btn_go_cart1_Click(object sender, EventArgs e)
    {
        ViewState["url"] = "cart1.aspx?ctype=3";
        if (Session["A01"] != null)
        {
            Response.Redirect("cart1.aspx?ctype=3");
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('cart1.aspx?ctype=3');", true);
        }

    }
    protected void rp_cart_list2_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager scriptMan = ScriptManager.GetCurrent(this.Page);
        LinkButton btn = e.Item.FindControl("lnk_del2") as LinkButton;
        if (btn != null)
        {
            btn.Click += lnk_del2_Click;
            scriptMan.RegisterAsyncPostBackControl(btn);
        }
    }

    protected void lnk_del2_Click(object sender, EventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        string _CTD03 = ((HiddenField)ri.FindControl("hf_CTD03")).Value;
        int _CTD01 = Convert.ToInt32(((HiddenField)ri.FindControl("hf_CTD01")).Value);
        string _CTM01 = ((HiddenField)ri.FindControl("hf_CTM01")).Value;
        CFacade.CartFac.DelCartItem(_CTM01, _CTD01, _CTD03);
        bindCart();
    }
    protected void rp_cart_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager scriptMan = ScriptManager.GetCurrent(this.Page);
        LinkButton btn = e.Item.FindControl("lnk_del") as LinkButton;
        if (btn != null)
        {
            btn.Click += lnk_del_Click;
            scriptMan.RegisterAsyncPostBackControl(btn);
        }
    }
    protected void lnk_del_Click(object sender, EventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        string _CTD03 = ((HiddenField)ri.FindControl("hf_CTD03")).Value;
        int _CTD01 = Convert.ToInt32(((HiddenField)ri.FindControl("hf_CTD01")).Value);
        string _CTM01 = ((HiddenField)ri.FindControl("hf_CTM01")).Value;
        CFacade.CartFac.DelCartItem(_CTM01, _CTD01, _CTD03);
        bindCart();
    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {

        string error = "";
        if (txt_account.Text.Trim().Equals(""))
        {
            error += "Please enter your Account <br/>";
        }
        if (txt_password.Text.Trim().Equals(""))
        {
            error += "Please enter your password <br/>";
        }
        if (error == "")
        {
            string A02 = txt_account.Text.Trim();
            string A03 = PbClass.desEncryptBase64(txt_password.Text.Trim());
            var userFac = new AFactory();
            userFac.UserLogin(A02, A03, LgType);
            if (userFac.LoginMsg.Equals("OK"))
            {
                //登入成功
                
                string _url = "member_card.aspx";
                if (rurl.Value != "")
                {
                    _url = rurl.Value;
                }
                ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "loginmsg", "location.href='" + _url + "';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "loginmsg", "alert('" + userFac.LoginMsg + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(upjoin, typeof(UpdatePanel), "error", "alert('" + error + "');", true);
        }
    }


    private void GetClassDt()
    {
        ClassDT = new DataTable();
        SetClassCache();
        if (ClassDT.Rows.Count <= 0)
        {
            CacheHelper.RemoveAllCache("EnClassDT");
            CacheHelper.RemoveAllCache("ZhClassDT");
            GetClassDt();
        }
    }
    private void SetClassCache()
    {
        if (LgType == LangType.en)
        {
            if (CacheHelper.GetCache("EnClassDT") == null)
            {
                ClassDT = ClassBL.GetHwClass(lgType: LgType);
                CacheHelper.SetCache("EnClassDT", ClassDT, TimeSpan.FromMinutes(30));
            }
            else
            {
                ClassDT = (DataTable)Cache["EnClassDT"];
            }
        }
        else if (LgType == LangType.zh)
        {
            if (CacheHelper.GetCache("ZhClassDT") == null)
            {
                ClassDT = ClassBL.GetHwClass(lgType: LgType);
                CacheHelper.SetCache("ZhClassDT", ClassDT, TimeSpan.FromMinutes(30));
            }
            else
            {
                ClassDT = (DataTable)Cache["ZhClassDT"];
            }
        }
    }
    private void bindClass()
    {
        //DataTable CDT = new DataTable();

        GetClassDt();
        StringBuilder sb = new StringBuilder();
        ClassDT.DefaultView.RowFilter = "PID='0'";
        DataTable pdt = ClassDT.DefaultView.ToTable();
        foreach (DataRow dr in pdt.Rows)
        {
            if (LgType.Equals(LangType.zh))
                sb.Append("<li class=\"header-menuitem am-fl\" id=\"h-" + dr["C01"].ToString() + "\">");
            else if (LgType.Equals(LangType.en))
                sb.Append("<li class=\"header-menuitem am-fl en-class\" id=\"h-" + dr["C01"].ToString() + "\">");
            sb.Append("<a href=\"market.aspx?cid=" + dr["C01"].ToString() + "\">");
            sb.Append("<img src=\"../images/icon/m1/" + dr["C11"].ToString() + "\">" + dr["C06"].ToString());
            sb.Append("</a>");
            sb.Append("</li>");
        }
        lit_product_class.Text = sb.ToString();

    }


    protected void lnk_search_Click(object sender, EventArgs e)
    {
        if (txt_search.Text.Trim().Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(up_search, typeof(UpdatePanel), "msg", "alert('Please enter search key');", true);
        }
        else
        {
            Response.Redirect("search.aspx?stxt=" + txt_search.Text.Trim());
        }

    }

    protected void btn_go_cart2_Click(object sender, EventArgs e)
    {
        ViewState["url"] = "cart1.aspx";
        if (Session["A01"] != null)
        {
            Response.Redirect("cart1.aspx?ctype=2");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "doLogin('cart1.aspx?ctype=2');", true);
        }
    }

    protected void cartCheckoutBtn_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            Response.Redirect("cart1.aspx?ctype=1");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "doLogin('cart1.aspx?ctype=1');", true);
        }
    }
    protected void cartCheckoutBtn_Click1(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            Response.Redirect("cart1.aspx?ctype=3");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "doLogin('cart1.aspx?ctype=3');", true);
        }
    }

    protected void btn_text_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "bb", "blockMsg('交易處理中');", true);
    }
}
