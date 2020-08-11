using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using hawooo;
using System.Web.UI;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

public partial class BrandEventPage : System.Web.UI.Page
{
    private DataTable _dtMSrc;
    private DataTable _dtSelSrc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/BrandEventPage.aspx" + Request.Url.Query);

            if (Request.QueryString["bid"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                string bid = Request.QueryString["bid"].ToString();
                _dtMSrc = GetMDtSrc(bid);

                if (_dtMSrc.Rows.Count > 0)
                {
                    string mSysId = _dtMSrc.Rows[0]["MSysId"].ToString();
                    _dtSelSrc = GetSelDtSrc(mSysId);
                    BindEventPage();
                }
                else
                {
                    Response.Redirect("https://www.hawooo.com/user/brands.aspx?bid=" + Request.QueryString["bid"].ToString());
                }
            }
        }
    }

    private DataTable GetMDtSrc(string B01)
    {
        string strSql = @"SELECT TOP 1 * FROM BrandEventPageInfo AS BEPI
WHERE B01=@B01 AND Status=1 AND GETDATE() BETWEEN STime AND ETime ORDER BY STime DESC";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("B01", SqlDbType.Int, B01));
        return SqlDbmanager.queryBySql(cmd);

    }

    private DataTable GetSelDtSrc(string MSysId)
    {
        string strSql = @"SELECT * FROM BrandEventPageSelect AS BEPS
WHERE MSysId=@MSysId ORDER BY BlockId";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("MSysId", SqlDbType.VarChar, MSysId));
        return SqlDbmanager.queryBySql(cmd);
    }

    public DataTable GetSelTemplateInfo()
    {
        string strSql = @"SELECT * FROM SelProductTemplate";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        return SqlDbmanager.queryBySql(cmd);
    }

    private void SetTime(DateTime etime)
    {
        //計時器
        DateTime stime = DateTime.Now;
        TimeSpan ts = etime - stime;
        var spend = ts.TotalSeconds;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
    }

    private void BindEventPage()
    {
        DateTime etime = Convert.ToDateTime(_dtMSrc.Rows[0]["ETime"].ToString());
        SetTime(etime);

        string Content = _dtMSrc.Rows[0]["DBlockInfo"].ToString();
        BackgroundInfo bi = new BackgroundInfo(_dtMSrc.Rows[0]["BType"].ToString(), _dtMSrc.Rows[0]["BColor1"].ToString(), _dtMSrc.Rows[0]["BColor2"].ToString(), _dtMSrc.Rows[0]["BColor3"].ToString(), _dtMSrc.Rows[0]["BImg"].ToString());
        string backgroundColor = SetBackground(bi);
        Content = Content.Replace(@"bg-color""", @"bg-color""" + " " + @"style=""" + backgroundColor + @"""");

        List<string> html = FinalProductsHtml();
        string htmlTotal = "";
        for (int i = 0; i < html.Count; i++)//取代各選品區塊字串
        {
            htmlTotal = html[i];
            Content = Content.Replace("[$%PD" + (i + 1).ToString() + "%$]", htmlTotal);
            htmlTotal = "";
        }

        ltContent.Text = Content;
    }

    public class BackgroundInfo
    {
        public string bType { get; set; }
        public string color1 { get; set; }
        public string color2 { get; set; }
        public string color3 { get; set; }
        public string img { get; set; }
        public BackgroundInfo(string _bType, string _color1, string _color2, string _color3, string _img)
        {
            bType = _bType;
            color1 = _color1;
            color2 = _color2;
            color3 = _color3;
            img = _img;
        }

    }

    public string SetBackground(BackgroundInfo bi)
    {
        string backgroundString = "";
        if (bi.bType.Equals("1"))
        {
            backgroundString = "background:" + bi.color1;
        }
        if (bi.bType.Equals("2"))
        {
            if (bi.color3.Equals(""))
            {
                backgroundString = "background: linear-gradient(" + bi.color1 + "," + bi.color2 + ")";
            }
            else if (bi.color2.Equals(""))
            {
                backgroundString = "background: linear-gradient(" + bi.color1 + "," + bi.color3 + ")";
            }
            else
            {
                backgroundString = "background: linear-gradient(" + bi.color1 + "," + bi.color2 + "," + bi.color3 + ")";
            }
        }
        if (bi.bType.Equals("3"))
        {
            backgroundString = "background: url(" + "images/" + bi.img + ");";
        }

        return backgroundString;
    }

    private DataTable GetBindGoods(int eventId)
    {
        SearchProp prop = new SearchProp();
        prop.Cells.Add("SPD01");
        prop.Cells.Add("SPD07");
        prop.Cells.Add("SPD06");
        prop.Cells.Add("SPD05");
        prop.SelectIDS.Add(eventId);
        prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
        prop.LgType = (this.Master as user_user).LgType;
        string sqlTxt = ProductBL.GetSelectProduct(prop);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        return SqlDbmanager.queryBySql(cmd);
    }

    public class GoodsTemplate
    {
        public string header { get; set; }
        public string body { get; set; }
        public string footer { get; set; }
        public GoodsTemplate(string _header, string _body, string _footer)
        {
            header = _header;
            body = _body;
            footer = _footer;
        }
    }

    private List<GoodsTemplate> CreateGoodTemplateList()//回傳各選品的區塊樣版
    {
        DataTable dt = GetSelTemplateInfo();
        DataTable dtGoodsTempInfo = new DataTable();
        List<GoodsTemplate> tempSelProducts = new List<GoodsTemplate>();
        foreach (DataRow dr in _dtSelSrc.Rows)
        {
            dtGoodsTempInfo = dt.Select("STempName='" + dr["BlockStyle"].ToString() + "' and STempType=1").CopyToDataTable();//取得商品區樣版的DataRow
            tempSelProducts.Add(new GoodsTemplate(dtGoodsTempInfo.Rows[0]["SHeaderTag"].ToString(), dtGoodsTempInfo.Rows[0]["SBodyTag"].ToString(), dtGoodsTempInfo.Rows[0]["SFooterTag"].ToString()));
        }
        return tempSelProducts;
    }

    private DataSet CreateGoodsInfo()//取得每個選品ID並轉成DataTable並存入DataSet
    {
        DataSet ds = new DataSet();
        DataTable dtGoodsInfo = new DataTable();
        string eventId = "";
        foreach (DataRow dr in _dtSelSrc.Rows)
        {
            eventId = dr["SelId"].ToString();
            dtGoodsInfo = GetBindGoods(Convert.ToInt32(eventId));
            ds.Tables.Add(dtGoodsInfo);
        }
        return ds;
    }


    private List<string> FinalProductsHtml()
    {
        List<GoodsTemplate> GoodTemplateList = CreateGoodTemplateList();
        DataSet GoodsInfo = CreateGoodsInfo();
        List<string> finalHtmlList = new List<string>();
        string url = "https://www.hawooo.com/user/productdetail.aspx?id=";
        string imageUrl = "https://p8r7m4d5.stackpathcdn.com/images/webimgs/";

        foreach (DataTable dt in GoodsInfo.Tables)
        {
            int i = GoodTemplateList.Count;
            int j = 0;
            string totalHtml = "";
            foreach (DataRow dr in dt.Rows)
            {
                string replaceBody = GoodTemplateList[j].body;
                replaceBody = replaceBody.Replace("@URL", url + dr["WP01"].ToString());
                replaceBody = replaceBody.Replace("@IMG", imageUrl + dr["WP08_1"].ToString());
                replaceBody = replaceBody.Replace("@NAME", dr["WP02"].ToString());
                replaceBody = replaceBody.Replace("@PRICE", (PbClass.CashRate(dr["WPA06"].ToString(), "7.6")).ToString());
                replaceBody = replaceBody.Replace("@ORIPRICE", (PbClass.CashRate(dr["WPA10"].ToString(), "7.6")).ToString());
                replaceBody = replaceBody.Replace("@PERSENT", (0 - Math.Floor(((Convert.ToDecimal(dr["WPA06"].ToString()) / Convert.ToDecimal(dr["WPA10"].ToString())) - 1) * 100) + ""));
                replaceBody = replaceBody.Replace("@DISPRICE", (PbClass.CashRate(dr["WPA10"].ToString(), "7.6")) - (PbClass.CashRate(dr["WPA06"].ToString(), "7.6")) + "");

                totalHtml += replaceBody;
            }
            finalHtmlList.Add(GoodTemplateList[j].header + totalHtml + GoodTemplateList[j].footer);
            j++;
        }

        return finalHtmlList;
    }

    public class CouponInfo
    {
        public int _eventId { get; set; }
        public CouponInfo(int eventId)
        {
            _eventId = eventId;
        }

        private DataTable GetCouponInfoDt;
        public DataTable _GetCouponInfoDt
        {
            get
            {
                if (GetCouponInfoDt == null)
                {
                    GetCouponInfoDt = GetGbDt();
                }
                return GetCouponInfoDt;
            }

        }

        public DataTable GetGbDt()
        {
            string strSql = "SELECT GB02,GB03,GB04,GB05,GB06,GB07,GB08,GB09,GB10,ISNULL(GB11,0) AS GB11, ISNULL(GB12,1) AS GB12,ISNULL(GB13,0) AS GB13,GB14,GB15,GB16,GB17,GB18,ISNULL(GB19,1) AS 'GB19' FROM GB WHERE GB02=@GB02 AND GB05=1";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("GB02", SqlDbType.Int, _eventId));
            return SqlDbmanager.queryBySql(cmd);
        }
    }

    public static string _strSql = "SELECT COUNT(GA01) AS CT,G.G01 AS GID FROM G INNER JOIN GA ON GA.G01=G.G01";

    public static bool HasGetCoupon(string userId, int eventId)
    {
        string strSql = _strSql + " WHERE G.G01=" + eventId + " AND GA08=" + userId + " GROUP BY G.G01";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }


    [System.Web.Services.WebMethod]
    public static string GetCouponInfo(string userId, string eventId)
    {
        string returnMsg = "";

        try
        {
            if (HasGetCoupon(userId, int.Parse(eventId)))
                returnMsg = "Oops, you've already claimed this! Try the others!";
            else
            {
                GetCouponCode(userId, int.Parse(eventId));
                returnMsg = "Congrats! <br/> You've successfully claimed it. The coupon is saved in your account! Happy Shopping";
            }

        }
        catch (Exception ex)
        {
            returnMsg = ex.ToString();
        }


        StringBuilder sb = new StringBuilder();
        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\"");
        sb.Append("}]");
        return sb.ToString();
    }


    private static string GetCouponCode(string userId, int eventId)
    {
        string msg = "";
        CouponInfo couponInfo = new CouponInfo(eventId);
        DataTable dtInfo = couponInfo.GetGbDt();
        if (dtInfo.Rows.Count > 0)
        {
            try
            {
                CouponSetData setData = new CouponSetData();
                //string[] classIds = dtInfo.Rows[0]["GB14"].ToString().Split(',');
                if (dtInfo.Rows[0]["GB15"].ToString() != "")
                {
                    string[] brandIds = dtInfo.Rows[0]["GB15"].ToString().Split(',');
                    foreach (string bid in brandIds)
                    {
                        if (FieldCheck.isInt(bid))
                            setData.AppendBrandId(int.Parse(bid));
                    }
                }
                if (dtInfo.Rows[0]["GB16"].ToString() != "")
                {
                    string[] productIds = dtInfo.Rows[0]["GB16"].ToString().Split(',');
                    foreach (string pid in productIds)
                    {
                        if (FieldCheck.isInt(pid))
                            setData.AppendGoodsId(int.Parse(pid));
                    }
                }

                if (dtInfo.Rows[0]["GB17"].ToString() != "")
                {
                    string[] exBrandIds = dtInfo.Rows[0]["GB17"].ToString().Split(',');
                    foreach (string ebid in exBrandIds)
                    {
                        if (FieldCheck.isInt(ebid))
                            setData.AppendExBrandId(int.Parse(ebid));
                    }
                }

                if (dtInfo.Rows[0]["GB18"].ToString() != "")
                {
                    string[] exProductIds = dtInfo.Rows[0]["GB18"].ToString().Split(',');
                    foreach (string epid in exProductIds)
                    {
                        if (FieldCheck.isInt(epid))
                            setData.AppendExGoodsId(int.Parse(epid));
                    }
                }

                CouponData couponData = new CouponData();
                couponData.EventId = eventId;
                couponData.GetMultiple = dtInfo.Rows[0]["GB03"].ToString().Equals("1") ? true : false;
                couponData.UserId = int.Parse(userId);
                couponData.Discount = Convert.ToDecimal(dtInfo.Rows[0]["GB08"].ToString());
                couponData.Limitation = Convert.ToDecimal(dtInfo.Rows[0]["GB09"].ToString());
                couponData.STime = DateTime.Parse(dtInfo.Rows[0]["GB03"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
                couponData.ETime = DateTime.Parse(dtInfo.Rows[0]["GB07"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
                couponData.ExFlagBrand = dtInfo.Rows[0]["GB11"].ToString().Equals("0") ? false : true;
                couponData.CouponNote = dtInfo.Rows[0]["GB04"].ToString();
                couponData.ConditionType = dtInfo.Rows[0]["GB13"].ToString().Equals("0") ? CouponData.EnConditionType.Exclude : CouponData.EnConditionType.Assignation;
                couponData.CouponType = dtInfo.Rows[0]["GB19"].ToString().Equals("1") ? CouponData.EnCouponType.Single : CouponData.EnCouponType.Repeat;
                couponData.CouponSetData = setData;
                CreateCouponBL couponBL = new CreateCouponBL(couponData);
                msg = couponBL.CreateCouponReturnCode();
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

        }

        return msg;
    }


}