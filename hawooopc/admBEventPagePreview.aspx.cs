using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using hawooo;
using System.Web.UI;
using System.Text;
using System.Web.UI.WebControls;
using System.Linq;


public partial class admBEventPagePreview : System.Web.UI.Page
{
    private DataTable _dtMSrc;
    private DataTable _dtSelSrc;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mSysId = Request.QueryString["id"].ToString();
            _dtMSrc = GetMDtSrc(Request.QueryString["id"].ToString());
            _dtSelSrc = GetSelDtSrc(mSysId);
            BindEventPage();
        }
    }

    private DataTable GetMDtSrc(string id)
    {
        string strSql = @"SELECT TOP 1 * FROM BrandEventPageInfo AS BEPI
WHERE MSysId=@MSysId";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("MSysId", SqlDbType.VarChar, id));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    private DataTable GetSelDtSrc(string MSysId)
    {
        string strSql = @"SELECT * FROM BrandEventPageSelect AS BEPS
WHERE MSysId=@MSysId ORDER BY BlockId";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("MSysId", SqlDbType.VarChar, MSysId));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
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

    private DataSet CreateGoodsInfo()
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

        foreach (DataTable dt in GoodsInfo.Tables)//選品DataTable
        {
            int i = GoodTemplateList.Count;
            int j = 0;
            string totalHtml = "";
            foreach (DataRow dr in dt.Rows)//每個商品取代資料到Template
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
}