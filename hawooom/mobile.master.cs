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

public partial class mobile : System.Web.UI.MasterPage
{
    private void AddPreOrderProduct()
    {
        if (Session["A01"] != null)
        {
            DateTime stime = Convert.ToDateTime(ConfigurationManager.AppSettings["preStime"].ToString());
            DateTime etime = Convert.ToDateTime(ConfigurationManager.AppSettings["preEtime"].ToString());
            if (DateTime.Now >= stime && DateTime.Now <= etime)
            {
                PreOrderProductBL preBL = new PreOrderProductBL(Convert.ToInt32(Session["A01"].ToString()));
                preBL.DoTrans2Cart();
            }
        }
    }

    public DateTime eventTime = new DateTime(2018, 11, 12, 00, 00, 00);
    public LangType LgType = LangType.zh;
    public DataTable ClassDT;
    public string lgUrl = "";
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
        //string schemeTxt = Request.Url.Scheme.ToString();
        //if (schemeTxt.Equals("http"))
        //{
        //    Response.Redirect(Request.Url.AbsoluteUri.Replace("http", "https"));
        //}

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
        BindClass(); //綁定類別資訊

        if (!IsPostBack)
        {
            AddPreOrderProduct();
        }
    }
    private void BindShopClass(int cid)
    {
        int ocid = cid;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT CID ";
        if (LgType.Equals(LangType.en))
        {
            cmd.CommandText += ",(CASE WHEN ISNULL(CEnName,'')='' THEN CName ELSE CEnName END) as C06 ";
        }
        else
        {
            cmd.CommandText += ",CName as C06 ";
        }
        cmd.CommandText += "FROM GetMainClass(@CID) ";
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, cid));
        DataTable mDt = SqlDbmanager.queryBySql(cmd);
        if (mDt.Rows.Count > 0)
        {
            cid = Convert.ToInt32(mDt.Rows[0]["CID"].ToString());

            int classCount = 0;
            int classLoc = 0;

            int ulWidth = 0;

            if (ClassDT.Rows.Count > 0)
            {
                ClassDT.DefaultView.RowFilter = "C01='" + cid + "'";
                DataTable SDT = ClassDT.DefaultView.ToTable();
                StringBuilder sb = new StringBuilder();

                ClassDT.DefaultView.RowFilter = "C03='" + cid + "'";
                DataTable CDT = ClassDT.DefaultView.ToTable();
                int mCount = (Convert.ToInt32(CDT.Rows.Count) + 1);
                sb.Append("<ul class='am-avg-" + mCount + "' id='class2'>");
                sb.Append("<li class='header-menuitem' style='padding:0px 5px' id='cs" + SDT.Rows[0]["C01"] + "'><a href='shop2.aspx?cid=" + SDT.Rows[0]["C01"] + "'>" + SDT.Rows[0]["C06"] + "</a></li>");
                foreach (DataRow dr in CDT.Rows)
                {
                    classCount += 1;
                    sb.Append("<li style='padding:0px 5px' id='cs" + dr["C01"] + "'");
                    if (dr["C01"].ToString().Equals(ocid.ToString()))
                    {
                        classLoc = classCount;
                        sb.Append("class='header-menuitem menu_select'>");
                    }
                    else
                    {
                        sb.Append("class='header-menuitem'>");
                    }

                    string name = dr["C06"].ToString();
                    sb.Append("<a href='shop2.aspx?cid=" + dr["C01"] + "'>" + name + "</a></li>");

                    ulWidth += ((Encoding.Default.GetBytes(name).Length * 8) + 10);
                    //ulWidth += ((name.Length * 14) + 10);
                }
                sb.Append("</ul>");
                litShopClass.Text = sb.ToString();
                //ulWidth = mCount * 70;


                rpCClass.DataSource = CDT;
                rpCClass.DataBind();

                hfClassName.Value = SDT.Rows[0]["C06"].ToString();
            }


            string mscript = "$('#mlist1').css('display','none');";
            mscript += "$('#rmenu1').css('display','none');";
            mscript += "$('#mlist2').css('display','block');";
            mscript += "$('#rmenu2').css('display','block');";
            mscript += "$('#class2').width(" + (ulWidth + 85) + ");";
            mscript += "$('#mlist2').scrollLeft($('#cs" + ocid + "').offset().left);";
            mscript += "$('#rmc" + ocid + "').addClass('rmenu_select');";
            ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "ms", mscript, true);
        }
    }
    public void BindInit(string lg)
    {
        lgUrl = "//" + Request.Url.Authority + Request.Url.AbsolutePath + PbClass.GetPageQueryString(new List<string> { "lg" });

        if (lg.Equals("zh"))
        {
            lgUrl += "&lg=en";
            LgType = LangType.zh;
        }
        else if (lg.Equals("en"))
        {
            lgUrl += "&lg=zh";
            LgType = LangType.en;
        }
        Session["LG"] = LgType.ToString();
        Cookie.Set("LG", LgType.ToString());
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "change", "ChangLg('" + LgType.ToString() + "');", true);
    }

    private void BindAD()
    {
        FFactory fFac = new FFactory();
        fFac.LG = LgType;
        fFac.AdIDS.Add("ME01");
        fFac.AdIDS.Add("ME02");
        fFac.AdIDS.Add("ME03");
        fFac.AdIDS.Add("ME04");
        var dt = fFac.GetAD();
        if (dt.Rows.Count > 0)
        {
            dt.DefaultView.RowFilter = "F02='ME01'";
            dt.DefaultView.Sort = "F08 DESC";
            rpMEAD.DataSource = dt.DefaultView.ToTable();
            rpMEAD.DataBind();

            StringBuilder sb = new StringBuilder();

            var selRow = ADSelRow(dt, "ME02");
            if (selRow != null)
            {
                sb.Append("$('#ME02').attr('href','" + selRow["F04"] + "');");
                sb.Append("$('#ME02_2').attr('href','" + selRow["F04"] + "');");
            }
           

            selRow = ADSelRow(dt, "ME03");
            if (selRow != null)
                sb.Append("$('#ME03').attr('href','" + selRow["F04"].ToString() + "');");

            selRow = ADSelRow(dt, "ME04");
            if (selRow != null)
                sb.Append("$('#ME04').attr('href','" + selRow["F04"].ToString() + "');");

            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setEventUrl", sb.ToString(), true);
        }
    }

    private DataRow ADSelRow(DataTable dt, string keyVal)
    {
        var selRow = dt.AsEnumerable().FirstOrDefault(row => row.Field<string>("F02").Equals(keyVal));
        return selRow;
    }

    //private void InitAD()
    //{
    //    DataTable msgDT = new DataTable();
    //    if (CacheHelper.GetCache("MNEWS") == null)
    //    {
    //        msgDT = CFacade.GetFac.GetFFac.getAdList(new List<string> { "CN01", "CP01" });
    //        CacheHelper.SetCache("MNEWS", msgDT, TimeSpan.FromMinutes(30));
    //    }
    //    else
    //    {
    //        msgDT = CacheHelper.GetCache("MNEWS") as DataTable;
    //    }

    //    if (msgDT.Rows.Count > 0)
    //    {
    //        //彈跳廣告處理
    //        if (msgDT.Rows.Count > 0)
    //        {
    //            DataRow[] POPDR = msgDT.Select("F02='CP01'");
    //            if (POPDR.Length > 0)
    //            {
    //                lit_pop_msg.Text = "<a href='" + POPDR[0]["F04"].ToString() + "' targer='_blank'>" +
    //                    "<img alt='" + POPDR[0]["F05"].ToString() + "' src='../images/adimgs/" + POPDR[0]["F14"].ToString() + "' style='width: 100%;' /> " +
    //                    "</a>";
    //                if (Session["fopen"] == null)
    //                {
    //                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "pop", "openModal('popmsg');", true);
    //                }
    //                Session["fopen"] = true;
    //            }

    //            DataRow[] MSGDR = msgDT.Select("F02='CN01'");
    //            if (MSGDR.Length > 0)
    //            {
    //                lit_news.Text = "<a href='" + MSGDR[0]["F04"].ToString() + "'>" + MSGDR[0]["F03"].ToString() + "</a>";
    //                if (Session["news"] == null)
    //                {
    //                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "new", "ShowNews()", true);
    //                }
    //                Session["news"] = true;
    //            }
    //        }
    //    }
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["fopen"] == null)
        //{
        //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "openxms", "openModal('adpop');", true);
        //}
        //Session["fopen"] = DateTime.Now.ToString("yyyyMMddHHmmss");
        if (!IsPostBack)
        {
            
            //左側活動列表
            BindAD();

           
            bindCartCount();
            //InitAD();

            Application["mycashrate"] = 7.6;


            if (Request.QueryString["session_id"] != null)
            {
                HttpCookie cookie = new HttpCookie("TID");
                cookie.Value = Server.UrlEncode(Request.QueryString["session_id"].ToString());
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cookie);
            }



            login_show.Visible = false;
            no_login_show.Visible = false;
            if (Session["A01"] != null)
            {
                login_show.Visible = true;
                // lit_login_state.Text = "<a href=\"memberinfo.aspx\">會員中心</a>";
            }
            else
            {
                no_login_show.Visible = true;
                //lit_login_state.Text = "<a href=\"login.aspx\">登入</a>";
            }


            string pageStr = Request.Url.AbsolutePath;
            if (pageStr.Contains("shop.aspx") || pageStr.Contains("shop2.aspx"))
            {
                if (Request.QueryString["cid"] != null)
                {
                    //綁定商品明細
                    BindShopClass(Convert.ToInt32(Request.QueryString["cid"].ToString()));
                }

            }
        }

    }
    public void bindCartCount()
    {
        string cartNum = "0";
        if (Request.Cookies["CARTID"] != null)
        {
            cartNum = CFacade.CartFac.GetCartCount(Request.Cookies["CARTID"].Value.ToString()).ToString();
        }
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "setbuy", "setCartNum(" + cartNum + ");", true);


    }

    protected void lnk_search_Click(object sender, EventArgs e)
    {
        //搜尋商品
        //if (txt_search.Text.Trim().Equals(""))
        //{
        //    ScriptManager.RegisterStartupScript(up_search_panel, typeof(UpdatePanel), "msg", "alert('請輸入搜尋的文字');", true);
        //}
        //else
        //{
        //    Response.Redirect("search.aspx?stxt=" + txt_search.Text.Trim());
        //}

    }
    protected void lnk_go_desktop_Click(object sender, EventArgs e)
    {
        Session["desktop"] = true;
        Response.Redirect("../user/index.aspx");
    }
    private void BindClass(int? cid = null)
    {
        ClassDT = new DataTable();
        if (LgType == LangType.en)
        {
            if (CacheHelper.GetCache("EnClassDT") == null)
            {
                //CacheHelper.SetCache("EnClassDT", CFacade.GetFac.GetCFac.GetAllClass(1, LgType), TimeSpan.FromMinutes(30));
                CacheHelper.SetCache("EnClassDT", ClassBL.GetHwClass(lgType: LgType), TimeSpan.FromMinutes(30));
            }
            ClassDT = (DataTable)Cache["EnClassDT"];
        }
        else if (LgType == LangType.zh)
        {
            if (CacheHelper.GetCache("ZhClassDT") == null)
            {
                //CacheHelper.SetCache("ZhClassDT", CFacade.GetFac.GetCFac.GetAllClass(1, LgType), TimeSpan.FromMinutes(30));
                CacheHelper.SetCache("ZhClassDT", ClassBL.GetHwClass(lgType: LgType), TimeSpan.FromMinutes(30));
            }
            ClassDT = (DataTable)Cache["ZhClassDT"];
        }

        StringBuilder sb = new StringBuilder();
        ClassDT.DefaultView.RowFilter = "PID='0'";
        DataTable pdt = ClassDT.DefaultView.ToTable();
        foreach (DataRow dr in pdt.Rows)
        {
            //上方類別
            if (dr["C01"].ToString().Equals(cid))
            {
                sb.Append("<li class=\"header-menuitem\" style=\"background:#FF7C81\">");
            }
            else
            {
                sb.Append("<li class=\"header-menuitem\">");
            }
            sb.Append("<a href=\"shop.aspx?cid=" + dr["C01"].ToString() + "\">");
            //sb.Append("<img src=\"images/" + dr["C12"].ToString() + "\">" + dr["C06"].ToString());
            sb.Append("<img src=\"../images/icon/m1/" + dr["C12"].ToString() + "\">" + dr["C06"].ToString());
            sb.Append("</a>");
            sb.Append("</li>");

        }
        lit_top_class_menu.Text = sb.ToString();
        rpRightClass.DataSource = pdt;
        rpRightClass.DataBind();
        //lit_right_menu.Text = sb2.ToString();
    }
}

