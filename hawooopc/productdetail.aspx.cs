using hawooo;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Linq;

public partial class user_productdetail : System.Web.UI.Page
{

    private LangType LgType = new LangType();

    public DataTable _classDT
    {
        get { return _classDt; }
        set { _classDt = value; }
    }
    private DataTable _couponDt; //折扣券
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LgType = (this.Master as user_user).LgType;

            ennote.Visible = false;
            zhnote.Visible = false;
            switch (LgType)
            {
                case LangType.en:
                    {
                        ennote.Visible = true;
                        break;
                    }
                case LangType.zh:
                    {
                        zhnote.Visible = true;
                        break;
                    }
            }

            if (Request.QueryString["id"] != null)
            {
                int i;
                if (int.TryParse(Request.QueryString["id"].ToString(), out i))
                {
                    bool isMobile = PbClass.isMobile(Request.UserAgent);
                    if (isMobile)
                    {
                        string qstr = Request.Url.Query.ToString();
                        Response.Redirect("../mobile/product.aspx" + qstr);
                    }

                    int pid = Convert.ToInt32(Request.QueryString["id"].ToString());
                    CFacade.GetFac.GetUserViewFac.UpUserView(pid); //增加使用者瀏覽記錄

                    BindDt(pid); //綁定商品資訊

                    DoTrack(pid); //綁定追蹤

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
    private void DoTrack(int pid)
    {
        CFacade.GetFac.GetUserViewFac.UpUserView(pid); //增加使用者瀏覽記錄

        string trackStr = "fbq('track', 'ViewContent', { content_ids: ['" + pid + "'],  content_type: 'product',  value: " + lab_price.Text + ",  currency: 'MYR'});";

        trackStr += GoogleTag.TagPageView(pid.ToString());


        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), trackStr, true);

        //criteo
        //string email = "";
        //if (Session["A08"] != null)
        //{
        //    email = Session["A08"].ToString();
        //}
        //string ctxt = criteo.ProductTag(email, pid);
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "criteodetail", ctxt, true);
    }

    //private void bindGiftList(int pid)
    //{
    //    DataTable dt = CFacade.GetFac.GetGiftEventFac.GetUserGiftEventList(pid);
    //    rp_gift_event.DataSource = dt;
    //    rp_gift_event.DataBind();
    //    if (dt.Rows.Count > 0)
    //        full_gift_event.Visible = true;
    //    else
    //        full_gift_event.Visible = false;
    //}
    private bool ExGiftGoods()
    {
        return false;
        //string sqlTxt = "SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=817 AND SPD02=@PID";
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = sqlTxt;
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, _pId));
        //var dt = SqlDbmanager.queryBySql(cmd);
        //if (dt.Rows.Count > 0)
        //{
        //    return true;
        //}
        //else
        //{
        //    return false;
        //}
    }
    private void BindGift()
    {
        if (!ExGiftGoods())
        {
            _giftDt.DefaultView.Sort = "GE02 ASC";
            rp_gift_event.DataSource = _giftDt;
            rp_gift_event.DataBind();

        }
        if (rp_gift_event.Items.Count > 0)
            full_gift_event.Visible = true;
        else
            full_gift_event.Visible = false;
    }

    private void BindBrand()
    {
        if (_mainDt.Rows.Count > 0)
        {
            //panel_brand.Visible = true;
            hf_brand.Value = _mainDt.Rows[0]["BA02"].ToString();
            if (!_mainDt.Rows[0]["BA02"].ToString().Equals(""))
                lit_B01.Text = "<h5>Brand：<a href='brands.aspx?bid=" + _mainDt.Rows[0]["B01"] + "'>" + _mainDt.Rows[0]["BA02"] +
                               "</a></h5>";
            else
                lit_B01.Text = "";
        }
    }

    //private void bindBrand(int PID)
    //{
    //    string strSql = "SELECT B.B01,BA02 FROM B INNER JOIN BA ON BA.B01=B.B01 WHERE BA09=1 AND B.B01=(SELECT B01 FROM WP WHERE WP01=" + PID + ")";
    //    DataTable dt = SqlDbmanager.queryBySql(strSql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        //panel_brand.Visible = true;
    //        hf_brand.Value = dt.Rows[0]["BA02"].ToString();
    //        lit_B01.Text = "<h5>品牌：<a href='brands.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "'>" + dt.Rows[0]["BA02"].ToString() + "</a></h5>";
    //    }
    //    else
    //    {
    //        lit_B01.Text = "";
    //        //panel_brand.Visible = false;
    //    }
    //}
    private void setCommendFormat(Repeater rp)
    {
        for (int i = 0; i < rp.Items.Count; i++)
        {
            if (i == 0 || (i % 5) == 0)
            {
                ((Literal)rp.Items[i].FindControl("lit_rp_start")).Text =
                    @"<li class=""more-products-slider-page""><ul class=""am-avg-sm-5 p-0"">";
            }

            if ((i == rp.Items.Count - 1) || (i % (6) == 4))
            {
                ((Literal)rp.Items[i].FindControl("lit_rp_end")).Text = @"</ul></li>";
            }
        }
    }

    private void SetState()
    {
        guess_you_like.Visible = false;
        s_guess_you_like.Visible = false;
        full_gift_event.Visible = false;
        can_buy_time.Visible = false;

        tag2.Visible = false;
        //tag3.Visible = false;
        tag4.Visible = false;

        if (_mainDt.Rows.Count > 0)
        {
            //確認是否預購
            CheckPreOrder();



            //販售類型
            string _WP06 = _mainDt.Rows[0]["WP06"].ToString();



            if (_WP06.Equals("1")) //好物市集
            {
                full_gift_event.Visible = true;
                guess_you_like.Visible = true;
                s_guess_you_like.Visible = true;
                ((HiddenField)Master.FindControl("rurl")).Value = "cart1.aspx?ctype=1";
            }
            else if (_WP06.Equals("3")) //限時團購
            {
                can_buy_time.Visible = true;
                tag2.Visible = true;
                tag4.Visible = true;
                ((HiddenField)Master.FindControl("rurl")).Value = "cart1.aspx?ctype=3";
            }

            //台灣原價TAG
            //if (MDT.Rows[0]["C01"].ToString().Equals("1"))
            //{
            //    tag3.Visible = true;
            //}

            if (_mainDt.Rows[0]["WP17"].ToString().Equals("1"))
            {
                tag2.Visible = true;
            }

            //上下架狀態
            string _WP07 = _mainDt.Rows[0]["WP07"].ToString();
            if (_WP07.Equals("3"))
            {
                lnk_add.Visible = false;
                lnk_buy.Visible = false;
                lnk_preorder.Visible = false;
                lnk_soldout.Visible = true;
                lnk_soldout.Enabled = false;
            }
            else
            {
                if (DateTime.Now > Convert.ToDateTime(_mainDt.Rows[0]["WP10"].ToString()))
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert2url('This product is closed.','index.aspx');", true);
                }
            }
        }

    }

    private int _pId;
    private int _classId = 0;
    private int _brandType = 1;
    private string _brandId = String.Empty;
    private DataTable _mainDt;
    private DataTable _classDt;
    private DataTable _detailDt;
    private DataTable _giftDt;
    private decimal Saleprice = 0;
    private decimal Price = 0;

    private void GetDataSet()
    {
        ProductBL productBL = new ProductBL();
        productBL.PID = _pId;
        productBL.PLgType = ((user_user)this.Master).LgType;
        DataSet PDS = productBL.GetProductDetailInfo();
        if (PDS != null)
        {
            //商品主表資料
            _mainDt = PDS.Tables["WP"];
            if (_mainDt.Rows.Count > 0)
            {
                //明細資料
                _detailDt = PDS.Tables["WPA"];

                //類別資料
                _classDT = PDS.Tables["CLASS"];
                //贈品資料
                _giftDt = PDS.Tables["GIFT"];

                //折價券資料
                _couponDt = PDS.Tables["PCOUPON"];
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert2url('This product is closed.','index.aspx');", true);
            }
        }
    }

    private void BindProductInfo()
    {
        //lnk_add.Visible = false;
        //lnk_buy.Visible = false;
        DateTime ntime = DateTime.Now;
        DateTime stime = Convert.ToDateTime(_mainDt.Rows[0]["WP09"].ToString()); //開始時間
        DateTime etime = Convert.ToDateTime(_mainDt.Rows[0]["WP10"].ToString()); //結束時間

        if (ntime < stime || ntime > etime)
        {
            if (_mainDt.Rows[0]["WP54"].ToString() != "")
            {
                StringBuilder qStr = new StringBuilder();
                qStr.Append("id=" + _mainDt.Rows[0]["WP54"].ToString());
                foreach (String key in Request.QueryString.AllKeys)
                {
                    if (key != null)
                    {
                        if (key.ToLower().Contains("utm") || key.ToLower().Contains("fb"))
                        {
                            qStr.Append("&" + key + "=" + Request.QueryString[key]);
                        }
                    }
                }
                Response.Redirect("productdetail.aspx?" + qStr.ToString());
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert2url('This product is closed.','index.aspx');", true);
            }
        }

        if (DateTime.Now >= ntime && DateTime.Now <= etime)
        {
            double timecount = PbClass.DateDiff(ntime, etime);
            //lnk_add.Visible = true;
            //lnk_buy.Visible = true;
            if (_mainDt.Rows[0]["WP06"].ToString().Equals("3"))
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "time-event", "setTime(" + timecount + ");",
                    true);
        }


        //string WP36 = "1";
        //if (FieldCheck.isDateTime(_mainDt.Rows[0]["WP37"].ToString()) &&
        //    FieldCheck.isDateTime(_mainDt.Rows[0]["WP38"].ToString()))
        //{
        //    DateTime chkStartTime = DateTime.Parse(_mainDt.Rows[0]["WP37"].ToString());
        //    DateTime chkEndTime = DateTime.Parse(_mainDt.Rows[0]["WP38"].ToString());
        //    if (DateTime.Now >= chkStartTime && DateTime.Now <= chkEndTime)
        //    {
        //        WP36 = _mainDt.Rows[0]["WP36"].ToString();
        //    }
        //}
        if (_mainDt.Rows[0]["B31"].ToString().Equals("2"))
            _brandType = Convert.ToInt32(_mainDt.Rows[0]["B31"].ToString());
        _brandId = _mainDt.Rows[0]["B01"].ToString();


        Page.Title = Server.HtmlDecode(_mainDt.Rows[0]["WP02"].ToString());
        hf_WP01.Value = _mainDt.Rows[0]["WP01"].ToString();
        hf_WP28.Value = _mainDt.Rows[0]["WP28"].ToString();
        hf_WP29.Value = _mainDt.Rows[0]["WP29"].ToString();
        hf_WP31.Value = _mainDt.Rows[0]["WP31"].ToString();
        hf_WP32.Value = _mainDt.Rows[0]["WP32"].ToString();
        hf_WP08_1.Value = _mainDt.Rows[0]["WP08_1"].ToString();
        hf_WP06.Value = _mainDt.Rows[0]["WP06"].ToString();
        hf_WP36.Value = _mainDt.Rows[0]["WP36"].ToString();
        hf_WP37.Value = _mainDt.Rows[0]["WP37"].ToString();
        hf_WP38.Value = _mainDt.Rows[0]["WP38"].ToString();
        lit_WP33_WP34.Text = _mainDt.Rows[0]["WP34"].ToString();
        hf_WP43.Value = _mainDt.Rows[0]["WP43"].ToString();
        //1128新增
        hf_B01.Value = _mainDt.Rows[0]["B01"].ToString();
        hf_CNAME.Value = _classDT.Rows.Count > 0 ? _classDT.Rows[0]["C06"].ToString() : "";
        hf_PIMG.Value = _mainDt.Rows[0]["WP08_1"].ToString();
        string dpaImg1 = _mainDt.Rows[0]["DpaImg1"].ToString();
        if (dpaImg1.Equals(""))
        {
            dpaImg1 = hf_PIMG.Value;
        }
        hf_DpaImg1.Value = ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + dpaImg1;
        DateTime d = new DateTime();
        if (DateTime.TryParse(hf_WP31.Value, out d) && DateTime.TryParse(hf_WP32.Value, out d)) //判斷是否要顯示活動期間資訊
        {
            if (DateTime.Now >= Convert.ToDateTime(hf_WP31.Value) && DateTime.Now <= Convert.ToDateTime(hf_WP32.Value))
            {
                lit_WP33_WP34.Text = _mainDt.Rows[0]["WP33"].ToString();
            }
        }

        lit_WP02.Text = _mainDt.Rows[0]["WP02"].ToString();
        lit_WP21.Text = _mainDt.Rows[0]["WP21"].ToString();
        string fimgs = "";

        string imgPath = ConfigurationManager.AppSettings["imgUrl"].ToString();

        //string imgPath = "../images/webimgs/";
        if (!_mainDt.Rows[0]["WP08_1"].ToString().Equals(""))
            fimgs += "<li class=\"am-fl\"><img src=\"" + imgPath + "/webimgs/" + _mainDt.Rows[0]["WP08_1"].ToString() +
                     "\" class=\"am-img-thumbnail\" /></li>";
        if (!_mainDt.Rows[0]["WP08_2"].ToString().Equals(""))
            fimgs += "<li class=\"am-fl\"><img src=\"" + imgPath + "/webimgs/" + _mainDt.Rows[0]["WP08_2"].ToString() +
                     "\" class=\"am-img-thumbnail\" /></li>";
        if (!_mainDt.Rows[0]["WP08_3"].ToString().Equals(""))
            fimgs += "<li class=\"am-fl\"><img src=\"" + imgPath + "/webimgs/" + _mainDt.Rows[0]["WP08_3"].ToString() +
                     "\" class=\"am-img-thumbnail\" /></li>";
        if (!_mainDt.Rows[0]["WP08_4"].ToString().Equals(""))
            fimgs += "<li class=\"am-fl\"><img src=\"" + imgPath + "/webimgs/" + _mainDt.Rows[0]["WP08_4"].ToString() +
                     "\" class=\"am-img-thumbnail\" /></li>";
        if (!_mainDt.Rows[0]["WP08_5"].ToString().Equals(""))
            fimgs += "<li class=\"am-fl\"><img src=\"" + imgPath + "/webimgs/" + _mainDt.Rows[0]["WP08_5"].ToString() +
                     "\" class=\"am-img-thumbnail\" /></li>";
        lit_WP08_LIST.Text = fimgs; // 商品圖
                                    //lit_md_BrandName_ProductName.Text = "<span><span class=\"modal-content-productBrand\"></span>" + MDT.Rows[0]["WP02"].ToString() + "</span>";

        HtmlDocument doc = new HtmlDocument();
        doc.LoadHtml(_mainDt.Rows[0]["WP03"].ToString());
        var imgs = doc.DocumentNode.SelectNodes("//img");
        if (imgs != null)
        {
            foreach (var img in imgs)
            {
                if (img.Attributes["src"] != null)
                {
                    string oimgUrl = img.Attributes["src"].Value;
                    img.SetAttributeValue("src", oimgUrl.Replace("https://www.hawooo.com/images/", ConfigurationManager.AppSettings["imgUrl"].ToString()));
                }

            }

        }
        lit_WP03.Text = doc.DocumentNode.OuterHtml;
        if (_mainDt.Rows[0]["B35"].ToString() != "")
        {
            lit_WP03.Text += "<p style='width:100%;margin:auto;text-align:center;'><img src='" + ConfigurationManager.AppSettings["imgUrl"].ToString() + "bwarrant/" + _mainDt.Rows[0]["B35"].ToString() + "' width='80%' /></p>";
        }
        HaCoinInfo();
    }
    private void AppierProductEvent()
    {
        string jsonData = GetProductJsonData();
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "appier", "qg_product_viewed(" + jsonData + ");", true);
    }
    private void AppierAddCart(string eventName)
    {
        string jsonData = GetProductJsonData();
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "appier", "" + eventName + "(" + jsonData + ");", true);
    }
    private string GetProductJsonData()
    {
        string pId = hf_WP01.Value.ToString();
        string bId = hf_B01.Value.ToString();
        //string bname = _mainDt.Rows[0]["BA02"].ToString().Equals("") ? _mainDt.Rows[0]["B02"].ToString() : _mainDt.Rows[0]["BA02"].ToString();
        string bname = JsEscape(hf_brand.Value.ToString());
        string pname = JsEscape(lit_WP02.Text.ToString());
        string cname = JsEscape(hf_CNAME.Value.ToString());
        string imgUrl = ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + hf_PIMG.Value;
        string price = hf_PRICE.Value.ToString();
        string sprice = hf_SPRICE.Value.ToString();
        string url = JsEscape(Request.Url.AbsoluteUri);
        string jsonData = "'pId':'{0}'," +
                          "'bId':'{1}'," +
                          "'bname':'{2}'," +
                          "'pname':'{3}'," +
                          "'cname':'{4}'," +
                          "'imgUrl':'{5}'," +
                          "'price':'{6}'," +
                          "'sprice':'{7}'," +
                          "'url':'{8}' ";
        jsonData = "[{" + string.Format(jsonData, pId, bId, bname, pname, cname, imgUrl, price, sprice, url) + "}]";
        return jsonData;
    }
    private string JsEscape(string raw, bool inHtmlAttribute = false)
    {
        raw = raw.Replace("\r\n", "\\n").Replace("\r", "").Replace("\n", "\\n");
        if (inHtmlAttribute)
            raw = raw.Replace("\"", "&quot;").Replace("'", "\\'");
        else
            raw = raw.Replace("'", "\\'").Replace("\"", "\\\"");
        return raw;
    }
    private void HaCoinInfo()
    {
        MCard mcard = new MCard();
        string ctype = "W";
        if (Session["MCard"] != null)
        {
            ctype = Session["MCard"].ToString();
        }

        var icard = mcard.GetMCardObj(ctype);
        lit_coin_icon.Text = "<img src='" + icard.CardIconUrl + "'/>";
        lit_ha_coin.Text = icard.HacoinRebate.ToString();


    }
    private bool _preOrderState;
    private void CheckPreOrder()
    {
        eventNote.Visible = false;
        ProductBL productBL = new ProductBL();
        _preOrderState = productBL.CheckProductPreOrder(_pId);
        if (_preOrderState)
        {
            lnk_add.Visible = false;
            lnk_buy.Visible = false;
            lnk_preorder.Visible = true;
            foreach (DataRow dr in _detailDt.Rows)
            {
                dr["WPA06"] = Convert.ToDecimal(dr["WPA06"].ToString()) - Convert.ToDecimal(dr["WPA07"].ToString());
            }
        }

        if (_preOrderState == true)
        {

            string sqlTxt = "SELECT TOP 1 SPM08 FROM SPRODUCTSM INNER JOIN SPRODUCTSD ON SPD01=SPM01 WHERE SPD02=@PID AND SPM22=1 ORDER BY SPD01 DESC";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, _pId));
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            if (dt.Rows.Count > 0)
            {
                if (!dt.Rows[0]["SPM08"].ToString().Equals(""))
                {
                    eventNote.Visible = true;
                    litEventNote.Text = dt.Rows[0]["SPM08"].ToString();
                }

            }
        }
    }

    private void BindClass()
    {
        _classId = 0;
        if (_classDT.Rows.Count > 0)
        {
            if (_mainDt.Rows[0]["WP06"].ToString().Equals("1")) //好物市集
            {
                //lit_class.Text = "<li class=\"am-fl product-breadcrumb\"><a href=\"index.aspx\">好物市集</a><li>";
                DataRow SPDR = _classDT.Select("C03='0'")[0];
                lit_class.Text += "<li class=\"am-fl product-breadcrumb\"><a href=\"shop.aspx?cid=" +
                                  SPDR["C01"].ToString() + "\">" + SPDR["C06"].ToString() + "</a><li>,";
                DataRow[] SCDR = _classDT.Select("C03 <> '0' ");
                if (SCDR.Length > 0)
                {
                    _classId = int.Parse(SCDR[0]["C01"].ToString());
                }
            }
        }

        lit_class.Text = lit_class.Text.Trim(',');

    }

    private void BindOption()
    {
        rp_md_product_item.DataSource = _detailDt;
        rp_md_product_item.DataBind();
        DataRow sRow = _detailDt.Select("WPA06=MIN(WPA06)")[0];
        foreach (RepeaterItem item in rp_md_product_item.Items)
        {
            SetItemPrice(item);
        }

        if (_detailDt.Rows.Count == 1)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem",
                "selectOption('" + _detailDt.Rows[0]["WPA01"].ToString() + "');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem",
                "selectOption('" + sRow["WPA01"] + "');", true);
        }

        Price = PbClass.CashRate(sRow["WPA10"].ToString(), Application["mycashrate"].ToString());
        Saleprice = PbClass.CashRate(sRow["WPA06"].ToString(), Application["mycashrate"].ToString());
        lab_price.Text = Saleprice.ToString();
        if (Price > Saleprice)
        {
            //lab_discount_note.Text = "<p>" + (LgType.Equals(LangType.en) ? "Save" : "省") + (_原價 - _售價).ToString() + "</p>";
            lab_discount_note.Text = "";
            lab_origianl_price.Text =
                "(RM" + PbClass.CashRate(sRow["WPA10"].ToString(), Application["mycashrate"].ToString()).ToString() +
                ")";
        }
        else
        {
            lab_discount_note.Text = "";
            lab_origianl_price.Text = "";
            //lab_md_origianl_price.Visible = false;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "hiddenInfo",
                "$('#discount_info').attr('display','none');", true);
        }

        //1128新增
        hf_PRICE.Value = Price.ToString();
        hf_SPRICE.Value = Saleprice.ToString();
        BindComment(_mainDt.Rows[0]["GID"].ToString(), _detailDt.Rows[0]["WPA01"].ToString());

    }

    public void BindComment(string groupId, string optionId)
    {
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "comment", "GetHwComment('" + groupId + "','" + optionId + "');GetHwCommentRight('" + groupId + "','" + optionId + "');", true);

    }
    private void BindCommand()
    {

        WPFactory.SearchObj sObj = new WPFactory.SearchObj();
        sObj.ProductId = _pId;
        sObj.LgType = LgType;
        if (_brandType == 2)
            sObj.BrandId = Convert.ToInt32(_brandId);
        else
            sObj.ClassId = _classId;
        DataSet ds = CFacade.GetFac.GetWPFac.GetRecommendProducts(sObj); //推薦商品
        if (ds.Tables.Count > 0)
        {
            rp_commend1.DataSource = ds.Tables[0]; //同類型商品
            rp_commend1.DataBind();

            //設定ItemFormat
            setCommendFormat(rp_commend1);

            rp_commend2.DataSource = ds.Tables[1]; //最多人觀賞
            rp_commend2.DataBind();

            //設定ItemFormat
            setCommendFormat(rp_commend2);

        }
    }

    private void BindDt(int pId)
    {
        _pId = pId;

        GetDataSet(); //取得商品資訊

        if (_mainDt.Rows.Count > 0)
        {
            //設定狀態
            SetState();

            //綁定商品資訊
            BindProductInfo();

            //綁定品項資訊
            BindOption();

            //綁定類別資訊
            BindClass();

            //綁定品牌資訊
            BindBrand();

            //綁定贈品資訊
            BindGift();

            //丟商品追蹤碼資訊
            if (_mainDt.Rows[0]["WP07"].ToString() != "2")
            {
                DoProductTrack();
            }
            //推薦商品
            BindCommand();
            //商品規格
            BindProductSpec();
            BindImgTag();

            //綁定商品說明
            GoodsNote();

            //綁定商品折扣
            BindCouponInfo();

            //綁定自動折抵
            GetAuteDiscount(pId);

            AppierProductEvent();
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "errmsg", "locatio.href='shop.aspx';", true);
        }

    }

    private void DoProductTrack()
    {
        //Google product track
        GoogleProduct gp = new GoogleProduct();
        gp.brand = hf_brand.Value;
        gp.id = _mainDt.Rows[0]["WP01"].ToString();
        gp.name = _mainDt.Rows[0]["WP02"].ToString();
        gp.category = _mainDt.Rows[0]["WP43"].ToString();
        gp.price = Saleprice;
        gp.quantity = 1;
        gp.variant = "";
        string detailTrack = "";
        //string detailTrack = GoogleBL.GoogleDetailTrack(gp);

        //Ematic product track
        EmaticProp ematicProp = new EmaticProp();
        ematicProp.id = _mainDt.Rows[0]["WP01"].ToString();
        ematicProp.name = _mainDt.Rows[0]["WP02"].ToString();
        ematicProp.categoryId = _mainDt.Rows[0]["WP43"].ToString();
        ematicProp.transactionId = "";
        ematicProp.price = Price.ToString();
        ematicProp.misc1 = Saleprice.ToString();
        ematicProp.quantity = 1;
        ematicProp.brandName = "";
        ematicProp.desc = "";
        ematicProp.imageUrl = "https://www.hawooo.com/images/webimgs/" + _mainDt.Rows[0]["WP08_1"].ToString();
        ematicProp.link = "https://www.hawooo.com/user/productdetail.aspx?id=" + _mainDt.Rows[0]["WP01"].ToString();
        string ematicTrack = Ematic.ProductBrowse(ematicProp);

        ScriptManager.RegisterStartupScript(Page, typeof(Page), "productTrack", detailTrack + ematicTrack, true);
    }

    /// <summary>
    /// 設定價格
    /// </summary>
    /// <param name="WPA01">規格編號</param>
    /// 
    private void SetItemPrice(RepeaterItem item)
    {
        int i = 0;
        bool _是否可預購 = hf_WP28.Value.ToString().Equals("1") ? true : false;
        int _可買數量 = Convert.ToInt32(((HiddenField)item.FindControl("hf_SCOUNT")).Value);
        int _可買上限 = Convert.ToInt32(((HiddenField)item.FindControl("hf_WPA04")).Value);
        int _代購數量上限 = int.TryParse(hf_WP29.Value.ToString(), out i) ? Convert.ToInt32(hf_WP29.Value) : 0;
        if (_可買數量 >= 1)
        {
            int maxcount = _可買數量;
            if (_可買數量 > _可買上限)
            {
                maxcount = _可買上限;
            }

            ((HiddenField)item.FindControl("hf_SCOUNT")).Value = _可買數量.ToString();
            ((HiddenField)item.FindControl("hf_TYPE")).Value = "0";
        }
        else if (_可買數量 <= 0 && _是否可預購 == true)
        {
            ((Literal)item.FindControl("lit_md_productItem_name")).Text =
                ((Literal)item.FindControl("lit_md_productItem_name")).Text +
                (LgType.Equals(LangType.en) ? "(Pre sale)" : "(預購中)");
            ;
            ((HiddenField)item.FindControl("hf_SCOUNT")).Value = _代購數量上限.ToString();
            ((HiddenField)item.FindControl("hf_TYPE")).Value = "1";
        }
        else
        {
            ((HiddenField)item.FindControl("hf_TYPE")).Value = "-1";
            //(item.FindControl("li_option") as HtmlGenericControl).Style["background-color"] = "darkgray";
            ((HtmlGenericControl)item.FindControl("li_option")).Attributes.Add("class",
                "am-fl product-spec-item sold-out");
            ((HtmlGenericControl)item.FindControl("li_option")).Attributes.Remove("onclick");
            //(item.FindControl("rb_md_productOption") as RadioButton).Enabled = false;
            ((Literal)item.FindControl("lit_md_productItem_name")).Text =
                ((Literal)item.FindControl("lit_md_productItem_name")).Text +
                (LgType.Equals(LangType.en) ? "(No stock)" : "(無庫存)");
            ((HiddenField)item.FindControl("hf_SCOUNT")).Value = "0";
        }

    }

    protected void lnk_buy_Click(object sender, EventArgs e)
    {
        string rval = AddCart();
        if (rval.Equals("OK"))
        {
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "appierAddCart", "appierAddToCart(['" + hf_WP01.Value + "']);", true);
            //ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "gastep2", "ga('ec:setAction','add', {'step': 2});", true);
            if (Session["A01"] != null)
            {
                //1128
                AppierAddCart("qg_product_buy_now");
                string fbScript = hawooo.facebook.getAddToCartStr(hf_WP01.Value);
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg",
                    fbScript + "ga('ec:setAction','add', {'step': 2});location.href='cart1.aspx?ctype=" +
                    hf_WP06.Value + "';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg",
                    "doLogin('cart1.aspx?ctype=" + hf_WP06.Value + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "alert('" + rval + "');", true);
        }
    }

    protected void lnk_add_Click(object sender, EventArgs e)
    {
        string rval = AddCart();
        if (rval.Equals("OK")) //新增成功
        {
            var master = Master as user_user;
            if (master != null)
                master.bindCart();
            int type = Convert.ToInt32(hf_WP06.Value);
            string fbScript = hawooo.facebook.getAddToCartStr(hf_WP01.Value);

            GoogleProduct gp = new GoogleProduct();
            gp.brand = hf_brand.Value;
            gp.id = hf_WP01.Value;
            gp.name = lit_WP02.Text.Trim();
            gp.category = hf_WP43.Value;
            gp.price = Convert.ToDecimal(lab_price.Text);
            gp.quantity = FieldCheck.isInt(hf_select_count.Value) ? int.Parse(hf_select_count.Value) : 0;
            gp.variant = "";
            //1128
            AppierAddCart("qg_product_added_to_cart");
            //string googleSctipt = GoogleBL.GoogleAddToCart(gp);
            string googleSctipt = "";
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg",
                fbScript + googleSctipt + "alert('Added successfully');miniShoppingCartOpenByType(" + type + ");", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "alert('" + rval + "');", true);
        }
    }

    //private GoogleProduct CreateGoogleProduct()
    //{
    //    GoogleProduct gp = new GoogleProduct();
    //    gp.brand = hf_brand.Value;
    //    gp.id = hf_WP01.Value;
    //    gp.name = lit_WP02.Text.Trim();
    //    gp.category = lit_class.Text;
    //    gp.price = Convert.ToDecimal(lab_price.Text);
    //    gp.quantity = FieldCheck.isInt(hf_select_count.Value) ? int.Parse(hf_select_count.Value) : 0;
    //    gp.variant = "";
    //    return gp;
    //}
    private string AddCart()
    {
        if (hf_select_wpa01.Value.Equals(""))
            return "Please select a product option";
        int i = 0;
        string _WPA01 = hf_select_wpa01.Value;
        int _COUNT = int.TryParse(hf_select_count.Value, out i) ? Convert.ToInt32(hf_select_count.Value) : 0;
        if (_COUNT > 0)
        {
            CART cart = new CART();
            int memberID = 0;
            if (Session["A01"] != null)
                memberID = Convert.ToInt32(Session["A01"].ToString());
            int rval = cart.AddCart(_WPA01, Convert.ToInt32(hf_select_type.Value), _COUNT, memberID,
                Convert.ToInt32(hf_WP06.Value));
            if (rval > 0)
            {

                return "OK";
            }
            else
            {
                return "CART ERROR";
            }
        }
        else
        {
            return "Goods out of stock";
        }

    }

    public string GetSaveTxt()
    {
        string saleprice = lab_price.Text;
        string price = lab_origianl_price.Text;
        if (FieldCheck.isDecimal(saleprice) && FieldCheck.isDecimal(price))
            return PbClass.GetSave(price, saleprice, "7.6");
        else
            return "";
    }

    //private void BindDt(int pId)
    //{
    //    PID = pId;

    //    SetState(); //設定狀態

    //    //DataSet PDS = CFacade.UserFac.GetProductDetail(pID); //商品資料
    //    ProductBL productBL = new ProductBL();
    //    productBL.PID = pId;
    //    productBL.PLgType = ((user_user)this.Master).LgType;
    //    DataSet PDS = productBL.GetProductDetailInfo();
    //    if (PDS != null && PDS.Tables[0].Rows.Count > 0)
    //    {
    //        CFacade.GetFac.GetWPFac.AddWpCount(pId);
    //        DataTable MDT = PDS.Tables["WP"];
    //        string _WP06 = MDT.Rows[0]["WP06"].ToString(); //販售類型

    //        if (_WP06.Equals("1")) //好物市集
    //        {
    //            full_gift_event.Visible = true;
    //            guess_you_like.Visible = true;
    //            s_guess_you_like.Visible = true;
    //            (Master.FindControl("rurl") as HiddenField).Value = "cart1.aspx?ctype=1";
    //        }
    //        else if (_WP06.Equals("3")) //限時團購
    //        {
    //            can_buy_time.Visible = true;
    //            tag2.Visible = true;
    //            tag4.Visible = true;
    //            (Master.FindControl("rurl") as HiddenField).Value = "cart1.aspx?ctype=3";
    //        }
    //        else
    //        {
    //            Response.Redirect("index.aspx");
    //        }

    //        //台灣原價TAG
    //        if (MDT.Rows[0]["C01"].ToString().Equals("1"))
    //        {
    //            tag3.Visible = true;
    //        }
    //        if (MDT.Rows[0]["WP17"].ToString().Equals("1"))
    //        {
    //            tag2.Visible = true;
    //        }


    //        DateTime stime = DateTime.Now; //開始時間
    //        DateTime etime = Convert.ToDateTime(MDT.Rows[0]["WP10"].ToString()); //結束時間

    //        lnk_add.Visible = false;
    //        lnk_buy.Visible = false;
    //        if (DateTime.Now >= stime && DateTime.Now <= etime)
    //        {
    //            double timecount = PbClass.DateDiff(stime, etime);
    //            lnk_add.Visible = true;
    //            lnk_buy.Visible = true;
    //            if (MDT.Rows[0]["WP06"].ToString().Equals("3"))
    //                ScriptManager.RegisterStartupScript(Page, typeof(Page), "time-event", "setTime(" + timecount + ");", true);
    //        }


    //        string WP36 = "1";
    //        if (FieldCheck.isDateTime(MDT.Rows[0]["WP37"].ToString()) && FieldCheck.isDateTime(MDT.Rows[0]["WP38"].ToString()))
    //        {
    //            DateTime chkStartTime = DateTime.Parse(MDT.Rows[0]["WP37"].ToString());
    //            DateTime chkEndTime = DateTime.Parse(MDT.Rows[0]["WP38"].ToString());
    //            if (DateTime.Now >= chkStartTime && DateTime.Now <= chkEndTime)
    //            {
    //                WP36 = MDT.Rows[0]["WP36"].ToString();
    //            }
    //        }
    //        lit_ha_coin.Text = WP36.ToString();
    //        Page.Title = Server.HtmlDecode(MDT.Rows[0]["WP02"].ToString());
    //        hf_WP01.Value = MDT.Rows[0]["WP01"].ToString();
    //        hf_WP28.Value = MDT.Rows[0]["WP28"].ToString();
    //        hf_WP29.Value = MDT.Rows[0]["WP29"].ToString();
    //        hf_WP31.Value = MDT.Rows[0]["WP31"].ToString();
    //        hf_WP32.Value = MDT.Rows[0]["WP32"].ToString();
    //        hf_WP08_1.Value = MDT.Rows[0]["WP08_1"].ToString();
    //        hf_WP06.Value = MDT.Rows[0]["WP06"].ToString();
    //        hf_WP36.Value = MDT.Rows[0]["WP36"].ToString();
    //        hf_WP37.Value = MDT.Rows[0]["WP37"].ToString();
    //        hf_WP38.Value = MDT.Rows[0]["WP38"].ToString();
    //        lit_WP33_WP34.Text = MDT.Rows[0]["WP34"].ToString();
    //        hf_WP43.Value = MDT.Rows[0]["WP43"].ToString();
    //        DateTime d = new DateTime();
    //        if (DateTime.TryParse(hf_WP31.Value, out d) && DateTime.TryParse(hf_WP32.Value, out d)) //判斷是否要顯示活動期間資訊
    //        {
    //            if (DateTime.Now >= Convert.ToDateTime(hf_WP31.Value) && DateTime.Now <= Convert.ToDateTime(hf_WP32.Value))
    //            {
    //                lit_WP33_WP34.Text = MDT.Rows[0]["WP33"].ToString();
    //            }
    //        }
    //        lit_WP02.Text = MDT.Rows[0]["WP02"].ToString();
    //        lit_WP21.Text = MDT.Rows[0]["WP21"].ToString();
    //        int cid = 0;
    //        if (PDS.Tables.Count > 2)
    //        {
    //            DataTable ClassDT = PDS.Tables["CLASS"];
    //            if (ClassDT.Rows.Count > 0)
    //            {
    //                if (MDT.Rows[0]["WP06"].ToString().Equals("1")) //好物市集
    //                {
    //                    //lit_class.Text = "<li class=\"am-fl product-breadcrumb\"><a href=\"index.aspx\">好物市集</a><li>";
    //                    DataRow SPDR = ClassDT.Select("C03='0'")[0];
    //                    lit_class.Text += "<li class=\"am-fl product-breadcrumb\"><a href=\"shop.aspx?cid=" + SPDR["C01"].ToString() + "\">" + SPDR["C06"].ToString() + "</a><li>,";
    //                    DataRow[] SCDR = ClassDT.Select("C03 <> '0' ");
    //                    if (SCDR.Length > 0)
    //                    {
    //                        cid = int.Parse(SCDR[0]["C01"].ToString());
    //                    }
    //                }
    //                //else if (MDT.Rows[0]["WP06"].ToString().Equals("3")) //限時團購
    //                //{
    //                //    lit_class.Text = "<li class=\"am-fl product-breadcrumb\"><a href=\"group.aspx\">限時團購 </a><li>";

    //                //    lit_class.Text += "<li class=\"am-fl product-breadcrumb\"><a href=\"group_detail.aspx?id=" + ClassDT.Rows[0]["C01"].ToString() + "\">" + ClassDT.Rows[0]["C06"].ToString() + "</a><li>,";
    //                //}
    //                //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setheader", "SetHeaderMenuActive('" + "h-" + ClassDT.Rows[0]["C01"].ToString() + "');", true);

    //            }
    //        }
    //        lit_class.Text = lit_class.Text.Trim(',');
    //        string fimgs = "";
    //        if (!MDT.Rows[0]["WP08_1"].ToString().Equals(""))
    //            fimgs += "<li class=\"am-fl\"><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_1"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
    //        if (!MDT.Rows[0]["WP08_2"].ToString().Equals(""))
    //            fimgs += "<li class=\"am-fl\"><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_2"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
    //        if (!MDT.Rows[0]["WP08_3"].ToString().Equals(""))
    //            fimgs += "<li class=\"am-fl\"><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_3"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
    //        if (!MDT.Rows[0]["WP08_4"].ToString().Equals(""))
    //            fimgs += "<li class=\"am-fl\"><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_4"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
    //        if (!MDT.Rows[0]["WP08_5"].ToString().Equals(""))
    //            fimgs += "<li class=\"am-fl\"><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_5"].ToString() + "\" class=\"am-img-thumbnail\" /></li>";
    //        lit_WP08_LIST.Text = fimgs; // 商品圖
    //        //lit_md_BrandName_ProductName.Text = "<span><span class=\"modal-content-productBrand\"></span>" + MDT.Rows[0]["WP02"].ToString() + "</span>";
    //        lit_WP03.Text = MDT.Rows[0]["WP03"].ToString();





    //        //規格處理
    //        DataTable detailDT = PDS.Tables["WPA"];
    //        //img_md_product_img.ImageUrl = "https://www.hawooo.com/images/webimgs/" + MDT.Rows[0]["WP08_1"].ToString();
    //        rp_md_product_item.DataSource = detailDT;
    //        rp_md_product_item.DataBind();
    //        //lit_md_BrandName_ProductName.Text = MDT.Rows[0]["WP02"].ToString();DoProductTrack
    //        DataRow sRow = detailDT.Select("WPA06=MIN(WPA06)")[0];
    //        foreach (RepeaterItem item in rp_md_product_item.Items)
    //        {
    //            SetItemPrice(item);
    //        }
    //        if (detailDT.Rows.Count == 1)
    //        {
    //            ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem", "selectOption('" + detailDT.Rows[0]["WPA01"].ToString() + "');", true);

    //        }
    //        else
    //        {

    //            ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem", "selectOption('" + sRow["WPA01"].ToString() + "');", true);
    //        }

    //        decimal _原價 = PbClass.CashRate(sRow["WPA10"].ToString(), Application["mycashrate"].ToString());
    //        decimal _售價 = PbClass.CashRate(sRow["WPA06"].ToString(), Application["mycashrate"].ToString());
    //        //lab_price.Text = _售價.ToString();
    //        //if (_原價 > _售價)
    //        //{
    //        //    //lab_discount_note.Text = "<p>" + (LgType.Equals(LangType.en) ? "Save" : "省") + (_原價 - _售價).ToString() + "</p>";
    //        //    lab_discount_note.Text = "";
    //        //    lab_origianl_price.Text = "(RM" + PbClass.CashRate(sRow["WPA10"].ToString(), Application["mycashrate"].ToString()).ToString() + ")";
    //        //}
    //        //else
    //        //{
    //        //    lab_discount_note.Text = "";
    //        //    lab_origianl_price.Text = "";
    //        //    //lab_md_origianl_price.Visible = false;
    //        //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "hiddenInfo", "$('#discount_info').attr('display','none');", true);
    //        //}

    //        BindBrand(MDT);
    //        BindGift(PDS.Tables["GIFT"]);
    //        //track google detailemia

    //        //推薦商品
    //        DataSet ds = CFacade.GetFac.GetWPFac.GetRecommendProducts(pId, cid, LgType); //推薦商品
    //        if (ds.Tables.Count > 0)
    //        {
    //            rp_commend1.DataSource = ds.Tables[0]; //同類型商品
    //            rp_commend1.DataBind();

    //            //設定ItemFormat
    //            setCommendFormat(rp_commend1);

    //            rp_commend2.DataSource = ds.Tables[1]; //最多人觀賞
    //            rp_commend2.DataBind();

    //            //設定ItemFormat
    //            setCommendFormat(rp_commend2);

    //        }

    //        DoProductTrack(MDT, _原價, _售價);
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "errmsg", "locatio.href='shop.aspx';", true);
    //    }

    //}
    protected void lnk_preorder_OnClick(object sender, EventArgs e)
    {
        string msg = "";
        if (hf_select_wpa01.Value == "")
        {
            msg += "Please select a product option.";
        }

        if (msg == "")
        {
            if (Session["A01"] != null)
            {
                int memberID = Convert.ToInt32(Session["A01"].ToString());

                int qty = FieldCheck.isInt(hf_select_count.Value) ? Convert.ToInt32(hf_select_count.Value) : 0;
                PreOrderProduct p = new PreOrderProduct();
                p.POP01 = memberID;
                p.POP02 = hf_select_wpa01.Value;
                p.POP03 = Convert.ToInt32(hf_WP01.Value);
                p.POP04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                p.POP05 = 0;
                p.POP06 = ConfigurationManager.AppSettings["preEventId"].ToString();
                p.POP07 = qty;
                p.POP08 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                PreOrderProductBL popBL = new PreOrderProductBL(memberID);

                bool rval = popBL.AddPreOrder(p);
                if (rval)
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "alert2url('Added Successfully','" + ConfigurationManager.AppSettings["preUrl"].ToString() + "');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "alert('error');", true);
                }
            }
            else
            {

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "doLogin('productdetail.aspx?id=" + hf_WP01.Value + "');", true);
            }
        }
        else
        {

            ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "alert('" + msg + "');", true);
        }
    }
    public void BindImgTag()
    {
        //綁定圖片TAG

        string WP59 = _mainDt.Rows[0]["WP59"].ToString();
        lit_img_tag.Text = product.SetImgTag(WP59);
    }

    public void BindProductSpec()
    {
        divProductSpecContent.Visible = false;
        divProductSpecTitle.Visible = false;
        string WP57 = _mainDt.Rows[0]["WP57"].ToString();
        if (WP57.Equals("1"))
        {
            divProductSpecContent.Visible = true;
            divProductSpecTitle.Visible = true;
            lit_WP58.Text = _mainDt.Rows[0]["WP58"].ToString();
        }
        else
        {
            //lit_nav_script.Text = "<script>$(\".nav-tabs\").css(\"am-u-sm-6\");</script>";


            ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "$(\".nav-tabs\").addClass(\"am-u-sm-4\");", true);



        }

    }

    private void GoodsNote()
    {
        if (_mainDt.Rows.Count > 0)
        {
            int B28 = int.Parse(_mainDt.Rows[0]["B28"].ToString());
            var pid = _mainDt.Rows[0]["WP01"].ToString();
            if (CheckExtIds(pid))
            {
                B28 = 2;
            }
            lit_coupon_note.Text = PbClass.CouponStatus(B28);
            lit_west_note.Text = PbClass.WestStatus(int.Parse(_mainDt.Rows[0]["WP55"].ToString()));
            lit_wrap_note.Text = PbClass.WrapStatus(int.Parse(_mainDt.Rows[0]["WP40"].ToString()));
            //lit_air_note.Text = PbClass.AirShipStatus(int.Parse(_mainDt.Rows[0]["WP56"].ToString()));
        }
    }

    protected void btn_get_coupon_OnClick(object sender, EventArgs e)
    {
        string scriptTxt = String.Empty;
        if (Session["A01"] != null)
        {
            string couponID = hf_couponid.Value;
            int memberId = Convert.ToInt32(Session["A01"].ToString());
            ProductCouponUserGetFac pcuFac = new ProductCouponUserGetFac();
            string msg = pcuFac.GetProductCoupon(couponID, memberId);
            if (msg.ToLower().Equals("ok"))
            {
                scriptTxt = "alert('You\\'ve got your coupon! Use your coupon now & enjoy shopping!');";
            }
            else
            {
                scriptTxt = "alert('Error please call +603-76102050');";
            }
        }
        else
        {
            scriptTxt = "doLogin('productdetail.aspx?id=" + hf_WP01.Value + "');";
        }
        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), scriptTxt, true);
    }

    private void BindCouponInfo()
    {
        //折扣券顯示
        panel_coupon.Visible = false;
        if (_couponDt.Rows.Count > 0)
        {
            panel_coupon.Visible = true;
            rp_coupon.DataSource = _couponDt;
            rp_coupon.DataBind();
            //var maxcoupon = _couponDt.AsEnumerable().OrderByDescending(x => x.Field<decimal>("PC09")).First();
            //lit_coupon_name.Text = maxcoupon["PC02"].ToString();

            //rp_product_coupon.DataSource = _couponDt;
            //rp_product_coupon.DataBind();
        }

    }
    private void GetAuteDiscount(int pid)
    {
        autoEvent.Visible = false;
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("WE01");
        sb.Append(",WE16");
        sb.Append(",WE17");
        sb.Append(",WE02");
        sb.Append(",WE02_EN ");
        sb.Append("FROM WebEvent ");
        sb.Append("WHERE WE04=1 ");
        sb.Append("AND (GETDATE() BETWEEN WE07 AND WE08) ");
        sb.Append("AND EXISTS ");
        sb.Append("(");
        sb.Append("SELECT 1 FROM WebEventSelPD WHERE WESP02=@PID AND WESP01=WE01");
        sb.Append(")");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, pid));
        DataTable auteDt = SqlDbmanager.queryBySql(cmd);
        if (auteDt.Rows.Count > 0)
        {
            autoEvent.Visible = true;
            rp_auto_discount.DataSource = auteDt;
            rp_auto_discount.DataBind();
        }
    }
    public bool CheckExtIds(string pid)
    {
        return false;

        //string pIds = "26347,26296,26346,26323,14707,26328,26341,26315,17159,17155,26316,26358,26301,26298,26359,26339,26370,26362,26322,22950,26335,26365,18435,18049,18022,12601,20900,26329,17353,26342,14898,20665,26375,26377,26378,17395,26318,26379,19513,16740,21273,11891,13775,13970,18675,13431,21292,26327,26395,25245,26398,16746,13751,21328,24609,26400,22949,19494,17083,26408,16127,14323,26410,23629,18613,26344,26310,26311,18456,13461,20909,20910,19535,26419,26325,26326,18469,23842,17434,17853,14897,14426,26420,26421";
        ////string pIds = "";
        //string[] pAry = pIds.Split(',');
        //if (pAry.Contains(pid))
        //{
        //    return true;
        //}
        //else
        //{
        //    return false;
        //}
    }
}