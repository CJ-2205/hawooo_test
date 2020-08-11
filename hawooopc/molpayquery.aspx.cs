using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_molpayquery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MOLPAYRETURN mpr = new MOLPAYRETURN();
        mpr.TranID = Convert.ToInt32(Request.Form["tranid"].ToString());
        mpr.OrderID = Request.Form["orderid"].ToString();
        mpr.Status = Request.Form["statcode"].ToString();
        mpr.Domain = Request.Form["domain"].ToString();
        mpr.Amount = Convert.ToDecimal(Request.Form["amount"].ToString());
        mpr.Currency = null;
        mpr.PayDate = null;
        mpr.AppCode = null;
        mpr.Skey = null;
        mpr.Error_Code = null;
        mpr.Error_Desc = null;
        mpr.Channel = null;
        string rvrfkey = Request.Form["vrfkey"].ToString();
        mpr.Vrfkey = PbClass.MD5Code(mpr.Amount + mpr.Domain + mpr.OrderID + mpr.Status);
        if (rvrfkey.Equals(mpr.Vrfkey))
        {
            string strSql = "SELECT * FROM MOLPAY";
            DataTable pDT = SqlDbmanager.queryBySql(strSql);
            mpr.Skey = PbClass.MD5Code(mpr.OrderID + pDT.Rows[0]["Verify_Key"].ToString() + mpr.Amount);
            mpr.StatName = Request.Form["statname"].ToString();
            MOLPAYRETURNFactory molFac = new MOLPAYRETURNFactory();
            molFac.queryMOLPAYRETURN(mpr);
        }
    }
}