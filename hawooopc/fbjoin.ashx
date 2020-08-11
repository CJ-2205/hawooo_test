<%@ WebHandler Language="C#" Class="join" %>

using System;
using System.Web;
using System.Web.SessionState;
using hawooo;

public class join : IHttpHandler, IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        string result = string.Empty;
        string json = new System.IO.StreamReader(context.Request.InputStream).ReadToEnd();
        dynamic FBOBJ = Newtonsoft.Json.Linq.JObject.Parse(json);
        try
        {
            string FBID = string.Empty;
            string FBPIC = string.Empty;
            string FBEMAIL = string.Empty;
            string FBNAME = string.Empty;
            string FBGENDER = string.Empty;
            string RCID = string.Empty;
            if (FBOBJ.FBID != null)
                FBID = FBOBJ.FBID.Value;
            if (FBOBJ.FBPIC != null)
                FBPIC = FBOBJ.FBPIC.Value;
            if (FBOBJ.FBEMAIL != null)
                FBEMAIL = FBOBJ.FBEMAIL.Value;
            if (FBOBJ.FBNAME != null)
                FBNAME = FBOBJ.FBNAME.Value;
            if (FBOBJ.FBGENDER != null)
                FBGENDER = FBOBJ.FBGENDER.Value;
            if (FBOBJ.RCID != null)
                RCID = FBOBJ.RCID;
            hawooo.A objA = new hawooo.A();
            objA.A02 = FBID;
            int chkAccount = CFacade.GetFac.GetAFac.CheckAccountIsExist(objA);
            if (chkAccount > 0)
            {
                objA.A01 = chkAccount;
                //登入帳號
                Tuple<string, string, string, string, string> rval = CFacade.GetFac.GetAFac.LoginWithFBV3(FBID, FBEMAIL);
                int i = 0;
                if (int.TryParse(rval.Item1, out i))
                {
                    context.Session["A01"] = rval.Item1;
                    context.Session["A02"] = FBID;
                    context.Session["A04"] = "1";
                    context.Session["A21"] = rval.Item2;
                    context.Session["A19"] = rval.Item3;
                    context.Session["A08"] = rval.Item4;
                    context.Session["A23"] = rval.Item5;
                    result = "{\"LOGIN\":\"OK\"}";
                    //result = "{'Error':'Login Error'}";
                }
                else
                {
                    result = "{\"Error\":\"Login Error\"}";
                }
            }
            else
            {
                //註冊帳號
                objA.A01 = 0;
                objA.A03 = "";
                objA.A04 = 1;
                objA.A05 = 1;
                objA.A06 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                objA.A07 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                objA.A08 = FBEMAIL;
                objA.A09 = "";
                objA.A10 = "";
                objA.A11 = "";
                objA.A12 = "";
                objA.A13 = "";
                objA.A14 = "";
                objA.A15 = FBNAME;

                if (FBGENDER.Equals("male"))
                    objA.A16 = 1;
                else if (FBGENDER.Equals("female"))
                    objA.A16 = 0;
                else
                    objA.A16 = 2;
                objA.A17 = 1;
                objA.A18 = FBPIC;
                objA.A19 = 0;
                objA.A20 = 0;
                objA.A21 = "";
                objA.AGUID = Guid.NewGuid().ToString();

                //int rval = CFacade.GetFac.GetAFac.UserJoin(objA, "af0cc0ac-9176-4ddd-ad09-e00c7782cd64"); //正式
                int rval = CFacade.GetFac.GetAFac.UserJoin(objA, "68fd8b2c-e437-4c8b-8585-ac0368d6462a"); //測試
                                                                                                          
                if (rval > 0)
                {

                    objA.A01 = rval;
                    context.Session["A01"] = rval;
                    context.Session["A02"] = FBID;
                    context.Session["A21"] = "";
                    context.Session["A19"] = objA.A19;
                    context.Session["A08"] = objA.A08;
                    context.Session["A04"] = "1";
                    context.Session["A23"] = "0";

                    //加入會員贈送Hacoin
                    //CoinFac coinFac = new CoinFac();
                    //coinFac.MemberJoinAddCoin(rval, 1500);

                    //CFacade.GetFac.GetADFac.AddMemberGiftGold(Convert.ToInt32(rval));
                    //加入會員贈送折扣卷
                    //CFacade.GetFac.GetGAFac.MemeberJoinGet(objA.A02, 9, 15, 100, "2016-05-19", "2016-11-30");
                    //CFacade.GetFac.GetAFac.SendJoinMessage(objA);

                    //if (RCID != "")
                    //{

                    //    CFacade.GetFac.GetGAFac.MemberJoinToGA(RCID, 2, 15, 100);
                    //}



                    result = "{\"LOGIN\":\"OK\"}";
                }
                else
                {
                    result = "{\"Error\":\"Create Error\"}";
                }
            }
        }
        catch (Exception ex)
        {
            result = "{\"Error\":\"Exception Error\"}";
        }
        context.Response.ContentType = "text/plain";
        context.Response.Write(result);

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}