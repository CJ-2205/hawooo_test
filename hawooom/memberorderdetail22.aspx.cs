using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class memberorderdetail22 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ((Literal)member_class.FindControl("lit_class_txt")).Text = "訂單管理 > 訂單明細";
            Guid g;
            if (Request.QueryString["oid"] != null)
            {
                if (Guid.TryParse(Request.QueryString["oid"], out g))
                {
                    ViewState["oid"] = Request.QueryString["oid"].ToString();
                    bindOrder(Request.QueryString["oid"].ToString());
                }
                else
                {
                    Response.Redirect("memberorder.aspx");
                }
            }
            else
            {
                Response.Redirect("memberorder.aspx");
            }
        }
    }
    private void bindOrder(string oid)
    {
        //ATMPANEL.Visible = false;
        if (Session["A01"] != null)
        {
            DataTable dt = CFacade.OrderFac.MemberOrderDetail(oid, Convert.ToInt32(Session["A01"].ToString()));

            if (dt.Rows.Count > 0)
            {

                ////都不顯示資訊
                //int i = 3;

                ////尚未付款而且不為取消訂單(顯示付款資訊)
                //if (dt.Rows[0]["ORM19"].ToString().Equals("0") && !dt.Rows[0]["ORM24"].ToString().Equals("-1"))
                //{
                //    i = 2;
                //}
                ////確認付款而且不為取消訂單(顯示查詢貨態資訊)
                //else if (dt.Rows[0]["ORM19"].ToString().Equals("1") && !dt.Rows[0]["ORM24"].ToString().Equals("-1"))
                //{
                //    i = 1;
                //}


                //訂單編號為G開頭(團購訂單)
                if (dt.Rows[0]["ORM02"].ToString().Substring(0, 1) == "G")
                {
                    //不顯示Ha幣跟折扣券，顯示折扣
                    ScriptManager.RegisterStartupScript(Page, GetType(), "remove", "removeHaAndDiscountC()", true);
                }
                else
                {
                    //不顯示折扣，顯示Ha幣跟折扣券
                    ScriptManager.RegisterStartupScript(Page, GetType(), "remove", "removeDiscount()", true);
                }



                // hf_ORM01.Value = dt.Rows[0]["ORM01"].ToString();
                lit_ORM02.Text = dt.Rows[0]["ORM02"].ToString();
                lit_ORM03.Text = dt.Rows[0]["ORM03"].ToString();
                lit_ORM05.Text = dt.Rows[0]["ORM05"].ToString();
                lit_ORM06.Text = dt.Rows[0]["ORM06"].ToString();
                lit_ORM08.Text = dt.Rows[0]["ORM08"].ToString();
                lit_ORM10.Text = dt.Rows[0]["ORM10"].ToString();
                lit_ORM11.Text = dt.Rows[0]["ORM11"].ToString();
                lit_ORM12.Text = CFacade.OrderFac.PaymentText(Convert.ToInt32(dt.Rows[0]["ORM12"].ToString()));
                //switch (dt.Rows[0]["ORM12"].ToString())
                //{
                //    case "0":
                //        {

                //            ATMPANEL.Visible = true;
                //            txt_ORM26.Text = dt.Rows[0]["ORM26"].ToString();
                //            txt_ORM27.Text = dt.Rows[0]["ORM27"].ToString();
                //            txt_ORM28.Text = dt.Rows[0]["ORM28"].ToString();
                //            break;
                //        }
                //    case "1":
                //        {

                //            break;
                //        }
                //}
                lit_ORM19.Text = CFacade.OrderFac.MOrderPayStateTxt(Convert.ToInt32(dt.Rows[0]["ORM19"].ToString()));
                string _ORM19 = dt.Rows[0]["ORM19"].ToString();
                string _ORM12 = dt.Rows[0]["ORM12"].ToString();
                string _ORM24 = dt.Rows[0]["ORM24"].ToString();
                if (_ORM12.Equals("1"))
                {
                    if ((_ORM19.Equals("0") || _ORM19.Equals("-1")) && !_ORM24.Equals("-1"))
                    {
                        lit_Re_Molpay.Text = "<a style=\"font-size: 20px; color: #ff0000\" href=\"../molpay/transToMolPay.aspx?oid=" + dt.Rows[0]["ORM02"].ToString() + "\">[重新付款]</a>";
                    }
                }
                lit_ORM13.Text = dt.Rows[0]["ORM13"].ToString();
                lit_ORM14.Text = dt.Rows[0]["ORM14"].ToString();
                lit_ORM15.Text = dt.Rows[0]["ORM15"].ToString();
                lit_ORM16.Text = dt.Rows[0]["ORM16"].ToString();
                //lit_ORM17.Text = dt.Rows[0]["ORM17"].ToString();
                lit_ORM18.Text = dt.Rows[0]["ORM18"].ToString();
                //lit_ORM20.Text = dt.Rows[0]["ORM20"].ToString();
                lit_ORM24.Text = CFacade.OrderFac.MOrderStateTxt(Convert.ToInt32(dt.Rows[0]["ORM24"].ToString()));


                lit_ORM25.Text = dt.Rows[0]["ORM25"].ToString();
                lit_ORM66.Text = dt.Rows[0]["ORM66"].ToString();
                lit_ORM69.Text = dt.Rows[0]["ORM69"].ToString();
                //lit_ORM29.Text = dt.Rows[0]["ORM29"].ToString();
                //lit_ORM30.Text = dt.Rows[0]["ORM30"].ToString();
                //lit_ORM31.Text = dt.Rows[0]["ORM31"].ToString();
                //lit_ORM32.Text = dt.Rows[0]["ORM32"].ToString();
                //lit_ORM33.Text = dt.Rows[0]["ORM33"].ToString();
                rp_cart_list.DataSource = dt;
                rp_cart_list.DataBind();
                //ORDERCFactory odrCFAC = new ORDERCFactory();
                //DataTable commentDT = odrCFAC.GetORDC(dt.Rows[0]["ORM01"].ToString());

                //foreach (RepeaterItem ri in rp_cart_list.Items)
                //{
                //    if (Convert.ToInt32(dt.Rows[0]["ORM24"].ToString()) == 2)
                //    {
                //        DataRow[] sDR = commentDT.Select("ORD01='" + ((HiddenField)ri.FindControl("hf_ORD01")).Value + "'");
                //        if (sDR.Length > 0)
                //        {
                //            ((LinkButton)ri.FindControl("lnk1")).Visible = false;
                //        }
                //        else
                //        {
                //            ((LinkButton)ri.FindControl("lnk1")).Visible = true;
                //        }
                //    }
                //    else
                //    {
                //        ((LinkButton)ri.FindControl("lnk1")).Visible = false;
                //    }
                //}
                DataTable giftDT = CFacade.OrderFac.AdmGetOrderGift(dt.Rows[0]["ORM01"].ToString());
                rp_gift_list.DataSource = giftDT;
                rp_gift_list.DataBind();
                if (giftDT.Rows.Count > 0)
                {
                    tb2.Visible = true;
                }
                else
                {
                    tb2.Visible = false;
                }



            }
            else
            {
                Response.Redirect("memberorder.aspx");
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }
}