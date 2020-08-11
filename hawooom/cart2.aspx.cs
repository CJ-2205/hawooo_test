using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as mobile).LgType;

            //porder.Visible = false;
            if (Session["A01"] != null)
            {
                int ctype = 1;
                //panel_dis_price.Visible = false;
                //panel_full_event.Visible = false;
                //panel_coupon.Visible = false;
                //panel_ha_coin.Visible = false;
                if (Request.QueryString["ctype"] != null)
                {
                    if (Request.QueryString["ctype"].ToString().Equals("1"))
                    {
                        ctype = 1;
                        //panel_full_event.Visible = true;
                        //panel_coupon.Visible = true;
                        //panel_ha_coin.Visible = true;
                    }
                    else if (Request.QueryString["ctype"].ToString().Equals("3"))
                    {
                        ctype = 3;
                        //panel_dis_price.Visible = true;
                    }
                    else
                    {
                        ctype = 2;

                    }
                }

                ViewState["ctype"] = ctype;
                //bindGiftList(ctype);
                bindDT(ctype);
                if (Session["A19"].ToString().Equals("1"))
                {
                    //porder.Visible = true;
                }

                //FbScript();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    //private void FbScript()
    //{
    //    string fbScript = facebook.FbAddPaymentInfo();
    //    ScriptManager.RegisterStartupScript(Page, typeof(Page), "fbevent", fbScript, true);
    //}
    private void GetAutoEvent(DataTable cartDt)
    {

        DataTable eventDT = WebEventFacade.GetWebEventSelPDFac.GetOnTimeWebEvent(_pIds);
        if (eventDT.Rows.Count > 0)
        {
            //ViewState["event"] = eventDT;

            Tuple<List<WebEventCartUse>, List<WebEventCartUse>> WebEvent = WebEventCartUse.CheckEventUse(eventDT, cartDt);
            ViewState["WebEvent"] = WebEvent;
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
        //if (ofp1.Checked == true) //CIMB
        //{
        //    return Tuple.Create("0", "cimb");
        //}
        if (ofp2.Checked == true) //Public Bank
        {
            return Tuple.Create("3", "pbb");
        }
        return Tuple.Create("", "");
        //ScriptManager.RegisterClientScriptBlock(up_step, typeof(UpdatePanel), "msg", "alert('" + msg + "');", true);
    }
    private DataTable GetGiftDt(int ctype = 1)
    {
        DataTable dt = CFacade.GetFac.GetGiftEventFac.GetAllGiftEventList(ctype);
        return dt;
    }
    private DataTable CreateGiftDT()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("GE01");
        dt.Columns.Add("GP01");
        dt.Columns.Add("GP02");
        dt.Columns.Add("GE02");
        dt.Columns.Add("GE05");
        dt.Columns.Add("GE10");
        dt.Columns.Add("GE10_EN");
        dt.Columns.Add("GE11");
        dt.Columns.Add("GE11_EN");
        dt.Columns.Add("GP10");
        dt.Columns.Add("lack");
        dt.Columns.Add("count");
        dt.Columns.Add("type");
        return dt;
    }
    public void GiftEvent(DataTable detailDt)
    {
        DataTable giftDt = GetGiftDt();
        if (giftDt.Rows.Count > 0)
        {
            DataTable cartDt = detailDt;
            DataTable getGiftDt = CreateGiftDT();
            foreach (DataRow dr in giftDt.Rows)
            {
                string eId = dr["GE01"].ToString();
                string giftType = dr["GE05"].ToString();
                string getType = dr["GE12"].ToString();  //1:by商品 2:by總額 3:by Rank
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
                    decimal pdiscount = FieldCheck.isDecimal(fdr["CTD12"].ToString()) ? Convert.ToDecimal(fdr["CTD12"].ToString()) : 0;
                    decimal goodsPrice = PbClass.CashRate((price * count - pdiscount), 7.6m);

                    if (getType.Equals("1")) //By商品贈送
                    {
                        DataTable selGoods = SqlDbmanager.queryBySql("SELECT GESP02 FROM GiftEventSelWP WHERE GESP01='" + eId +
                                                                    "' AND GESP02 IN (" + string.Join(",", filterCartDt.Rows.OfType<DataRow>().Select(r => r["CTD01"].ToString())) + ")");
                        if (selGoods.AsEnumerable().Any(v => v.Field<Int64>("GESP02").Equals(fdr["CTD01"])))
                        {
                            goodsSum += goodsPrice;
                        }
                    }
                    else //總額贈送 & Rank
                    {
                        goodsSum += goodsPrice;
                    }
                }


                if (goodsSum >= giftTermMoney)
                {
                    DataRow ndr = getGiftDt.NewRow();
                    //ndr["GE01"] = eId;
                    //ndr["GE10"] = dr["GE10"].ToString();
                    foreach (DataColumn dc in giftDt.Columns)
                    {
                        if (getGiftDt.Columns.Contains(dc.ColumnName))
                        {
                            ndr[dc.ColumnName] = dr[dc.ColumnName].ToString();
                        }
                    }

                    ndr["type"] = string.Format(@"<span class=""span-ok"">{0}</span>", LangClass.GetMsgInfo("M025", (LangType)ViewState["LG"]));
                    ndr["lack"] = "";
                    if (giftType.Equals("0"))
                        ndr["count"] = "1"; //贈送數量
                    else
                        ndr["count"] = Math.Floor(goodsSum / giftTermMoney).ToString(); //贈送數量 
                    getGiftDt.Rows.Add(ndr);
                }

            }
            rp_gift_list.DataSource = getGiftDt;
            rp_gift_list.DataBind();

        }
    }

    private List<string> _pIds = new List<string>();


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
        if (_CARTID != "")
        {
            //綁定商品資訊
            DataSet ds = CFacade.CartFac.GetCart2Info(_CARTID, _type, (LangType)ViewState["LG"]);
            DataTable cartDt = ds.Tables[0];


            foreach (DataRow dr in cartDt.Rows)
            {
                _pIds.Add(dr["CTD01"].ToString());
            }



            DataTable cartInfoDT = ds.Tables[1];
            GetAutoEvent(cartDt);
            rp_cart_list.DataSource = cartDt;
            rp_cart_list.DataBind();


            if (cartInfoDT.Rows.Count > 0)
            {

                CheckSum(cartInfoDT, cartDt);

                //滿額折抵活動判定
                //GiftEvent(cartDt);

            }
            else
            {
                Response.Redirect("cart1.aspx?ctype=" + ViewState["ctype"].ToString());
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
        //DataTable dt = CFacade.CartFac.GetCartDT();
    }

    private decimal _goodsSum = 0;
    private decimal _shipSum = 0;
    private decimal _goodsDisSum = 0;
    private decimal _couponSum = 0;
    private decimal _autoDisSum = 0;
    private decimal _goldSum = 0;
    private decimal _haSum = 0;
    private decimal _getHaCoin = 0;
    private void CheckSum(DataTable cartInfoDt, DataTable cartDt)
    {
        _goodsSum = Convert.ToDecimal(cartInfoDt.Rows[0]["CTI01"].ToString());
        _shipSum = Convert.ToDecimal(cartInfoDt.Rows[0]["CTI02"].ToString());
        _couponSum = Convert.ToDecimal(cartInfoDt.Rows[0]["CTI06"].ToString());
        _autoDisSum = Convert.ToDecimal(cartInfoDt.Rows[0]["CTI35"].ToString());
        _goldSum = Convert.ToDecimal(cartInfoDt.Rows[0]["CTI07"].ToString());
        _haSum = Convert.ToDecimal(cartInfoDt.Rows[0]["CTI31"].ToString());
        _goodsDisSum = cartDt.Rows.OfType<DataRow>().Sum(v => v.Field<decimal>("CTD12"));
        decimal rebate = 1;
        if (Session["MRebate"] != null)
            rebate = Convert.ToDecimal(Session["MRebate"].ToString());
        _getHaCoin = Math.Floor(_goodsSum * rebate);

        lit_pcount.Text = cartDt.Rows.Count.ToString();
        lit_get_hacoin.Text = _getHaCoin.ToString();
        lit_price.Text = cartInfoDt.Rows[0]["CTI04"].ToString();
        lit_ship_info.Text = _shipSum.ToString();
        lit_subtotal.Text = (_goodsSum + _shipSum).ToString();
        lit_dishacoin.Text = _haSum.ToString();
        lit_disgold.Text = _goldSum.ToString();
        lit_discount.Text = (_couponSum + _autoDisSum).ToString();
        lit_sum.Text = cartInfoDt.Rows[0]["CTI04"].ToString();

        //address city state postcode

        BindShipInfo(cartInfoDt);

        GiftEvent(cartDt);

        up_cart_list.Update();
        up_result.Update();



    }

    private void BindShipInfo(DataTable cartInfoDt)
    {
        PostInfo postInfo = new PostInfo();
        DataTable postDt = postInfo.GetPostInfo(Convert.ToInt32(cartInfoDt.Rows[0]["CTI16"].ToString()));

        string showAddr = "{0} <br/> {1} {2} {3} <br> {4}";
        string address = cartInfoDt.Rows[0]["CTI12"].ToString();
        string phone = cartInfoDt.Rows[0]["CTI11"].ToString();

        if (postDt.Rows.Count > 0)
        {
            string city = postDt.Rows[0]["PI04"].ToString();
            string state = postDt.Rows[0]["PI03"].ToString();
            string postcode = postDt.Rows[0]["PI02"].ToString();
            lit_shipinfo.Text = String.Format(showAddr, address, city, state, postcode, phone);

        }


        lit_shipname.Text = cartInfoDt.Rows[0]["CTI09"].ToString();
    }

    //private void bindPayment(int ctype)
    //{
    //    //rb_payment.Items.Clear();
    //    //if (!Session["A19"].ToString().Equals("1"))
    //    //{
    //    //    if (ctype.Equals(2))
    //    //    {
    //    //        rb_payment.Items.Add(new ListItem("COD 貨到付款", "2"));
    //    //    }
    //    //}
    //    //rb_payment.Items.Add(new ListItem("Cimb Bank 轉帳", "0"));
    //    //rb_payment.Items.Add(new ListItem("Public Bank 轉帳", "3"));
    //    //rb_payment.Items.Add(new ListItem("Molpay 線上付款", "1"));
    //    //rb_payment.SelectedIndex = 2;
    //}
    protected void btn_pre_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart1.aspx?ctype=" + ViewState["ctype"].ToString());
    }



    private Tuple<string, string> _payItem;

    protected void btn_next_Click(object sender, EventArgs e)
    {

        ScriptManager.RegisterStartupScript(Page, typeof(Page), "bmsg", "blockMsg('Please wait...');", true);
        if (!CheckAutoEvent())
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert2url('Shopping cart items are subject to change, please reconfirm','cart1.aspx');", true);
        }
        else
        {
            int userId = Convert.ToInt32(Session["A01"].ToString());
            string cartID = ViewState["CARTID"].ToString();
            int cartType = Convert.ToInt32(ViewState["ctype"].ToString());
            string rate = Application["mycashrate"].ToString();

            ORDERBL orderBL = new ORDERBL(userId, cartType, rate);



            //取得購物車商品資訊 & 收件者資訊
            orderBL.GetCart(cartID);

            if (orderBL.CartDt.Rows.Count <= 0)
            {
                Response.Redirect("index.aspx");
            }
            if (orderBL.CartInfoDt.Rows.Count <= 0)
            {
                Response.Redirect("index.aspx");
            }
            orderBL.PayItem = chkPayItem();
            orderBL.GiftRp = rp_gift_list;
            string errorMsg = orderBL.TransWork();
            if (errorMsg.Length > 0)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "unblockMsg();alert2url('" + errorMsg + "','cart1.aspx');", true);
            }
            else
            {
                orderBL.ORDERM.ORM39 = "SM";


                int rval = orderBL.CreateOrder();

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
                    //string criteoTxt = criteo.SaleTag(email, obl.ORDERM.ORM02, ordDList);
                    string url = "cart3.aspx?oid=" + orderBL.ORDERM.ORM01.ToString();
                    string payStr = "ATM";
                    if (orderBL.ORDERM.ORM23 != 116)
                    {
                        if (orderBL.ORDERM.ORM12.Equals(1))
                        {
                            url = "../molpay/transToMolPay.aspx?oid=" + orderBL.ORDERM.ORM02.ToString();
                            payStr = "MOLPAY";
                        }
                    }
                    StringBuilder sb = new StringBuilder();

                    //sb.Append(criteoTxt); //criteo 
                    sb.Append("ga('ec:setAction','checkout_option', {'step': 3,'option':'" + payStr + "'});"); //ga checkout
                    sb.Append(AdTrack.PurchaseOrder(orderBL.ORDERM.ORM01));
                    sb.Append(Ematic.Convert(orderBL.CartDt, decimal.Parse(Application["mycashrate"].ToString())));
                    sb.Append(GoogleTag.TagOrderTrack(orderBL.ORDERM.ORM08.ToString(), orderBL.ORDERM.ORM02.ToString()));
                    sb.Append("location.href='" + url + "';"); //location

                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "finalCart", sb.ToString(), true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(up_step, typeof(UpdatePanel), "msg", "alert2url('ERROR:[CART2] Please call +603-76102050','cart1.aspx');", true);
                }

            }
        }
    }

    private void AutoDiscount(RepeaterItem item)
    {
        ((Panel)item.FindControl("p_web_event")).Visible = false;
        if (ViewState["WebEvent"] != null)
        {
            Tuple<List<WebEventCartUse>, List<WebEventCartUse>> entCart = (Tuple<List<WebEventCartUse>, List<WebEventCartUse>>)(ViewState["WebEvent"]);
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
                ((Literal)item.FindControl("lit_web_event")).Text = WebEventCartUse.GetMobileOKSTR(HasUseEvent.ENAME, HasUseEvent.EID.ToString(), HasUseEvent.MURL);
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

    private int pId;
    protected void rp_cart_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {

            pId = Convert.ToInt32(((HiddenField)e.Item.FindControl("hf_CTD01")).Value);

            hfListId.Value += pId + ",";


            if (((HiddenField)e.Item.FindControl("hf_CTD10")).Value.Equals("0")) //一般
            {
                ((Panel)e.Item.FindControl("p_pre_sale")).Visible = false;
            }
            else //預購
            {
                ((Panel)e.Item.FindControl("p_pre_sale")).Visible = true;
                //((Literal)e.Item.FindControl("lit_booking_msg")).Text = "<br/><span style=\"color:#C00;font-weight:600;\">[此商品為預購商品,實際到貨日期依照廠商發貨日期為準]</span>";
            }

            AutoDiscount(e.Item);
        }
    }

    private bool CheckAutoEvent()
    {
        bool rval = true;
        string cartID = Request.Cookies["CARTID"].Value.ToString();
        SqlCommand cmd = new SqlCommand();

        string sqlTxt = "SELECT CTE01,CTE04 FROM CARTE WHERE CTM01=@CTM01";
        cmd.CommandText = sqlTxt;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CTM01", SqlDbType.VarChar, cartID));
        DataTable eventDt = SqlDbmanager.queryBySql(cmd);
        if (eventDt.Rows.Count > 0)
        {
            List<string> eIds = new List<string>();
            foreach (DataRow eDr in eventDt.Rows)
            {
                string[] ids = eDr["CTE04"].ToString().Split(',');
                eIds.AddRange(ids.ToArray());
            }

            sqlTxt = "SELECT CTD01,CTD02 " +
                     "FROM CARTD " +
                     "INNER JOIN WP ON WP01=CTD01 " +
                     "WHERE CTM01=@CTM01 " +
                     "AND CTD07=1 " +
                     "AND WP07 IN (1,2) " +
                     "AND GETDATE() BETWEEN WP09 AND WP10 ";
            cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("CTM01", SqlDbType.VarChar, cartID));
            DataTable productDt = SqlDbmanager.queryBySql(cmd);
            foreach (DataRow pDr in productDt.Rows)
            {
                if (!eIds.Contains(pDr["CTD01"].ToString()))
                {
                    rval = false;
                    break;
                }
            }
        }
        return rval;
    }

    private void AddOrderIp(string oId)
    {
        var cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO OrderIp VALUES (@OI01,@OI02,@OI03)";
        cmd.Parameters.Add(SafeSQL.CreateInputParam("OI01", SqlDbType.VarChar, oId));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("OI02", SqlDbType.VarChar, PbClass.GetClientIP()));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("OI03", SqlDbType.VarChar,
            DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));

    }
}