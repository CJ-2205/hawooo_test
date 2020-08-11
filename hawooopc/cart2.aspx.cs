using hawooo;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using SqlLib;

public partial class user_cart2 : System.Web.UI.Page
{
    private IFBUser _fbUser = new FBUserImpl();
    private IFBMessageEvent _msgEvent = new FBMessageEvent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;
            porder.Visible = false;
            if (Session["A01"] != null)
            {
                int ctype = 1;
                if (Request.QueryString["ctype"] != null)
                {
                    if (Request.QueryString["ctype"].ToString().Equals("1"))
                    {
                        ctype = 1; //好物市集
                        //lit_cart_type.Text = "好物市集";
                        panel_dis_price.Visible = false;
                    }
                    else if (Request.QueryString["ctype"].ToString().Equals("2"))
                    {
                        ctype = 2; //跨國快送
                    }
                    else if (Request.QueryString["ctype"].ToString().Equals("3"))
                    {
                        //lit_cart_type.Text = "限時團購";
                        ctype = 3; //限時團購
                        panel_full_event.Visible = false;
                        panel_coupon.Visible = false;
                        panel_ha_coin.Visible = false;
                    }
                }

                ViewState["ctype"] = ctype;

                bindGiftList(ctype);
                bindDT(ctype);
                if (Session["A19"].ToString().Equals("1"))
                {
                    porder.Visible = true;
                }

                // Howard: Please get asid from Table A before if login type is facebook login and execute the function below
                //ViewState["ASID"] = GetUserASID();
                ViewState["ASID"] = "10157393939119757";
                GetUserSubscriptionFlag(ViewState["ASID"].ToString());
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    private void GetUserSubscriptionFlag(string ASID)
    {
        var user = _fbUser.GetUser(ASID);
        if (user != null && user.IsSuscribe == 1)
        {
            hdnSubscribe.Value = "true";
        }
        else
        {
            hdnSubscribe.Value = "false";
        }
    }

    private Tuple<string, string> chkPayItem()
    {
        //0:CIMB 匯款
        //1:MolPay 線上付款
        //2:COD貨到付款
        //3:Public Bank 匯款

        if (op1.Checked == true) // 信用卡付款
        {
            return Tuple.Create("1", "credit");
        }

        if (op2.Checked == true) //7-11付款
        {
            return Tuple.Create("1", "cash");
        }

        if (rb01.Checked == true) //Am Online
        {
            return Tuple.Create("1", "amb");
        }

        if (rb02.Checked == true)
        {
            return Tuple.Create("1", "cimb");
        }

        if (rb03.Checked == true)
        {
            return Tuple.Create("1", "esapay");
        }

        if (rb04.Checked == true)
        {
            return Tuple.Create("1", "affin-epg");
        }

        if (rb05.Checked == true)
        {
            return Tuple.Create("1", "fpx");
        }

        if (rb06.Checked == true)
        {
            return Tuple.Create("1", "hlb");
        }

        if (rb07.Checked == true)
        {
            return Tuple.Create("1", "maybank2u");
        }

        if (rb08.Checked == true)
        {
            return Tuple.Create("1", "rhb");
        }

        if (rb09.Checked == true)
        {
            return Tuple.Create("1", "webcash");
        }

        //線下付款
        if (ofp1.Checked == true) //CIMB
        {
            return Tuple.Create("0", "cimb");
        }

        if (ofp2.Checked == true) //Public Bank
        {
            return Tuple.Create("3", "pbb");
        }

        //if (ofp3.Checked == true) //COD
        //{
        //    return Tuple.Create("2", "cod");
        //}
        return Tuple.Create("", "");
        //ScriptManager.RegisterClientScriptBlock(up_step, typeof(UpdatePanel), "msg", "alert('" + msg + "');", true);
    }

    private void bindGiftList(int ctype)
    {
        DataTable dt = CFacade.GetFac.GetGiftEventFac.GetAllGiftEventList(ctype);
        rp_gift_list.DataSource = dt;
        rp_gift_list.DataBind();
        if (dt.Rows.Count > 0)
        {
            rp_gift_list.Visible = true;
        }
        else
        {
            up_gift.Visible = false;
            rp_gift_list.Visible = false;
        }
    }

    private void bindDT(int _type)
    {
        string _CARTID = String.Empty;
        if (_type == 1 && Request.Cookies["CARTID"] != null)
        {
            _CARTID = Request.Cookies["CARTID"].Value.ToString();
        }

        if (_type == 2 && Request.Cookies["NCARTID"] != null)
        {
            _CARTID = Request.Cookies["NCARTID"].Value.ToString();
        }

        if (_type == 3 && Request.Cookies["GCARTID"] != null)
        {
            _CARTID = Request.Cookies["GCARTID"].Value.ToString();
        }

        ViewState["CARTID"] = _CARTID;
        string ctype = ViewState["ctype"].ToString();
        if (_CARTID != "")
        {
            DataSet ds = CFacade.CartFac.GetCart2Info(_CARTID, _type, (LangType)ViewState["LG"]);
            DataTable detailDT = ds.Tables[0];
            rp_cart_list.DataSource = detailDT;
            rp_cart_list.DataBind();

            DataTable cartInfoDT = ds.Tables[1];

            if (cartInfoDT.Rows.Count > 0)
            {
                //全站活動折抵
                DataTable eventDT = ds.Tables[2];
                decimal eventDisCount = 0;
                if (eventDT.Rows.Count > 0)
                {
                    foreach (RepeaterItem item in rp_cart_list.Items)
                    {
                        string PID = ((HiddenField)item.FindControl("hf_CTD01")).Value;
                        //hfListId.Value += PID + ",";
                        foreach (DataRow eDR in eventDT.Rows)
                        {
                            //eventDisCount += decimal.Parse(eDR["CTE02"].ToString());
                            string[] CTEARY = eDR["CTE04"].ToString().Split(',');
                            if (CTEARY.Contains(PID))
                            {
                                ((Literal)item.FindControl("lit_web_event")).Text =
                                    WebEventCartUse.GetDeskOKSTR(eDR["CTE03"].ToString(), eDR["CTE01"].ToString(),
                                        eDR["WE16"].ToString());
                                break;
                            }
                        }
                    }

                    eventDisCount = eventDT.AsEnumerable().Select(s => s.Field<decimal>("CTE02")).Sum();
                    ViewState["WebEvent"] = eventDT;

                    //if (hfListId.Value != "")
                    //    hfListId.Value = hfListId.Value.TrimEnd(',');
                }

                lit_webevnet_total.Text = eventDisCount.ToString();


                //bindPayment(_type);
                lit_CTI01.Text = (Convert.ToDecimal(cartInfoDT.Rows[0]["CTI01"].ToString()) +
                                  Convert.ToDecimal(cartInfoDT.Rows[0]["CTI02"].ToString())).ToString();
                lit_CTI02.Text = cartInfoDT.Rows[0]["CTI02"].ToString();
                lit_CTI04.Text = cartInfoDT.Rows[0]["CTI04"].ToString();
                lit_CTI07.Text = cartInfoDT.Rows[0]["CTI07"].ToString();
                lit_CTI31.Text = cartInfoDT.Rows[0]["CTI31"].ToString();
                lit_CTI34.Text = cartInfoDT.Rows[0]["CTI34"].ToString();
                ViewState["CTI32"] = cartInfoDT.Rows[0]["CTI32"].ToString();
                ViewState["CTI33"] = cartInfoDT.Rows[0]["CTI33"].ToString();
                if (!cartInfoDT.Rows[0]["CTI05"].ToString().Equals(""))
                {
                    //lit_discount_txt.Text = cartInfoDT.Rows[0]["CTI05"].ToString();
                    lit_discount_money.Text = "" + cartInfoDT.Rows[0]["CTI06"].ToString();
                }
                else
                {
                    //lit_discount_txt.Text = "";
                    lit_discount_money.Text = "0";
                }
                //hfTotal.Value = lit_discount_money.Text;

                txt_city.Text = cartInfoDT.Rows[0]["CTI17"].ToString();
                txt_CTI18.Text = cartInfoDT.Rows[0]["CTI18"].ToString();
                txt_CTI19.Text = AREA.GetAREAStr(cartInfoDT.Rows[0]["CTI19"].ToString());
                txt_CTI20.Text = AREA.GetAREAState2Str(cartInfoDT.Rows[0]["CTI20"].ToString());
                //txt_CTI20.Text = AREA.GetAREAState2Str(Convert.ToInt32(cartInfoDT.Rows[0]["CTI20"].ToString()));
                txt_address.Text = cartInfoDT.Rows[0]["CTI12"].ToString();
                txt_email.Text = cartInfoDT.Rows[0]["CTI13"].ToString();
                txt_name.Text = cartInfoDT.Rows[0]["CTI09"].ToString();
                txt_note.Text = cartInfoDT.Rows[0]["CTI14"].ToString();
                txt_phone.Text = cartInfoDT.Rows[0]["CTI11"].ToString(); //手機號碼
                txt_tel.Text = cartInfoDT.Rows[0]["CTI10"].ToString();

                txt_ORM46.Text = cartInfoDT.Rows[0]["CTI21"].ToString();
                txt_ORM47.Text = cartInfoDT.Rows[0]["CTI22"].ToString();
                //txt_CTI18.Text = cartInfoDT.Rows[0]["CTI18"].ToString();
                //txt_CTI19.Text = cartInfoDT.Rows[0]["CTI19"].ToString();


                //滿額折抵活動判定
                if (!cartInfoDT.Rows[0]["CTI23"].ToString().Equals(""))
                {
                    panel_full_event.Visible = true;
                    lit_FE03.Text = "RM" + cartInfoDT.Rows[0]["CTI27"].ToString();
                    lit_FE04.Text = "-RM" + cartInfoDT.Rows[0]["CTI28"].ToString();
                    //lit_FE11.Text = cartInfoDT.Rows[0]["CTI26"].ToString().Equals("1") ? "(累積贈送)" : "";
                    lit_FE11.Text = cartInfoDT.Rows[0]["CTI26"].ToString().Equals("1")
                        ? "(" + LangClass.GetMsgInfo("M030", (LangType)ViewState["LG"]) + ")"
                        : "";
                    lit_fullevent_count.Text = cartInfoDT.Rows[0]["CTI29"].ToString();
                }
                else
                {
                    panel_full_event.Visible = false;
                    lit_FE03.Text = "";
                    lit_FE04.Text = "";
                    lit_FE11.Text = "";
                    lit_fullevent_count.Text = "";
                }

                //滿額活動判定
                CheckGift(detailDT);
            }
            else
            {
                Response.Redirect("cart1.aspx?ctype=" + ctype);
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }

        //DataTable dt = CFacade.CartFac.GetCartDT();
    }

    private void CheckGift(DataTable cartDt)
    {
        //滿額活動判定
        if (rp_gift_list.Items.Count > 0)
        {
            foreach (RepeaterItem item in rp_gift_list.Items)
            {
                string EID = ((HiddenField)item.FindControl("hf_GE01")).Value.ToString();
                //0:固定 1:累計
                string v贈送方式 = ((HiddenField)item.FindControl("hf_GE05")).Value.ToString();
                decimal v滿額金額 = Convert.ToDecimal(((Literal)item.FindControl("lit_GE02")).Text);
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
                    goodsSum = filterCartDt.Rows.OfType<DataRow>()
                        .Sum(v => v.Field<decimal>("WPA06") * v.Field<int>("CTD06"));
                }
                else
                {
                    goodsSum = 0;
                }

                if (goodsSum != 0)
                    goodsSum = (goodsSum / 7.6m);


                //v目前金額 = Convert.ToDecimal(ViewState["TSUM"].ToString()) + useGold;
                //判斷
                string giftRuleType = ((HiddenField)item.FindControl("hf_GE12")).Value.ToString();
                if (giftRuleType.Equals("1")) //By商品
                {
                    goodsSum = CFacade.GetFac.GetGiftEventSelWP.GetEventTotalPrice(filterCartDt, EID,
                        Application["mycashrate"].ToString());
                }
                else //By總額
                {
                    goldUse = Convert.ToDecimal(lit_CTI07.Text.Trim());
                    goodsSum += goldUse;
                    goodsSum = goodsSum - Convert.ToDecimal(lit_discount_money.Text);
                }

                if (goodsSum >= v滿額金額)
                {
                    (((CheckBox)item.FindControl("chk_gift"))).Checked = true;
                    if (v贈送方式.Equals("0"))
                        (((Literal)item.FindControl("lit_count"))).Text = "1"; //贈送數量
                    else
                        (((Literal)item.FindControl("lit_count"))).Text =
                            Math.Floor(goodsSum / v滿額金額).ToString(); //贈送數量
                    ((Literal)(item.FindControl("lit_non_price"))).Text = "";
                    ((Literal)(item.FindControl("lit_type"))).Text =
                        " <span>" + LangClass.GetMsgInfo("M025", (LangType)ViewState["LG"]) + "</span>";
                }
                else
                {
                    (((CheckBox)item.FindControl("chk_gift"))).Checked = false;
                    (((Literal)item.FindControl("lit_count"))).Text = "0"; //贈送數量
                    ((Literal)(item.FindControl("lit_non_price"))).Text =
                        "「add more:" + (v滿額金額 - goodsSum).ToString() + "」";
                    //((item.FindControl("lit_type")) as Literal).Text = " <span class=\"not-qualify\">尚未符合活動</span>";
                    ((Literal)(item.FindControl("lit_type"))).Text =
                        " <span class=\"not-qualify\">" + LangClass.GetMsgInfo("M026", (LangType)ViewState["LG"]) +
                        "</span>";
                }
            }
        }
    }
    //private void bindPayment(int ctype)
    //{
    //rb_payment.Items.Clear();
    //rb_payment.Items.Add(new ListItem("Moply 線上付款  &nbsp;<img src=\"../images/payment/pay-list.png\" class=\"am-img-thumbnail\" style=\"width: 700px\" />", "1"));
    //rb_payment.Items.Add(new ListItem("Cimb Bank 匯款 &nbsp;[Account:80-0327458-9 / Bank:Cimb Bank / Name: Peoples Map Sdn Bhd.]", "0"));
    //rb_payment.Items.Add(new ListItem("Public Bank 匯款 &nbsp;[Account:3201174410 / Bank:Public Bank / Name: Peoples Map Sdn Bhd.]", "3"));
    //if (!Session["A19"].ToString().Equals("1"))
    //{
    //    if (ctype.Equals(2))
    //    {
    //        rb_payment.Items.Add(new ListItem("COD 貨到付款", "2"));
    //    }
    //}
    //rb_payment.SelectedIndex = 0;
    //}checkout_option


    protected void btn_pre_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart1.aspx?ctype=" + ViewState["ctype"].ToString());
    }

