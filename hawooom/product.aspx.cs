using hawooo;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using HtmlAgilityPack;

public partial class product : Compress.BasePage
{

    private LangType LgType;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LgType = (this.Master as mobile).LgType;
            if (Request.QueryString["id"] != null)
            {
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
                //LgType.Equals(LangType.en) ? ennote.Visible = true : zhnote.Visible = true;

                int i;
                if (int.TryParse(Request.QueryString["id"].ToString(), out i))
                {

                    //返回上頁頁數
                    if (Request.QueryString["num"] != null)
                    {
                        Session["num"] = Request.QueryString["num"].ToString();
                    }

                    int pid = Convert.ToInt32(Request.QueryString["id"].ToString());

                    BindDT(pid); //綁定商品資訊

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
        //增加瀏覽紀錄
        CFacade.GetFac.GetWPFac.AddWpCount(_pId);
        CFacade.GetFac.GetUserViewFac.UpUserView(_pId); //增加使用者瀏覽記錄                                                                    
        string trackStr = "fbq('track', 'ViewContent', { content_ids: ['" + pid + "'],  content_type: 'product',  value: " + lab_md_price.Text + ",  currency: 'MYR'});";

        trackStr += GoogleTag.TagPageView(pid.ToString());
        //trackStr += GaProdcutClick();
        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), trackStr, true);
    }
    public string GaProdcutClick()
    {
        StringBuilder sb = new StringBuilder();
        //sb.Append("ga('ec:addImpression', {");
        //sb.Append("'id': " + _mainDt.Rows[0]["WP01"].ToString() + ",");
        //sb.Append("'name': '" + _mainDt.Rows[0]["WP02"].ToString().Replace("'", "") + "',");
        ////sb.Append("'category': '" + _mainDt.Rows[0]["C06"].ToString().Replace("'", "") + "',");
        ////sb.Append("'brand': '" + _mainDt.Rows[0]["B02"].ToString().Replace("'", "") + "',");
        //sb.Append("'variant': '" + lab_md_price.Text.Trim() + "',");
        //sb.Append("'postion': 1");
        //sb.Append("});");
        //sb.Append("ga('ec:setAction', 'detail');");
        //sb.Append("ga('send', 'pageview');");
        return sb.ToString();
    }
    private void CloseProductRedrict(int pId)
    {
        string sqlTxt = "SELECT WP07,WP09,WP10,WP54 FROM WP WHERE WP01=@PID";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, pId));
        cmd.CommandText = sqlTxt;
        DataTable PDT = SqlDbmanager.QueryDataTable(cmd);

        if (PDT.Rows.Count > 0)
        {
            DataRow pdr = PDT.Rows[0];
            //時間是否在上架時間內
            DateTime stime = Convert.ToDateTime(pdr["WP08"].ToString());
            DateTime etime = Convert.ToDateTime(pdr["WP10"].ToString());
            DateTime ntime = DateTime.Now;


            //商品是否上架狀態
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

    private void SetDefaultValue()
    {
        LgType = (this.Master as mobile).LgType;
        //lit_product_id.Text = pID.ToString();
        guess_you_like.Visible = false;
        s_guess_you_like.Visible = false;
        full_gift_event.Visible = false;
        tag2.Visible = false;
        tag4.Visible = false;

        oversea.Visible = false;
        if (LgType.Equals(LangType.en))
        {
            oversea.Visible = true;
        }
    }
    private void BindDT(int pId)
    {
        _pId = pId;
        //設定基本資訊
        SetDefaultValue();
        //取得商品資訊
        GetDataSet(pId);
        if (_mainDt.Rows.Count > 0)
        {

            //確認預購狀態
            CheckPreOrder();

            //綁定商品主資訊
            BindMainInfo();

            //設定Type資訊
            SetTypeInfo();

            //顯示Hacoin
            HaCoinInfo();

            //綁定類別資訊
            BindClassInfo();

            //綁定商品推薦
            BindProductRecomment();

            //綁定選項
            BindOption();

            //綁定折扣資訊
            BindCouponInfo();

            //綁定品牌資訊
            BindBrand();

            //綁定禮品資訊
            BindGift();

            //綁定是否加入追蹤
            CheckAddLike();

            //商品狀態
            GoodsNote();

            //自動折抵折扣資訊
            GetAuteDiscount(pId);

            //綁定商品TAG
            BindImgTag();

            //綁定商品規格
            BindProductSpec();

            //追蹤商品
            DoTrack(pId);

            //Appier Track
            AppierProductEvent();
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "errmsg", "location.href='index.aspx';", true);
        }
        //綁定購物車資訊
        //(this.Master as mobile).bindCartCount();
    }

    private void CheckAddLike()
    {
        string script = "$('#img_like').attr('src','https://www.hawooo.com/images/icon/add_like.png');";
        if (Session["A01"] != null)
        {
            string sqlTxt = "SELECT A01 FROM AA WHERE A01=@A01 AND WP01=@WP01 AND AA04=1";
            var check = DapperHelper.QuerySQL<AA>(sqlTxt, new { A01 = Convert.ToInt32(Session["A01"].ToString()), WP01 = Convert.ToInt32(hf_WP01.Value) });
            if (check != null)
            {
                if (check.Any())
                {
                    script = "$('#img_like').attr('src','https://www.hawooo.com/images/icon/has_like.png');";

                }
            }
        }

        ScriptManager.RegisterStartupScript(Page, typeof(Page), "cimg", script, true);
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = sqlTxt;
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.Int, Convert.ToInt32(Session["A01"].ToString())));
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("WP01", SqlDbType.Int, Convert.ToInt32(hf_WP01.Value.ToString())));

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
    private void BindBrand()
    {
        string brandTxt = "";
        if (_mainDt.Rows.Count > 0)
        {
            hf_brand.Value = _mainDt.Rows[0]["BA02"].ToString();
            if (_mainDt.Rows[0]["BA02"].ToString() != "")
            {
                brandTxt = "<div>Brand：<a style=\"color:#e65e5e;text-decoration:underline;\" href='brand_1.aspx?bid=" +
                           _mainDt.Rows[0]["B01"].ToString() + "'>" + _mainDt.Rows[0]["BA02"].ToString() + "</a></div>";
            }
        }
        else
        {
            brandTxt = "";

        }
        lit_B01.Text = brandTxt;
    }

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
        //     return true;
        //}
        //else
        //{
        //     return false;
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
    public static string linkUrl = "";

    private int _pId = 0;
    private int _classId = 0;
    private int _brandType = 1;
    private string _brandId = String.Empty;
    private DataTable _mainDt; //主商品資訊
    private DataTable _detailDt; //商品明細
    private DataTable _classDt; //商品類別
    private DataTable _giftDt; //贈品
    private DataTable _couponDt; //折扣券


    //綁定商品資訊
    private void GetDataSet(int pId)
    {
        ProductBL productBL = new ProductBL(pId, LgType);
        DataSet productDS = productBL.GetProductDetailInfo();
        _mainDt = productDS.Tables["WP"];
        _detailDt = productDS.Tables["WPA"];

        if (_preOrderState) //預購商品改價
        {
            foreach (DataRow dr in _detailDt.Rows)
            {
                dr["WPA06"] = Convert.ToInt32(dr["WPA06"].ToString()) - Convert.ToInt32(dr["WPA07"].ToString());
            }
        }
        _classDt = productDS.Tables["CLASS"];
        _couponDt = productDS.Tables["PCOUPON"];
        _giftDt = productDS.Tables["GIFT"];


    }
    private void GetAuteDiscount(int pid)
    {
        panel_auto_discount.Visible = false;
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
            panel_auto_discount.Visible = true;
            rp_auto_discount.DataSource = auteDt;
            rp_auto_discount.DataBind();
        }
    }

    private void BindMainInfo()
    {
        if (_mainDt.Rows.Count > 0)
        {
            DateTime ntime = DateTime.Now;
            DateTime cst = Convert.ToDateTime(_mainDt.Rows[0]["WP09"].ToString());
            DateTime est = Convert.ToDateTime(_mainDt.Rows[0]["WP10"].ToString());
            if (ntime < cst || ntime > est)
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
                    Response.Redirect("product.aspx?" + qStr.ToString());
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert2url('This product is closed.','index.aspx');", true);
                }

            }



            _pId = Convert.ToInt32(_mainDt.Rows[0]["WP01"].ToString());
            showTime.Visible = false;
            if (FieldCheck.isDateTime(_mainDt.Rows[0]["WP32"].ToString()))
            {
                DateTime stime = DateTime.Now; //開始時間
                DateTime etime = Convert.ToDateTime(_mainDt.Rows[0]["WP32"].ToString()); //優惠結束時間
                if (DateTime.Now >= stime && DateTime.Now <= etime)
                {
                    TimeSpan ts = etime - stime;
                    if (ts.Days <= 5)
                    {
                        showTime.Visible = true;
                        double timecount = PbClass.DateDiff(stime, etime);
                        ScriptManager.RegisterStartupScript(Page, typeof(Page), "time-event", "setTime(" + timecount + ");", true);
                    }
                }
            }
            if (_mainDt.Rows[0]["B31"].ToString().Equals("2"))
                _brandType = Convert.ToInt32(_mainDt.Rows[0]["B31"].ToString());
            _brandId = _mainDt.Rows[0]["B01"].ToString();
            Page.Title = Server.HtmlDecode(_mainDt.Rows[0]["WP02"].ToString());
            hf_WP01.Value = _mainDt.Rows[0]["WP01"].ToString();
            hf_WP28.Value = _mainDt.Rows[0]["WP28"].ToString();
            hf_WP29.Value = _mainDt.Rows[0]["WP29"].ToString();
            hf_WP31.Value = _mainDt.Rows[0]["WP31"].ToString();
            hf_WP32.Value = _mainDt.Rows[0]["WP32"].ToString();


            hf_WP06.Value = _mainDt.Rows[0]["WP06"].ToString();
            hf_WP36.Value = _mainDt.Rows[0]["WP36"].ToString();
            hf_WP37.Value = _mainDt.Rows[0]["WP37"].ToString();
            hf_WP38.Value = _mainDt.Rows[0]["WP38"].ToString();
            lit_WP33_WP34.Text = _mainDt.Rows[0]["WP34"].ToString();
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
            decimal WP27 = FieldCheck.isDecimal(_mainDt.Rows[0]["WP27"].ToString()) ? decimal.Parse(_mainDt.Rows[0]["WP27"].ToString()) : 0;
            lit_view.Text = WP27 > 999 ? WP27.ToString("0,.#K", CultureInfo.InstalledUICulture) : WP27.ToString();
            string fimgs = "";

            string imgPath = ConfigurationManager.AppSettings["imgUrl"].ToString();
            string pimgPath = imgPath + "/webimgs/";
            if (!_mainDt.Rows[0]["WP08_1"].ToString().Equals(""))
                fimgs += "<li><img src=\"" + pimgPath + _mainDt.Rows[0]["WP08_1"].ToString() + "\" /></li>";
            if (!_mainDt.Rows[0]["WP08_2"].ToString().Equals(""))
                fimgs += "<li><img src=\"" + pimgPath + _mainDt.Rows[0]["WP08_2"].ToString() + "\" /></li>";
            if (!_mainDt.Rows[0]["WP08_3"].ToString().Equals(""))
                fimgs += "<li><img src=\"" + pimgPath + _mainDt.Rows[0]["WP08_3"].ToString() + "\" /></li>";
            if (!_mainDt.Rows[0]["WP08_4"].ToString().Equals(""))
                fimgs += "<li><img src=\"" + pimgPath + _mainDt.Rows[0]["WP08_4"].ToString() + "\" /></li>";
            if (!_mainDt.Rows[0]["WP08_5"].ToString().Equals(""))
                fimgs += "<li><img src=\"" + pimgPath + _mainDt.Rows[0]["WP08_5"].ToString() + "\" /></li>";
            lit_WP08_LIST.Text = fimgs; // 商品圖

            hf_WP08_1.Value = pimgPath + _mainDt.Rows[0]["WP08_1"].ToString();
            hf_WP08_2.Value = pimgPath + _mainDt.Rows[0]["WP08_2"].ToString();
            hf_WP08_3.Value = pimgPath + _mainDt.Rows[0]["WP08_3"].ToString();
            hf_WP08_4.Value = pimgPath + _mainDt.Rows[0]["WP08_4"].ToString();
            hf_WP08_5.Value = pimgPath + _mainDt.Rows[0]["WP08_5"].ToString();

            lit_md_BrandName_ProductName.Text = "<span><span class=\"modal-content-productBrand\"></span>" + _mainDt.Rows[0]["WP02"].ToString() + "</span>";

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
                lit_WP03.Text += "<p><img src='" + ConfigurationManager.AppSettings["imgUrl"].ToString() + "bwarrant/" + _mainDt.Rows[0]["B35"].ToString() + "' width='100%';></p>";
            }


            //lit_WP03.Text = _mainDT.Rows[0]["WP03"].ToString().Replace("height=", "").Replace("height:", "").Replace("<img ", "<img onerror='onerror();'");
            if (!_mainDt.Rows[0]["C01"].ToString().Equals("1"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "hidden", "hiddenSamePrice();", true);
            }

            //20200113新增
            hf_B01.Value = _mainDt.Rows[0]["B01"].ToString();
            hf_CNAME.Value = _classDt.Rows.Count > 0 ? _classDt.Rows[0]["C06"].ToString() : "";
            hf_PIMG.Value = _mainDt.Rows[0]["WP08_1"].ToString();

        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }

    private void SetTypeInfo()
    {
        string _WP06 = _mainDt.Rows[0]["WP06"].ToString(); //販售類型
        if (_WP06.Equals("1")) //好物市集
        {
            full_gift_event.Visible = true;
            guess_you_like.Visible = true;
            s_guess_you_like.Visible = true;

        }
        else if (_WP06.Equals("3")) //限時團購
        {
            //can_buy_time.Visible = true;
            tag2.Visible = true;
            //tag4.Visible = true;
        }
        else
        {
            Response.Redirect("index.aspx");
        }
        (Master.FindControl("rurl") as HiddenField).Value = "cart1.aspx?ctype=" + _WP06;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "setCartLink", "$('#cartlink').attr('href','cart1.aspx?ctype=" + _WP06 + "');", true);
        //台灣原價TAG
        //if (_mainDT.Rows[0]["C01"].ToString().Equals("1"))
        //{
        //    tag3.Visible = true;
        //}
        if (_mainDt.Rows[0]["WP17"].ToString().Equals("1"))
        {
            tag2.Visible = true;
        }

        string _WP07 = _mainDt.Rows[0]["WP07"].ToString();
        if (_WP07.Equals("3"))
        {
            lnk_add.Visible = false;
            lnk_buy.Visible = false;
            lnk_preorder.Visible = false;
            lnk_soldout.Visible = true;
            lnk_soldout.Enabled = false;
            string scriptTxt = "$('#buy-btn').text('Sold Out');$('#buy-btn').css('text-decoration','line-through');";
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "ss", scriptTxt, true);
        }
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

        //舊的方式
        //string WP36 = "1";
        //if (FieldCheck.isDateTime(_mainDt.Rows[0]["WP37"].ToString()) && FieldCheck.isDateTime(_mainDt.Rows[0]["WP38"].ToString()))
        //{
        //    DateTime chkStartTime = DateTime.Parse(_mainDt.Rows[0]["WP37"].ToString());
        //    DateTime chkEndTime = DateTime.Parse(_mainDt.Rows[0]["WP38"].ToString());
        //    if (DateTime.Now >= chkStartTime && DateTime.Now <= chkEndTime)
        //    {
        //        WP36 = _mainDt.Rows[0]["WP36"].ToString();
        //    }
        //}
        //lit_ha_coin.Text = WP36.ToString();
    }

    private void BindClassInfo()
    {
        if (_classDt.Rows.Count > 0)
        {
            _classId = 0;
            if (_mainDt.Rows[0]["WP06"].ToString().Equals("1")) //好物市集
            {
                lit_class.Text = "<a href=\"shop.aspx\">Shop > </a>";
                foreach (DataRow dr in _classDt.Rows)
                {
                    lit_class.Text += "<a href=\"shop2.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                }
                DataRow[] SCDR = _classDt.Select("C03 <> '0'");
                if (SCDR.Length > 0)
                {
                    _classId = int.Parse(SCDR[0]["C01"].ToString());
                }
            }
            else if (_mainDt.Rows[0]["WP06"].ToString().Equals("2")) //跨國快送
            {
                lit_class.Text = "<a href=\"focus.aspx\">跨國快送 > </a>";
                foreach (DataRow dr in _classDt.Rows)
                {
                    lit_class.Text += "<a href=\"focus.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                }
            }
            else if (_mainDt.Rows[0]["WP06"].ToString().Equals("3")) //限時團購
            {
                lit_class.Text = "<a href=\"group.aspx\">限時團購 </a>";
            }
        }
        lit_class.Text = lit_class.Text.Trim(',');
    }


    private void BindProductRecomment()
    {
        WPFactory.SearchObj sObj = new WPFactory.SearchObj();
        sObj.ProductId = _pId;
        sObj.LgType = LgType;
        if (_brandType == 2)
            sObj.BrandId = Convert.ToInt32(_brandId);
        else
            sObj.ClassId = _classId;
        DataSet ds = CFacade.GetFac.GetWPFac.GetRecommendProducts(sObj);//推薦商品
        if (ds.Tables.Count > 0)
        {
            rp_recommend1.DataSource = ds.Tables[0]; //同類型商品(猜你喜歡)
            rp_recommend1.DataBind();

            rp_recommend2.DataSource = ds.Tables[1]; //最多人瀏覽商品
            rp_recommend2.DataBind();
        }
    }



    private void BindOption()
    {
        //規格處理

        img_md_product_img.ImageUrl = "https://www.hawooo.com/images/webimgs/" + _mainDt.Rows[0]["WP08_1"].ToString();
        rp_md_product_item.DataSource = _detailDt;
        rp_md_product_item.DataBind();
        lit_md_BrandName_ProductName.Text = _mainDt.Rows[0]["WP02"].ToString();

        DataRow sRow = _detailDt.Select("WPA06=MIN(WPA06)")[0];
        foreach (RepeaterItem item in rp_md_product_item.Items)
        {
            SetItemPrice(item);
        }
        if (_detailDt.Rows.Count == 1)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem", "selectOption('" + _detailDt.Rows[0]["WPA01"].ToString() + "');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem", "selectOption('" + sRow["WPA01"].ToString() + "');", true);
        }
        //規格綁定
        _detailDt.DefaultView.RowFilter = "WPA03='1'";
        DataTable disDT = _detailDt.DefaultView.ToTable();
        rp_dis.DataSource = disDT;
        rp_dis.DataBind();

        //200113新增
        hf_PRICE.Value = PbClass.CashRate(sRow["WPA10"].ToString(), "7.6").ToString();
        hf_SPRICE.Value = PbClass.CashRate(sRow["WPA06"].ToString(), "7.6").ToString();

        //20200225
        //BindComment(_detailDt.Rows[0]["WPA01"].ToString());

        hfGroupName.Value = groupId(_mainDt.Rows[0]["WP01"].ToString());
        BindComment(hfGroupName.Value, _detailDt.Rows[0]["WPA01"].ToString());
    }

    private string groupId(string productId)
    {
        string strSql = "SELECT MIN(WPG02) AS WPID FROM WPGROUP WHERE WPG01=(SELECT WPG01 FROM WPGROUP WHERE WPG02=@PID) ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("PID", SqlDbType.Int, Convert.ToInt32(productId)));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
            productId = dt.Rows[0]["WPID"].ToString();
        return productId;
    }

    //20200225
    public void BindComment(string groupId, string optionId)
    {
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "comment", "GetHwComment('" + groupId + "','" + optionId + "');GetHwCommentDetail('" + groupId + "','" + optionId + "');", true);
    }


    //200113新增
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


    private void BindCouponInfo()
    {
        //折扣券顯示
        panel_coupon.Visible = false;
        if (_couponDt.Rows.Count > 0)
        {
            panel_coupon.Visible = true;
            var maxcoupon = _couponDt.AsEnumerable().OrderByDescending(x => x.Field<decimal>("PC09")).First();
            lit_coupon_name.Text = maxcoupon["PC02"].ToString();

            rp_product_coupon.DataSource = _couponDt;
            rp_product_coupon.DataBind();
        }

    }





    /// <summary>
    /// 設定價格
    /// </summary>
    /// <param name="WPA01">規格編號</param>
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
            ((HiddenField)item.FindControl("hf_SCOUNT")).Value = maxcount.ToString();
            ((HiddenField)item.FindControl("hf_TYPE")).Value = "0";
        }
        else if (_可買數量 <= 0 && _是否可預購 == true)
        {
            ((Literal)item.FindControl("lit_md_productItem_name")).Text = ((Literal)item.FindControl("lit_md_productItem_name")).Text + (LgType.Equals(LangType.en) ? "Pre sale" : "(預購中)");
            ((HiddenField)item.FindControl("hf_SCOUNT")).Value = _代購數量上限.ToString();
            ((HiddenField)item.FindControl("hf_TYPE")).Value = "1";
        }
        else
        {
            ((HiddenField)item.FindControl("hf_TYPE")).Value = "-1";
            ((HtmlGenericControl)item.FindControl("li_option")).Style["background-color"] = "darkgray";
            ((HtmlGenericControl)item.FindControl("li_option")).Attributes.Remove("onclick");
            //(item.FindControl("rb_md_productOption") as RadioButton).Enabled = false;
            ((Literal)item.FindControl("lit_md_productItem_name")).Text = (item.FindControl("lit_md_productItem_name") as Literal).Text + (LgType.Equals(LangType.en) ? "(No stock)" : "(無庫存)");
            ((HiddenField)item.FindControl("hf_SCOUNT")).Value = "0";
        }

    }




    protected void lnk_buy_Click(object sender, EventArgs e)
    {
        string rval = addCart();
        if (rval.Equals("OK")) //新增成功
        {
            //string acStr = hawooo.facebook.getAddToCartStr(hf_WP01.Value);
            //ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "fbac", acStr, false);
            if (Session["A01"] != null)
            {
                string fbScript = hawooo.facebook.getAddToCartStr(hf_WP01.Value);
                //200113
                AppierAddCart("qg_product_buy_now");
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", fbScript + "ga('ec:setAction','add', {'step': 2});location.href='cart1.aspx?ctype=" + hf_WP06.Value + "';", true);
            }
            else
            {
                Response.Redirect("login.aspx?rurl=cart1.aspx?ctype=" + hf_WP06.Value + "");
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "cartMsg", "alert('" + rval + "');", true);
        }
    }

    protected void lnk_add_Click(object sender, EventArgs e)
    {
        string rval = addCart();
        if (rval.Equals("OK")) //新增成功
        {
            //string acStr = hawooo.facebook.getAddToCartStr(hf_WP01.Value);
            //ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "fbac", acStr, false);
            string fbScript = hawooo.facebook.getAddToCartStr(hf_WP01.Value);
            //200113
            AppierAddCart("qg_product_added_to_cart");
            ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "cartMsg", fbScript + "ga('ec:setAction','add', {'step': 2});alert('Added successfully');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "cartMsg", "alert('" + rval + "');", true);
        }
    }

    private string addCart()
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
            int rval = cart.AddCart(_WPA01, Convert.ToInt32(hf_select_type.Value), _COUNT, memberID, Convert.ToInt32(hf_WP06.Value), 0, 0);
            if (rval > 0)
            {
                (this.Master as mobile).bindCartCount();
                return "OK";
            }
            else
                return "CART ERROR";
        }
        else
        {
            return "Goods out of stock";
        }

    }

    protected void btn_track_product_Click(object sender, EventArgs e)
    {
        AA obAA = new AA();
        obAA.A01 = int.Parse(Session["A01"].ToString());
        obAA.WP01 = int.Parse(hf_WP01.Value);
        obAA.AA01 = Guid.NewGuid().ToString();
        obAA.AA02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        obAA.AA03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        obAA.AA04 = 1;
        AAFactory aaFac = new AAFactory();
        bool rval = aaFac.UpTrack(obAA);
        if (rval)
        {
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Collection successful');", true);
            CheckAddLike();
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Collection failed');", true);
        }
    }

    protected void btn_get_Click(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            ProductCouponUserGetFac pcug = new ProductCouponUserGetFac();
            int rval = pcug.UserGetProductCoupon(int.Parse(Session["A01"].ToString()), int.Parse(hf_WP01.Value));
            if (rval > 0)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('You\\'ve got your coupon! Use your coupon now & enjoy shopping!');closeCouponModal();", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Get failed');", true);
            }
        }
        else
        {
            Response.Redirect("login.aspx?rurl=product.aspx?id=" + hf_WP01.Value.ToString() + "");
        }

    }
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

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "location.href='login.aspx?rurl=product.aspx?id=" + hf_WP01.Value + "';", true);
            }
        }
        else
        {

            ScriptManager.RegisterStartupScript(Page, typeof(Page), "cartMsg", "alert('" + msg + "');", true);
        }
    }
    public static string ReTagName(string val)
    {
        val = val.Replace("盒現省", " boxes save");
        val = val.Replace("盒再省", " boxes save");
        val = val.Replace("盒再降", " boxes save");
        val = val.Replace("片再省", " pcs save");
        val = val.Replace("片現省", " pcs save");
        val = val.Replace("包再省", " bags save");
        val = val.Replace("包現省", " bags save");
        val = val.Replace("包再降", " bags save");
        val = val.Replace("入再降", " pcs save");
        val = val.Replace("入再省", " pcs save");
        val = val.Replace("入現省", " pcs save");
        val = val.Replace("瓶再省", " bottles save");
        val = val.Replace("瓶現省", " bottles save");
        val = val.Replace("瓶再降", " bottles save");
        val = val.Replace("袋再省", " packs save");
        val = val.Replace("袋現省", " packs save");
        val = val.Replace("袋再降", " packs save");
        val = val.Replace("組再省", " sets save");
        val = val.Replace("組現省", " sets save");
        val = val.Replace("組再降", " sets save");
        val = val.Replace("入免運再省", " pcs free shipping<br/>save");
        val = val.Replace("組免運再省", " sets free shipping<br/>save");
        val = val.Replace("盒免運再省", " boxes free shipping<br/>save");
        val = val.Replace("瓶免運再省", " bottles free shipping<br/>save");
        val = val.Replace("罐免運再省", " pcs free shipping<br/>save");
        val = val.Replace("包免運再省", " bags free shipping<br/>save");
        val = val.Replace("片免運再省", " pcs free shipping<br/>save");
        val = val.Replace("袋免運再省", " packs free shipping<br/>save");
        val = val.Replace("件現省", " pcs save");
        val = val.Replace("件再省", " pcs save");
        val = val.Replace("件免運再省", " pcs free shipping<br/>save");
        return val;
    }
    public void BindImgTag()
    {
        //綁定圖片TAG
        string WP59 = _mainDt.Rows[0]["WP59"].ToString();
        lit_img_tag.Text = SetImgTag(WP59);
    }

    public static string SetImgTag(string tagStr)
    {
        StringBuilder sb = new StringBuilder();
        if (tagStr != "")
        {
            sb.Append("<div class=\"tagPanel\">");
            var tags = tagStr.Split(',');
            if (tags.Contains("2"))
            {
                sb.Append("<div class=\"tag2\">");
                sb.Append("Free");
                sb.Append("<br/>");
                sb.Append("Shipping");
                sb.Append("</div>");
            }
            if (tags.Contains("1"))
            {
                sb.Append("<div class=\"tag1\">");
                sb.Append("New");
                sb.Append("<br/>");
                sb.Append("Arrival");
                sb.Append("</div>");
            }
            if (tags.Contains("3"))
            {
                sb.Append("<div class=\"tag1\">");
                sb.Append("72H");
                sb.Append("<br/>");
                sb.Append("Limited");
                sb.Append("</div>");
            }
            sb.Append("</div>");

        }
        return sb.ToString();
    }
    public void BindProductSpec()
    {
        divWP58.Visible = false;
        string WP57 = _mainDt.Rows[0]["WP57"].ToString();
        if (WP57.Equals("1"))
        {
            divWP58.Visible = true;
            lit_WP58.Text = _mainDt.Rows[0]["WP58"].ToString();
        }
    }
    public bool CheckExtIds(string pid)
    {
        string pIds = "26347,26296,26346,26323,14707,26328,26341,26315,17159,17155,26316,26358,26301,26298,26359,26339,26370,26362,26322,22950,26335,26365,18435,18049,18022,12601,20900,26329,17353,26342,14898,20665,26375,26377,26378,17395,26318,26379,19513,16740,21273,11891,13775,13970,18675,13431,21292,26327,26395,25245,26398,16746,13751,21328,24609,26400,22949,19494,17083,26408,16127,14323,26410,23629,18613,26344,26310,26311,18456,13461,20909,20910,19535,26419,26325,26326,18469,23842,17434,17853,14897,14426,26420,26421";
        //string pIds = "";
        string[] pAry = pIds.Split(',');
        if (pAry.Contains(pid))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    [System.Web.Services.WebMethod]
    public static string UpdateRvRating(int productId, string groupName, string count, string star)
    {
        string strCon = "Data Source=192.168.2.212;Initial Catalog=HAWOOO_RMS;User ID=hawooo;Password=@hawooo666";


        //string strSql = "UPDATE ProductRating SET ETime=@Etime,ViewCount=@ViewCount,StarCount=@StarCount WHERE PId=@PId";

        //string strSql = @"MERGE INTO [dbo].[ProductReviewRating] [bt]
        //USING @UpDt [ut]
        //ON [bt].[Pid] = [ut].[Pid] AND [bt].[CName]=[ut].[CName] 
        //WHEN MATCHED 
        //THEN UPDATE SET [ETime] = [ut].[ETime],[ViewCount]=[ut].[ViewCount],[StarCount]=[ut].[StarCount] 
        //WHEN NOT MATCHED 
        //THEN INSERT VALUES([ut].[Pid], [ut].[CName],[ut].[ATime],[ut].[ETime],[ut].[Status],[ut].[GpName],[ut].[ViewCount],[ut].[StarCount]); ";


        string strSql = @"IF EXISTS (SELECT TOP 1 1 FROM ProductReviewRating WHERE Pid=@Pid AND CName=@CName) 
UPDATE ProductReviewRating SET ETime=@Etime,ViewCount=@ViewCount,StarCount=@StarCount WHERE PId=@PId AND CName=@CName 
ELSE 
INSERT INTO ProductReviewRating(Pid,CName,ATime,Status,GpName,ViewCount,StarCount) VALUES(@Pid,@CName,@ATime,@Status,@GpName,@ViewCount,@StarCount)";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("PId", SqlDbType.Int, productId));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CName", SqlDbType.VarChar, "HW"));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ATime", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ETime", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("Status", SqlDbType.Int, 1));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("GpName", SqlDbType.NVarChar, groupName));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ViewCount", SqlDbType.Int,Convert.ToInt32(count)));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("StarCount", SqlDbType.Decimal,Convert.ToDecimal(star)));
        bool result = SqlDbmanager.executeNonQry(cmd, strCon);
        string json = "{'status':'"+ result.ToString() + "'}";
        return json;

    }
}