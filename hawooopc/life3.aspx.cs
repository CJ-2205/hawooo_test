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

public partial class user_life3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (Session["desktop"] == null)
            {
                if (ismobile)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/life3.aspx'", true);
                }
            }

            //did = 1;
            //if (Request.QueryString["did"] != null)
            //{
            //    did = int.Parse(Request.QueryString["did"].ToString());
            //}
            bindDT();
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "setClass", "SetSelClass(" + did + ");", true);
        }
    }

    //public class SearchProp
    //{
    //    public int ClassID { get; set; }
    //    public int BrandID { get; set; }

    //    public LangType LgType { get; set; }
    //    public int page { get; set; }
    //    public int pcount { get; set; }

    //    public List<string> Cells = new List<string>();

    //    private List<string> _WhereTxts = new List<string>();

    //    public List<string> WhereTxts
    //    {
    //        get { return _WhereTxts; }
    //        set { _WhereTxts = value; }
    //    }

    //    private List<string> _joinTxts = new List<string>();

    //    public List<string> JoinTxts
    //    {
    //        get { return _joinTxts; }
    //        set { _joinTxts = value; }
    //    }

    //    public string OrderBy { get; set; }

    //    public object Clone()
    //    {
    //        return this.MemberwiseClone();
    //    }

    //    public enum EmTagType { TEXT, IMG }

    //    private EmTagType _TagType = EmTagType.TEXT;
    //    public EmTagType TagType
    //    {
    //        get { return _TagType; }
    //        set { _TagType = value; }
    //    }
    //}

    private void bindDT()
    {
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02 FROM SPRODUCTSD WHERE SPD01 IN ('547','548','549','550','551') ) AS DT ON  WP01=DT.SPD02  ");
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //string strDate = DateTime.Now.ToString("yyyy-MM-dd") + " 00:00:00";
        //rp13_1.DataSource = dt.Select("SPD01='529'").CopyToDataTable().AsEnumerable().Take(4);

        if(dt.Rows.Count > 0){
   if (dt.Select("SPD01='547' ").Length > 0)
        {
            rp0.DataSource = dt.Select("SPD01='547'").CopyToDataTable();
            rp0.DataBind();
        }
        if (dt.Select("SPD01='548' ").Length > 0)
        {
            rp1.DataSource = dt.Select("SPD01='548'").CopyToDataTable();
            rp1.DataBind();
        }
        if (dt.Select("SPD01='549' ").Length > 0)
        {
            rp2.DataSource = dt.Select("SPD01='549'").CopyToDataTable();
            rp2.DataBind();
        }
        if (dt.Select("SPD01='550' ").Length > 0)
        {
            rp3.DataSource = dt.Select("SPD01='550'").CopyToDataTable();
            rp3.DataBind();
        }
        if (dt.Select("SPD01='551' ").Length > 0)
        {
            rp4.DataSource = dt.Select("SPD01='551'").CopyToDataTable();
            rp4.DataBind();
        }

        }
     
        //if (dt.Select("SPD01='529' AND '"+ strDate + "'>WP31 ").Length > 0)
        //{
        //rp2.DataSource = dt.Select("SPD01='529' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp2.DataBind();
        //}
        //if (dt.Select("SPD01='529' AND '" + strDate + "'<WP31").Length > 0)
        //{
        //rp3.DataSource = dt.Select("SPD01='529' AND '" + strDate + "'<WP31").CopyToDataTable();
        //rp3.DataBind();
        //}

        //rp1.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp1.DataBind();
        //rp2.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp2.DataBind();
        //rp3.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp3.DataBind();

    }

    /// <summary>
    /// 領取商品折扣券
    /// </summary>
    /// <param name="_PC01"></param>
    //public void getProductCoupon(string _PC01)
    //{
    //    //string _PC01 = "8b8abd7e-36a7-4982-b973-bde8c1e1bd16";       //折扣卷的guid (商品)
    //    if (Session["A01"] != null)
    //    {
    //        string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
    //        if (rval.Equals("OK"))
    //        {
    //            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
    //        }
    //        else if (rval.Equals("ERROR"))
    //        {
    //            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
    //        }
    //        else
    //        {
    //            ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
    //        }
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(up_add, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=newarrivals1.aspx');", true);
    //    }
    //}




    //protected void button2_Click(object sender, EventArgs e)
    //{
    //    if (Session["A01"] != null)
    //    {
    //        int userid = Convert.ToInt32(Session["A01"].ToString());
    //        string s = checkuser(userid);
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('" + s + "');", true);
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請登入會員');", true);
    //    }
    //}



    //檢查是否領過
    //    protected string checkuser(int userid)
    //    {
    //        DataTable dtLog = new DataTable();
    //        DataTable dtOrm = new DataTable();
    //        Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();

    //        string giftGUID = "2fa75ce0-0f50-4eab-8bc6-5faff8681e8b";

    //        string sqlOrm = @"SELECT ORM01 FROM ORDERM WHERE ORM23=@ORM23 AND ORM03 BETWEEN '2018-06-05 00:00:00' AND '2018-06-20 23:59:59'
    //AND ORM19=1 AND ORM24>0 AND ORM08>=299 AND DATEDIFF(DAY,ORM03,GETDATE())<3 AND DATEDIFF(DAY,ORM03,ORM40)<3  
    //AND NOT EXISTS (SELECT ORM01 FROM GIFTREGISTERLOG AS DT WHERE GRLOG04='180605SummerRaya' AND A01=@ORM23 AND ORM01=DT.ORM01)";

    //        string sqlLog = @"SELECT GRLOG01 FROM GIFTREGISTERLOG WHERE GRLOG04='180605SummerRaya' AND A01=@A01";

    //        SqlCommand cmdOrm = new SqlCommand();
    //        SqlCommand cmdLog = new SqlCommand();
    //        cmdOrm.CommandText = sqlOrm;
    //        cmdLog.CommandText = sqlLog;
    //        cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
    //        cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));

    //        dcmd.Add("Log", cmdLog);
    //        dcmd.Add("Orm", cmdOrm);

    //        DataSet ds = SqlDbmanager.queryBySql(dcmd);
    //        dtLog = ds.Tables["Log"];
    //        dtOrm = ds.Tables["Orm"];

    //        string response = "";

    //        if (dtOrm.Rows.Count > 0)       //有符合的訂單
    //        {
    //            if (dtLog.Rows.Count < 1)      //代表未領過
    //            {
    //                string orm01 = dtOrm.Rows[0]["ORM01"].ToString();
    //                response = RegisterPrize(orm01, userid, giftGUID);
    //            }
    //            else
    //            {
    //                response = "一張訂單只能领一次喔。";
    //            }
    //        }
    //        else
    //        {
    //            response = "哎呀，还差一点就符合订单金额门槛，快找姐妹凑一凑，很容易到的啦。";
    //        }

    //        return response;
    //    }


    //protected string RegisterPrize(string orm01, int userid, string sgiftGUID)
    //{
    //    string response = "";
    //    string sql = @"INSERT INTO GiftRegisterLog (GRLOG02,A01,GRLOG03,ORM01,GRLog04) VALUES (@GRLOG02,@A01,@GRLOG03,@ORM01,@GRLOG04)";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = sql;
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG02", SqlDbType.SmallDateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.BigInt, userid));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG03", SqlDbType.UniqueIdentifier, sgiftGUID));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@ORM01", SqlDbType.UniqueIdentifier, orm01));
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("@GRLOG04", SqlDbType.VarChar, "180605SummerRaya"));

    //    string s = ORDER.JoinGift2Order(orm01, sgiftGUID);
    //    if (s == "OK")
    //    {
    //        response = "Yeah，已成功领取。";
    //        SqlDbmanager.executeNonQry(cmd);
    //    }
    //    else if (s == "FAIL")
    //    {
    //        response = "Oh No,系统好像出现了问题,若多次无法使用请麻烦与客服联系。";
    //    }
    //    else if (s == "NO_ORDER")
    //    {
    //        response = "系統找不到符合的訂單，若多次无法使用请麻烦与客服联系。";
    //    }
    //    else if (s == "NO_GIFT")
    //    {
    //        response = "未完成领取程序，若多次无法使用请麻烦与客服联系。";
    //    }

    //    return response;
    //}


    public Dictionary<int,decimal> id2stock()
    {
        Dictionary<int, decimal> dic = new Dictionary<int, decimal>();
        //dic.Add();
        return dic;
    }

}

