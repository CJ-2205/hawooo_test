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


public partial class user_cart3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LangType lgType = (this.Master as user_user).LgType;
            if (Session["A01"] != null)
            {
                if (Request.QueryString["oid"] != null)
                {
                    Guid g;
                    if (Guid.TryParse(Request.QueryString["oid"].ToString(), out g))
                    {
                        DataTable dt = CFacade.OrderFac.Cart3GetOrder(Convert.ToString(Request.QueryString["oid"].ToString()), Session["A01"].ToString());
                        if (dt.Rows.Count > 0)
                        {
                            if (!dt.Rows[0]["ORM02"].ToString().Substring(0, 1).ToUpper().Equals("P"))
                            {
                                if (!dt.Rows[0]["ORM34"].ToString().Equals("YES"))
                                {
                                    CFacade.OrderFac.SendOrder(dt.Rows[0]["ORM01"].ToString());
                                }

                                if (!Session["A01"].ToString().Equals("116"))
                                {
                                    //寄送匯款單據簡訊
                                    if (dt.Rows[0]["ORM12"].ToString().Equals("0") || dt.Rows[0]["ORM12"].ToString().Equals("3"))
                                    {
                                        CFacade.GetFac.GetInfoBipFac.sendPaymentAccount(dt.Rows[0]["ORM01"].ToString());
                                    }
                                }

                            }

                            //checkOK(Convert.ToDecimal(dt.Rows[0]["ORM08"].ToString()));
                            lit_orderNum.Text = dt.Rows[0]["ORM02"].ToString();
                            if (dt.Rows[0]["ORM12"].ToString().Equals("0"))
                            {
                                Panel1.Visible = true;
                                //銀行匯款

                                //pushVpon(dt.Rows[0]["ORM02"].ToString());
                            }
                            else if (dt.Rows[0]["ORM12"].ToString().Equals("3")) //Public Bank付款
                            {
                                Panel4.Visible = true;
                                //銀行匯款 

                            }
                            else if (dt.Rows[0]["ORM12"].ToString().Equals("1"))
                            {
                                Panel2.Visible = true;
                                if (dt.Rows[0]["ORM19"].ToString().Equals("1"))
                                {
                                    //付款完成
                                    lit_crad_info.Text = "<br /><span>" + LangClass.GetMsgInfo("M040", lgType) + "</span>";
                                }
                                else
                                {
                                    //付款失敗
                                    lit_crad_info.Text = LangClass.GetMsgInfo("M041", lgType) + "</br>";
                                    lit_crad_info.Text += "<br/><a style=\"font-size: 20px; color: #ff0000\" href=\"../molpay/transToMolPay.aspx?oid=" + dt.Rows[0]["ORM02"].ToString() + "\">[Repay]</a>";
                                }
                                //else if (dt.Rows[0]["ORM19"].ToString().Equals("0"))
                                //{
                                //    //處理中(尚未確認款項)
                                //    lit_crad_info.Text = "款項確認中</br><span style=\"font-size:20px\">(Payment confirmation)</span>";
                                //    //lit_crad_info.Text += "<br/><a style=\"font-size: 20px; color: #ff0000\" href=\"../molpay/transToMolPay.aspx?oid=" + dt.Rows[0]["ORM02"].ToString() + "\">[重新付款]</a>";
                                //}
                            }
                            else if (dt.Rows[0]["ORM12"].ToString().Equals("2"))  //COD付款
                            {
                                Panel3.Visible = true;
                            }
                            doInvoTrackSend(dt.Rows[0]["ORM02"].ToString(), dt.Rows[0]["ORM08"].ToString(), dt.Rows[0]["ORM49"].ToString());

                            //判定是否重覆POST
                            // PurchaseOrder(dt.Rows[0]["ORM01"].ToString());
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
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    //寄送invotrack
    private void doInvoTrackSend(string ORM02, string ORM08, string TCODE)
    {

        if (TCODE.ToLower().Equals("involve_asia"))
        {
            lit_involveasia_txt.Text = ia.GetIATrackCode(ORM02, ORM08);

        }
    }

}