using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using iTextSharp.xmp.impl;
using Org.BouncyCastle.Security.Certificates;

public partial class user_cart1 : Compress.BasePage
{
    private int _memberID;
    private int _cartType = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;
            BindLgTxt();
            porder.Visible = false;
            if (Session["A01"] != null)
            {
                _memberID = Convert.ToInt32(Session["A01"].ToString());

                //lit_cart1.Text = Request.Cookies["CARTID"].Value.ToString();
                if (Request.QueryString["ctype"] != null)
                {
                    _cartType = FieldCheck.isInt(Request.QueryString["ctype"].ToString()) ? Convert.ToInt32(Request.QueryString["ctype"].ToString()) : 1;
                }
                if (_cartType == 1)//好物市集
                {
                    //lit_cart_type.Text = "好物市集";
                    panel_dis_price.Visible = false;
                }
                else if (_cartType == 3)
                {
                    //lit_cart_type.Text = "限時團購";
                    _cartType = 3; //限時團購
                    panel_full_event.Visible = false;
                    //panel_coupon.Visible = false;
                    panel_ha_coin.Visible = false;
                }
                else if (_cartType == 2)
                {
                    _cartType = 2; //跨國快送
                }
                ViewState["ctype"] = _cartType;



                getLogistics(_cartType); //運費計算
                getFullEvent(_cartType); //滿額折扣
                bindGiftList(_cartType); //綁定贈品清單

                //BindState(); //bindStatePostCode(); //綁定郵遞區號
                //ddl_state_2_OnSelectedIndexChanged(null, null);
                //BindCity(ddl_state_2.SelectedValue.ToString());
                ddl_state_1_SelectedIndexChanged(null, null);

                BindDT(_cartType); //綁定購物車資訊

                BindMemberDefault(); //綁定會員資訊
                if (Session["A19"].ToString().Equals("1"))
                {
                    porder.Visible = true;
                }
                //ShipDT();
            }
            else
            {
                Response.Redirect("index.aspx");
                //Master.Page.ClientScript.RegisterStartupScript(this.GetType(), "loginpanel", "doLogin();", true);
                // Response.Redirect("login.aspx?url=cart");
                //ScriptManager.RegisterClientScriptBlock(up_cart_list, typeof(UpdatePanel), "loginpanel", "doLogin();", true);
            }
        }
    }



    private void BindMemberDefault()
    {
        BindDiscount(_memberID); //綁定會員折扣券
        GetUserGold(); //綁定會員購物金
        GetHaCoin(_memberID); //綁定Ha幣金額
        BindInfo(ViewState["CARTID"].ToString(), _cartType); //綁定訂購人資訊
    }
    private void BindLgTxt()
    {
        LangType lgType = (LangType)ViewState["LG"];
        chk_get_user_info.Text = LangClass.GetMsgInfo("M050", lgType);
        chk_get_last_order_info.Text = LangClass.GetMsgInfo("M051", lgType);

        foreach (ListItem item in rb_ha_discount.Items)
        {
            switch (item.Value.ToString())
            {
                case "1":
                    {
                        item.Text = LangClass.GetMsgInfo("M033", lgType);　//1500點-折抵運費
                        break;
                    }
                case "2":
                    {
                        item.Text = LangClass.GetMsgInfo("M034", lgType); //全額折抵運費
                        break;
                    }
                case "0":
                    {
                        item.Text = LangClass.GetMsgInfo("M035", lgType); //本次不使用hacoin
                        break;
                    }
            }
        }

    }

    private void GetHaCoin(int memberID)
    {

        if (ViewState["ctype"].ToString().Equals("1"))
        {
            CoinFac coinFac = new CoinFac();
            decimal d = coinFac.GetMemberCoin(memberID);
            lit_ha_coin.Text = d.ToString();
        }

    }

    private void getLogistics(int type)
    {
        if (type.Equals(1))
        {
            List<Logistics> logVal = new List<Logistics>();
            logVal = LogisticsFacade.getLogisticsFac.GetLogistics();
            ViewState["logistics"] = logVal;
            //string logTxt = "西馬運費{0}，滿{1}免運、東馬運費{2}，滿{3}免運"; ;
            string logTxt = LangClass.GetMsgInfo("M036", (LangType)ViewState["LG"]);

            var q1 = logVal.FirstOrDefault(p => p.LGT01.Equals("L01"));
            var q2 = logVal.FirstOrDefault(p => p.LGT01.Equals("L02"));
            lit_ship_msg.Text = string.Format(logTxt, q1.LGT02.ToString(), q1.LGT03.ToString(), q2.LGT02.ToString(), q2.LGT03.ToString()).ToString();
        }
        else if (type.Equals(3))
        {
            lit_ship_msg.Text = "本區免運費";
        }
        else
        {
            lit_ship_msg.Text = "";
        }
    }
    //滿額免運功能
    public void getFullEvent(int ctype)
    {
        if (!ctype.Equals(3))
        {
            DataTable dt = CFacade.GetFac.GetFullEventFac.getCartFullEvent(ctype);
            if (dt.Rows.Count > 0)
            {
                ViewState["FE01"] = dt.Rows[0]["FE01"].ToString(); //活動編號
                ViewState["FE02"] = dt.Rows[0]["FE02"].ToString(); //活動名稱
                ViewState["FE03"] = dt.Rows[0]["FE03"].ToString(); //滿額金額
                ViewState["FE04"] = dt.Rows[0]["FE04"].ToString(); //折扣金額
                ViewState["FE11"] = dt.Rows[0]["FE11"].ToString(); //計算方式
            }
        }

    }
    private void BindDiscount(int A01)
    {
        ddl_discount.Items.Clear();
        //ddl_discount.Items.Add(new ListItem("選擇折扣卷", ""));
        ddl_discount.Items.Add(new ListItem(LangClass.GetMsgInfo("M037", (LangType)ViewState["LG"]), ""));
        DataTable dt = CFacade.GetFac.GetGAFac.GetCartCanUseCouponV2(A01);
        foreach (DataRow dr in dt.Rows)
        {
            ddl_discount.Items.Add(new ListItem(dr["GA01"].ToString() + "(RM" + dr["GA02"].ToString() + ")", dr["GA01"].ToString()));
        }
    }
    private void bindGiftList(int ctype)
    {
        up_gift.Visible = false;
        if (!ctype.Equals(3))
        {
            DataTable dt = CFacade.GetFac.GetGiftEventFac.GetAllGiftEventList(ctype);
            rp_gift_list.DataSource = dt;
            rp_gift_list.DataBind();
            if (dt.Rows.Count > 0)
                up_gift.Visible = true;
        }
    }
    //private void bindPayment(int ctype)
    //{
    //    rb_payment.Items.Clear();
    //    rb_payment.Items.Add(new ListItem("Moply 線上付款  &nbsp;<img src=\"../images/payment/pay-list.png\" class=\"am-img-thumbnail\" style=\"width: 700px\" />", "1"));
    //    rb_payment.Items.Add(new ListItem("Cimb Bank 匯款 &nbsp;[Account:80-0327458-9 / Bank:Cimb Bank / Name: Peoples Map Sdn Bhd.]", "0"));
    //    rb_payment.Items.Add(new ListItem("Public Bank 匯款 &nbsp;[Account:3201174410 / Bank:Public Bank / Name: Peoples Map Sdn Bhd.]", "3"));
    //    if (!Session["A19"].ToString().Equals("1"))
    //    {
    //        if (ctype.Equals(2))
    //        {
    //            rb_payment.Items.Add(new ListItem("COD 貨到付款", "2"));
    //        }
    //    }
    //    rb_payment.SelectedIndex = 0;
    //}
    //private void bindState(string stype)
    //{
    //    ddl_state_2.Items.Clear();
    //    DataRow[] SDR = (ViewState["AREA"] as DataTable).Select("AREA03='" + stype + "'");
    //    foreach (DataRow dr in SDR)
    //    {
    //        ddl_state_2.Items.Add(new ListItem(dr["AREA02"].ToString(), dr["AREA01"].ToString()));
    //    }

    //}
    //private void bindStatePostCode()
    //{
    //    DataTable dt = AREA.GetAREADT();
    //    ViewState["AREA"] = dt;
    //    if (dt.Rows.Count > 0)
    //    {
    //        string stype = ddl_state_1.SelectedValue.ToString();
    //        bindState(stype);
    //    }
    //}
    //private string GetStateStr(DataRow[] DRARY)
    //{
    //    string _str = "";
    //    foreach (DataRow dr in DRARY)
    //    {
    //        _str += "<option value=\"" + dr["AREA01"].ToString() + "\">" + dr["AREA02"].ToString() + "</option>";
    //    }
    //    return _str;
    //}

    //protected void Page_PreRender(object sender, EventArgs e)
    //{

    //}
    private void BindInfo(string CartID, int ctype)
    {
        DataTable infoDT = CFacade.CartFac.GetCartInfo(CartID, ctype);
        if (infoDT.Rows.Count > 0)
        {
            txt_name.Text = infoDT.Rows[0]["CTI09"].ToString();
            txt_email.Text = infoDT.Rows[0]["CTI13"].ToString();
            txt_note.Text = infoDT.Rows[0]["CTI14"].ToString();
            txt_phone.Text = infoDT.Rows[0]["CTI11"].ToString();
            txt_tel.Text = infoDT.Rows[0]["CTI10"].ToString();
            txt_address.Text = infoDT.Rows[0]["CTI12"].ToString();
            ddl_state_1.SelectedValue = infoDT.Rows[0]["CTI19"].ToString();
            ddl_state_1_SelectedIndexChanged(null, null);
            if (ddl_state_2.Items.FindByText(infoDT.Rows[0]["CTI20"].ToString()) != null)
            {
                ddl_state_2.SelectedValue = ddl_state_2.Items.FindByText(infoDT.Rows[0]["CTI20"].ToString()).Value;
                ddl_city_OnSelectedIndexChanged(null, null);
            }
            var postInfo = infoDT.Rows[0]["CTI18"].ToString();
            if (ddl_postcode.Items.FindByText(postInfo) != null)
            {
                ddl_postcode.SelectedValue = ddl_postcode.Items.FindByText(postInfo).Value;
            }



            //txt_city.Text = infoDT.Rows[0]["CTI17"].ToString();
            //txt_Postcode.Text = infoDT.Rows[0]["CTI18"].ToString();
        }
    }

    private void DoCriteo()
    {
        //criteo
        //string email = "";
        //if (Session["A08"] != null)
        //{
        //    email = Session["A08"].ToString();
        //}
        //string ctxt = criteo.CartTag(email, cartDT);
        //Page.ClientScript.RegisterStartupScript(typeof(Page), "carttag", ctxt, true);
    }
    //0731
    private void CheckShipEast(DataTable cartDT)
    {
        //0731 判定東馬是否可寄送(開始)
        var selNonEastRows = cartDT.AsEnumerable().Where(v => v.Field<int>("WP55").Equals(0));
        hfShip2East.Value = "YES";
        if (selNonEastRows.Any())
        {
            hfShip2East.Value = "NO";
            string pmsg = "";
            foreach (var row in selNonEastRows)
            {
                pmsg += row["WP02"].ToString().Replace("'", "\\'") + ",";
            }
            hfEastProductMsg.Value = pmsg.Trim(',') + " can\\'t ship to east.";
        }
        //0731 判定東馬是否可寄送(結束)
    }
    private void BindDT(int ctype)
    {
        CART _cart = new CART();
        string _cartType = _cart.CartKey(ctype);
        string _cartID = _cart.GetCartID(_cartType); //取得
        if (_cartID.Equals(""))
        {
            Response.Redirect("index.aspx");
        }
        ViewState["CARTID"] = _cartID;
        if (_cartID != "")
        {
            //購物車明細資訊
            DataTable cartDT = CFacade.CartFac.GetCartDT(_cartID, ctype, (LangType)ViewState["LG"]);
            //0731
            CheckShipEast(cartDT);

            ViewState["CartDetail"] = cartDT;
            //criteo
            //DoCriteo();

            ViewState["GA01"] = null;
            ViewState["GA02"] = null;
            ViewState["GA07"] = null;
            if (cartDT.Rows.Count > 0)
            {

                decimal _total = 0;
                bool _是否計算運費 = false;
                int _商品總數 = 0;
                List<string> _商品IDS = new List<string>(); //所有購買的商品ID

                //取得Event DT

                //跑一次商品明細
                foreach (DataRow dr in cartDT.Rows)
                {
                    _商品IDS.Add(dr["CTD01"].ToString());

                    hfListId.Value += dr["CTD01"].ToString() + ",";


                    if (dr["WP17"].ToString().Equals("0"))
                    {
                        if (_是否計算運費 == false)
                            _是否計算運費 = true;
                    }

                    //總金額=商品單價*數量-折扣券使用
                    _total += PbClass.CashRate(dr["WPA06"].ToString(), Application["mycashrate"].ToString()) * Convert.ToInt32(dr["CTD06"].ToString()) - Convert.ToDecimal(dr["CTD12"].ToString());
                    _商品總數 += Convert.ToInt32(dr["CTD06"].ToString());
                }
                hfListId.Value = hfListId.Value.TrimEnd(',');
                hfNum.Value = _商品總數.ToString();
                hfTotal.Value = _total.ToString();


                //活動判斷
                DataTable eventDT = WebEventFacade.GetWebEventSelPDFac.GetOnTimeWebEvent(_商品IDS);
                if (eventDT.Rows.Count > 0)
                {
                    //ViewState["event"] = eventDT;

                    Tuple<List<WebEventCartUse>, List<WebEventCartUse>> WebEvent = WebEventCartUse.CheckEventUse(eventDT, cartDT);
                    ViewState["WebEvent"] = WebEvent;
                }
                if (eventDT.Rows.Count == 0)
                {
                    ViewState["WebEvent"] = null;
                }


                //取得COUPON DT
                DataTable couponDT = CouponFacade.GetProductCouponUserGetFac.GetUserGetProductAndCoupon(Convert.ToInt32(Session["A01"].ToString()), _商品IDS);
                if (couponDT.Rows.Count > 0)
                {
                    ViewState["coupon"] = couponDT;

                }

                rp_cart_list.DataSource = cartDT;
                rp_cart_list.DataBind();


                ViewState["ship"] = _是否計算運費; //是否計算運費
                ViewState["acount"] = _商品總數; //商品總數
                ViewState["pcount"] = _total; //商品總金額

                string ematicTrack = Ematic.Checkout(cartDT, decimal.Parse(Application["mycashrate"].ToString()));
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "ecTrackOut", "<script>" + ematicTrack + "</script>", false);

                //計算最後金額
                CheckSum(ctype);

                ////處理禮物資訊
                //CheckGift();
            }
            else
            {
                //購物車無商品
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "mg", "alert('" + LangClass.GetMsgInfo("M024", (LangType)ViewState["LG"]) + "');location.href='index.aspx';", true);

            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }




    private void CheckGift()
    {
        //滿額活動判定
        if (rp_gift_list.Items.Count > 0)
        {
            DataTable cartDt = ViewState["CartDetail"] as DataTable;
            foreach (RepeaterItem item in rp_gift_list.Items)
            {
                string eventId = ((HiddenField)item.FindControl("hf_GE01")).Value.ToString();
                //0:固定 1:累計
                string giftRule = ((HiddenField)item.FindControl("hf_GE05")).Value.ToString();
                decimal giftPriceTotal = Convert.ToDecimal(((Literal)item.FindControl("lit_GE02")).Text);
                string excludeBrands = ((HiddenField)item.FindControl("hf_GE16")).Value.ToString(); //排除品牌
                string excludeProducts = ((HiddenField)item.FindControl("hf_GE17")).Value.ToString(); //排除商品
                string filterStr = "";

                if (excludeBrands != "")
                {
                    filterStr = " B01 NOT IN (" + excludeBrands + ") ";
                }
                if (excludeProducts != "")
                {
                    if (filterStr != "")
                        filterStr += " AND ";
                    filterStr += " CTD01 NOT IN (" + excludeProducts + ") ";
                }
                if (filterStr != "")
                {
                    cartDt.DefaultView.RowFilter = filterStr;
                }
                decimal goodsSum = 0;
                decimal goldUse = 0;
                DataTable filterCartDt = cartDt.DefaultView.ToTable();
                if (filterCartDt.Rows.Count > 0)
                {
                    goodsSum = filterCartDt.Rows.OfType<DataRow>().Sum(v => v.Field<decimal>("WPA06") * v.Field<int>("CTD06"));
                }
                else
                {
                    goodsSum = 0;
                }
                if (goodsSum != 0)
                    goodsSum = (goodsSum / 7.6m);
                if (decimal.TryParse(txt_use_gold.Text, out goldUse))
                {
                    decimal coupon = 0;
                    goldUse = Convert.ToDecimal(txt_use_gold.Text.Trim());
                    if (ViewState["GA02"] != null)
                    {
                        coupon = Convert.ToDecimal(ViewState["GA02"].ToString());
                    }
                    goodsSum += goldUse - coupon;
                }
                //v目前金額 = Convert.ToDecimal(ViewState["TSUM"].ToString()) + useGold;
                //判斷
                if (((HiddenField)item.FindControl("hf_GE12")).Value.ToString().Equals("1")) //滿額就贈送
                {
                    goodsSum = CFacade.GetFac.GetGiftEventSelWP.GetEventTotalPrice(filterCartDt, eventId, Application["mycashrate"].ToString());
                }
                if (goodsSum >= giftPriceTotal)
                {
                    (((CheckBox)item.FindControl("chk_gift"))).Checked = true;
                    if (giftRule.Equals("0"))
                        (((Literal)item.FindControl("lit_count"))).Text = "1"; //贈送數量
                    else
                        (((Literal)item.FindControl("lit_count"))).Text = Math.Floor(goodsSum / giftPriceTotal).ToString(); //贈送數量
                    ((Literal)(item.FindControl("lit_non_price"))).Text = "";
                    ((Literal)(item.FindControl("lit_type"))).Text = " <span>" + LangClass.GetMsgInfo("M025", (LangType)ViewState["LG"]) + "</span>";
                }
                else
                {
                    (((CheckBox)item.FindControl("chk_gift"))).Checked = false;
                    (((Literal)item.FindControl("lit_count"))).Text = "0"; //贈送數量
                    ((Literal)(item.FindControl("lit_non_price"))).Text = "「add more:" + (giftPriceTotal - goodsSum).ToString() + "」";
                    //((item.FindControl("lit_type")) as Literal).Text = " <span class=\"not-qualify\">尚未符合活動</span>";
                    ((Literal)(item.FindControl("lit_type"))).Text = " <span class=\"not-qualify\">" + LangClass.GetMsgInfo("M026", (LangType)ViewState["LG"]) + "</span>";
                }
            }
        }
    }
    //綁定購物金
    public void GetUserGold()
    {
        if (Session["A01"] != null)
        {
            decimal gold = CFacade.GetFac.GetADFac.GetUserGold(Convert.ToInt32(Session["A01"].ToString()));
            lit_money.Text = gold.ToString();
            ViewState["GOLD"] = gold.ToString();
        }
        else
        {
            lit_money.Text = "0";
            txt_use_gold.Enabled = false;
        }
    }

    //綁定貨運資訊
    //private void ShipDT()
    //{
    //    DataTable dt = CFacade.UserFac.GetShipDT();
    //    ddl_ship.Items.Clear();
    //    foreach (DataRow dr in dt.Rows)
    //    {
    //        decimal _EA02 = Math.Ceiling(Convert.ToDecimal(dr["EA02"].ToString()) / Convert.ToDecimal(Application["mycashrate"].ToString()));
    //        ddl_ship.Items.Add(new ListItem("(RM" + _EA02.ToString() + ") " + dr["EA09"].ToString(), dr["EA01"].ToString()));
    //    }

    //    ViewState["shipdt"] = dt;
    //}


    private void CleanCoupon()
    {
        ViewState["GA01"] = null;
        ViewState["GA02"] = null;
        lnk_coupon_del.Visible = false;
        lit_discount_txt.Text = "0";
        txt_coupon.Text = "";
        ddl_discount.SelectedValue = "";
    }

    //商品折扣計算
    //運費折扣計算
    //活動折扣計算
    //全站折扣計算
    //購物金計算

    private void CheckSum(int ctype, ref decimal pcount, ref int acount, ref decimal gold, ref decimal total)
    {
        if (ctype == 3) //團購購物車
        {
            lit_ship_free_info.Text = "0";
            lit_price_discount.Text = "0";
            decimal _商品小計 = pcount;
            lit_product_total.Text = _商品小計.ToString();
            int _商品總數 = acount;
            decimal _總金額 = _商品小計;
            if (_商品總數 >= 3)
            {
                _總金額 = Math.Round(_商品小計 * (decimal)0.8, 2);
            }
            else if (_商品總數 == 2)
            {
                _總金額 = Math.Round(_商品小計 * (decimal)0.9, 2);
            }
            gold = 0;
            if (_總金額 < gold)
            {
                gold = _總金額;
                txt_use_gold.Text = _總金額.ToString();
                _總金額 = 0;
            }
            else
            {
                _總金額 = _總金額 - gold;
            }

            txt_use_gold.Text = gold.ToString();
            lit_price_discount.Text = (_商品小計 - _總金額).ToString();
            total = _總金額;
            lit_sum.Text = total.ToString();
        }
        else //一般購物車
        {
            decimal _商品小計 = pcount;
            decimal _總金額 = _商品小計;
            decimal _運費 = 29;
            decimal _免運金額 = 0;

            decimal _全站折扣 = 0;
            //判斷是否有全站活動
            if (ViewState["WebEvent"] != null)
            {
                Tuple<List<WebEventCartUse>, List<WebEventCartUse>> entCart = (Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)(ViewState["WebEvent"]);
                List<WebEventCartUse> wecu = new List<WebEventCartUse>();
                wecu = entCart.Item1;
                _全站折扣 = wecu.Select(s => s.DISSUM).Sum();

            }
            lit_webevnet_total.Text = _全站折扣.ToString();
            _總金額 = _總金額 - _全站折扣;


            //扣除全站折扣卷
            if (ViewState["GA02"] != null)
            {
                if (_總金額 >= Convert.ToDecimal(ViewState["GA07"].ToString()))
                {
                    _總金額 = _總金額 - Convert.ToDecimal(ViewState["GA02"].ToString());
                }
                else
                {
                    CleanCoupon();
                }
            }
            else
            {
                CleanCoupon();
            }

            if (_總金額 < 0)
            {
                _總金額 = 0;
            }

            if (ViewState["ship"].Equals(true))
            {
                List<Logistics> logObjs = ViewState["logistics"] as List<Logistics>;
                Logistics log = new Logistics();
                switch (ddl_state_1.SelectedValue.ToString()) //東西馬運費
                {
                    case "0": //西馬
                        {
                            log = (from obj in logObjs where obj.LGT01.Equals("L01") select obj).First();
                            break;
                        }
                    case "1": //東馬
                        {
                            log = (from obj in logObjs where obj.LGT01.Equals("L02") select obj).First();
                            break;
                        }
                }
                _運費 = (decimal)log.LGT02;
                _免運金額 = (decimal)log.LGT03;

            }
            else
            {
                _運費 = 0;
            }

            lit_ha_use.Text = "0.00";

            //扣除Ha幣開始
            if (ViewState["haType"] != null)
            {
                if (ViewState["haType"].ToString().Equals("1")) //扣除運費
                {
                    ViewState["haCoin"] = 1500;
                    _運費 = 0;
                    lit_ha_use.Text = "0.00";
                }
                else if (ViewState["haType"].ToString().Equals("2")) //扣除金額
                {
                    decimal _使用HA幣 = Math.Floor(Convert.ToDecimal(lit_ha_coin.Text.Trim()) / 100);
                    if (_使用HA幣 >= _總金額)
                    {
                        ViewState["haCoin"] = Math.Floor(_總金額 / 100) * 100;
                        _使用HA幣 = _總金額;
                    }
                    else
                    {
                        ViewState["haCoin"] = _使用HA幣 * 100;
                    }
                    _總金額 = _總金額 - _使用HA幣;
                    lit_ha_use.Text = _使用HA幣.ToString();
                }
            }
            else
            {
                ViewState["haCoin"] = 0;
            }
            //扣除Ha幣結束
            if (_總金額 >= _免運金額)
                _運費 = 0;
            lit_ship_free_info.Text = _運費.ToString();

            _總金額 += _運費;

            lit_product_total.Text = (_商品小計 + _運費).ToString();


            //扣除購物金
            if (ViewState["USEGOLD"] != null)
            {
                if (_總金額 < Convert.ToDecimal(ViewState["USEGOLD"]))
                {
                    ViewState["USEGOLD"] = _總金額;
                    txt_use_gold.Text = _總金額.ToString();
                    _總金額 = 0;
                }
                else
                {
                    _總金額 = _總金額 - Convert.ToDecimal(ViewState["USEGOLD"].ToString());
                }
            }
            else
            {
                ViewState["USEGOLD"] = 0;
            }
            txt_use_gold.Text = ViewState["USEGOLD"].ToString();
            ViewState["CTI29"] = 0;
            if (ViewState["FE01"] != null)
            {
                lit_fullevent_count.Text = "0";
                decimal FE03 = Convert.ToDecimal(ViewState["FE03"].ToString());
                if (_總金額 >= FE03)
                {
                    decimal _fCount = 0;
                    if (ViewState["FE11"].ToString().Equals("1"))
                    {
                        _fCount = Convert.ToDecimal(ViewState["FE04"].ToString()) * Math.Truncate(_總金額 / FE03);
                        //if (_fCount > 40)
                        //    _fCount = 40;
                    }
                    else
                    {
                        _fCount = Convert.ToDecimal(ViewState["FE04"].ToString());
                    }
                    lit_fullevent_count.Text = _fCount.ToString();
                    _總金額 = _總金額 - _fCount;
                    ViewState["CTI29"] = _fCount;
                }

                panel_full_event.Visible = true;
                lit_FE03.Text = "RM" + ViewState["FE03"].ToString();
                lit_FE04.Text = "-" + ViewState["FE04"].ToString();
                //lit_FE11.Text = ViewState["FE11"].ToString().Equals("1") ? "(累計贈送)" : "";
            }
            else
            {
                panel_full_event.Visible = false;
                lit_FE03.Text = "";
                lit_FE04.Text = "";
                lit_FE11.Text = "";
            }
            ViewState["TSUM"] = _總金額;
            lit_sum.Text = _總金額.ToString();
        }
        up_cart_list.Update();
    }
    //判斷結帳總額
    private void CheckSum(int ctype = 1)
    {
        if (ctype == 3) //團購購物車
        {
            lit_ship_free_info.Text = "0";
            lit_price_discount.Text = "0";
            double _商品小計 = Convert.ToDouble(ViewState["pcount"].ToString());
            ViewState["PSUM"] = _商品小計;
            lit_product_total.Text = _商品小計.ToString();
            int _商品總數 = Convert.ToInt32(ViewState["acount"].ToString());
            double _總金額 = _商品小計;
            if (_商品總數 >= 3)
            {
                _總金額 = Math.Round(_商品小計 * 0.8, 2);
            }
            else if (_商品總數 == 2)
            {
                _總金額 = Math.Round(_商品小計 * 0.9, 2);
            }
            if (ViewState["USEGOLD"] != null)
            {
                if (_總金額 < Convert.ToDouble(ViewState["USEGOLD"]))
                {
                    ViewState["USEGOLD"] = _總金額;
                    txt_use_gold.Text = _總金額.ToString();
                    _總金額 = 0;
                }
                else
                {
                    _總金額 = _總金額 - Convert.ToDouble(ViewState["USEGOLD"].ToString());
                }
            }
            else
            {
                ViewState["USEGOLD"] = 0;
            }
            txt_use_gold.Text = ViewState["USEGOLD"].ToString();
            lit_price_discount.Text = (_商品小計 - _總金額).ToString();
            ViewState["TSUM"] = _總金額;
            lit_sum.Text = _總金額.ToString();
        }
        else //一般購物車
        {
            CheckGift();
            decimal goodsSum = Convert.ToDecimal(ViewState["pcount"].ToString());
            ViewState["PSUM"] = goodsSum;
            decimal totalSum = goodsSum;
            decimal _運費 = 29;
            decimal _免運金額 = 0;

            decimal _全站折扣 = 0;
            //判斷是否有全站活動
            if (ViewState["WebEvent"] != null)
            {
                Tuple<List<WebEventCartUse>, List<WebEventCartUse>> entCart = (Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)(ViewState["WebEvent"]);
                List<WebEventCartUse> wecu = new List<WebEventCartUse>();
                wecu = entCart.Item1;
                _全站折扣 = wecu.Select(s => s.DISSUM).Sum();

            }
            lit_webevnet_total.Text = _全站折扣.ToString();
            totalSum = totalSum - _全站折扣;


            //扣除全站折扣卷
            if (ViewState["GA02"] != null)
            {
                if (totalSum >= Convert.ToDecimal(ViewState["GA07"].ToString()))
                {
                    totalSum = totalSum - Convert.ToDecimal(ViewState["GA02"].ToString());
                }
                else
                {
                    CleanCoupon();
                }
            }
            else
            {
                CleanCoupon();
            }

            if (totalSum < 0)
            {
                totalSum = 0;
            }

            if (ViewState["ship"].Equals(true))
            {
                List<Logistics> logObjs = ViewState["logistics"] as List<Logistics>;
                Logistics log = new Logistics();
                switch (ddl_state_1.SelectedValue.ToString()) //東西馬運費
                {
                    case "0": //西馬
                        {
                            log = (from obj in logObjs where obj.LGT01.Equals("L01") select obj).First();
                            break;
                        }
                    case "1": //東馬
                        {
                            log = (from obj in logObjs where obj.LGT01.Equals("L02") select obj).First();
                            break;
                        }
                }
                _運費 = (decimal)log.LGT02;
                _免運金額 = (decimal)log.LGT03;

            }
            else
            {
                _運費 = 0;
            }

            lit_ha_use.Text = "0.00";
            //扣除Ha幣開始
            if (ViewState["haType"] != null)
            {
                if (ViewState["haType"].ToString().Equals("1")) //扣除運費
                {
                    ViewState["haCoin"] = 1500;
                    _運費 = 0;
                    lit_ha_use.Text = "0.00";
                }
                else if (ViewState["haType"].ToString().Equals("2")) //扣除金額
                {
                    decimal useHaCoin = Math.Floor(Convert.ToDecimal(lit_ha_coin.Text.Trim()) / 100);
                    if (useHaCoin >= totalSum)
                    {
                        useHaCoin = Math.Floor(totalSum);
                    }
                    totalSum = totalSum - useHaCoin;
                    ViewState["haCoin"] = useHaCoin * 100;
                    lit_ha_use.Text = Math.Floor(Convert.ToDecimal(ViewState["haCoin"]) / 100).ToString();
                }
            }
            //扣除Ha幣結束
            if (totalSum >= _免運金額)
                _運費 = 0;
            lit_ship_free_info.Text = _運費.ToString();

            totalSum += _運費;

            lit_product_total.Text = (goodsSum + _運費).ToString();


            //扣除購物金
            if (ViewState["USEGOLD"] != null)
            {
                if (totalSum < Convert.ToDecimal(ViewState["USEGOLD"]))
                {
                    ViewState["USEGOLD"] = totalSum;
                    txt_use_gold.Text = totalSum.ToString();
                    totalSum = 0;
                }
                else
                {
                    totalSum = totalSum - Convert.ToDecimal(ViewState["USEGOLD"].ToString());
                }
            }
            else
            {
                ViewState["USEGOLD"] = 0;
            }
            txt_use_gold.Text = ViewState["USEGOLD"].ToString();
            ViewState["CTI29"] = 0;
            if (ViewState["FE01"] != null)
            {
                lit_fullevent_count.Text = "0";
                decimal FE03 = Convert.ToDecimal(ViewState["FE03"].ToString());
                if (totalSum >= FE03)
                {
                    decimal _fCount = 0;
                    if (ViewState["FE11"].ToString().Equals("1"))
                    {
                        _fCount = Convert.ToDecimal(ViewState["FE04"].ToString()) * Math.Truncate(totalSum / FE03);
                        //if (_fCount > 40)
                        //    _fCount = 40;
                    }
                    else
                    {
                        _fCount = Convert.ToDecimal(ViewState["FE04"].ToString());
                    }
                    lit_fullevent_count.Text = _fCount.ToString();
                    totalSum = totalSum - _fCount;
                    ViewState["CTI29"] = _fCount;
                }

                panel_full_event.Visible = true;
                lit_FE03.Text = "RM" + ViewState["FE03"].ToString();
                lit_FE04.Text = "-" + ViewState["FE04"].ToString();
                //lit_FE11.Text = ViewState["FE11"].ToString().Equals("1") ? "(累計贈送)" : "";
                lit_FE11.Text = ViewState["FE11"].ToString().Equals("1") ? "(" + LangClass.GetMsgInfo("M030", (LangType)ViewState["LG"]) + ")" : "";
            }
            else
            {
                panel_full_event.Visible = false;
                lit_FE03.Text = "";
                lit_FE04.Text = "";
                lit_FE11.Text = "";
            }
            ViewState["TSUM"] = totalSum;
            lit_sum.Text = totalSum.ToString();
        }
        up_cart_list.Update();
    }

    protected void img_del_Click(object sender, ImageClickEventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        int _CTD01 = Convert.ToInt32(((HiddenField)ri.FindControl("hf_CTD01")).Value);
        string _CTD03 = ((HiddenField)ri.FindControl("hf_CTD03")).Value;
        string _CTM01 = ViewState["CARTID"].ToString();
        CFacade.CartFac.DelCartItem(_CTM01, _CTD01, _CTD03);
        BindDT(Convert.ToInt32(ViewState["ctype"].ToString()));
    }
    protected void ddl_count_SelectedIndexChanged(object sender, EventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        int _CTD01 = Convert.ToInt32(((HiddenField)ri.FindControl("hf_CTD01")).Value);
        string _CTD03 = ((HiddenField)ri.FindControl("hf_CTD03")).Value;
        string _CTM01 = ViewState["CARTID"].ToString();
        int _pcount = Convert.ToInt32(((DropDownList)ri.FindControl("ddl_count")).SelectedValue);
        CFacade.CartFac.UpCartItem(_CTM01, _CTD01, _CTD03, _pcount);
        BindDT(Convert.ToInt32(ViewState["ctype"].ToString()));
    }
    protected void rp_cart_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager scriptMan = ScriptManager.GetCurrent(this.Page);
        ImageButton btn = e.Item.FindControl("img_del") as ImageButton;
        if (btn != null)
        {
            btn.Click += img_del_Click;
            scriptMan.RegisterAsyncPostBackControl(btn);
        }

        DropDownList drp = e.Item.FindControl("ddl_count") as DropDownList;
        if (drp != null)
        {
            drp.SelectedIndexChanged += ddl_count_SelectedIndexChanged;
            scriptMan.RegisterAsyncPostBackControl(drp);
        }
    }
    protected void rp_cart_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            int _canbuycount = 0;

            ((DropDownList)e.Item.FindControl("ddl_count")).Items.Clear();
            if ((e.Item.FindControl("hf_CTD10") as HiddenField).Value.Equals("0")) //一般
            {
                ((Literal)e.Item.FindControl("lit_booking_msg")).Text = "";
                //_canbuycount = Convert.ToInt32(Math.Floor(Convert.ToDouble(((HiddenField)e.Item.FindControl("hf_D10")).Value) / Convert.ToInt32(((HiddenField)e.Item.FindControl("hf_WPA04")).Value)));
                _canbuycount = Convert.ToInt32((e.Item.FindControl("hf_QTY") as HiddenField).Value);
                if (_canbuycount > Convert.ToInt32((e.Item.FindControl("hf_WPA04") as HiddenField).Value))
                    _canbuycount = Convert.ToInt32((e.Item.FindControl("hf_WPA04") as HiddenField).Value);
            }
            else //預購
            {
                //((Literal)e.Item.FindControl("lit_booking_msg")).Text = "<br/><span style=\"color:#C00;font-weight:600;\">[此商品為預購商品,實際到貨日期依照廠商發貨日期為準]</span>";
                ((Literal)e.Item.FindControl("lit_booking_msg")).Text = "<br/><span style=\"color:#C00;font-weight:600;\">[" + LangClass.GetMsgInfo("M027", (LangType)ViewState["LG"]) + "]</span>";
                _canbuycount = Convert.ToInt32(((e.Item.FindControl("hf_WP29")) as HiddenField).Value);
            }

            //判斷最大可買數量
            string CTD06 = ((HiddenField)e.Item.FindControl("hf_CTD06")).Value;
            for (int i = 1; i <= _canbuycount; i++)
            {
                ((DropDownList)e.Item.FindControl("ddl_count")).Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            if (((DropDownList)e.Item.FindControl("ddl_count")).Items.FindByValue(CTD06) != null)
            {
                ((DropDownList)e.Item.FindControl("ddl_count")).SelectedValue = CTD06;
            }
            else
            {
                ((DropDownList)e.Item.FindControl("ddl_count")).SelectedValue = "1";
            }

            //判斷是否有商品折扣券
            ((LinkButton)e.Item.FindControl("lnk_sel_coupon")).Visible = false;
            ((LinkButton)e.Item.FindControl("lnk_sel_coupon")).Text = "";

            //商品ID
            int pID = Convert.ToInt32(((HiddenField)e.Item.FindControl("hf_CTD01")).Value);

            if (ViewState["coupon"] != null)
            {
                DataTable couponDT = ViewState["coupon"] as DataTable;
                string CTD11 = ((HiddenField)e.Item.FindControl("hf_CTD11")).Value;
                ((HtmlTableCell)e.Item.FindControl("coupontd")).Attributes.Clear();
                ((HtmlTableCell)e.Item.FindControl("coupontd")).Attributes.Add("class", "am-text-center coupon");
                DataRow[] SDR = couponDT.Select("PCS02='" + pID + "'");
                //判斷是否要顯示折扣券按鈕
                if (SDR.Length > 0) //該商品不存在任何折扣券不顯示
                {
                    ((LinkButton)e.Item.FindControl("lnk_sel_coupon")).Visible = true;
                    if (CTD11.Equals("0"))
                    {
                        //(e.Item.FindControl("lnk_sel_coupon") as LinkButton).Text = "選擇折扣券";
                        ((LinkButton)e.Item.FindControl("lnk_sel_coupon")).Text = "" + LangClass.GetMsgInfo("M028", (LangType)ViewState["LG"]) + "";
                    }
                    else
                    {
                        //(e.Item.FindControl("lnk_sel_coupon") as LinkButton).Text = "已選折扣券";
                        ((LinkButton)e.Item.FindControl("lnk_sel_coupon")).Text = "" + LangClass.GetMsgInfo("M029", (LangType)ViewState["LG"]) + "";
                        ((HtmlTableCell)e.Item.FindControl("coupontd")).Attributes.Add("class", "am-text-center coupon use");
                    }

                }
            }

            //判斷全站活動
            if (ViewState["WebEvent"] != null)
            {

                Tuple<List<WebEventCartUse>, List<WebEventCartUse>> entCart = (Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)(ViewState["WebEvent"]);
                //有參加的活動
                List<WebEventCartUse> wcu = entCart.Item1;
                List<WebEventCartUse> noncu = entCart.Item2;
                var HasUseEvent = (from wc in wcu
                                   from wcet in wc.PITEMS
                                   where wcet.PID.Equals(pID)
                                   select new
                                   {
                                       wc.EID,
                                       wc.ENAME,
                                       wc.DURL,
                                       wc.MURL
                                   }).FirstOrDefault();
                if (HasUseEvent != null)
                {
                    ((Literal)e.Item.FindControl("lit_web_event")).Text = WebEventCartUse.GetDeskOKSTR(HasUseEvent.ENAME, HasUseEvent.EID.ToString(), HasUseEvent.DURL);
                }
                else
                {
                    var hasNonUseEvent = (from wc in noncu
                                          from wcet in wc.PITEMS
                                          where wcet.PID.Equals(pID)
                                          select new
                                          {
                                              wc.EID,
                                              wc.ENAME,
                                              wc.DURL,
                                              wc.MURL
                                          });
                    if (hasNonUseEvent != null)
                    {
                        string NonUseStr = "";
                        List<string> eIDS = new List<string>();
                        foreach (var we in hasNonUseEvent)
                        {
                            string eID = we.EID.ToString();

                            if (!eIDS.Contains(eID))
                                NonUseStr += WebEventCartUse.GetDeskNonOKSTR(we.ENAME, we.EID.ToString(), we.DURL);
                            eIDS.Add(eID);
                        }
                        ((Literal)e.Item.FindControl("lit_web_event")).Text = NonUseStr.ToString();
                    }
                }

            }
        }
    }


    protected void ddl_ship_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckSum(Convert.ToInt32(ViewState["ctype"].ToString()));
        //<i class="am-icon-exclamation-triangle"></i>&nbsp;尚缺RM:500免運 <i class="am-icon-arrow-right"></i>
    }
    public decimal EventSum = 0;
    public Tuple<string, string> UseCoupon(string couponNum, string cartId, LangType lg = LangType.zh)
    {
        decimal Amount = 0; //商品總金額
        string strSQL = "SELECT GA01,GA02,GA03,GA07,GA11,GA12,GA13,GA14,GA15,GA16,GA17,GA18,GA19,GA20,G08 FROM GA INNER JOIN G ON G.G01=GA.G01 WHERE GA01=@GA01 AND GA03 <> -2";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSQL;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("GA01", SqlDbType.VarChar, couponNum));
        DataTable couponDt = SqlDbmanager.queryBySql(cmd);
        if (couponDt.Rows.Count > 0)
        {
            //獲取購物車(商品ID/商品金額)
            CART cart = new CART();
            DataTable cartDt = cart.GetChkCart(cartId);


            if (cartDt.Rows.Count > 0)
            {
                strSQL = "SELECT B01 FROM B WHERE B28=2";
                var excBrands = DapperHelper.QuerySQL<B>(strSQL);

                var couponRow = couponDt.Rows[0];

                var infoClasses = couponRow["GA16"].ToString().Split(',');
                var infoBrands = couponRow["GA17"].ToString().Split(',');
                var infoProducts = couponRow["GA18"].ToString().Split(',');
                var mustExcBrands = couponRow["GA19"].ToString().Split(',');
                var mustExcProducs = couponRow["GA20"].ToString().Split(',');
                string cExtType = couponRow["GA15"].ToString(); //0:排除 1:指定
                string excProductMsg = "";
                foreach (DataRow cartRow in cartDt.Rows)
                {
                    var brandId = cartRow["B01"].ToString();
                    var classId = cartRow["WP43"].ToString();
                    var productId = cartRow["CTD01"].ToString();
                    var productName = cartRow["CTD02"].ToString();
                    decimal productDiscount = 0;
                    if (FieldCheck.isDecimal(cartRow["CTD12"].ToString()))
                        productDiscount = Convert.ToDecimal(cartRow["CTD12"].ToString());
                    var productSum = Convert.ToDecimal((int.Parse(cartRow["CTD06"].ToString()) * decimal.Parse(cartRow["WPA06"].ToString()) / 7.6m)) - productDiscount;
                    bool addAmount;

                    if (cExtType.Equals("1")) //指定
                    {
                        addAmount = false || (infoClasses.Contains(classId) || infoBrands.Contains(brandId) || infoProducts.Contains(productId));
                        if (mustExcBrands.Contains(brandId) || mustExcProducs.Contains(productId))
                        {
                            addAmount = false;
                        }
                    }
                    else //排除
                    {
                        addAmount = true;
                        if (infoClasses.Contains(classId) || infoBrands.Contains(brandId) || infoProducts.Contains(productId))
                        {
                            addAmount = false;
                        }
                    }

                    if (!couponRow["GA13"].ToString().Equals("0")) //不排除旗艦店
                    {
                        if (excBrands.Any(v => v.B01.ToString().Equals(brandId))) //排除旗艦店
                        {
                            addAmount = false;
                        }
                    }


                    if (addAmount)
                    {
                        Amount += productSum;

                    }
                    else
                    {
                        excProductMsg += productName + ",";
                    }
                }
                if (excProductMsg.Length > 0)
                {
                    excProductMsg = "<br/>" + excProductMsg.Trim(',') + "，" + LangClass.GetMsgInfo("M076", lg) + " "; //商品無法使用折扣券
                }

                Amount = Amount - EventSum;
                //GA07=低消 GA02=折抵數字 GA14=折扣方式

                string item1 = "";
                string item2 = "";

                if (couponRow["GA03"].ToString().Equals("0"))
                {
                    //item1 = "折扣卷已使用";
                    item1 = LangClass.GetMsgInfo("M069", lg);

                }
                else if (couponRow["GA03"].ToString().Equals("-1"))
                {
                    //item1 = "折扣卷已停用";
                    item1 = LangClass.GetMsgInfo("M070", lg);
                }
                else if (!PbClass.TimeBetween(DateTime.Now, Convert.ToDateTime(couponRow["GA11"].ToString()), Convert.ToDateTime(couponRow["GA12"].ToString())))
                {
                    //item1 = "折扣卷已過期";
                    item1 = LangClass.GetMsgInfo("M071", lg);
                }
                else if (couponRow["G08"].ToString().Equals("0"))
                {
                    //item1 = "該折扣卷活動已停止";
                    item1 = LangClass.GetMsgInfo("M072", lg);
                }
                else if (Convert.ToDecimal(couponRow["GA07"].ToString()) > Amount)
                {
                    //item1 = "消費金額尚未達低消(RM:" + dt.Rows[0]["GA07"].ToString() + ")";
                    item1 = LangClass.GetMsgInfo("M073", lg) + "(RM:" + couponRow["GA07"].ToString() + ")";

                }
                else
                {
                    string GA14 = couponRow["GA14"].ToString();
                    if (GA14.Equals("1")) //折抵金額
                    {
                        item1 = couponRow["GA02"].ToString();
                    }
                    else if (GA14.Equals("2")) //折抵%數
                    {
                        item1 = (Amount * (Convert.ToDecimal(couponRow["GA02"].ToString()) / 100)).ToString("0.00");
                    }

                    item2 = couponRow["GA07"].ToString();
                }
                if (item2.Equals("") || item2.Equals("0.00"))
                {
                    item2 = "0.00";
                    item1 += excProductMsg;
                }
                return Tuple.Create(item1, item2);
            }
            else
            {
                return Tuple.Create(LangClass.GetMsgInfo("M075", lg), "");
                //return Tuple.Create("購物車無資訊", "");
            }
        }
        else
        {
            return Tuple.Create(LangClass.GetMsgInfo("M074", lg), "");
            //return Tuple.Create("無此折扣卷", "");
        }

    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        decimal ccount = Convert.ToDecimal(lit_sum.Text) - Convert.ToDecimal(lit_ship_free_info.Text.Trim());
        //Tuple<string, string> coupon = CFacade.GetFac.GetGAFac.UseCoupon(txt_coupon.Text.Trim().ToUpper(), ccount);
        Tuple<string, string> coupon = UseCoupon(txt_coupon.Text.Trim().ToUpper(), ViewState["CARTID"].ToString());
        decimal d = 0;
        if (decimal.TryParse(coupon.Item1, out d))
        {
            lnk_coupon_del.Visible = true;
            d = Convert.ToDecimal(coupon.Item1);
            lit_discount_txt.Text = d.ToString();
            //lit_discount_txt.Text = "折扣卷：";
            //lit_discount_money.Text = "<span style=\"font-size: 12px\">RM</span>" + d.ToString();
            //lit_discount_num.Text = "編號：" + txt_coupon.Text.Trim() + "&nbsp;<i class=\"am-icon-arrow-right\"></i>";
            ViewState["GA01"] = txt_coupon.Text.Trim().ToUpper();
            ViewState["GA02"] = d.ToString();
            ViewState["GA07"] = coupon.Item2.ToString();

            CheckSum();
            //ScriptManager.RegisterClientScriptBlock(up_coupon, typeof(UpdatePanel), "msg", "alert('" + d.ToString() + "');", true);
        }
        else
        {
            txt_coupon.Text = "";
            ScriptManager.RegisterStartupScript(up_cart_list, typeof(UpdatePanel), "msg", "alert('" + coupon.Item1.Replace("'", "\\'") + "');", true);
        }
    }

    protected void txt_use_gold_TextChanged(object sender, EventArgs e)
    {
        if (ViewState["GOLD"] != null)
        {
            decimal d = 0;
            if (decimal.TryParse(txt_use_gold.Text.Trim(), out d)) //非數字字串
            {
                if (Convert.ToDecimal(txt_use_gold.Text.Trim()) > Convert.ToDecimal(ViewState["GOLD"].ToString()))
                {
                    ViewState["USEGOLD"] = "0";
                    txt_use_gold.Text = "0";
                }
                else
                {
                    ViewState["USEGOLD"] = Convert.ToDecimal(txt_use_gold.Text.Trim());
                }
                CheckSum(Convert.ToInt32(ViewState["ctype"].ToString()));
            }
            else
            {
                txt_use_gold.Text = "0";
            }
        }
        else
        {
            txt_use_gold.Text = "0";
        }
    }
    protected void lnk_coupon_del_Click(object sender, EventArgs e)
    {
        CleanCoupon();
        //lit_discount_money.Text = "";
        //lit_discount_num.Text = "";
        CheckSum();
    }
    protected void btn_pre_Click(object sender, EventArgs e)
    {
        if (ViewState["ctype"].ToString().Equals("1"))
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            Response.Redirect("group.aspx");
        }
    }
    private string chkInfo()
    {
        int i = 0;
        string errorMsg = "";
        LangType LgType = (LangType)ViewState["LG"];
        if (txt_name.Text.Trim().Equals(""))
        {
            //errorMsg += "請輸入姓名 <br/>";
            errorMsg += LangClass.GetMsgInfo("M009", LgType) + "<br/>";
        }

        if (!RegexClass.IsMyPhone(txt_phone.Text.Trim()))
        {
            //errorMsg += "請輸入01開頭的手機號碼 <br/>";
            errorMsg += LangClass.GetMsgInfo("M010", LgType) + "<br/>";
        }
        if (!RegexClass.IsEmail(txt_email.Text.Trim()))
        {
            //errorMsg += "請輸入正確的Email <br/>";
            errorMsg += LangClass.GetMsgInfo("M004", LgType) + "<br/>";
        }
        //if (txt_city.Text.Trim().Equals(""))
        //{
        //    //errorMsg += "請輸入City <br/>";
        //    errorMsg += LangClass.GetMsgInfo("M011", LgType) + "<br/>";
        //}
        if (ddl_postcode.Text.Trim().Equals(""))
        {
            //errorMsg += "請輸入PostCode <br/>";
            errorMsg += LangClass.GetMsgInfo("M012", LgType) + "<br/>";
        }
        if (txt_address.Text.Trim().Equals(""))
        {
            //errorMsg += "請輸入收件地址 <br/>";
            errorMsg += LangClass.GetMsgInfo("M013", LgType) + "<br/>";
        }
        if (porder.Visible == true)
        {
            if (txt_ORM46.Text.Trim().Equals(""))
            {
                //errorMsg += "請輸入訂購人姓名 <br/>";
                errorMsg += LangClass.GetMsgInfo("M014", LgType) + "<br/>";
            }
            if (txt_ORM47.Text.Trim().Equals(""))
            {
                //errorMsg += "請輸入訂購人電話 <br/>";
                errorMsg += LangClass.GetMsgInfo("M015", LgType) + "<br/>";
            }
        }
        //0731
        if (ddl_state_1.SelectedValue.ToString().Equals("1"))
        {
            if (hfShip2East.Value.Equals("NO"))
            {
                errorMsg += hfEastProductMsg.Value.ToString() + "<br/>";
            }
        }
        return errorMsg;
    }

    private bool SaveInfo()
    {

        CARTI objCI = new CARTI();
        objCI.CTM01 = ViewState["CARTID"].ToString();
        objCI.CTI01 = Convert.ToDecimal(ViewState["PSUM"].ToString());
        //objCI.CTI02 = Convert.ToDecimal(ViewState["SHIP"].ToString());
        //objCI.CTI03 = Convert.ToDecimal(ViewState["SHIPFREE"].ToString());
        objCI.CTI02 = Convert.ToDecimal(lit_ship_free_info.Text);
        objCI.CTI03 = 0;
        objCI.CTI04 = Convert.ToDecimal(ViewState["TSUM"].ToString());
        objCI.CTI05 = ViewState["GA01"] != null ? ViewState["GA01"].ToString() : "";
        objCI.CTI06 = ViewState["GA02"] != null ? Convert.ToDecimal(ViewState["GA02"].ToString()) : 0;
        objCI.CTI07 = ViewState["USEGOLD"] != null ? Convert.ToDecimal(ViewState["USEGOLD"].ToString()) : 0;
        //objCI.CTI08 = Convert.ToInt32((ViewState["pay"] as Tuple<string, string>).Item1.ToString());
        objCI.CTI08 = 0;
        objCI.CTI09 = txt_name.Text.Trim();
        objCI.CTI10 = txt_tel.Text.Trim();
        objCI.CTI11 = txt_phone.Text.Trim();
        objCI.CTI12 = txt_address.Text.Trim();
        objCI.CTI13 = txt_email.Text.Trim();
        objCI.CTI14 = txt_note.Text.Trim();
        objCI.CTI15 = DateTime.Now;
        //objCI.CTI16 = Convert.ToInt32(ViewState["EA01"].ToString());
        //objCI.CTI17 = ViewState["EA09"].ToString();
        objCI.CTI16 = 0;
        objCI.CTI17 = ddl_city.SelectedItem.Text.Trim();
        objCI.CTI18 = ddl_postcode.SelectedItem.Text.Trim();
        objCI.CTI19 = Convert.ToInt32(ddl_state_1.SelectedValue.ToString());
        objCI.CTI20 = Convert.ToInt32(ddl_state_2.SelectedValue.ToString());
        objCI.CTI21 = txt_ORM46.Text.Trim();
        objCI.CTI22 = txt_ORM47.Text.Trim();
        if (ViewState["FE01"] != null)
        {
            objCI.CTI23 = ViewState["FE01"].ToString();
        }
        else
        {
            objCI.CTI23 = "";
        }
        if (ViewState["FE02"] != null)
        {
            objCI.CTI24 = ViewState["FE02"].ToString();
        }
        else
        {
            objCI.CTI24 = "";
        }

        objCI.CTI25 = "";
        if (ViewState["FE11"] != null)
        {
            objCI.CTI26 = ViewState["FE11"].ToString();
        }
        else
        {
            objCI.CTI26 = "0";
        }
        if (ViewState["FE03"] != null)
        {
            objCI.CTI27 = Convert.ToDecimal(ViewState["FE03"].ToString());
        }
        else
        {
            objCI.CTI27 = 0;
        }
        if (ViewState["FE04"] != null)
        {
            objCI.CTI28 = Convert.ToDecimal(ViewState["FE04"].ToString());
        }
        else
        {
            objCI.CTI28 = 0;
        }
        if (panel_full_event.Visible.Equals(true))
        {
            objCI.CTI29 = Convert.ToDecimal(ViewState["CTI29"].ToString());
        }
        else
        {
            objCI.CTI29 = 0;
        }
        objCI.CTI30 = "";
        objCI.CTI31 = FieldCheck.isDouble(lit_ha_use.Text.Trim()) ? Convert.ToDouble(lit_ha_use.Text.Trim()) : 0;
        objCI.CTI32 = ViewState["haType"] != null ? Convert.ToInt32(ViewState["haType"].ToString()) : 0;
        objCI.CTI33 = ViewState["haCoin"] != null ? Convert.ToDouble(ViewState["haCoin"].ToString()) : 0;
        objCI.CTI34 = FieldCheck.isDecimal(lit_price_discount.Text) ? Convert.ToDecimal(lit_price_discount.Text) : 0;
        objCI.CTI35 = FieldCheck.isDecimal(lit_webevnet_total.Text) ? Convert.ToDecimal(lit_webevnet_total.Text) : 0;

        bool rval = false;
        if (ViewState["WebEvent"] != null)
        {
            List<WebEventCartUse> wcu = (ViewState["WebEvent"] as Tuple<List<WebEventCartUse>, List<WebEventCartUse>>).Item1;
            rval = CFacade.CartFac.SaveCARTI(objCI, wcu);
        }
        else
        {
            rval = CFacade.CartFac.SaveCARTI(objCI);
        }
        return rval;
    }

    protected void btn_next_Click(object sender, EventArgs e)
    {
        string chkTxt = chkInfo();
        if (chkTxt.Equals(""))
        {
            if (SaveInfo())
            {
                Session["CARTTIME"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                Response.Redirect("cart2.aspx?ctype=" + ViewState["ctype"].ToString());
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_step, typeof(UpdatePanel), "msg", "unblockMsg();alert('ERROR:Please call hawooo +603-76102050');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_step, typeof(UpdatePanel), "msg", "unblockMsg();alert('" + chkTxt + "');", true);
        }
    }

    protected void ddl_state_1_SelectedIndexChanged(object sender, EventArgs e)
    {
        EmLoc loc = (EmLoc)int.Parse(ddl_state_1.SelectedValue.ToString());
        BindState(loc);
        if (rp_cart_list.Items.Count > 0)
        {
            CheckSum(1);
        }
        ddl_state_2_OnSelectedIndexChanged(null, null);
    }


    protected void txt_Postcode_TextChanged(object sender, EventArgs e)
    {
        //checkPostCode();
    }

    protected void rb_payment_SelectedIndexChanged(object sender, EventArgs e)
    {
        //checkPostCode();
    }
    protected void chk_get_user_info_CheckedChanged(object sender, EventArgs e)
    {
        if (chk_get_user_info.Checked.Equals(true))
        {
            chk_get_last_order_info.Checked = false;
            DataTable dt = CFacade.CartFac.CartGetUserInfo(Convert.ToInt32(Session["A01"].ToString()));
            if (dt.Rows.Count > 0)
            {
                txt_name.Text = dt.Rows[0]["A15"].ToString().Equals("") ? txt_name.Text.Trim() : dt.Rows[0]["A15"].ToString();
                txt_email.Text = dt.Rows[0]["A08"].ToString().Equals("") ? txt_email.Text.Trim() : dt.Rows[0]["A08"].ToString();
                txt_phone.Text = dt.Rows[0]["A09"].ToString().Equals("") ? txt_phone.Text.Trim() : dt.Rows[0]["A09"].ToString();
                txt_tel.Text = dt.Rows[0]["A10"].ToString().Equals("") ? txt_tel.Text.Trim() : dt.Rows[0]["A10"].ToString();
                txt_address.Text = dt.Rows[0]["A14"].ToString();
            }
        }
    }
    protected void chk_get_last_order_info_CheckedChanged(object sender, EventArgs e)
    {
        if (chk_get_last_order_info.Checked.Equals(true))
        {
            chk_get_user_info.Checked = false;
            DataTable dt = CFacade.CartFac.CarGetLastOrderInfo(Convert.ToInt32(Session["A01"].ToString()));
            if (dt.Rows.Count > 0)
            {
                txt_name.Text = dt.Rows[0]["ORM13"].ToString();
                txt_tel.Text = dt.Rows[0]["ORM14"].ToString();

                string _phone = PbClass.getCartPhoneNumber(dt.Rows[0]["ORM15"].ToString());
                txt_phone.Text = _phone;

                txt_email.Text = dt.Rows[0]["ORM17"].ToString();
                ddl_state_1.SelectedValue = dt.Rows[0]["ORM36"].ToString();
                ddl_state_1_SelectedIndexChanged(null, null);
                var stateStr = dt.Rows[0]["ORM37"].ToString();
                if (ddl_state_2.Items.FindByValue(stateStr) != null)
                {
                    ddl_state_2.SelectedValue = ddl_state_2.Items.FindByValue(stateStr).Value;
                    ddl_state_2_OnSelectedIndexChanged(null, null);
                }

                var cityStr = dt.Rows[0]["ORM38"].ToString();
                if (ddl_city.Items.FindByValue(cityStr) != null)
                {
                    ddl_city.SelectedValue = ddl_city.Items.FindByText(cityStr).Value;
                    ddl_city_OnSelectedIndexChanged(null, null);
                }
                string postCode = dt.Rows[0]["ORM35"].ToString();
                if (ddl_postcode.Items.FindByText(postCode) != null)
                {
                    ddl_postcode.SelectedValue = ddl_postcode.Items.FindByText(postCode).Value;
                }

                //txt_city.Text = dt.Rows[0]["ORM38"].ToString();
                txt_address.Text = dt.Rows[0]["ORM16"].ToString();
                txt_note.Text = dt.Rows[0]["ORM18"].ToString();
            }
            else
            {
                chk_get_last_order_info.Checked = false;
                //ScriptManager.RegisterClientScriptBlock(up_user_info, typeof(UpdatePanel), "msg", "alert('無上次購買資訊。');", true);
                ScriptManager.RegisterStartupScript(up_user_info, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M017", (LangType)ViewState["LG"]) + "');", true);

            }
        }
    }

    protected void ddl_discount_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (!ddl_discount.SelectedValue.ToString().Equals(""))
        {
            txt_coupon.Text = ddl_discount.SelectedValue.ToString();
            btn_confirm_Click(null, null);
            //decimal ccount = Convert.ToDecimal(lit_sum.Text) - Convert.ToDecimal(lit_ship_free_info.Text.Trim());
            //Tuple<string, string, string> coupon = CFacade.GetFac.GetGAFac.UseCoupon(ddl_discount.SelectedValue.ToString().ToUpper(), ccount);
            //decimal d = 0;
            //if (decimal.TryParse(coupon.Item1, out d))
            //{
            //    txt_coupon.Text = ddl_discount.SelectedValue.ToString();
            //    lnk_coupon_del.Visible = true;
            //    d = Convert.ToDecimal(coupon.Item1);
            //    lit_discount_txt.Text = d.ToString();
            //    //lit_discount_txt.Text = "折扣卷：";
            //    //lit_discount_money.Text = "<span style=\"font-size: 12px\">RM</span>" + d.ToString();
            //    //lit_discount_num.Text = "編號：" + txt_coupon.Text.Trim() + "&nbsp;<i class=\"am-icon-arrow-right\"></i>";
            //    ViewState["GA01"] = txt_coupon.Text.Trim().ToUpper();
            //    ViewState["GA02"] = d.ToString();
            //    ViewState["GA07"] = coupon.Item2.ToString();
            //    ViewState["GA14"] = coupon.Item3.ToString();
            //    CheckSum();
            //    //ScriptManager.RegisterClientScriptBlock(up_coupon, typeof(UpdatePanel), "msg", "alert('" + d.ToString() + "');", true);
            //}
            //else
            //{
            //    txt_coupon.Text = "";
            //    ScriptManager.RegisterStartupScript(up_cart_list, typeof(UpdatePanel), "msg", "alert('" + coupon.Item1 + "');", true);
            //}
        }

    }


    //使用商品折扣券
    protected void btn_coupon_use_Click(object sender, EventArgs e)
    {
        bool isSel = false;
        string _CID = "";
        decimal _CPRICE = 0;
        CARTD obj = new CARTD();
        foreach (RepeaterItem citem in rp_coupon_list.Items)
        {
            if ((citem.FindControl("rb_sel") as RadioButton).Checked == true)
            {
                _CID = (citem.FindControl("hf_PCUGID") as HiddenField).Value;
                _CPRICE = Convert.ToDecimal((citem.FindControl("lit_dis_price") as Literal).Text);
                isSel = true;
                obj.CTM01 = ViewState["CARTID"].ToString();
                obj.CTD03 = hf_ITEM_ID.Value;
                obj.CTD11 = Convert.ToInt32(_CID);
                obj.CTD12 = _CPRICE;
                break;
            }
        }
        if (isSel == true)
        {
            //儲存折扣券號
            CART cart = new CART();
            bool isOK = cart.SetCartItemCoupon(obj);
            if (isOK)
            {
                BindDT(Convert.ToInt32(ViewState["ctype"].ToString()));
                ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "closeCoupon", "closeCoupon();", true);
            }
            else
            {
                //ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "errMsg", "alert('系統錯誤，請重新選擇!');", true);
                ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "errMsg", "alert('" + LangClass.GetMsgInfo("M018", (LangType)ViewState["LG"]) + "');", true);
            }
        }
        else
        {
            //ScriptManager.RegisterStartupScript(up_coupon_list, typeof(UpdatePanel), "msg", "alert('請選擇使用一張折扣券');", true);
            ScriptManager.RegisterStartupScript(up_coupon_list, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M019", (LangType)ViewState["LG"]) + "');", true);
        }
    }

    //取消商品折扣券
    protected void btn_coupon_cancel_Click(object sender, EventArgs e)
    {
        CARTD obj = new CARTD();
        obj.CTM01 = ViewState["CARTID"].ToString();
        obj.CTD03 = hf_ITEM_ID.Value;
        obj.CTD11 = 0;
        obj.CTD12 = 0;
        CART cart = new CART();
        bool isOK = cart.SetCartItemCoupon(obj);
        if (isOK)
        {
            BindDT(Convert.ToInt32(ViewState["ctype"].ToString()));
            ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "closeCoupon", "closeCoupon();", true);
        }
        else
        {
            //ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "errMsg", "alert('系統錯誤，請重新選擇!');", true);
            ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "errMsg", "alert('" + LangClass.GetMsgInfo("M018", (LangType)ViewState["LG"]) + ");", true);
        }
    }
    protected void lnk_sel_coupon_Click(object sender, EventArgs e)
    {

        RepeaterItem item = (RepeaterItem)((Control)sender).NamingContainer;
        string _ID = (item.FindControl("hf_CTD01") as HiddenField).Value; //商品ID
        string _itemID = (item.FindControl("hf_CTD03") as HiddenField).Value; //品項ID

        //取得目前所有購物車資訊
        DataTable cartDetail = ViewState["CartDetail"] as DataTable;
        DataRow[] SDR = cartDetail.Select("CTD03='" + _itemID + "'");
        if (SDR.Length > 0)
        {
            int _count = Convert.ToInt32(SDR[0]["CTD06"].ToString());//商品數量
            decimal _price = PbClass.CashRate(SDR[0]["WPA06"].ToString(), Application["mycashrate"].ToString()) * _count; //商品價格
            string _couponNum = SDR[0]["CTD11"].ToString(); //使用卷號
            hf_ITEM_ID.Value = _itemID;
            if (ViewState["coupon"] != null)
            {
                //判斷ViewState["coupon"]內是否有那些符合商品
                DataTable couponDT = ViewState["coupon"] as DataTable;
                couponDT.DefaultView.RowFilter = "PCS02='" + _ID + "'";
                DataTable bindDT = couponDT.DefaultView.ToTable(); //綁定顯示的折扣券列表
                rp_coupon_list.DataSource = bindDT;
                rp_coupon_list.DataBind();

                foreach (RepeaterItem citem in rp_coupon_list.Items)
                {
                    string _折扣券ID = (citem.FindControl("hf_PCUGID") as HiddenField).Value;
                    string _滿額類型 = (citem.FindControl("hf_PCUG09") as HiddenField).Value;
                    decimal _條件數字 = Convert.ToDecimal((citem.FindControl("hf_PCUG10") as HiddenField).Value);
                    string _折扣方式 = (citem.FindControl("hf_PCUG11") as HiddenField).Value;
                    decimal _折扣數字 = Convert.ToDecimal((citem.FindControl("hf_PCUG12") as HiddenField).Value);
                    decimal _折扣金額 = 0;
                    decimal _折扣後金額 = 0;

                    //計算折扣後商品金額
                    if (_折扣方式.Equals("0")) //%數
                    {
                        _折扣金額 = _price * _折扣數字 / 100;
                    }
                    else if (_折扣方式.Equals("1")) //金額
                    {
                        _折扣金額 = _折扣數字;
                    }
                    _折扣後金額 = _price - _折扣金額;
                    (citem.FindControl("lit_dis_price") as Literal).Text = Math.Round(_折扣金額, 2).ToString();
                    (citem.FindControl("lit_dis_sum") as Literal).Text = Math.Round(_折扣後金額, 2).ToString();
                    (citem.FindControl("lit_state") as Literal).Text = "未符合";
                    (citem.FindControl("rb_sel") as RadioButton).Visible = false;
                    if (_滿額類型.Equals("0")) //滿件
                    {
                        if (_count >= _條件數字)
                        {
                            (citem.FindControl("lit_state") as Literal).Text = "";
                            (citem.FindControl("rb_sel") as RadioButton).Visible = true;
                        }
                    }
                    else if (_滿額類型.Equals("1")) //滿額
                    {
                        if (_price >= _條件數字) //符合條件
                        {
                            (citem.FindControl("lit_state") as Literal).Text = "";
                            (citem.FindControl("rb_sel") as RadioButton).Visible = true;
                        }
                    }

                    //確定折扣券是否符合
                    cartDetail.DefaultView.RowFilter = "CTD11='" + _折扣券ID + "' AND CTD03 NOT IN ('" + _itemID + "')";
                    DataTable chkDetail = cartDetail.DefaultView.ToTable();
                    if (chkDetail.Rows.Count > 0)
                    {
                        (citem.FindControl("lit_state") as Literal).Text = "已使用";
                        (citem.FindControl("rb_sel") as RadioButton).Visible = false;
                        continue;
                    }

                    //原本就選擇使用
                    if (_couponNum.Equals(_折扣券ID))
                    {
                        (citem.FindControl("lit_state") as Literal).Text = "";
                        (citem.FindControl("rb_sel") as RadioButton).Visible = true;
                        (citem.FindControl("rb_sel") as RadioButton).Checked = true;
                        continue;
                    }
                }
                up_coupon_list.Update();
                //4.跳出折扣券視窗
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "open", "openCoupon();", true);
            }
        }
        else
        {
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "errMsg", "alert('商品已移除，請重新載入頁面!');", true);
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "errMsg", "alert('" + LangClass.GetMsgInfo("M023", (LangType)ViewState["LG"]) + "');", true);
        }


    }



    protected void rb_ha_discount_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["haType"] = null;
        ViewState["haCoin"] = null;
        decimal haCoin = Convert.ToDecimal(lit_ha_coin.Text.Trim()); //目前hawooo coin
        if (rb_ha_discount.SelectedValue.Equals("1"))
        {
            if (haCoin >= 1500)
            {
                //ViewState["haCoin"] = 1000;
                ViewState["haType"] = "1";

            }
            else
            {
                rb_ha_discount.ClearSelection();
                //ScriptManager.RegisterStartupScript(up_cart_list, typeof(UpdatePanel), "msg", "alert('Ha幣不足');", true);
                ScriptManager.RegisterStartupScript(up_cart_list, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M022", (LangType)ViewState["LG"]) + "');", true);
            }
        }
        else if (rb_ha_discount.SelectedValue.Equals("2"))
        {
            if (haCoin >= 100)
            {
                //ViewState["haCoin"] = 0;
                ViewState["haType"] = "2";

            }
            else
            {
                rb_ha_discount.ClearSelection();
                //ScriptManager.RegisterStartupScript(up_cart_list, typeof(UpdatePanel), "msg", "alert('Ha幣不足');", true);
                ScriptManager.RegisterStartupScript(up_cart_list, typeof(UpdatePanel), "msg", "alert('" + LangClass.GetMsgInfo("M022", (LangType)ViewState["LG"]) + "');", true);
            }
        }
        else if (rb_ha_discount.SelectedValue.Equals("0"))
        {
            ViewState["haType"] = null;
            rb_ha_discount.ClearSelection();

        }
        CheckSum();
    }
    private PostInfo _postInfo;

    private PostInfo GetPostInfo
    {
        get
        {
            if (_postInfo == null)
                _postInfo = new PostInfo();
            return _postInfo;
        }
    }


    private void BindState(EmLoc loc = EmLoc.West)
    {
        DataTable stateDt = GetPostInfo.GetState(loc);
        ddl_state_2.Items.Clear();
        foreach (DataRow dr in stateDt.Rows)
        {
            ddl_state_2.Items.Add(new ListItem(dr["AREA02"].ToString(), dr["AREA01"].ToString()));
        }

    }

    private void BindCity(string stateStr)
    {
        DataTable cityDt = GetPostInfo.GetCity(stateStr);
        ddl_city.Items.Clear();
        foreach (DataRow dr in cityDt.Rows)
        {
            ddl_city.Items.Add(new ListItem(dr["CITY"].ToString(), dr["CITY"].ToString()));
        }

    }

    private void BindPostCode(string cityStr)
    {
        DataTable postDt = GetPostInfo.GetPostCode(cityStr);
        ddl_postcode.Items.Clear();
        foreach (DataRow dr in postDt.Rows)
        {
            ddl_postcode.Items.Add(new ListItem(dr["POSTCODE"].ToString(), dr["PI01"].ToString()));
        }



    }

    protected void ddl_state_2_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        BindCity(ddl_state_2.SelectedItem.Text.ToString());
        ddl_city_OnSelectedIndexChanged(null, null);
    }

    protected void ddl_city_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        BindPostCode(ddl_city.SelectedValue.ToString());
    }
}