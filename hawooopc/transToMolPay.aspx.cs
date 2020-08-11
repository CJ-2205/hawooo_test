using hawooo;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_transToMolPay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["oid"] != null)
        {
            if (Request.QueryString["oid"].ToString().Substring(0, 1).Equals("S"))
            {
                DataTable ODT = CFacade.OrderFac.TransToCreditCardOrderDT(Request.QueryString["oid"].ToString());
                if (ODT.Rows.Count > 0)
                {
                    string strSql = "SELECT * FROM MOLPAY";
                    DataTable pDT = SqlDbmanager.queryBySql(strSql);
                    string _amount = ODT.Rows[0]["AMOUNT"].ToString();
                    string _merchantid = pDT.Rows[0]["MerchantID"].ToString();
                    string _orderid = ODT.Rows[0]["ORDERID"].ToString();
                    string _verifykey = pDT.Rows[0]["Verify_Key"].ToString();
                    string _name = ODT.Rows[0]["NAME"].ToString();
                    string _email = ODT.Rows[0]["EMAIL"].ToString();
                    string _note = ODT.Rows[0]["NOTE"].ToString();
                    string _mobile = ODT.Rows[0]["MOBILE"].ToString();
                    string _vcode = PbClass.MD5Code(_amount + _merchantid + _orderid + _verifykey);
                    string _rurl = pDT.Rows[0]["ReturnUrl"].ToString();
                    string _curl = pDT.Rows[0]["CancelUrl"].ToString();
                    NameValueCollection data = new NameValueCollection();
                    data.Add("merchant_id", _merchantid);
                    data.Add("amount", _amount);
                    data.Add("orderid", _orderid);
                    data.Add("bill_name", _name);
                    data.Add("bill_email", _email);
                    data.Add("bill_mobile", _mobile);
                    data.Add("bill_desc", _note);
                    data.Add("country", pDT.Rows[0]["Country"].ToString());
                    data.Add("cur", pDT.Rows[0]["Cur"].ToString());
                    data.Add("vcode", _vcode);
                    data.Add("returnurl", _rurl);
                    data.Add("cancelurl", _curl);
                    PostForm.RedirectAndPOST(this.Page, "https://www.onlinepayment.com.my/MOLPay/pay/" + _merchantid + "/", data);
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