    protected void btn_next_Click(object sender, EventArgs e)
    {
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "bmsg", "blockMsg('Please wait...');", true);

        string ctype = ViewState["ctype"].ToString();
        bool isOK = true;
        //(1)取得購物車資訊
        DataTable CartDT = CFacade.CartFac.GetCartDT(ViewState["CARTID"].ToString(), Convert.ToInt32(ctype));
        //(2)取得訂單明細資訊
        DataTable CartInfo = CFacade.CartFac.GetCartInfo(ViewState["CARTID"].ToString(), Convert.ToInt32(ctype));
        if (CartDT.Rows.Count <= 0)
        {
            Response.Redirect("index.aspx");
        }

        if (CartInfo.Rows.Count <= 0)
        {
            Response.Redirect("index.aspx");
        }


        Tuple<string, string> payItem = chkPayItem();
        if (payItem.Item1.Equals(""))
        {
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert('請選擇付款方式');", true);
            ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "msg",
                "unblockMsg();alert('" + LangClass.GetMsgInfo("M016", (LangType)ViewState["LG"]) + "');", true);
            isOK = false;
        }

        //2.折扣卷是否使用
        if (!CartInfo.Rows[0]["CTI05"].ToString().Equals(""))
        {
            Tuple<string, string, string> coupon =
                CFacade.GetFac.GetGAFac.UseCoupon(CartInfo.Rows[0]["CTI05"].ToString(),
                    Convert.ToDecimal(lit_CTI01.Text));
            decimal d = 0;
            if (!decimal.TryParse(coupon.Item1, out d))
            {
                ScriptManager.RegisterStartupScript(up_edit, typeof(UpdatePanel), "msg",
                    "unblockMsg();alert2url('" + coupon + "','cart1.aspx');", true);
                isOK = false;
            }
        }


        //3.購物金是否足夠
        if (Convert.ToDecimal(CartInfo.Rows[0]["CTI07"].ToString()) > 0)
        {
            decimal gold = CFacade.GetFac.GetADFac.GetUserGold(Convert.ToInt32(Session["A01"].ToString()));
            if (gold < Convert.ToDecimal(CartInfo.Rows[0]["CTI07"].ToString()))
            {
                //ScriptManager.RegisterStartupScript(up_edit, typeof(UpdatePanel), "msg", "unblockMsg();alert2url('購物金不足','cart1.aspx');", true);
                ScriptManager.RegisterStartupScript(up_edit, typeof(UpdatePanel), "msg",
                    "unblockMsg();alert2url('" + LangClass.GetMsgInfo("M031", (LangType)ViewState["LG"]) +
                    "','cart1.aspx');", true);
                isOK = false;
            }
        }


        //4.Ha幣是否足夠
        int useType = int.Parse(CartInfo.Rows[0]["CTI32"].ToString()); //Hacoin是否使用
        decimal useHacoin = Convert.ToDecimal(CartInfo.Rows[0]["CTI33"].ToString()); //Hacoin使用點數
        decimal useHacoinTransMoney = Convert.ToDecimal(CartInfo.Rows[0]["CTI31"].ToString()); //折抵金額
        if (useType.Equals(0) && (useHacoin > 0 || useHacoinTransMoney > 0))
        {
            ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "msg",
                "unblockMsg();alert2url('If there is a problem with the use hacoin, please reconfirm the order content','cart1.aspx');",
                true);
            isOK = false;
        }

        if (useType == 2)
        {
            if (useHacoinTransMoney != Math.Floor(useHacoin / 100))
            {
                ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "msg",
                    "unblockMsg();alert2url('If there is a problem with the use hacoin, please reconfirm the order content','cart1.aspx');",
                    true);
                isOK = false;
            }
        }

        if (useType != 0)
        {
            decimal hacoin = CoinFacade.GetCoinFac.GetMemberCoin(Convert.ToInt32(Session["A01"].ToString()));
            if (hacoin < Convert.ToDecimal(useHacoin))
            {
                //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert2url('Ha幣不足','cart1.aspx');", true);
                ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "msg",
                    "unblockMsg();alert2url('" + LangClass.GetMsgInfo("M022", (LangType)ViewState["LG"]) +
                    "','cart1.aspx');", true);
                isOK = false;
            }
        }

        //4.商品數量是否足夠(暫不處理)

        //5.產生訂單
        if (isOK.Equals(true))
        {
            decimal _訂單金額 = 0;
            string _OID = Guid.NewGuid().ToString();
            decimal _商品折扣券總額 = 0;

            // Howard: 
            AddSuscribedUser();

            //折扣券LIST
            List<int> UseProductCoupon = new List<int>();
            //儲存訂單明細
            List<ORDERD> ordDList = new List<ORDERD>();
            List<GoogleProduct> googleProducts = new List<GoogleProduct>();
            foreach (DataRow dr in CartDT.Rows)
            {
                ORDERD ordD = new ORDERD();
                ordD.ORDGID = Guid.NewGuid().ToString();
                ordD.ORM01 = _OID;
                ordD.ORD01 = Convert.ToInt32(dr["CTD01"].ToString());
                ordD.ORD02 = dr["WP02"].ToString();
                ordD.ORD02_EN = dr["WP23"].ToString();
                ordD.ORD03 = dr["CTD03"].ToString();
                ordD.ORD04 = dr["WPA02"].ToString();
                ordD.ORD04_EN = dr["WPA09"].ToString();
                ordD.ORD05 = PbClass.CashRate(dr["WPA06"].ToString(), Application["mycashrate"].ToString()); //商品售價(MY)
                ordD.ORD06 = Convert.ToInt32(dr["CTD06"].ToString());
                ordD.ORD07 = dr["CTD09"].ToString();
                ordD.ORD08 = PbClass.CashRate(dr["WPA10"].ToString(), Application["mycashrate"].ToString()); //商品市價(MY)
                ordD.ORD09 = 1;
                ordD.ORD11 = Convert.ToInt32(dr["CTD10"].ToString());
                ordD.ORD14 = PbClass.CashRate(dr["WPA12"].ToString(), Application["mycashrate"].ToString()); //商品實價(MY)

                decimal rebate = 1;
                if (Session["MRebate"] != null)
                    rebate = Convert.ToDecimal(Session["MRebate"].ToString());
                ordD.ORD15 = rebate;
                ordD.ORD16 = Math.Floor(Convert.ToDecimal(ordD.ORD05) * Convert.ToDecimal(dr["CTD06"].ToString()) *
                                        rebate);

                if (dr["CTD11"].ToString().Equals("0"))
                {
                    ordD.ORD17 = 0;
                    ordD.ORD18 = 0;
                }
                else
                {
                    ordD.ORD17 = Convert.ToInt32(dr["CTD11"].ToString());
                    ordD.ORD18 = Convert.ToDecimal(dr["CTD12"].ToString());
                    //增加折扣券
                    UseProductCoupon.Add(Convert.ToInt32(ordD.ORD17));
                }

                ordD.ORD19 = Convert.ToInt32(dr["WP17"].ToString());
                ordD.ORD20 = Convert.ToInt32(dr["B28"].ToString());
                ordD.ORD21 = Convert.ToInt32(dr["B31"].ToString());
                ordD.ORD22 = Convert.ToDecimal(dr["B29"].ToString());
                ordD.ORD23 = Convert.ToInt32(dr["WP53"].ToString());
                ordD.ORD24 = Convert.ToInt32(dr["WP43"].ToString());
                ordD.ORD25 = dr["C06"].ToString();
                ordDList.Add(ordD);

                GoogleProduct gp = new GoogleProduct();
                gp.id = ordD.ORD01.ToString();
                gp.name = ordD.ORD02.ToString() + "-" + ordD.ORD04.ToString();
                gp.sku = ordD.ORD03.ToString();
                gp.category = dr["C06"].ToString();

                _商品折扣券總額 += Convert.ToDecimal(ordD.ORD18);
                _訂單金額 += Convert.ToDecimal(ordD.ORD05) * Convert.ToDecimal(ordD.ORD06) - Convert.ToDecimal(ordD.ORD18);
            }

            string pcouponMsg = "OK";
            if (UseProductCoupon.Count > 0)
            {
                //判斷商品折扣券是否使用或過期
                pcouponMsg = CouponFacade.GetProductCouponUserGetFac.CheckCouponState(UseProductCoupon);
            }

            if (!pcouponMsg.Equals("OK"))
            {
                ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "msg", "alert('" + pcouponMsg + "');", true);
            }
            else
            {
                ORDERM ordM = new ORDERM();
                ordM.ORM01 = _OID;
                //判斷訂單格式
                if (Convert.ToInt32(ViewState["ctype"].ToString()) == 1)
                {
                    ordM.ORM02 = "S" + DateTime.Now.ToString("yyMMddHHmmssfff");
                }
                else if (Convert.ToInt32(ViewState["ctype"].ToString()) == 2)
                {
                    ordM.ORM02 = "N" + DateTime.Now.ToString("yyMMddHHmmssfff");
                }
                else if (Convert.ToInt32(ViewState["ctype"].ToString()) == 3)
                {
                    ordM.ORM02 = "G" + DateTime.Now.ToString("yyMMddHHmmssfff");
                }

                ordM.ORM03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                ordM.ORM04 = CartInfo.Rows[0]["CTM01"].ToString();
                ordM.ORM05 = Convert.ToDecimal(CartInfo.Rows[0]["CTI01"].ToString());
                ordM.ORM06 = Convert.ToDecimal(CartInfo.Rows[0]["CTI02"].ToString());
                ordM.ORM07 = Convert.ToDecimal(CartInfo.Rows[0]["CTI03"].ToString());
                ordM.ORM08 = Convert.ToDecimal(CartInfo.Rows[0]["CTI04"].ToString());
                ordM.ORM09 = CartInfo.Rows[0]["CTI05"].ToString();
                ordM.ORM10 = Convert.ToDecimal(CartInfo.Rows[0]["CTI06"].ToString());
                ordM.ORM11 = Convert.ToDecimal(CartInfo.Rows[0]["CTI07"].ToString());
                //ordM.ORM12 = Convert.ToInt32(CartInfo.Rows[0]["CTI08"].ToString());
                ordM.ORM12 = Convert.ToInt32(payItem.Item1.ToString()); //付款方式
                ordM.ORM65 = payItem.Item2.ToString(); //付款字串
                ordM.ORM13 = CartInfo.Rows[0]["CTI09"].ToString();
                ordM.ORM14 = CartInfo.Rows[0]["CTI10"].ToString();
                ordM.ORM15 = CartInfo.Rows[0]["CTI11"].ToString();
                ordM.ORM16 = CartInfo.Rows[0]["CTI12"].ToString();
                ordM.ORM17 = CartInfo.Rows[0]["CTI13"].ToString();
                ordM.ORM18 = CartInfo.Rows[0]["CTI14"].ToString();
                //ordM.ORM19 = Convert.ToInt32(CartInfo.Rows[0]["CTI16"].ToString());
                ordM.ORM19 = 0;
                ordM.ORM20 = "";
                ordM.ORM21 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                ordM.ORM22 = Convert.ToDouble(Application["mycashrate"].ToString());
                ordM.ORM23 = Convert.ToInt32(Session["A01"].ToString());
                ordM.ORM24 = 0;
                //ordM.ORM31 = CartInfo.Rows[0]["CTI18"].ToString();
                //ordM.ORM32 = CartInfo.Rows[0]["CTI19"].ToString();
                ordM.ORM35 = CartInfo.Rows[0]["CTI18"].ToString();
                ordM.ORM36 = Convert.ToInt32(CartInfo.Rows[0]["CTI19"].ToString());
                ordM.ORM37 = Convert.ToInt32(CartInfo.Rows[0]["CTI20"].ToString());
                ordM.ORM38 = CartInfo.Rows[0]["CTI17"].ToString();
                ordM.ORM39 = "SP";
                ordM.ORM40 = "";
                ordM.ORM46 = txt_ORM46.Text.Trim();
                ordM.ORM47 = txt_ORM47.Text.Trim();
                ordM.ORM48 = ViewState["ctype"].ToString();
                ordM.ORM49 = "";
                if (Request.Cookies["TCODE"] != null)
                {
                    ordM.ORM49 = Request.Cookies["TCODE"].Value.ToString();
                }

                ordM.ORM55 = CartInfo.Rows[0]["CTI23"].ToString();
                ordM.ORM56 = CartInfo.Rows[0]["CTI24"].ToString();
                ordM.ORM57 = Convert.ToInt32(CartInfo.Rows[0]["CTI26"].ToString());
                ordM.ORM58 = Convert.ToDecimal(CartInfo.Rows[0]["CTI27"].ToString());
                ordM.ORM59 = Convert.ToDecimal(CartInfo.Rows[0]["CTI28"].ToString());
                ordM.ORM60 = Convert.ToDecimal(CartInfo.Rows[0]["CTI29"].ToString());
                ordM.ORM66 = Convert.ToDouble(CartInfo.Rows[0]["CTI31"].ToString()); //Ha幣折抵金額
                ordM.ORM67 = Convert.ToInt32(CartInfo.Rows[0]["CTI32"].ToString()); //Ha幣類型
                ordM.ORM68 = Convert.ToDouble(CartInfo.Rows[0]["CTI33"].ToString()); //Ha使用點數
                ordM.ORM69 = Convert.ToDecimal(CartInfo.Rows[0]["CTI34"].ToString()); //打折後的折扣金額
                ordM.ORM70 = _商品折扣券總額;
                ordM.ORM73 = Convert.ToDecimal(CartInfo.Rows[0]["CTI35"].ToString()); //全站活動折扣
                ordM.ORM74 = (this.Master as user_user).LgType.ToString();
                _訂單金額 += Convert.ToDecimal(ordM.ORM06); //加運費
                _訂單金額 = _訂單金額 - Convert.ToDecimal(ordM.ORM73) - Convert.ToDecimal(ordM.ORM10) -
                        Convert.ToDecimal(ordM.ORM11) - Convert.ToDecimal(ordM.ORM59) - Convert.ToDecimal(ordM.ORM66) -
                        Convert.ToDecimal(ordM.ORM69);
                if (_訂單金額 != ordM.ORM08) //訂單有變更過
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "msg",
                        "unblockMsg();alert2url('" + LangClass.GetMsgInfo("M032", (LangType)ViewState["LG"]) +
                        "','cart1.aspx');", true);
                    //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert2url('購物車商品有變更，請重新確認訂單內容','cart1.aspx');", true);
                }
                else
                {
                    List<ORDERE> ORELIST = new List<ORDERE>();
                    if (rp_gift_list.Items.Count > 0)
                    {
                        GiftEventFac giftFac = new GiftEventFac();
                        var giftDT = giftFac.GetAllGiftEventList(int.Parse(ViewState["ctype"].ToString()));
                        foreach (RepeaterItem ri in rp_gift_list.Items)
                        {
                            if ((ri.FindControl("chk_gift") as CheckBox).Checked == true)
                            {
                                ORDERE obORE = new ORDERE();
                                obORE.ORM01 = _OID;
                                obORE.ORE01 = ((HiddenField)ri.FindControl("hf_GE01")).Value;
                                obORE.ORE04 = Convert.ToInt32((ri.FindControl("lit_count") as Literal).Text);
                                obORE.ORE08 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                giftDT.DefaultView.RowFilter = "GE01='" + obORE.ORE01 + "'";
                                DataTable gDT = giftDT.DefaultView.ToTable();
                                if (gDT != null)
                                {
                                    obORE.ORE02 = gDT.Rows[0]["GP01"].ToString();
                                    obORE.ORE03 = gDT.Rows[0]["GP02"].ToString();
                                    obORE.ORE05 = decimal.Parse(gDT.Rows[0]["GE02"].ToString());
                                    obORE.ORE06 = gDT.Rows[0]["GE10"].ToString();
                                    obORE.ORE06_EN = gDT.Rows[0]["GE10_EN"].ToString();
                                    obORE.ORE07 = gDT.Rows[0]["GE11"].ToString();
                                    obORE.ORE07_EN = gDT.Rows[0]["GE11_EN"].ToString();
                                    obORE.ORE09 = gDT.Rows[0]["GP10"].ToString();
                                    obORE.ORE10 = "";
                                    ORELIST.Add(obORE);
                                }
                            }
                        }
                    }

                    int rval = 0;
                    if (ViewState["WebEvent"] != null)
                    {
                        rval = CFacade.OrderFac.CreateOrder(ordM, ordDList, ORELIST,
                            Convert.ToInt32(ViewState["ctype"].ToString()), UseProductCoupon,
                            (ViewState["WebEvent"] as DataTable));
                    }
                    else
                    {
                        rval = CFacade.OrderFac.CreateOrder(ordM, ordDList, ORELIST,
                            Convert.ToInt32(ViewState["ctype"].ToString()), UseProductCoupon);
                    }

                    if (rval > 0)
                    {
                        //取消TCODE COOKIE
                        if (Request.Cookies["TCODE"] != null)
                        {
                            HttpCookie tcode = HttpContext.Current.Request.Cookies["TCODE"];
                            tcode.Expires = DateTime.Now.AddDays(-10);
                            tcode.Value = null;
                            HttpContext.Current.Response.SetCookie(tcode);
                            HttpContext.Current.Response.Cookies.Add(tcode);
                        }

                        //清空購物車 COOKIE
                        string cartCookieName;
                        switch (ViewState["ctype"].ToString())
                        {
                            case "2":
                                {
                                    cartCookieName = "NCARTID";
                                    break;
                                }
                            case "3":
                                {
                                    cartCookieName = "GCARTID";
                                    break;
                                }
                            default:
                                {
                                    cartCookieName = "CARTID";
                                    break;
                                }
                        }

                        HttpCookie currentUserCookie = HttpContext.Current.Request.Cookies[cartCookieName];
                        currentUserCookie.Expires = DateTime.Now.AddDays(-10);
                        currentUserCookie.Value = null;
                        HttpContext.Current.Response.SetCookie(currentUserCookie);
                        HttpContext.Current.Response.Cookies.Add(currentUserCookie);

                        //criteo
                        string email = "";
                        if (Session["A08"] != null)
                            email = Session["A08"].ToString();
                        string criteoTxt = criteo.SaleTag(email, ordM.ORM02, ordDList);
                        string url = "cart3.aspx?oid=" + ordM.ORM01.ToString();
                        string payStr = "ATM";
                        if (ordM.ORM23 != 116)
                        {
                            if (ordM.ORM12.Equals(1))
                            {
                                url = "../molpay/transToMolPay.aspx?oid=" + ordM.ORM02.ToString();
                                payStr = "MOLPAY";
                            }
                        }

                        StringBuilder sb = new StringBuilder();
                        //sb.Append(criteoTxt); //criteo 
                        //sb.Append("ga('ec:setAction','checkout_option', {'step': 3,'option':'" + payStr + "'});"); //ga checkout
                        //sb.Append(AdTrack.PurchaseOrder(_OID));
                        //sb.Append(Ematic.Convert(CartDT, decimal.Parse(Application["mycashrate"].ToString())));
                        //sb.Append(GoogleTag.TagOrderTrack(ordM.ORM08.ToString(), ordM.ORM02.ToString()));

                        sb.Append("location.href='" + url + "';"); //location
                        //AppierEvent(ordM, CartDT);
                        ScriptManager.RegisterStartupScript(Page, typeof(FBPage), "finalCart", sb.ToString(), true);
                        //Page.ClientScript.RegisterStartupScript(typeof(Page), "saletag", ctxt + "location.href='" + url + "';", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(up_edit, typeof(UpdatePanel), "msg",
                            "alert2url('ERROR:[CART2] Please call +603-76102050','cart1.aspx');", true);
                        //ScriptManager.RegisterStartupScript(up_edit, typeof(UpdatePanel), "msg", "confirm2url('購物車錯誤，請從新送出','cart1.aspx?ctype=" + ViewState["ctype"].ToString() + "');", true);
                    }
                }
            }
        }
    }

    private void AddSuscribedUser()
    {
        short isSuscribed = (short)(hdnSubscribe.Value == "true" ? 1 : 0);
        string asid = ViewState["ASID"].ToString();
        var user = _fbUser.GetUser(asid);
        if (user == null)
        {
            string PSID = _msgEvent.GetPSID(asid);
            if (!string.IsNullOrEmpty(PSID))
            {
                _fbUser.AddUser(new FBUser() { ASID = asid, PSID = PSID, Status = 1, IsSuscribe = isSuscribed });
            }
        }
        else
        {
            _fbUser.EditUser(new FBUser() { Serno = user.Serno, ASID = asid, PSID = user.PSID, Status = 1, IsSuscribe = isSuscribed });
        }
    }

    protected void rp_cart_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            hfListId.Value += (e.Item.FindControl("hf_CTD01") as HiddenField).Value + ",";
            if ((e.Item.FindControl("hf_CTD10") as HiddenField).Value.Equals("0")) //一般
            {
                ((Literal)e.Item.FindControl("lit_booking_msg")).Text = "";
            }
            else //預購
            {
                //((Literal)e.Item.FindControl("lit_booking_msg")).Text = "<br/><span style=\"color:#C00;font-weight:600;\">[此商品為預購商品,實際到貨日期依照廠商發貨日期為準]</span>";
                ((Literal)e.Item.FindControl("lit_booking_msg")).Text =
                    "<br/><span style=\"color:#C00;font-weight:600;\">[" +
                    LangClass.GetMsgInfo("M027", (LangType)ViewState["LG"]) + "]</span>";
            }
        }

    }

    private void AppierEvent(ORDERM om, DataTable goods)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("qg_checkout_completed([{");
        sb.Append("'order_id':'" + om.ORM02 + "',");
        sb.Append("'pcount':'" + goods.Rows.Count + "',");
        sb.Append("'coupon':'" + om.ORM09 + "',");
        sb.Append("'loc':'" + txt_CTI19.Text.Trim() + "',");
        sb.Append("'state':'" + txt_CTI20.Text.Trim() + "',");
        sb.Append("'city':'" + txt_city.Text.Trim() + "',");
        //sb.Append("'phone':'" + txt_phone.Text.Trim() + "',");
        sb.Append("'payStr':'" + om.ORM65 + "',");
        sb.Append("'total':'" + om.ORM08 + "'");
        sb.Append("}]);");

        foreach (DataRow dr in goods.Rows)
        {
            sb.Append("qg_product_purchased(");
            sb.Append("[{");
            sb.Append("'pId':'" + dr["CTD01"].ToString() + "',");
            sb.Append("'bname':'" + dr["B02"].ToString() + "',");
            sb.Append("'cname':'" + dr["C06"].ToString() + "',");
            sb.Append("}]");
            sb.Append(");");
        }
        ScriptManager.RegisterStartupScript(this.Page, typeof(FBPage), "appier", sb.ToString(), true);
    }


    /// <summary>
    /// Summary description for FBUser
    /// </summary>
    public class FBUserImpl : IFBUser
    {

        public int AddUser(FBUser fBUser)
        {
            string query = @"INSERT INTO HwFBUser (ASID, PSID, IsSuscribe, Status) VALUES (@ASID, @PSID, @IsSuscribe, @Status); SELECT SCOPE_IDENTITY(); ";
            int result = SqlLib.DapperHelper.QuerySingleOrDefault<int>(query, fBUser);
            return result;
        }

        public bool EditUser(FBUser fBUser)
        {
            string query = @"UPDATE HwFBUser SET MDate = @MDate, PSID = @PSID, IsSuscribe = @IsSuscribe WHERE Serno = @Serno";
            var result = SqlLib.DapperHelper.Execute<FBUser>(query, fBUser);
            return true;
        }

        public FBUser GetUser(string ASID)
        {
            string query = @"SELECT Serno, SysId, ASID, PSID, IsSuscribe, Status, CDate, MDate FROM HwFBUser WHERE ASID = @ASID";
            var result = SqlLib.DapperHelper.QuerySingleOrDefault<FBUser>(query, new { ASID });
            return result;
        }
    }
    /// <summary>
    /// Summary description for IFBUser
    /// </summary>
    public interface IFBUser
    {
        FBUser GetUser(string ASID);
        int AddUser(FBUser fBUser);
        bool EditUser(FBUser fBUser);
    }

    /// <summary>
    /// Summary description for FBUser
    /// </summary>
    public class FBUser
    {
        public int? Serno { get; set; }
        public Guid? SysId { get; set; }
        public string ASID { get; set; }
        public string PSID { get; set; }
        public Int16? IsSuscribe { get; set; }
        public int Status { get; set; }
        public DateTime? CDate { get; set; }
        public DateTime? MDate { get; set; }
    }

    /// <summary>
    /// Summary description for IFBMessageEvent
    /// </summary>
    public interface IFBMessageEvent
    {
        bool SendMessage(MessageObject search);
        string GetPSID(string ASID);
    }


    /// <summary>
    /// Summary description for FBMessageEvent
    /// </summary>
    public class FBMessageEvent : IFBMessageEvent
    {
        private const string Url = @"https://graph.facebook.com/";
        private const string Version = @"v5.0";
        private const string MessageType = "MESSAGE_TAG";
        private const string Tag = "ACCOUNT_UPDATE";
        private const string AccessToken = @"EAAU3p5IUhZC4BAIsDR3MDh4hoZBNgjrud7OBO7ZC53n25dQ6P615VYzmxMTl5ECrztwc4oFu6m8MCzZAyq8L3BzRn827XMq8QwPZAeZA4DKPfErdFSwKaccrUf2moLI9GjnANLWJ3DPk95FDt215kbaZCVfTZBGZBONgqAoqZAfATagwZDZD";
        private const string AppId = @"103872626630136";
        private const string AppSecret = @"c3d1c4de241da190da53e1eca960099a77339605dfeadf3e590412cd94665063";

        public string GetPSID(string ASID)
        {
            string sendMessageUrl = $"{Url + Version}/{ASID}/ids_for_pages?access_token={AccessToken}&appsecret_proof={AppSecret}";

            WebRequest req = WebRequest.Create(sendMessageUrl);
            req.Method = "Get";
            req.ContentType = "application/json";
            using (WebResponse wr = req.GetResponse())
            {
                using (StreamReader myStreamReader = new StreamReader(wr.GetResponseStream()))
                {
                    string data = myStreamReader.ReadToEnd();
                    var response = JsonConvert.DeserializeObject<Pageid>(data);
                    return response.data.FirstOrDefault().id;
                }
            }
        }

        public bool SendMessage(MessageObject message)
        {
            try
            {
                string sendMessageUrl = $"{Url + Version}/{AppId}/messages?messaging_type={MessageType}&recipient={{\"id\":\"{message.PSID}\"}}&message={{\"text\":\"{message.Message}\"}}&tag={Tag}&access_token={AccessToken}";
                WebRequest req = WebRequest.Create(sendMessageUrl);
                req.Method = "POST";
                req.ContentType = "application/json";
                using (WebResponse wr = req.GetResponse())
                {
                    using (StreamReader myStreamReader = new StreamReader(wr.GetResponseStream()))
                    {
                        string data = myStreamReader.ReadToEnd();
                        var response = JsonConvert.DeserializeObject<MessageResponse>(data);
                    }
                }
            }
            catch (WebException ex)
            {
                return false;
            }
            return true;
        }


    }

    /// <summary>
    /// Summary description for MessageObject
    /// </summary>
    public class MessageObject
    {
        [Required]
        public string PSID { get; set; }
        [Required]
        public string Message { get; set; }
    }


    /// <summary>
    /// Summary description for MessageResponse
    /// </summary>
    public class MessageResponse
    {
        public string recipient_id { get; set; }
        public string message_id { get; set; }
    }


    /// <summary>
    /// Summary description for PageId
    /// </summary>
    public class FBPage
    {
        public string name { get; set; }
        public string id { get; set; }
    }

    public class Datum
    {
        public string id { get; set; }
        public FBPage page { get; set; }
    }

    public class Pageid
    {
        public IList<Datum> data { get; set; }
    }
}