using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

public partial class cart1 : Compress.BasePage
{
    private int _ctype = 1;
    private UserShipInfoBL _userShipInfoBL = new UserShipInfoBL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //porder.Visible = false;
            if (Session["A01"] != null)
            {
                ViewState["LG"] = (Master as mobile).LgType;
                BindLgTxt();
                if (Request.QueryString["ctype"] != null)
                {
                    _ctype = FieldCheck.isInt(Request.QueryString["ctype"].ToString())
                        ? Convert.ToInt32(Request.QueryString["ctype"].ToString())
                        : 1;
                }

                ViewState["ctype"] = _ctype;
                LoadData();
                FbScript();
            }
            else
            {
                Response.Redirect("login.aspx?rurl=cart1.aspx");
            }
        }
    }

    private void FbScript()
    {
        string fbScript = facebook.FbInitiateCheckout(Convert.ToDecimal(lit_sum.Text.Trim()));
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "fbevent", fbScript, true);
    }
    private void LoadData()
    {
        int memberId = Convert.ToInt32(Session["A01"].ToString());
        BindDiscount(memberId);
        GetFullEvent(_ctype); //滿額折扣
        GetUserGold(); //綁定會員購物金
        GetHaCoin(memberId); //綁定Ha幣金額
        BindDefaultShipInfo(memberId);
        GetShipInfo(_ctype); //運費資訊
        BindDT(_ctype); //綁定購物車資訊

        if (_usi01 == 0)
        {
            p_delete_ship.Visible = false;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "add_addr", "OpenSetShipInfo();", true);
        }
    }

    private int _usi01;

    private void BindDefaultShipInfo(int A01, bool bindDefaultShip = true)
    {
        new_ship.Visible = false;
        sel_ship.Visible = false;

        DataTable dt = _userShipInfoBL.GetUserDefaultInfo2(A01);
        if (dt.Rows.Count > 0)
        {
            if (bindDefaultShip == true)
                SetShipInfo(dt.Rows[0]);

            sel_ship.Visible = true;
            rp_shipInfo.DataSource = dt;
            rp_shipInfo.DataBind();
            up_ShipList.Update();
            _usi01 = int.Parse(dt.Rows[0]["USI01"].ToString());
        }
        else
        {
            new_ship.Visible = true;
        }

        up_address.Update();
    }


    private void SetShipInfo(DataRow dr)
    {
        lit_shipname.Text = dr["USI07"].ToString();
        //address city state postcode
        string address = "{0} <br/> {1} {2} {3} <br/> {4}";
        lit_shipinfo.Text = String.Format(address, dr["USI05"].ToString(), dr["PI04"].ToString(), dr["PI03"].ToString(),
            dr["PI02"].ToString(), dr["USI09"].ToString());
        hf_address.Value = dr["USI05"].ToString();
        hf_loc.Value = dr["USI14"].ToString();
        //hf_area1.Value = dr["AREA01"].ToString();
        hf_state.Value = dr["AREA01"].ToString();
        hf_city.Value = dr["USI04"].ToString();
        hf_pkey.Value = dr["USI15"].ToString();
        hf_postcode.Value = dr["USI02"].ToString();
        hf_name.Value = dr["USI07"].ToString();
        hf_phone.Value = dr["USI09"].ToString();
        hf_email.Value = dr["USI10"].ToString();
        up_address.Update();
    }

    //獲得Ha幣
    private void GetHaCoin(int memberID)
    {
        if (ViewState["ctype"].ToString().Equals("1"))
        {
            CoinFac coinFac = new CoinFac();
            decimal d = coinFac.GetMemberCoin(memberID);
            lit_ha_coin.Text = d.ToString();
        }
    }

    //運費計算
    private void GetShipInfo(int type)
    {
        List<Logistics> logVal = new List<Logistics>();
        logVal = LogisticsFacade.getLogisticsFac.GetLogistics();
        ViewState["logistics"] = logVal;

        var q1 = logVal.FirstOrDefault(p => p.LGT01.Equals("L01"));
        var q2 = logVal.FirstOrDefault(p => p.LGT01.Equals("L02"));
        lit_ship_cost.Text = string.Format("RM{0}(WM)/RM{1}(EM)", q1.LGT02.ToString(), q2.LGT02.ToString());
        lit_ship_free.Text = string.Format("RM{0}(WM)/RM{1}(EM)", q1.LGT03.ToString(), q2.LGT03.ToString());

        CheckShip();
    }

    private void CheckShip()
    {
        List<Logistics> logVal = (ViewState["logistics"] as List<Logistics>);
        Logistics log = new Logistics();

        if (hf_loc.Value.Equals("1"))
        {
            log = logVal.FirstOrDefault(p => p.LGT01.Equals("L02"));
        }
        else
        {
            log = logVal.FirstOrDefault(p => p.LGT01.Equals("L01"));
        }

        hf_ship_cost.Value = log.LGT02.ToString();
        hf_ship_term.Value = log.LGT03.ToString();
        lit_ship_info.Text = log.LGT02.ToString();
    }

    //滿額折價功能
    public void GetFullEvent(int ctype)
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

    private void BindDiscount(int A01)
    {
        DataTable dt = CFacade.GetFac.GetGAFac.GetCartCanUseCouponV2(A01);
        if (dt.Rows.Count > 0)
        {
            ddl_discount.Items.Clear();
            ddl_discount.Items.Add(new ListItem(LangClass.GetMsgInfo("M037", (LangType)ViewState["LG"]), ""));

            foreach (DataRow dr in dt.Rows)
            {
                ddl_discount.Items.Add(new ListItem(dr["GA01"].ToString() + "(RM" + dr["GA02"].ToString() + ")",
                    dr["GA01"].ToString()));
            }
        }
        else
        {
            ddl_discount.Visible = false;
        }
    }

    private DataTable GetGiftDt(int ctype = 1)
    {
        DataTable dt = CFacade.GetFac.GetGiftEventFac.GetAllGiftEventList(ctype);
        return dt;
    }


    private void BindDT(int ctype)
    {
        CleanCoupon();
        string _CartID = String.Empty;
        if (ctype == 1)
        {
            if (Request.Cookies["CARTID"] != null)
            {
                _CartID = Request.Cookies["CARTID"].Value.ToString();
            }
        }

        if (_CartID.ToString().Equals(""))
        {
            Response.Redirect("index.aspx");
        }

        ViewState["CARTID"] = _CartID;
        if (_CartID != "")
        {
            DataTable cartDT = CFacade.CartFac.GetCartDT(_CartID, ctype, (LangType)ViewState["LG"]);

            //0731
            CheckShipEast(cartDT);

            ViewState["CartDetail"] = cartDT;
            if (cartDT.Rows.Count > 0)
            {
                //DataTable infoDT = CFacade.CartFac.GetCartInfo(_CartID, ctype);

                decimal totalSum = 0;
                decimal goodsDisSum = 0;
                decimal goodsSum = 0;
                bool calculationShip = false;
                int pQtySum = 0;
                List<string> pIds = new List<string>(); //所有購買的商品ID

                bool canShipEm = true;
                bool needShip = true;

                foreach (DataRow dr in cartDT.Rows)
                {
                    pIds.Add(dr["CTD01"].ToString());

                    hfListId.Value += dr["CTD01"].ToString() + ",";


                    if (dr["WP17"].ToString().Equals("0"))
                    {
                        calculationShip = true;
                    }

                    goodsDisSum += Convert.ToDecimal(dr["CTD12"].ToString());
                    goodsSum += Convert.ToDecimal(PbClass.CashRate(dr["WPA06"].ToString(), Currency.MYR)) *
                                Convert.ToInt32(dr["CTD06"].ToString()) - Convert.ToDecimal(dr["CTD12"].ToString());
                    pQtySum += Convert.ToInt32(dr["CTD06"].ToString());
                    if (canShipEm == true && dr["WP55"].ToString().Equals("0"))
                        canShipEm = false;
                    decimal rebate = 1;
                    if (Session["MRebate"] != null)
                        rebate = Convert.ToDecimal(Session["MRebate"].ToString());
                    lit_get_hacoin.Text = Math.Floor(goodsSum * rebate).ToString();
                }
                hfListId.Value = hfListId.Value.TrimEnd(',');
                hfNum.Value = pQtySum.ToString();
                hfTotal.Value = goodsSum.ToString();



                ViewState["PSUM"] = goodsSum; //商品總額
                hf_can_ship_em.Value = canShipEm ? "YES" : "NO";

                //取得自動折扣活動
                GetAutoEvent(pIds, cartDT);

                //取得商品COUPON 
                GetProductCoupon(pIds);

                //綁定商品資訊
                rp_cart_list.DataSource = cartDT;
                rp_cart_list.DataBind();

                ViewState["ship"] = calculationShip; //是否計算運費
                ViewState["acount"] = pQtySum; //商品總數
                ViewState["goodsdis"] = goodsDisSum; //商品折抵

                //計算總金額
                CheckSum(ctype);
              
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "mg",
                    "alert('" + LangClass.GetMsgInfo("M024", (LangType)ViewState["LG"]) +
                    "');location.href='index.aspx';", true);
                //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('購物車無資訊');location.href='index.aspx';", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "mg",
                "alert('" + LangClass.GetMsgInfo("M024", (LangType)ViewState["LG"]) + "');location.href='index.aspx';",
                true);
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('購物車無資訊');location.href='index.aspx';", true);
        }

        //DataTable dt = CFacade.CartFac.GetCartDT();
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
    private void GetAutoEvent(List<string> pIds, DataTable cartDt)
    {
        ViewState["WebEvent"] = null;
        DataTable eventDT = WebEventFacade.GetWebEventSelPDFac.GetOnTimeWebEvent(pIds);
        if (eventDT.Rows.Count > 0)
        {
            //ViewState["event"] = eventDT;

            Tuple<List<WebEventCartUse>, List<WebEventCartUse>> WebEvent =
                WebEventCartUse.CheckEventUse(eventDT, cartDt);
            ViewState["WebEvent"] = WebEvent;
        }
    }

    private void GetProductCoupon(List<string> pIds)
    {
        DataTable pCouponDt =
            CouponFacade.GetProductCouponUserGetFac.GetUserGetProductAndCoupon(
                Convert.ToInt32(Session["A01"].ToString()), pIds);
        if (pCouponDt.Rows.Count > 0)
        {
            ViewState["coupon"] = pCouponDt;
        }
    }

    public void GiftEvent()
    {
        DataTable giftDt = GetGiftDt();
        if (giftDt.Rows.Count > 0)
        {
            DataTable cartDt = ViewState["CartDetail"] as DataTable;
            DataTable getGiftDt = CreateGiftDT();
            DataTable notGetGiftDt = CreateGiftDT();
            decimal gold = 0;
            if (FieldCheck.isDecimal(txt_use_gold.Text))
            {
                gold = Convert.ToDecimal(txt_use_gold.Text.Trim());
            }

            foreach (DataRow dr in giftDt.Rows)
            {
                string eId = dr["GE01"].ToString();
                string giftType = dr["GE05"].ToString();
                string getType = dr["GE12"].ToString(); //1:by商品 2:by總額
                decimal giftTermMoney = Convert.ToDecimal(dr["GE02"].ToString());

                string excludeBrands = dr["GE16"].ToString().Trim(',');
                string excludeProdoucts = dr["GE17"].ToString().Trim(',');
                string filterStr = ""; //是否過濾特殊字串
                if (excludeBrands != "")
                {
                    filterStr += " B01 NOT IN (" + excludeBrands + ") ";
                }

                if (excludeProdoucts != "")
                {
                    if (filterStr != "")
                        filterStr += " AND ";
                    filterStr += " CTD01 NOT IN (" + excludeProdoucts + ") ";
                }

                if (filterStr != "")
                    cartDt.DefaultView.RowFilter = filterStr;

                decimal goodsSum = 0;
                DataTable filterCartDt = cartDt.DefaultView.ToTable();


                foreach (DataRow fdr in filterCartDt.Rows)
                {
                    decimal price = Convert.ToDecimal(fdr["WPA06"].ToString());
                    decimal count = Convert.ToDecimal(fdr["CTD06"].ToString());
                    decimal pdiscount = FieldCheck.isDecimal(fdr["CTD12"].ToString())
                        ? Convert.ToDecimal(fdr["CTD12"].ToString())
                        : 0;
                    decimal goodsPrice = PbClass.CashRate((price * count - pdiscount), 7.6m);

                    if (getType.Equals("1")) //By商品贈送
                    {
                        DataTable selGoods = SqlDbmanager.queryBySql("SELECT GESP02 FROM GiftEventSelWP WHERE GESP01='" + eId +
                            "' AND GESP02 IN (" + string.Join(",",filterCartDt.Rows.OfType<DataRow>().Select(r => r["CTD01"].ToString())) + ")");
                        if (selGoods.AsEnumerable().Any(v => v.Field<Int64>("GESP02").Equals(fdr["CTD01"])))
                        {
                            goodsSum += goodsPrice;
                        }
                    }
                    else //總額贈送
                    {
                        decimal coupon = 0;
                        if (ViewState["GA02"] != null)
                        {
                            coupon = Convert.ToDecimal(ViewState["GA02"].ToString());
                        }
                        goodsSum += goodsPrice - coupon;
                    }
                }


                if (goodsSum >= giftTermMoney)
                {
                    DataRow ndr = getGiftDt.NewRow();
                    ndr["GE01"] = eId;
                    ndr["GE10"] = dr["GE10"].ToString();
                    ndr["type"] = string.Format(@"<span class=""span-ok"">{0}</span>",
                        LangClass.GetMsgInfo("M025", (LangType)ViewState["LG"]));
                    ndr["lack"] = "";
                    if (giftType.Equals("0"))
                        ndr["count"] = "1"; //贈送數量
                    else
                        ndr["count"] = Math.Floor(goodsSum / giftTermMoney).ToString(); //贈送數量 
                    getGiftDt.Rows.Add(ndr);
                }
                else
                {
                    DataRow ndr = notGetGiftDt.NewRow();
                    ndr["GE01"] = eId;
                    ndr["GE10"] = dr["GE10"].ToString();
                    ndr["type"] = string.Format(@"<span class=""span-notok"">{0}</span>",
                        LangClass.GetMsgInfo("M026", (LangType)ViewState["LG"]));
                    ndr["lack"] = @"[more:" + (giftTermMoney - goodsSum) + "]";
                    ndr["count"] = "0";
                    notGetGiftDt.Rows.Add(ndr);
                }
            }

            rp_gift_list.DataSource = getGiftDt;
            rp_gift_list.DataBind();
            if (notGetGiftDt.Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "$('#more-gift').css('display','none');",
                    true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "$('#more-gift').css('display','');",
                    true);
            }

            rp_no_gift.DataSource = notGetGiftDt;
            rp_no_gift.DataBind();
            up_gift.Update();
            up_no_gift.Update();
        }
    }


    private DataTable CreateGiftDT()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("GE01");
        dt.Columns.Add("GE10");
        dt.Columns.Add("lack");
        dt.Columns.Add("count");
        dt.Columns.Add("type");
        return dt;
    }

    private DataTable GetClone(DataTable table)
    {
        // Get a clone of the original DataTable.
        DataTable cloneTable;
        return cloneTable = table.Clone();
        // Insert code to work with clone of the DataTable.
    }

    private void GetUserGold()
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

    private void CleanCoupon()
    {
        ViewState["GA01"] = null;
        ViewState["GA02"] = null;
        lnk_coupon_del.Visible = false;
        //lit_discount_txt.Text = "0";
        txt_coupon.Value = "";
        ddl_discount.SelectedValue = "";
    }

    private void CheckSum(int ctype = 1)
    {

        decimal goodsSum = Convert.ToDecimal(ViewState["PSUM"].ToString());

        decimal disCountSum = 0;
        decimal total = goodsSum;
        decimal shipCost = Convert.ToDecimal(hf_ship_cost.Value);
        decimal shipTerm = Convert.ToDecimal(hf_ship_term.Value);
        bool isFreeShip = false;

        decimal autoDiscount = 0;
        //判斷是否有全站活動
        if (ViewState["WebEvent"] != null)
        {
            Tuple<List<WebEventCartUse>, List<WebEventCartUse>> entCart =
                (Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)(ViewState["WebEvent"]);
            List<WebEventCartUse> wecu = new List<WebEventCartUse>();
            wecu = entCart.Item1;
            autoDiscount = wecu.Select(s => s.DISSUM).Sum();
        }

        hf_webevnet_total.Value = autoDiscount.ToString();
        disCountSum += autoDiscount;
        total = total - autoDiscount;

        //扣除折扣卷
        if (ViewState["GA02"] != null)
        {
            if (total >= Convert.ToDecimal(ViewState["GA07"].ToString()))
            {
                total = total - Convert.ToDecimal(ViewState["GA02"].ToString());
                disCountSum += Convert.ToDecimal(ViewState["GA02"].ToString());
            }
            else
            {
                CleanCoupon();
            }
        }

        if (total < 0)
        {
            total = 0;
        }


        //扣除Ha幣開始
        decimal useHaCoin = 0;
        if (ViewState["haType"] != null)
        {
            if (ViewState["haType"].ToString().Equals("1")) //扣除運費
            {
                ViewState["haCoin"] = 1500;
                useHaCoin = 0;
                isFreeShip = true;
            }
            else if (ViewState["haType"].ToString().Equals("2")) //扣除金額
            {
                useHaCoin = Math.Floor(Convert.ToDecimal(lit_ha_coin.Text.Trim()) / 100);
                if (useHaCoin >= total)
                {
                    useHaCoin = Math.Floor(total);
                }

                //disCountSum += useHaCoin;
                total = total - useHaCoin;
                ViewState["haCoin"] = useHaCoin * 100;
            }
        }

        hf_ha_use.Value = useHaCoin.ToString();
        lit_dishacoin.Text = useHaCoin.ToString("#0.00");
        //扣除Ha幣結束
        if (isFreeShip)
            shipCost = 0;
        if (total >= shipTerm)
            shipCost = 0;

        if (ViewState["ship"].ToString().ToLower().Equals("false"))
        {
            shipCost = 0;
        }

        total += shipCost;

        lit_subtotal.Text = (goodsSum + shipCost).ToString();

        //ViewState["SHIP"] = _運費;
        //ViewState["SHIPFREE"] = _免運金額;
        //扣除購物金

        if (ViewState["USEGOLD"] != null)
        {
            if (total < Convert.ToDecimal(ViewState["USEGOLD"]))
            {
                ViewState["USEGOLD"] = total;
                txt_use_gold.Text = total.ToString();
                total = 0;
            }
            else
            {
                total = total - Convert.ToDecimal(ViewState["USEGOLD"].ToString());
            }
        }
        else
        {
            ViewState["USEGOLD"] = 0;
        }

        lit_disgold.Text = Convert.ToDecimal(ViewState["USEGOLD"].ToString()).ToString("#0.00");
        //disCountSum += Convert.ToDecimal(ViewState["USEGOLD"]);
        //disCountSum += Convert.ToDecimal(ViewState["goodsdis"]);
        ViewState["CTI29"] = ViewState["goodsdis"];

        ViewState["TSUM"] = total;

        lit_discount.Text = disCountSum.ToString("#0.00");
        lit_ship_info.Text = shipCost.ToString();
        lit_sum.Text = total.ToString();

        //贈品活動
        GiftEvent();
        up_cart_list.Update();
        up_result.Update();
    }


    protected void img_del_Click(object sender, EventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        int _CTD01 = Convert.ToInt32(((HiddenField)ri.FindControl("hf_CTD01")).Value);
        string _CTD03 = ((HiddenField)ri.FindControl("hf_CTD03")).Value;
        string _CTM01 = ViewState["CARTID"].ToString();
        CFacade.CartFac.DelCartItem(_CTM01, _CTD01, _CTD03);
        //Response.Redirect("cart1.aspx");
        lnk_coupon_del_Click(null, null);
        BindDT(Convert.ToInt32(ViewState["ctype"].ToString()));
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "hangmsg", "ShowHangMsg('Delete Complete');", true);
    }

    protected void ddl_count_SelectedIndexChanged(object sender, EventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        int _CTD01 = Convert.ToInt32(((HiddenField)ri.FindControl("hf_CTD01")).Value);
        string _CTD03 = ((HiddenField)ri.FindControl("hf_CTD03")).Value;

        string _CTM01 = ViewState["CARTID"].ToString();
        int buyQty = Convert.ToInt32(((DropDownList)ri.FindControl("ddl_count")).SelectedValue);
        CFacade.CartFac.UpCartItem(_CTM01, _CTD01, _CTD03, buyQty);
        BindDT(Convert.ToInt32(ViewState["ctype"].ToString()));
    }

    protected void rp_cart_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager scriptMan = ScriptManager.GetCurrent(this.Page);
        LinkButton btn = (LinkButton)e.Item.FindControl("img_del");
        if (btn != null)
        {
            btn.Click += img_del_Click;
            scriptMan.RegisterAsyncPostBackControl(btn);
        }

        DropDownList drp = (DropDownList)e.Item.FindControl("ddl_count");
        if (drp != null)
        {
            drp.SelectedIndexChanged += ddl_count_SelectedIndexChanged;
            scriptMan.RegisterAsyncPostBackControl(drp);
        }
    }

    private int pId;

    protected void rp_cart_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            pId = Convert.ToInt32(((HiddenField)e.Item.FindControl("hf_CTD01")).Value);

            //判斷最大可買數量
            CheckProductStatusAndMaxCount(e.Item);

            //判斷商品折扣券
            GoodsCoupon(e.Item);

            //判斷全站活動
            AutoDiscount(e.Item);
        }
    }

    private void CheckProductStatusAndMaxCount(RepeaterItem item)
    {
        int canBuyCount = 0;
        if (((HiddenField)item.FindControl("hf_CTD10")).Value.Equals("0")) //一般
        {
            ((Panel)item.FindControl("p_pre_sale")).Visible = false;
            ((Literal)item.FindControl("lit_booking_msg")).Text = "";

            canBuyCount = Convert.ToInt32(((HiddenField)item.FindControl("hf_QTY")).Value);
            if (canBuyCount > Convert.ToInt32(((HiddenField)item.FindControl("hf_WPA04")).Value))
                canBuyCount = Convert.ToInt32(((HiddenField)item.FindControl("hf_WPA04")).Value);
        }
        else //預購
        {
            ((Panel)item.FindControl("p_pre_sale")).Visible = true;
            canBuyCount = Convert.ToInt32(((HiddenField)(item.FindControl("hf_WP29"))).Value);
        }

        ((DropDownList)item.FindControl("ddl_count")).Items.Clear();
        string CTD06 = ((HiddenField)item.FindControl("hf_CTD06")).Value;
        for (int i = 1; i <= canBuyCount; i++)
        {
            ((DropDownList)item.FindControl("ddl_count")).Items.Add(new ListItem(i.ToString(), i.ToString()));
        }

        if (((DropDownList)item.FindControl("ddl_count")).Items.FindByValue(CTD06) != null)
        {
            ((DropDownList)item.FindControl("ddl_count")).SelectedValue = CTD06;
        }
        else
        {
            ((DropDownList)item.FindControl("ddl_count")).SelectedValue = "1";
        }
    }

    private void GoodsCoupon(RepeaterItem item)
    {
        ((Button)item.FindControl("lnk_sel_coupon")).Visible = false;
        //商品折扣券
        if (ViewState["coupon"] != null)
        {
            DataTable couponDT = ViewState["coupon"] as DataTable;
            string _CTD11 = ((HiddenField)item.FindControl("hf_CTD11")).Value; //折扣券狀態
            DataRow[] SDR = couponDT.Select("PCS02='" + pId + "'");
            //判斷是否要顯示折扣券按鈕
            if (SDR.Length > 0) //該商品不存在任何折扣券不顯示
            {
                ((Button)item.FindControl("lnk_sel_coupon")).Visible = true;

                if (!_CTD11.Equals("0") && !_CTD11.Equals("")) //有使用折扣券
                {
                    ((Button)item.FindControl("lnk_sel_coupon")).Attributes.Remove("class");
                    ((Button)item.FindControl("lnk_sel_coupon")).Attributes.Add("class",
                        "am-btn  s-coupon-btn sel-goods-coupon");
                    //((Button)e.Item.FindControl("lnk_sel_coupon")).Text = "-RM " + ((HiddenField)e.Item.FindControl("hf_CTD12")).Value;
                    ((Button)item.FindControl("lnk_sel_coupon")).Text =
                        LangClass.GetMsgInfo("M029", (LangType)ViewState["LG"]);
                }
                else
                {
                    ((Button)item.FindControl("lnk_sel_coupon")).Attributes.Remove("class");
                    ((Button)item.FindControl("lnk_sel_coupon")).Attributes.Add("class",
                        "am-btn fuchsia-o-btn s-coupon-btn used-goods-coupon");
                    //((Button)e.Item.FindControl("lnk_sel_coupon")).Text = "選擇折扣券";
                    ((Button)item.FindControl("lnk_sel_coupon")).Text =
                        LangClass.GetMsgInfo("M028", (LangType)ViewState["LG"]);
                }
            }
        }
    }

    private void AutoDiscount(RepeaterItem item)
    {
        ((Panel)item.FindControl("p_web_event")).Visible = false;
        if (ViewState["WebEvent"] != null)
        {
            Tuple<List<WebEventCartUse>, List<WebEventCartUse>> entCart =
                (Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)(ViewState["WebEvent"]);
            //有參加的活動
            List<WebEventCartUse> wcu = entCart.Item1;
            List<WebEventCartUse> noncu = entCart.Item2;
            var HasUseEvent = (from wc in wcu
                               from wcet in wc.PITEMS
                               where wcet.PID.Equals(pId)
                               select new
                               {
                                   wc.EID,
                                   wc.ENAME,
                                   wc.DURL,
                                   wc.MURL
                               }).FirstOrDefault();
            if (HasUseEvent != null)
            {
                ((Panel)item.FindControl("p_web_event")).Visible = true;
                ((Literal)item.FindControl("lit_web_event")).Text =
                    WebEventCartUse.GetMobileOKSTR(HasUseEvent.ENAME, HasUseEvent.EID.ToString(), HasUseEvent.MURL);
            }
            else
            {
                var HasNonUseEvent = (from wc in noncu
                                      from wcet in wc.PITEMS
                                      where wcet.PID.Equals(pId)
                                      select new
                                      {
                                          wc.EID,
                                          wc.ENAME,
                                          wc.DURL,
                                          wc.MURL
                                      });
                if (HasNonUseEvent.Any())
                {
                    string NonUseStr = "";
                    List<string> eIDS = new List<string>();
                    foreach (var we in HasNonUseEvent)
                    {
                        string eID = we.EID.ToString();
                        if (!eIDS.Contains(eID))
                            NonUseStr += WebEventCartUse.GetMobileNonOKSTR(we.ENAME, we.EID.ToString(), we.MURL);
                        eIDS.Add(eID);
                    }

                    ((Literal)item.FindControl("lit_web_event")).Text = NonUseStr.ToString();
                    ((Panel)item.FindControl("p_web_event")).Visible = true;
                }
            }
        }
    }

    protected void ddl_ship_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckSum(Convert.ToInt32(ViewState["ctype"].ToString()));
        //<i class="am-icon-exclamation-triangle"></i>&nbsp;尚缺RM:500免運 <i class="am-icon-arrow-right"></i>
    }

    protected void btn_coupon_Click(object sender, EventArgs e)
    {
        if (!txt_coupon.Value.Equals(""))
        {
            decimal ccount = Convert.ToDecimal(lit_sum.Text) - Convert.ToDecimal(lit_ship_info.Text.Trim());
            //Tuple<string, string> coupon = CFacade.GetFac.GetGAFac.UseCoupon(txt_coupon.Value.Trim().ToUpper(), Convert.ToDecimal(lit_sum.Text));
            Tuple<string, string> coupon =
                CFacade.GetFac.GetGAFac.UseCoupon(txt_coupon.Value.Trim().ToUpper(), ViewState["CARTID"].ToString());
            decimal d = 0;
            if (decimal.TryParse(coupon.Item1, out d))
            {
                //txt_coupon.Value = ddl_discount.SelectedValue.ToString();
                lnk_coupon_del.Visible = true;
                lnk_coupon_del.Text = "-" + coupon.Item1 + "[Delete]";
                d = Convert.ToDecimal(coupon.Item1);
                //lit_discount_txt.Text = d.ToString();
                //lit_discount_txt.Text = "折扣卷：";
                //lit_discount_money.Text = "<span style=\"font-size: 12px\">RM</span>" + d.ToString();
                //lit_discount_num.Text = "編號：" + txt_coupon.Text.Trim() + "&nbsp;<i class=\"am-icon-arrow-right\"></i>";
                ViewState["GA01"] = txt_coupon.Value.Trim().ToUpper();
                ViewState["GA02"] = d.ToString();
                ViewState["GA07"] = coupon.Item2.ToString();
                CheckSum();
                //ScriptManager.RegisterClientScriptBlock(up_coupon, typeof(UpdatePanel), "msg", "alert('" + d.ToString() + "');", true);
            }
            else
            {
                txt_coupon.Value = "";
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg",
                    "alert('" + coupon.Item1.Replace("'", "\\'") + "');", true);
            }
        }
        else
        {
            //ScriptManager.RegisterClientScriptBlock(up_cart_list, typeof(UpdatePanel), "msg", "alert('請輸入折扣券號');", true);
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg",
                "alert('" + LangClass.GetMsgInfo("M039", (LangType)ViewState["LG"]) + "');", true);
        }
    }

    protected void txt_use_gold_TextChanged(object sender, EventArgs e)
    {
        if (ViewState["GOLD"] != null)
        {
            ViewState["USEGOLD"] = "0";
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

        CheckSum();
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
    //private string chkInfo()
    //{
    //string errorMsg = "";
    //LangType LgType = (LangType)ViewState["LG"];
    //if (txt_name.Text.Trim().Equals(""))
    //{
    //    //errorMsg += "請輸入姓名 <br/>";
    //    errorMsg += LangClass.GetMsgInfo("M009", LgType) + "<br/>";
    //}
    //if (!RegexClass.IsMyPhone(txt_phone.Text.Trim()))
    //{
    //    //errorMsg += "請輸入01開頭的手機號碼 <br/>";
    //    errorMsg += LangClass.GetMsgInfo("M010", LgType) + "<br/>";
    //}
    //if (!RegexClass.IsEmail(txt_email.Text.Trim()))
    //{
    //    //errorMsg += "請輸入正確的Email <br/>";
    //    errorMsg += LangClass.GetMsgInfo("M004", LgType) + "<br/>";
    //}
    //if (txt_city.Text.Trim().Equals(""))
    //{
    //    //errorMsg += "請輸入City <br/>";
    //    errorMsg += LangClass.GetMsgInfo("M011", LgType) + "<br/>";
    //}
    //if (txt_Postcode.Text.Trim().Equals(""))
    //{
    //    //errorMsg += "請輸入PostCode <br/>";
    //    errorMsg += LangClass.GetMsgInfo("M012", LgType) + "<br/>";
    //}
    //if (txt_address.Text.Trim().Equals(""))
    //{
    //    //errorMsg += "請輸入收件地址 <br/>";
    //    errorMsg += LangClass.GetMsgInfo("M013", LgType) + "<br/>";
    //}
    //if (porder.Visible == true)
    //{
    //    if (txt_ORM46.Text.Trim().Equals(""))
    //    {
    //        //errorMsg += "請輸入購買人姓名 <br/>";
    //        errorMsg += LangClass.GetMsgInfo("M014", LgType) + "<br/>";
    //    }
    //    if (txt_ORM47.Text.Trim().Equals(""))
    //    {
    //        //errorMsg += "請輸入購買人聯繫電話 <br/>";
    //        errorMsg += LangClass.GetMsgInfo("M015", LgType) + "<br/>";
    //    }
    //}

    //return errorMsg;
    //}

    private string ChkInfo()
    {
        string msg = "";
        if (hf_pkey.Value.ToString().Equals("-1") || hf_pkey.Value.ToString().Equals(""))
        {
            msg = "Please Select Your Information。 <br/>";
        }
        //0731 東馬加入判斷
        if (hf_loc.Value.ToString().Equals("1"))
        {
            if (hfShip2East.Value.Equals("NO"))
            {
                msg = hfEastProductMsg.Value.ToString();
            }
        }
        return msg;
    }

    private bool SaveInfo()
    {
        CARTI objCI = new CARTI();
        objCI.CTM01 = ViewState["CARTID"].ToString();
        objCI.CTI01 = Convert.ToDecimal(ViewState["PSUM"].ToString());

        objCI.CTI02 = Convert.ToDecimal(lit_ship_info.Text);
        objCI.CTI03 = 0;
        objCI.CTI04 = Convert.ToDecimal(ViewState["TSUM"].ToString());
        objCI.CTI05 = ViewState["GA01"] != null ? ViewState["GA01"].ToString() : "";
        objCI.CTI06 = ViewState["GA02"] != null ? Convert.ToDecimal(ViewState["GA02"].ToString()) : 0;
        objCI.CTI07 = ViewState["USEGOLD"] != null ? Convert.ToDecimal(ViewState["USEGOLD"].ToString()) : 0;

        objCI.CTI08 = 0;
        objCI.CTI09 = hf_name.Value.Trim(); //txt_name.Text.Trim();
        objCI.CTI10 = hf_tel.Value.Trim(); //txt_tel.Text.Trim();
        objCI.CTI11 = hf_phone.Value.Trim(); //txt_phone.Text.Trim();
        objCI.CTI12 = hf_address.Value.Trim(); //txt_address.Text.Trim();
        objCI.CTI13 = hf_email.Value.Trim(); //txt_email.Text.Trim();
        objCI.CTI14 = ""; //txt_note.Text.Trim();
        objCI.CTI15 = DateTime.Now;
        objCI.CTI16 = Convert.ToInt32(hf_pkey.Value.ToString());
        objCI.CTI17 = hf_city.Value; //txt_city.Text.Trim();
        objCI.CTI18 = hf_postcode.Value; //txt_Postcode.Text.Trim();
        objCI.CTI19 = Convert.ToInt32(hf_loc.Value.ToString()); //東西馬
        objCI.CTI20 = Convert.ToInt32(hf_state.Value.ToString());
        objCI.CTI21 = "";
        objCI.CTI22 = "";
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

        if (ViewState["CTI29"] != null)
        {
            objCI.CTI29 = Convert.ToDecimal(ViewState["CTI29"].ToString());
        }
        else
        {
            objCI.CTI29 = 0;
        }

        //objCI.CTI30 = (ViewState["pay"] as Tuple<string, string>).Item2.ToString();
        objCI.CTI30 = "";
        objCI.CTI31 = FieldCheck.isDouble(hf_ha_use.Value) ? Convert.ToDouble(hf_ha_use.Value) : 0;
        objCI.CTI32 = ViewState["haType"] != null ? Convert.ToInt32(ViewState["haType"].ToString()) : 0;
        objCI.CTI33 = ViewState["haCoin"] != null ? Convert.ToDouble(ViewState["haCoin"].ToString()) : 0;
        objCI.CTI34 = FieldCheck.isDecimal(hf_price_discount.Value) ? Convert.ToDecimal(hf_price_discount.Value) : 0;
        objCI.CTI35 = FieldCheck.isDecimal(hf_webevnet_total.Value) ? Convert.ToDecimal(hf_webevnet_total.Value) : 0;
        bool rval = false;
        if (ViewState["WebEvent"] != null)
        {
            List<WebEventCartUse> wcu = (ViewState["WebEvent"] as Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)
                .Item1;
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
        string emsg = ChkInfo();
        if (emsg == "")
        {
            if (SaveInfo())
            {
                //Session["CARTTIME"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                //Session["BCOUNT"] = rp_cart_list.Items.Count;
                string scriptMsg = "unblockMsg();location.href='cart2.aspx';";
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "go2cart2", scriptMsg, true);
                //Response.Redirect("cart2.aspx?ctype=" + ViewState["ctype"].ToString());
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Error:please call hawooo ');",
                    true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert('" + emsg + "');", true);
        }


        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "bmsg", "blockMsg('Please wait...');", true);
        //string chkTxt = chkInfo();
        //if (chkTxt.Equals(""))
        //{
        //    if (SaveInfo())
        //    {
        //        Session["CARTTIME"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        //        Response.Redirect("cart2.aspx?ctype=" + ViewState["ctype"].ToString());
        //    }
        //    else
        //    {
        //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Error:please call hawooo ');", true);
        //    }

        //}
        //else
        //{
        //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert('" + chkTxt + "');", true);
        //}
    }

    //protected void ddl_state_1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (!ViewState["ctype"].ToString().Equals("3"))
    //    {
    //        if (ViewState["AREA"] != null)
    //        {
    //            BindState(ddl_state_1.SelectedValue.ToString());
    //            CheckSum();
    //        }
    //    }
    //}
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
                StringBuilder sb = new StringBuilder();
                sb.Append("USI01='';");
                sb.Append("USI07='" + dt.Rows[0]["A15"].ToString() + "';");
                sb.Append("USI10='" + dt.Rows[0]["A08"].ToString() + "';");
                sb.Append("USI09='" + dt.Rows[0]["A09"].ToString() + "';");
                sb.Append("USI05='" + dt.Rows[0]["A14"].ToString().Replace("\n", " ") + "';");
                sb.Append("SetShipVal();");
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", sb.ToString(), true);
                //txt_USI07.Text = dt.Rows[0]["A15"].ToString();
                //txt_USI10.Text = dt.Rows[0]["A08"].ToString();
                //txt_USI09.Text = dt.Rows[0]["A09"].ToString();
                //txt_USI05.Text = dt.Rows[0]["A14"].ToString();
                //txt_name.Text = dt.Rows[0]["A15"].ToString().Equals("") ? txt_name.Text.Trim() : dt.Rows[0]["A15"].ToString();
                //txt_email.Text = dt.Rows[0]["A08"].ToString().Equals("") ? txt_email.Text.Trim() : dt.Rows[0]["A08"].ToString();
                //txt_phone.Text = dt.Rows[0]["A09"].ToString().Equals("") ? txt_phone.Text.Trim() : dt.Rows[0]["A09"].ToString();
                //txt_tel.Text = dt.Rows[0]["A10"].ToString().Equals("") ? txt_tel.Text.Trim() : dt.Rows[0]["A10"].ToString();
                //txt_address.Text = dt.Rows[0]["A14"].ToString();
            }
        }
    }


    protected void chk_get_last_order_info_CheckedChanged(object sender, EventArgs e)
    {
        if (chk_get_last_order_info.Checked.Equals(true))
        {
            //btn_cupon_Click(null,null);
            chk_get_user_info.Checked = false;
            DataTable dt = CFacade.CartFac.CarGetLastOrderInfo(Convert.ToInt32(Session["A01"].ToString()));
            if (dt.Rows.Count > 0)
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("USI01='';");
                sb.Append("USI05='" + dt.Rows[0]["ORM16"].ToString().Replace("\n", " ") + "';");
                sb.Append("USI07='" + dt.Rows[0]["ORM13"].ToString() + "';");
                sb.Append("USI09='" + dt.Rows[0]["ORM15"].ToString() + "';");
                sb.Append("USI10='" + dt.Rows[0]["ORM17"].ToString() + "';");
                string loc = "0";
                if (!dt.Rows[0]["ORM36"].ToString().Equals(""))
                {
                    loc = dt.Rows[0]["ORM36"].ToString();
                }

                sb.Append("loc='" + loc + "';");
                sb.Append("city='" + dt.Rows[0]["ORM37"].ToString() + "';");
                sb.Append("state='" + dt.Rows[0]["ORM38"].ToString() + "';");
                sb.Append("postcode='" + dt.Rows[0]["ORM35"].ToString() + "';");
                sb.Append("SetShipVal();");
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", sb.ToString(), true);
                //txt_name.Text = dt.Rows[0]["ORM13"].ToString();
                //txt_tel.Text = dt.Rows[0]["ORM14"].ToString();[
                //txt_phone.Text = dt.Rows[0]["ORM15"].ToString();
                //txt_email.Text = dt.Rows[0]["ORM17"].ToString();
                //ddl_state_1.SelectedValue = dt.Rows[0]["ORM36"].ToString();
                //BindState(ddl_state_1.SelectedValue.ToString());
                //ddl_state_2.SelectedValue = dt.Rows[0]["ORM37"].ToString();
                //txt_Postcode.Text = dt.Rows[0]["ORM35"].ToString();
                //txt_city.Text = dt.Rows[0]["ORM38"].ToString();
                //txt_address.Text = dt.Rows[0]["ORM16"].ToString();
                //txt_note.Text = dt.Rows[0]["ORM18"].ToString();
            }
            else
            {
                chk_get_last_order_info.Checked = false;
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg",
                    "alert('No last purchase information。');", true);
            }
        }
    }

    protected void ddl_discount_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!ddl_discount.SelectedValue.ToString().Equals(""))
        {
            txt_coupon.Value = ddl_discount.SelectedValue.ToString().ToUpper();
            btn_coupon_Click(null, null);
        }
    }


    //使用商品折扣券
    protected void btn_coupon_use_Click(object sender, EventArgs e)
    {
        bool isSel = false;
        string pcouponId = "";
        decimal pcouponPrice = 0;
        CARTD obj = new CARTD();
        foreach (RepeaterItem citem in rp_coupon_list.Items)
        {
            if (((RadioButton)citem.FindControl("rb_sel")).Checked == true)
            {
                pcouponId = ((HiddenField)citem.FindControl("hf_PCUGID")).Value;
                pcouponPrice = Convert.ToDecimal(((Literal)citem.FindControl("lit_dis_price")).Text);
                isSel = true;
                obj.CTM01 = ViewState["CARTID"].ToString();
                obj.CTD03 = hf_ITEM_ID.Value;
                obj.CTD11 = Convert.ToInt32(pcouponId);
                obj.CTD12 = pcouponPrice;
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
                ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "closeCoupon", "closeCoupon();",
                    true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "errMsg",
                    "alert('System error, please re-select!');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_coupon_list, typeof(UpdatePanel), "msg",
                "alert('Please select a goods coupon');", true);
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
            ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "closeCoupon", "closeCoupon();",
                true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_coupon_btn, typeof(UpdatePanel), "errMsg",
                "alert('System error, please re-select!');", true);
        }
    }

    protected void lnk_sel_coupon_Click(object sender, EventArgs e)
    {
        RepeaterItem item = (RepeaterItem)((Control)sender).NamingContainer;
        string pId = ((HiddenField)item.FindControl("hf_CTD01")).Value; //商品ID
        string itemId = ((HiddenField)item.FindControl("hf_CTD03")).Value; //品項ID

        //取得目前所有購物車資訊
        DataTable cartDetail = ViewState["CartDetail"] as DataTable;
        DataRow[] SDR = cartDetail.Select("CTD03='" + itemId + "'");
        if (SDR.Length > 0)
        {
            int buyQty = Convert.ToInt32(SDR[0]["CTD06"].ToString()); //商品數量         
            decimal price = PbClass.CashRate(SDR[0]["WPA06"].ToString(), Currency.MYR) *
                            Convert.ToInt32(SDR[0]["CTD06"].ToString()); //商品價格
            string couponNum = SDR[0]["CTD11"].ToString(); //使用卷號
            hf_ITEM_ID.Value = itemId;
            if (ViewState["coupon"] != null)
            {
                //判斷ViewState["coupon"]內是否有那些符合商品
                DataTable couponDt = ViewState["coupon"] as DataTable;
                couponDt.DefaultView.RowFilter = "PCS02='" + pId + "'";
                DataTable bindDt = couponDt.DefaultView.ToTable(); //綁定顯示的折扣券列表
                rp_coupon_list.DataSource = bindDt;
                rp_coupon_list.DataBind();

                foreach (RepeaterItem citem in rp_coupon_list.Items)
                {
                    string couponId = ((HiddenField)citem.FindControl("hf_PCUGID")).Value;
                    string couponType = ((HiddenField)citem.FindControl("hf_PCUG09")).Value;
                    decimal conditionVal = Convert.ToDecimal(((HiddenField)citem.FindControl("hf_PCUG10")).Value);
                    string disType = ((HiddenField)citem.FindControl("hf_PCUG11")).Value;
                    decimal disNum = Convert.ToDecimal(((HiddenField)citem.FindControl("hf_PCUG12")).Value);
                    decimal disMoney = 0;
                    decimal disResult = 0;

                    //計算折扣後商品金額
                    if (disType.Equals("0")) //%數
                    {
                        disMoney = price * disNum / 100;
                    }
                    else if (disType.Equals("1")) //金額
                    {
                        disMoney = disNum;
                    }

                    disResult = price - disMoney;
                    ((Literal)citem.FindControl("lit_dis_price")).Text = Math.Round(disMoney, 2).ToString();
                    ((Literal)citem.FindControl("lit_dis_sum")).Text = Math.Round(disResult, 2).ToString();
                    ((Literal)citem.FindControl("lit_state")).Text = "未符合";
                    ((RadioButton)citem.FindControl("rb_sel")).Visible = false;
                    if (couponType.Equals("0")) //滿件
                    {
                        if (buyQty >= conditionVal)
                        {
                            ((Literal)citem.FindControl("lit_state")).Text = "";
                            ((RadioButton)citem.FindControl("rb_sel")).Visible = true;
                        }
                    }
                    else if (couponType.Equals("1")) //滿額
                    {
                        if (price >= conditionVal) //符合條件
                        {
                            ((Literal)citem.FindControl("lit_state")).Text = "";
                            ((RadioButton)citem.FindControl("rb_sel")).Visible = true;
                        }
                    }

                    //確定折扣券是否符合
                    cartDetail.DefaultView.RowFilter = "CTD11='" + couponId + "' AND CTD03 NOT IN ('" + itemId + "')";
                    DataTable chkDetail = cartDetail.DefaultView.ToTable();
                    if (chkDetail.Rows.Count > 0)
                    {
                        ((Literal)citem.FindControl("lit_state")).Text = "已使用";
                        ((RadioButton)citem.FindControl("rb_sel")).Visible = false;
                        continue;
                    }

                    //原本就選擇使用
                    if (couponNum.Equals(couponId))
                    {
                        ((Literal)citem.FindControl("lit_state")).Text = "";
                        ((RadioButton)citem.FindControl("rb_sel")).Visible = true;
                        ((RadioButton)citem.FindControl("rb_sel")).Checked = true;
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
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "errMsg",
                "alert('The item has been removed, please overload the page!');", true);
        }
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
                        item.Text = LangClass.GetMsgInfo("M033", lgType);
                        break;
                    }
                case "2":
                    {
                        item.Text = LangClass.GetMsgInfo("M034", lgType);
                        break;
                    }
                case "0":
                    {
                        item.Text = LangClass.GetMsgInfo("M035", lgType);
                        break;
                    }
            }
        }
    }

    protected void rb_ha_discount_SelectedIndexChanged(object sender, EventArgs e)
    {
        decimal haCoin = Convert.ToDecimal(lit_ha_coin.Text.Trim()); //目前hawooo coin
        bool iscanel = false;
        if (ViewState["haType"] != null)
        {
            if (rb_ha_discount.SelectedValue.Equals("1") && ViewState["haType"].ToString().Equals("1"))
            {
                iscanel = true;
            }
            else if (rb_ha_discount.SelectedValue.Equals("2") && ViewState["haType"].ToString().Equals("2"))
            {
                iscanel = true;
            }
        }

        if (!iscanel)
        {
            if (rb_ha_discount.SelectedValue.Equals("1"))
            {
                if (haCoin >= 1500)
                {
                    //ViewState["haCoin"] = 1000;
                    ViewState["haType"] = "1";
                }
                else
                {
                    ViewState["haType"] = null;
                    ScriptManager.RegisterStartupScript(up_hacoin, typeof(UpdatePanel), "msg", "alert('Ha幣不足');", true);
                }


                if (Convert.ToDecimal(lit_ship_info.Text.Trim()) <= 0)
                {
                    ViewState["haType"] = null;
                    ScriptManager.RegisterStartupScript(up_hacoin, typeof(UpdatePanel), "msg",
                        "alert('本次訂單不需運費，請選擇其他折抵方式。');", true);
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
                    ViewState["haType"] = null;
                    ScriptManager.RegisterStartupScript(up_hacoin, typeof(UpdatePanel), "msg", "alert('Ha幣不足');", true);
                }
            }
            else if (rb_ha_discount.SelectedValue.Equals("0"))
            {
                ViewState["haType"] = null;
            }
        }

        if (ViewState["haType"] == null)
            rb_ha_discount.ClearSelection();
        CheckSum();
    }

    private CalculateCart _calculateCart;

    public CalculateCart GetCalculateCart
    {
        get
        {
            if (ViewState["ccart"] != null)
            {
                _calculateCart = ViewState["ccart"] as CalculateCart;
            }

            return _calculateCart;
        }
    }

    //0507修改
    protected void lnk_save_ship_OnClick(object sender, EventArgs e)
    {

        string errorMsg = CheckShipInfo();
        if (errorMsg.Equals(""))
        {
            UserShipInfo userShipInfo = new UserShipInfo();
            userShipInfo.A01 = Convert.ToInt32(Session["A01"].ToString());
            userShipInfo.USI14 = Convert.ToInt32(ddl_loc.Value);
            userShipInfo.USI02 = hf_ptxt.Value;
            userShipInfo.USI03 = Request[ddl_state.UniqueID].ToString();
            userShipInfo.USI04 = Request[ddl_city.UniqueID].ToString();
            userShipInfo.USI05 = txt_USI05.Text.Trim();
            userShipInfo.USI06 = 0;
            if (Request[default_ship.UniqueID] != null)
            {
                userShipInfo.USI06 = Request[default_ship.UniqueID].Equals("on") ? 1 : 0;
            }

            userShipInfo.USI07 = txt_USI07.Text.Trim();
            userShipInfo.USI08 = "";
            userShipInfo.USI09 = txt_USI09.Text.Trim();
            userShipInfo.USI10 = txt_USI10.Text.Trim();
            userShipInfo.USI11 = txt_USI11.Text.Trim();
            userShipInfo.USI12 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            userShipInfo.USI13 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            userShipInfo.USI15 = Convert.ToInt32(hf_pkey.Value);
            userShipInfo.USI16 = 1;
            string rval = "";
            if (!hf_USI01.Value.Equals(""))
            {
                userShipInfo.USI01 = Convert.ToInt32(hf_USI01.Value);
                rval = _userShipInfoBL.DoUpdate(userShipInfo);
            }
            else
            {
                if (rp_shipInfo.Items.Count > 3)
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "emsg",
                        "alert('Sorry! You can only retain three recipient information.');unblockMsg();", true);
                }
                else
                {
                    rval = _userShipInfoBL.DoInsert(userShipInfo);
                }
            }

            if (rval.Equals("OK"))
            {
                //BindDefaultShipInfo(Convert.ToInt32(Session["A01"].ToString()));
                //int USI01 = _userShipInfoBL.GetDefaultUsId(int.Parse(Session["A01"].ToString()));
                BindDefaultShipInfo(int.Parse(Session["A01"].ToString()), false);
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "okmsg",
                    "alert('Save completed');CloseSetShipInfo();SelShip(" + _usi01 + ");", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "emsg", "alert('Save failed');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "emsg", "alert('" + errorMsg + "');", true);
        }
    }

    private string CheckShipInfo()
    {
        StringBuilder sb = new StringBuilder();
        if (txt_USI07.Text.Trim().Equals(""))
        {
            sb.Append("Please enter name <br/>");
        }

        if (!RegexClass.IsMyPhone(txt_USI09.Text.Trim()))
        {
            sb.Append("Please enter phone number EX:0172223333  <br/>");
        }


        if (!RegexClass.IsEmail(txt_USI10.Text.Trim()))
        {
            sb.Append("Please enter email <br/>");
        }

        if (txt_USI05.Text.Trim().Equals(""))
        {
            sb.Append("Please enter address <br/>");
        }

        if (ddl_loc.SelectedIndex == 0)
        {
            sb.Append("Please select location <br/>");
        }

        if (Request[ddl_state.UniqueID].ToString().Equals("Select State"))
        {
            sb.Append("Please select state <br/>");
        }

        if (Request[ddl_city.UniqueID].ToString().Equals("Select City"))
        {
            sb.Append("Please select city <br/>");
        }

        if (Request[ddl_postcode.UniqueID].ToString().Equals("-1"))
        {
            sb.Append("Please select postcode <br/>");
        }

        return sb.ToString();
    }

    //新增資料
    protected void lnk_news_OnClick(object sender, EventArgs e)
    {
        p_delete_ship.Visible = false;
        if (rp_shipInfo.Items.Count > 3)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "emsg",
                "alert('Sorry! You can only retain three recipient information.');unblockMsg();", true);
        }
        else
        {
            string scrTxt = "CloseGetShipInfo();CleanShipVal();OpenSetShipInfo();";
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "shipscript", scrTxt, true);
        }
    }

    //0507修改
    protected void lnk_edit_shipinfo_OnClick(object sender, EventArgs e)
    {
        RepeaterItem item = (RepeaterItem)((Control)sender).NamingContainer;
        int uid = int.Parse(((HiddenField)item.FindControl("hfUSI01")).Value); //商品ID
        p_delete_ship.Visible = false;
        DataTable dt = _userShipInfoBL.GetUserShipInfo(uid);
        if (dt.Rows.Count > 0)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("USI01='" + dt.Rows[0]["USI01"].ToString() + "';");
            sb.Append("USI07='" + dt.Rows[0]["USI07"].ToString() + "';");
            sb.Append("USI10='" + dt.Rows[0]["USI10"].ToString() + "';");
            sb.Append("USI09='" + dt.Rows[0]["USI09"].ToString() + "';");
            sb.Append("USI05='" + dt.Rows[0]["USI05"].ToString().Replace("\n", " ") + "';");
            sb.Append("loc='" + dt.Rows[0]["USI14"].ToString() + "';");
            sb.Append("state='" + dt.Rows[0]["USI03"].ToString() + "';");
            sb.Append("city='" + dt.Rows[0]["USI04"].ToString() + "';");
            sb.Append("postcode='" + dt.Rows[0]["PI01"].ToString() + "';");
            sb.Append("defaultaddr='" + dt.Rows[0]["USI06"].ToString() + "';");
            sb.Append("CloseGetShipInfo();OpenSetShipInfo();SetShipVal();");
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", sb.ToString(), true);
        }

        if (rp_shipInfo.Items.Count > 1)
        {
            p_delete_ship.Visible = true;
        }
    }

    protected void btn_sel_ship_OnClick(object sender, EventArgs e)
    {
        int uid = int.Parse(hf_sel.Value);
        DataTable dt = _userShipInfoBL.GetUserShipInfo(uid);
        string scriptStr = "";
        if (dt.Rows.Count > 0)
        {
            SetShipInfo(dt.Rows[0]);
            CheckShip();
            CheckSum();
            scriptStr = "CloseGetShipInfo();";
        }
        else
        {
            scriptStr = "alert('Wrong selection!');";
        }

        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", scriptStr, true);
    }


    protected void lnk_ship_delete_OnClick(object sender, EventArgs e)
    {
        int userId = int.Parse(Session["A01"].ToString());
        if (hf_USI01.Value != "")
        {
            int uid = Convert.ToInt32(hf_USI01.Value);
            string msg = _userShipInfoBL.DeleteUserInfo(uid, userId);
            if (msg.Equals("Delete Complete"))
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Delete Complete');location.href='cart1.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "ShowHangMsg('" + msg + "');", true);
            }
        }

        //BindDefaultShipInfo(userId, true);
        //CheckSum();
        //string scriptStr = "ShowHangMsg('" + msg + "');CloseAllModal();";
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", scriptStr, true);
    }
}