using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_molpayreturn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MOLPAYRETURN mpr = new MOLPAYRETURN();
        mpr.MRID = Guid.NewGuid().ToString();
        mpr.TranID = Convert.ToInt32(Request.Form["tranID"].ToString());
        mpr.OrderID = Request.Form["orderid"].ToString();
        mpr.Status = Request.Form["status"].ToString();
        mpr.Domain = Request.Form["domain"].ToString();
        mpr.Amount = Convert.ToDecimal(Request.Form["amount"].ToString());
        mpr.Currency = Request.Form["currency"].ToString();
        mpr.PayDate = Request.Form["paydate"].ToString();
        mpr.AppCode = Request.Form["appcode"].ToString();
        mpr.Skey = Request.Form["skey"].ToString();
        if (Request.Form["error_code"] != null)
        {
            mpr.Error_Code = Request.Form["error_code"].ToString();
        }
        else
        {
            mpr.Error_Code = "";
        }
        if (Request.Form["error_desc"] != null)
        {
            mpr.Error_Desc = Request.Form["error_desc"].ToString();
        }
        else
        {
            mpr.Error_Desc = "";
        }
        if (Request.Form["channel"] != null)
        {
            mpr.Channel = Request.Form["channel"].ToString();
        }
        else
        {
            mpr.Channel = "";
        }
        string key0 = PbClass.MD5Code(mpr.TranID + mpr.OrderID + mpr.Status + mpr.Domain + mpr.Amount + mpr.Currency);
        string strSql = "SELECT * FROM MOLPAY";
        DataTable pDT = SqlDbmanager.queryBySql(strSql);
        string key1 = PbClass.MD5Code(mpr.PayDate + mpr.Domain + key0 + mpr.AppCode + pDT.Rows[0]["Verify_Key"].ToString());
        if (mpr.Skey != key1)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "error", "alert('NO SAFE MOLPAY TRANS');", true);
        }
        else
        {
            bool rval = false;
            MOLPAYRETURNFactory molFac = new MOLPAYRETURNFactory();
            molFac.insertMOLPAYRETURN(mpr);
            if (mpr.Status.Equals("00"))
            {
                //交易成功(修改訂單狀態)
                rval = CFacade.OrderFac.MolPayReturnCreditCardStatus(mpr.OrderID, 1);
                Tuple<string,string> ORM = CFacade.OrderFac.GetOrderGUID(mpr.OrderID);
                Response.Redirect("cart3.aspx?oid=" + ORM.Item1 + "");
            }
            else if (mpr.Status.Equals("11"))
            {
                //交易失敗(修改訂單狀態
                rval = CFacade.OrderFac.MolPayReturnCreditCardStatus(mpr.OrderID, -1);
                Tuple<string, string> ORM = CFacade.OrderFac.GetOrderGUID(mpr.OrderID);
                Response.Redirect("cart3.aspx?oid=" + ORM.Item1 + "");
            }
          
            //if (rval.Equals(true))
            //{
            //    string _ORM01 = CFacade.OrderFac.GetOrderGUID(mpr.OrderID);
            //    Response.Redirect("cart3.aspx?oid=" + _ORM01 + "");
            //}
            //else
            //{
            //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "error", "alert('Error');", true);
            //}
        }
    }
}