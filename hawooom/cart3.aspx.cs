using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart3 : System.Web.UI.Page
{
    string ORM02 = String.Empty;
    protected void Page_UnLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //清空追蹤碼
            clearITCODE(ORM02);
        }
    }
    private void clearITCODE(string ORM02)
    {
        //回傳ITCODE資料
        if (HttpContext.Current.Request.Cookies["ITCODE"] != null)
        {
            ITCODE objITCODE = new ITCODE();
            objITCODE.ITCODE04 = ORM02;
            objITCODE.ITCODE05 = HttpContext.Current.Request.Cookies["ITCODE"].Value;
            objITCODE.doUpOrderIDtoITCODE(objITCODE);
            HttpCookie cookie = new HttpCookie("ITCODE", "");
            cookie.HttpOnly = true;
            cookie.Expires = DateTime.Now.AddYears(-1);
            cookie.Domain = HttpContext.Current.Request.Url.Host;
            HttpContext.Current.Response.SetCookie(cookie);
        }
    }

    private void SendOrderMail(DataTable ormDt)
    {
        if (!ormDt.Rows[0]["ORM34"].ToString().Equals("YES"))
        {
            CFacade.OrderFac.SendOrder(ormDt.Rows[0]["ORM01"].ToString());
        }
        //寄送匯款單據簡訊
        if (ormDt.Rows[0]["ORM12"].ToString().Equals("0") || ormDt.Rows[0]["ORM12"].ToString().Equals("3"))
        {
            CFacade.GetFac.GetInfoBipFac.sendPaymentAccount(ormDt.Rows[0]["ORM01"].ToString());
        }
    }

    private void SetInfo(DataTable ormDt)
    {
        decimal ship = Convert.ToDecimal(ormDt.Rows[0]["ORM06"].ToString());
        decimal goodsSum = Convert.ToDecimal(ormDt.Rows[0]["ORM05"].ToString());
        decimal orderSum = Convert.ToDecimal(ormDt.Rows[0]["ORM08"].ToString());
        decimal haCoinDis = Convert.ToDecimal(ormDt.Rows[0]["ORM66"].ToString());
        decimal goldDis = Convert.ToDecimal(ormDt.Rows[0]["ORM11"].ToString());
        decimal couponDis = Convert.ToDecimal(ormDt.Rows[0]["ORM10"].ToString());
        decimal autoDis = Convert.ToDecimal(ormDt.Rows[0]["ORM73"].ToString());
        decimal goodsDis = Convert.ToDecimal(ormDt.Rows[0]["ORM70"].ToString());


        lit_orderNum.Text = ormDt.Rows[0]["ORM02"].ToString();
        lit_ship_info.Text = ship.ToString();
        lit_subtotal.Text = (goodsSum + ship).ToString();
        lit_discount.Text = (haCoinDis + goldDis + couponDis + autoDis + goodsDis).ToString();
        lit_sum.Text = orderSum.ToString();

        lit_shipname.Text = ormDt.Rows[0]["ORM13"].ToString();
        string showAddr = "{0} <br/> {1} {2} {3}";
        string address = ormDt.Rows[0]["ORM16"].ToString();
        string city = ormDt.Rows[0]["CITY"].ToString();
        string state = ormDt.Rows[0]["ORM38"].ToString();
        string postcode = ormDt.Rows[0]["ORM35"].ToString();
        lit_address.Text = String.Format(showAddr, address, city, state, postcode);
    }

    private void SetDetailInfo(DataTable ordDt)
    {
        decimal getCoin = 0;
        foreach (DataRow dr in ordDt.Rows)
        {
            getCoin += Convert.ToDecimal(dr["ORD16"].ToString());
        }

        lit_get_hacoin.Text = getCoin.ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["oid"] != null && Session["A01"] != null)
            {
                string memberId = Session["A01"].ToString();
                string orderId = Request.QueryString["oid"].ToString();
                if (FieldCheck.isGuid(orderId))
                {
                    DataSet ds = CFacade.OrderFac.GetCart3Info(orderId, memberId);
                    DataTable ormDt = ds.Tables["ORDERM"];
                    DataTable ordDt = ds.Tables["ORDERD"];
                    if (ormDt.Rows.Count > 0)
                    {
                        SendOrderMail(ormDt); //寄送信件
                        SetInfo(ormDt); //設定資料
                        SetDetailInfo(ordDt); //設定訂單明細資訊


                        string ORM12 = ormDt.Rows[0]["ORM12"].ToString();
                        pbb.Visible = false;
                        cimb.Visible = false;
                        repay.Visible = false;
                        if (ORM12.Equals("3")) //PBB
                        {
                            pbb.Visible = true;
                        }
                        else if (ORM12.Equals("0"))
                        {
                            cimb.Visible = true;
                        }
                        else
                        {
                            if (!ormDt.Rows[0]["ORM19"].ToString().Equals("-1"))
                            {
                                string repayStr = "<a href=\"../molpay/transToMolPay.aspx?oid=" + ormDt.Rows[0]["ORM02"].ToString() + "\" target=\"_blank\">" +
                                                  "<span class=\"button-cart button-next\">Repay</span></a>";
                                lit_repay.Text = repayStr;
                                repay.Visible = true;
                            }
                          
                        }

                        //if (ormDt.Rows[0]["ORM12"].ToString().Equals("0"))
                        //{
                        //    Panel1.Visible = true;

                        //}
                        //else if (ormDt.Rows[0]["ORM12"].ToString().Equals("3")) //Public Bank付款
                        //{
                        //    Panel4.Visible = true;

                        //}
                        //else if (ormDt.Rows[0]["ORM12"].ToString().Equals("1"))
                        //{
                        //    Panel2.Visible = true;
                        //    if (ormDt.Rows[0]["ORM19"].ToString().Equals("1"))
                        //    {

                        //        //付款完成
                        //        lit_crad_info.Text = "<br /><span>Online payment transaction is successful</span>";
                        //    }
                        //    else if (ormDt.Rows[0]["ORM19"].ToString().Equals("-1"))
                        //    {
                        //        //付款失敗
                        //        lit_crad_info.Text = "<br /><span>Online payment transaction is fails</span>";
                        //        lit_crad_info.Text += "<br /><a style=\"font-size: 20px; color: #ff0000\" href=\"../molpay/transToMolPay.aspx?oid=" + ormDt.Rows[0]["ORM02"].ToString() + "\">[Repay]</a>";
                        //    }
                        //    else if (ormDt.Rows[0]["ORM19"].ToString().Equals("0"))
                        //    {
                        //        //處理中(尚未確認款項)
                        //        lit_crad_info.Text = "</br><span style=\"font-size:20px\">Online payment status has not been confirmed， if not use credit card，plaease wait bank response message</span>";
                        //    }
                        //}
                        //else if (ormDt.Rows[0]["ORM12"].ToString().Equals("2"))  //COD付款
                        //{
                        //    Panel3.Visible = true;
                        //}


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
            else
            {
                Response.Redirect("index.aspx");
            }

        }
    }

    //寄送invotrack
    //private void DoInvoTrackSend(string ORM02, string ORM08, string TCODE)
    //{

    //    if (TCODE.ToLower().Equals("involve_asia"))
    //    {
    //        lit_involveasia_txt.Text = ia.GetIATrackCode(ORM02, ORM08);
    //    }
    //}

}