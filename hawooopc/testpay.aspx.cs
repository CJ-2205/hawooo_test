using hawooo;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_testpay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string strSql = "SELECT * FROM MOLPAY";
        DataTable pDT = SqlDbmanager.queryBySql(strSql);
        string _amount = "5.00";
        string _merchantid = "People_Dev";
        string _orderid = "S" + DateTime.Now.ToString("yyMMddHHmmssfff");
        string _verifykey = "fc08d5f3495414a2751af7e581e2d3a0";
        string _vcode = PbClass.MD5Code(_amount + _merchantid + _orderid + _verifykey);
        string _rurl = pDT.Rows[0]["ReturnUrl"].ToString();
        string _curl = pDT.Rows[0]["CancelUrl"].ToString();
        NameValueCollection data = new NameValueCollection();
        data.Add("merchant_id", _merchantid);
        data.Add("amount", _amount);
        data.Add("orderid", _orderid);
        data.Add("bill_name", "derrick chen");
        data.Add("bill_email", "derrick@cogood.tw");
        data.Add("bill_mobile", "0912123123");
        data.Add("bill_desc", "HaWooo MOLPay");
        data.Add("country", pDT.Rows[0]["Country"].ToString());
        data.Add("cur", pDT.Rows[0]["Cur"].ToString());
        data.Add("vcode", _vcode);
        data.Add("returnurl", _rurl);
        data.Add("cancelurl", _curl);
        PostForm.RedirectAndPOST(this.Page, "https://www.onlinepayment.com.my/MOLPay/pay/People_Dev/", data);

    }
}