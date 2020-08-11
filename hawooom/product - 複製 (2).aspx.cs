using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

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
                    CFacade.GetFac.GetUserViewFac.UpUserView(pid); //增加使用者瀏覽記錄

                    bindDT(pid); //綁定商品資訊



                    //bindBrand(pid);
                    //mobile MyMasterPage = (mobile)Page.Master;
                    string _viewContent = "fbq('track', 'ViewContent', { content_ids: ['" + Request.QueryString["id"].ToString() + "'],  content_type: 'product',  value: " + lab_md_price.Text + ",  currency: 'MYR'});";
                    Page.ClientScript.RegisterStartupScript(typeof(Page), "fbviewcontent", _viewContent, true);


                    //criteo
                    string email = "";
                    if (Session["A08"] != null)
                    {
                        email = Session["A08"].ToString();
                    }
                    string ctxt = criteo.ProductTag(email, pid);
                    Page.ClientScript.RegisterStartupScript(typeof(Page), "detail", ctxt, true);

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
    private void BindBrand(DataTable dt)
    {
        if (dt.Rows.Count > 0)
        {
            //panel_brand.Visible = true;
            //hf_brand.Value = dt.Rows[0]["BA02"].ToString();
            //lit_B01.Text = "<h5>品牌：<a href='brands.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "'>" + dt.Rows[0]["BA02"].ToString() + "</a></h5>";
            lit_B01.Text = "<div>Brand：<a style=\"color:#e65e5e;text-decoration:underline;\" href='brand_1.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "'>" + dt.Rows[0]["BA02"].ToString() + "</a></div>";
        }
        else
        {
            lit_B01.Text = "";
            //panel_brand.Visible = false;
        }
    }
    //private void bindBrand(int PID)
    //{
    //    string strSql = "SELECT B.B01,BA02 FROM B INNER JOIN BA ON BA.B01=B.B01 WHERE BA09=1 AND B.B01=(SELECT B01 FROM WP WHERE WP01=" + PID + ")";
    //    DataTable dt = SqlDbmanager.queryBySql(strSql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        //panel_brand.Visible = true;
    //        lit_B01.Text = "<div>品牌：<a style=\"color:#e65e5e;text-decoration:underline;\" href='brand_1.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "'>" + dt.Rows[0]["BA02"].ToString() + "</a></div>";
    //    }
    //    else
    //    {
    //        lit_B01.Text = "";
    //        //panel_brand.Visible = false;
    //    }
    //}

    //private void bindGiftList(int pid)
    //{
    //    DataTable dt = CFacade.GetFac.GetGiftEventFac.GetUserGiftEventList(pid);
    //    rp_gift_event.DataSource = dt;
    //    rp_gift_event.DataBind();
    //    if (dt.Rows.Count > 0)
    //        full_gift_event.Visible = true;
    //    else
    //        full_gift_event.Visible = false;

    //    //if (dt.Rows.Count > 0)
    //    //{
    //    //    rp_gift_event.Visible = true;
    //    //}
    //    //else
    //    //{
    //    //    rp_gift_event.Visible = false;
    //    //}
    //}
    private void BindGift(DataTable dt)
    {
        rp_gift_event.DataSource = dt;
        rp_gift_event.DataBind();
        if (dt.Rows.Count > 0)
            full_gift_event.Visible = true;
        else
            full_gift_event.Visible = false;
    }
    public static string linkUrl = "";

    private void bindClassName()
    {

    }
    //綁定商品資訊
    private void bindDT(int pID)
    {
        LgType = (this.Master as mobile).LgType;
        //lit_product_id.Text = pID.ToString();
        guess_you_like.Visible = false;
        s_guess_you_like.Visible = false;
        full_gift_event.Visible = false;
        tag2.Visible = false;
        tag3.Visible = false;
        tag4.Visible = false;

        ProductBL productBL = new ProductBL(pID, LgType);

        //DataSet PDS = CFacade.UserFac.GetProductDetail2(pID); //商品資料
        DataSet PDS = productBL.GetProductDetailInfo();
        if (PDS != null && PDS.Tables[0].Rows.Count > 0)
        {

            CFacade.GetFac.GetWPFac.AddWpCount(pID);
            DataTable MDT = PDS.Tables["WP"];
            string _WP06 = MDT.Rows[0]["WP06"].ToString(); //販售類型

            showTime.Visible = false;
            if (FieldCheck.isDateTime(MDT.Rows[0]["WP32"].ToString()))
            {
                DateTime stime = DateTime.Now; //開始時間
                DateTime etime = Convert.ToDateTime(MDT.Rows[0]["WP32"].ToString()); //優惠結束時間
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

            //if (MDT.Rows[0]["WP50"].ToString().Equals("1"))
            //{
            //    DateTime stime = DateTime.Now; //開始時間
            //    DateTime etime = Convert.ToDateTime(MDT.Rows[0]["WP32"].ToString()); //優惠結束時間
            //    if (etime > stime)
            //    {
            //        if (DateTime.Now >= stime && DateTime.Now <= etime)
            //        {
            //            showTime.Visible = true;
            //            double timecount = PbClass.DateDiff(stime, etime);
            //            ScriptManager.RegisterStartupScript(Page, typeof(Page), "time-event", "setTime(" + timecount + ");", true);
            //        }
            //    }
            //}
            //}

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
                tag4.Visible = true;

            }
            else
            {
                Response.Redirect("index.aspx");
            }
            (Master.FindControl("rurl") as HiddenField).Value = "cart1.aspx?ctype=" + _WP06;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "setCartLink", "$('#cartlink').attr('href','cart1.aspx?ctype=" + _WP06 + "');", true);
            //台灣原價TAG
            if (MDT.Rows[0]["C01"].ToString().Equals("1"))
            {
                tag3.Visible = true;
            }
            if (MDT.Rows[0]["WP17"].ToString().Equals("1"))
            {
                tag2.Visible = true;
            }

            string WP36 = "1";
            if (FieldCheck.isDateTime(MDT.Rows[0]["WP37"].ToString()) && FieldCheck.isDateTime(MDT.Rows[0]["WP38"].ToString()))
            {
                DateTime chkStartTime = DateTime.Parse(MDT.Rows[0]["WP37"].ToString());
                DateTime chkEndTime = DateTime.Parse(MDT.Rows[0]["WP38"].ToString());
                if (DateTime.Now >= chkStartTime && DateTime.Now <= chkEndTime)
                {
                    WP36 = MDT.Rows[0]["WP36"].ToString();
                }
            }
            lit_ha_coin.Text = WP36.ToString();

            Page.Title = Server.HtmlDecode(MDT.Rows[0]["WP02"].ToString());
            hf_WP01.Value = MDT.Rows[0]["WP01"].ToString();
            hf_WP28.Value = MDT.Rows[0]["WP28"].ToString();
            hf_WP29.Value = MDT.Rows[0]["WP29"].ToString();
            hf_WP31.Value = MDT.Rows[0]["WP31"].ToString();
            hf_WP32.Value = MDT.Rows[0]["WP32"].ToString();
            hf_WP08_1.Value = MDT.Rows[0]["WP08_1"].ToString();
            hf_WP06.Value = MDT.Rows[0]["WP06"].ToString();
            hf_WP36.Value = MDT.Rows[0]["WP36"].ToString();
            hf_WP37.Value = MDT.Rows[0]["WP37"].ToString();
            hf_WP38.Value = MDT.Rows[0]["WP38"].ToString();
            lit_WP33_WP34.Text = MDT.Rows[0]["WP34"].ToString();
            DateTime d = new DateTime();
            if (DateTime.TryParse(hf_WP31.Value, out d) && DateTime.TryParse(hf_WP32.Value, out d)) //判斷是否要顯示活動期間資訊
            {
                if (DateTime.Now >= Convert.ToDateTime(hf_WP31.Value) && DateTime.Now <= Convert.ToDateTime(hf_WP32.Value))
                {
                    lit_WP33_WP34.Text = MDT.Rows[0]["WP33"].ToString();
                }
            }
            lit_WP02.Text = MDT.Rows[0]["WP02"].ToString();
            lit_WP21.Text = MDT.Rows[0]["WP21"].ToString();
            decimal WP27 = FieldCheck.isDecimal(MDT.Rows[0]["WP27"].ToString()) ? decimal.Parse(MDT.Rows[0]["WP27"].ToString()) : 0;
            lit_view.Text = WP27 > 999 ? WP27.ToString("0,.#K", CultureInfo.InstalledUICulture) : WP27.ToString();
            int cid = 0;
            if (PDS.Tables.Count > 2)
            {
                DataTable ClassDT = PDS.Tables["CLASS"];
                if (ClassDT.Rows.Count > 0)
                {
                    if (MDT.Rows[0]["WP06"].ToString().Equals("1")) //好物市集
                    {
                        lit_class.Text = "<a href=\"shop.aspx\">Shop > </a>";
                        foreach (DataRow dr in ClassDT.Rows)
                        {
                            lit_class.Text += "<a href=\"shop2.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                        }
                        DataRow[] SCDR = ClassDT.Select("C03 <> '0'");
                        if (SCDR.Length > 0)
                        {
                            cid = int.Parse(SCDR[0]["C01"].ToString());
                        }
                    }
                    else if (MDT.Rows[0]["WP06"].ToString().Equals("2")) //跨國快送
                    {
                        lit_class.Text = "<a href=\"focus.aspx\">跨國快送 > </a>";
                        foreach (DataRow dr in ClassDT.Rows)
                        {
                            lit_class.Text += "<a href=\"focus.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                        }
                    }
                    else if (MDT.Rows[0]["WP06"].ToString().Equals("3")) //限時團購
                    {
                        lit_class.Text = "<a href=\"group.aspx\">限時團購 </a>";
                        //foreach (DataRow dr in ClassDT.Rows)
                        //{
                        //    lit_class.Text += "<a href=\"group_detail.aspx?cid=" + dr["C01"].ToString() + "\">" + dr["C06"].ToString() + "</a>,";
                        //}
                    }
                }
            }
            lit_class.Text = lit_class.Text.Trim(',');
            string fimgs = "";
            if (!MDT.Rows[0]["WP08_1"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_1"].ToString() + "\" /></li>";
            if (!MDT.Rows[0]["WP08_2"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_2"].ToString() + "\" /></li>";
            if (!MDT.Rows[0]["WP08_3"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_3"].ToString() + "\" /></li>";
            if (!MDT.Rows[0]["WP08_4"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_4"].ToString() + "\" /></li>";
            if (!MDT.Rows[0]["WP08_5"].ToString().Equals(""))
                fimgs += "<li><img src=\"../images/webimgs/" + MDT.Rows[0]["WP08_5"].ToString() + "\" /></li>";
            lit_WP08_LIST.Text = fimgs; // 商品圖
            lit_md_BrandName_ProductName.Text = "<span><span class=\"modal-content-productBrand\"></span>" + MDT.Rows[0]["WP02"].ToString() + "</span>";

            lit_WP03.Text = MDT.Rows[0]["WP03"].ToString().Replace("height=", "").Replace("height:", "").Replace("<img", "<img class=\"am-img-responsive\"");
            if (!MDT.Rows[0]["C01"].ToString().Equals("1"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "hidden", "hiddenSamePrice();", true);
            }

            DataSet ds = CFacade.GetFac.GetWPFac.GetRecommendProducts(pID, cid, LgType);//推薦商品
            if (ds.Tables.Count > 0)
            {
                rp_recommend1.DataSource = ds.Tables[0]; //同類型商品
                rp_recommend1.DataBind();
                rp_recommend2.DataSource = ds.Tables[1]; //最多人瀏覽商品
                rp_recommend2.DataBind();
            }


            //規格處理
            DataTable detailDT = PDS.Tables["WPA"];
            img_md_product_img.ImageUrl = "https://www.hawooo.com/images/webimgs/" + MDT.Rows[0]["WP08_1"].ToString();
            rp_md_product_item.DataSource = detailDT;
            rp_md_product_item.DataBind();
            lit_md_BrandName_ProductName.Text = MDT.Rows[0]["WP02"].ToString();

            DataRow sRow = detailDT.Select("WPA06=MIN(WPA06)")[0];
            foreach (RepeaterItem item in rp_md_product_item.Items)
            {
                SetItemPrice(item);
            }
            if (detailDT.Rows.Count == 1)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem", "selectOption('" + detailDT.Rows[0]["WPA01"].ToString() + "');", true);

            }
            else
            {

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "SelectItem", "selectOption('" + sRow["WPA01"].ToString() + "');", true);
            }
            //規格綁定
            detailDT.DefaultView.RowFilter = "WPA03='1'";
            DataTable disDT = detailDT.DefaultView.ToTable();
            rp_dis.DataSource = disDT;
            rp_dis.DataBind();

            //DataRow sRow = detailDT.Select("WPA06=MIN(WPA06)")[0];
            decimal _原價 = PbClass.CashRate(sRow["WPA10"].ToString(), Application["mycashrate"].ToString());
            decimal _售價 = PbClass.CashRate(sRow["WPA06"].ToString(), Application["mycashrate"].ToString());
            //lab_price.Text = _售價.ToString();
            //if (_原價 > _售價)
            //{

            //    // lab_discount_note.Text = (LgType.Equals(LangType.en) ? "Save " : "省 ") + (_原價 - _售價).ToString();
            //    lab_discount_note.Text = "Save " + (_原價 - _售價).ToString();
            //    lab_origianl_price.Text = "" + PbClass.CashRate(sRow["WPA10"].ToString(), Application["mycashrate"].ToString()).ToString();
            //}
            //else
            //{
            //    lab_discount_note.Text = "";
            //    lab_origianl_price.Text = "";
            //    //discount_info.Visible = false;
            //    //lab_md_origianl_price.Visible = false;
            //    //ScriptManager.RegisterStartupScript(Page, typeof(Page), "hiddenInfo", "$('#discount_info').attr('display','none');", true);
            //}




            //折扣券顯示
            panel_coupon.Visible = false;
            DataTable couponDT = PDS.Tables["PCOUPON"];
            if (couponDT.Rows.Count > 0)
            {
                panel_coupon.Visible = true;
                var maxcoupon = couponDT.AsEnumerable().OrderByDescending(x => x.Field<decimal>("PC09")).First();
                lit_coupon_name.Text = maxcoupon["PC02"].ToString();

                rp_product_coupon.DataSource = couponDT;
                rp_product_coupon.DataBind();
            }

            BindBrand(MDT);
            BindGift(PDS.Tables["GIFT"]);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "errmsg", "locatio.href='index.aspx';", true);
        }
        //綁定購物車資訊
        //(this.Master as mobile).bindCartCount();
    }


    /// <summary>
    /// 設定價格
    /// </summary>
    /// <param name="WPA01">規格編號</param>
    private void SetItemPrice(RepeaterItem item)
    {
        int i = 0;
        bool _是否可預購 = hf_WP28.Value.ToString().Equals("1") ? true : false;
        int _可買數量 = Convert.ToInt32((item.FindControl("hf_SCOUNT") as HiddenField).Value);
        int _可買上限 = Convert.ToInt32((item.FindControl("hf_WPA04") as HiddenField).Value);
        int _代購數量上限 = int.TryParse(hf_WP29.Value.ToString(), out i) ? Convert.ToInt32(hf_WP29.Value) : 0;
        if (_可買數量 >= 1)
        {
            int maxcount = _可買數量;
            if (_可買數量 > _可買上限)
            {
                maxcount = _可買上限;
            }
            (item.FindControl("hf_SCOUNT") as HiddenField).Value = _可買數量.ToString();
            (item.FindControl("hf_TYPE") as HiddenField).Value = "0";
        }
        else if (_可買數量 <= 0 && _是否可預購 == true)
        {
            (item.FindControl("lit_md_productItem_name") as Literal).Text = (item.FindControl("lit_md_productItem_name") as Literal).Text + (LgType.Equals(LangType.en) ? "Pre sale" : "(預購中)");
            (item.FindControl("hf_SCOUNT") as HiddenField).Value = _代購數量上限.ToString();
            (item.FindControl("hf_TYPE") as HiddenField).Value = "1";
        }
        else
        {
            (item.FindControl("hf_TYPE") as HiddenField).Value = "-1";
            (item.FindControl("li_option") as HtmlGenericControl).Style["background-color"] = "darkgray";
            (item.FindControl("li_option") as HtmlGenericControl).Attributes.Remove("onclick");
            //(item.FindControl("rb_md_productOption") as RadioButton).Enabled = false;
            (item.FindControl("lit_md_productItem_name") as Literal).Text = (item.FindControl("lit_md_productItem_name") as Literal).Text + (LgType.Equals(LangType.en) ? "(No stock)" : "(無庫存)");
            (item.FindControl("hf_SCOUNT") as HiddenField).Value = "0";
        }

    }
    private void SetItemCount(int minCount, int maxCount)
    {
        //lit_md_buy_count.Text = "<input type=\"text\" value=\"1\" data-rule=\"quantity\" data-min=\"" + minCount + "\" data-max=\"" + maxCount + "\">";
        //<input type="text" value="1" data-rule="quantity" data-min="1" data-max="20">
    }
    public void SelectOption(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "alert('123');", true);
        // sender is the li dom element you'll need to cast it though.
    }


   



    protected void rb_md_productOption_CheckedChanged(object sender, EventArgs e)
    {
        //ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "setClickOption", "optionClick(this);", true);
        //RepeaterItem item = (RepeaterItem)((Control)sender).NamingContainer;
        //string _id = ((RadioButton)item.FindControl("rb_md_productOption_可買數量")).Text;
        //ScriptManager.RegisterClientScriptBlock(UpdatePanel1, typeof(UpdatePanel), "msg", "optionClick();", true);

        //int _可買數量 = Convert.ToInt32((item.FindControl("hf_SCOUNT") as HiddenField).Value);
        //int _可買上限 = Convert.ToInt32((item.FindControl("hf_WPA04") as HiddenField).Value);
        //int maxcount = _可買數量;
        //if(_可買數量 > _可買上限)
        //{
        //    maxcount = _可買上限;
        //}
        //SetItemCount(1, maxcount);rb_md_productOption_CheckedChanged

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
            ScriptManager.RegisterStartupScript(up_cart, typeof(UpdatePanel), "cartMsg", fbScript + "ga('ec:setAction','add', {'step': 2});alert('Join successfully');", true);
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
        string rval = aaFac.SaveTrack(obAA);
        if (rval.Equals("0"))
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Collection successful');", true);
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
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Get Successful');closeCouponModal();", true);
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
}