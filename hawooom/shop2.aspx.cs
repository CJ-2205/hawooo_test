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

public partial class mobile_shop2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["num"] != null)
            {
                ViewState["num"] = Session["num"];
                Session["num"] = null;
            }
            bool hDT = false;

            int i = 0;
            if (Request.QueryString["eid"] != null)
            {
                if (int.TryParse(Request.QueryString["eid"], out i))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(0, 0, Convert.ToInt32(Request.QueryString["eid"].ToString()));

                }
            }
            if (Request.QueryString["bid"] != null)
            {
                if (int.TryParse(Request.QueryString["bid"], out i))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(0, Convert.ToInt32(Request.QueryString["bid"].ToString()), 0);
                }
            }
            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out i))
                {
                    int cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(cid, 0, 0);
                    hf_cid.Value = cid.ToString();
                    hf_cname.Value = GetCategoryStr(cid).ToString();
                }
            }
            if (Request.QueryString["type"] != null)
            {
                if (Request.QueryString["type"].Equals("new"))
                {
                    hDT = true;
                    ViewState["num"] = 1;
                    bindDT(0, 0, 0, "new");
                }
            }
            if (hDT == false)
            {
                bindDT(0, 0, 0);
            }
        }
    }
    string email = "";
    protected void lnk_more_Click(object sender, EventArgs e)
    {
        //讀取更多
        if (ViewState["num"] != null)
        {
            ViewState["num"] = Convert.ToInt32(ViewState["num"].ToString()) + 1;
            int eid = 0;
            int cid = 0;
            int bid = 0;
            if (Request.QueryString["eid"] != null)
            {
                eid = Convert.ToInt32(Request.QueryString["eid"].ToString());
            }
            if (Request.QueryString["cid"] != null)
            {
                cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
            }
            if (Request.QueryString["bid"] != null)
            {
                bid = Convert.ToInt32(Request.QueryString["bid"].ToString());
            }
            bindDT(cid, bid, eid);
        }
    }
    private LangType LgTye;

    private string GetCategoryStr(int cid)
    {
        string name = "";
        string strSql = "SELECT C06 FROM C WHERE C01=@CID";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, cid));
        cmd.CommandText = strSql;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            name = dt.Rows[0]["C06"].ToString();
        }
        return name;
    }
    private void bindClassName(int cid, int bid, int eid)
    {

        LgTye = (this.Master as mobile).LgType;

        if (cid == 0 && bid == 0 && eid == 0)
        {
            lit_class_name.Text = LgTye.Equals(LangType.en) ? "All Products" : "全部商品";
        }
        else
        {

            int CID = 0;
            string strSql = String.Empty;
            switch (LgTye)
            {
                case LangType.en:
                    {
                        //if (cid != 0)
                        //{
                        //    //取得類別名稱
                        //    strSql = "SELECT CID,PCid FROM ProductClassView WHERE CID=@CID";
                        //    CID = cid;
                        //}
                        if (bid != 0)
                        {
                            //取得品牌名稱
                            strSql = "SELECT (CASE WHEN ISNULL(BA02_EN,'')='' THEN BA02 ELSE BA02_EN END) as CNAME FROM BA WHERE B01=@CID";
                            CID = bid;
                        }
                        if (eid != 0)
                        {
                            //取得活動名稱
                            strSql = "SELECT (CASE WHEN ISNULL(SPM20,'')='' THEN SPM02 ELSE SPM20 END) as CNAME FROM SPRODUCTSM WHERE SPM01=@CID";
                            CID = eid;
                            //bindEventImg(eid);
                        }
                        break;
                    }
                case LangType.zh:
                    {
                        //if (cid != 0)
                        //{
                        //    //取得類別名稱
                        //    strSql = "SELECT CID,PCid FROM ProductClassView WHERE CID=@CID";
                        //    CID = cid;
                        //}
                        if (bid != 0)
                        {
                            //取得品牌名稱  
                            strSql = "SELECT BA02 as CNAME FROM BA WHERE B01=@CID";
                            CID = bid;
                        }
                        if (eid != 0)
                        {
                            //取得活動名稱
                            strSql = "SELECT SPM02 as CNAME FROM SPRODUCTSM WHERE SPM01=@CID";
                            //bindEventImg(eid);
                            CID = eid;
                        }
                        break;
                    }
            }
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, CID));
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            if (dt.Rows.Count > 0)
            {
                string classTxt = "";
                //if (cid != 0)
                //{
                //    StringBuilder sb = new StringBuilder();
                //    switch (LgTye)
                //    {
                //        case LangType.en:
                //            {
                //                sb.Append("SELECT CID,(CASE WHEN ISNULL(CEnName,'')='' THEN CName ELSE CEnName END) as CNAME,");
                //                sb.Append("PCid,(CASE WHEN ISNULL(PEnName,'')='' THEN PName ELSE PEnName END) as PNAME  ");
                //                sb.Append("FROM ProductClassView WHERE CID=@CID ");
                //                sb.Append("UNION ");
                //                sb.Append("SELECT CID,(CASE WHEN ISNULL(CEnName,'')='' THEN CName ELSE CEnName END) as CNAME,");
                //                sb.Append("PCid,(CASE WHEN ISNULL(PEnName,'')='' THEN PName ELSE PEnName END) as PNAME ");
                //                sb.Append("FROM ProductClassView WHERE PCID=@CID ");
                //                break;
                //            }
                //        case LangType.zh:
                //            {
                //                sb.Append("SELECT CID,CNAME,");
                //                sb.Append("PCid,PName ");
                //                sb.Append("FROM ProductClassView WHERE CID=@CID ");
                //                sb.Append("UNION ");
                //                sb.Append("SELECT CID,CNAME,");
                //                sb.Append("PCid,PName ");
                //                sb.Append("FROM ProductClassView WHERE PCID=@CID ");
                //                break;
                //            }
                //    }

                //    if (dt.Rows[0]["PCID"].ToString().Equals("0"))
                //    {
                //        CID = int.Parse(dt.Rows[0]["CID"].ToString());
                //    }
                //    else
                //    {
                //        CID = int.Parse(dt.Rows[0]["PCid"].ToString());
                //    }
                //    cmd = new SqlCommand();
                //    cmd.CommandText = sb.ToString();
                //    cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, CID));
                //    DataTable CDT = SqlDbmanager.queryBySql(cmd);
                //    if (CDT.Rows.Count > 0)
                //    {
                //        var sRow = (from row in CDT.AsEnumerable()
                //                    where row.Field<Int64>("CID").Equals(cid)
                //                    select row).FirstOrDefault();
                //        classTxt = "<a href=\"shop2.aspx?cid=" + sRow["CID"].ToString() + "\">" + sRow["CNAME"].ToString() + "</a>";
                //        if (sRow["PNAME"].ToString().Equals(""))
                //        {
                //            lit_class.Text = sRow["CNAME"].ToString();
                //        }
                //        else
                //        {
                //            lit_class.Text = sRow["PNAME"].ToString() + " > " + sRow["CNAME"].ToString();
                //        }
                //    }

                //    rp_brand_class.DataSource = CDT;
                //    rp_brand_class.DataBind();
                //}
                if (bid != 0)
                {
                    classTxt = "<a href=\"shop2.aspx?bid=" + bid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                    //lit_class.Text = dt.Rows[0]["CNAME"].ToString();
                }
                if (eid != 0)
                {
                    classTxt = "<a href=\"shop2.aspx?eid=" + eid + "\">" + dt.Rows[0]["CNAME"].ToString() + "</a>";
                    //lit_class.Text = dt.Rows[0]["CNAME"].ToString();
                }

                lit_class_name.Text = classTxt;
                //if (cid != 0)
                //{
                //    lit_class_name.Text = ((this.Master as mobile).FindControl("hfClassName") as HiddenField).Value;
                //}
            }
        }
    }
    private void bindDT(int cid, int bid, int eid, string stxt = "")
    {
        bindClassName(cid, bid, eid);
        int pcount = 60;

        if (ViewState["num"] != null)
        {
            pcount = pcount * Convert.ToInt32(ViewState["num"].ToString());
        }
        else
        {
            ViewState["num"] = "1";
        }
        Session["num"] = ViewState["num"].ToString();
        DataTable PDT = MShopProducts(cid, bid, eid, pcount, stxt);
        p_list.DataSource = PDT;
        p_list.DataBind();
        int maxCount = 0;
        if (PDT.Rows.Count > 0)
        {
            maxCount = int.Parse(PDT.Rows[0]["ASUM"].ToString());
        }

        if (pcount >= maxCount)
        {
            lnk_more.Visible = false;
        }
        else
        {
            lnk_more.Visible = true;
        }
        //Session["num"] = ViewState["num"].ToString();

        //criteo
        if (Session["A08"] != null)
        {
            email = Session["A08"].ToString();
        }
        string ctxt = criteo.CategoryTag(email, PDT);
        Page.ClientScript.RegisterStartupScript(typeof(Page), "categoryTag", ctxt, true);
    }
    public DataTable MShopProducts(int cid, int bid, int eid, int maxcount, string stxt = "")
    {
        SqlCommand cmd = new SqlCommand();

        // List<string> qStr = new List<string>();
        //string strSql = "";
        SearchProp prop = new SearchProp();
        if (stxt != "")
        {
            if (stxt.Equals("new"))
            {
                prop.WhereTxts.Add("WP11 BETWEEN '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "'");
            }
        }
        if (cid != 0)
        {
            prop.WhereTxts.Add("WP.WP01 IN (SELECT WPC02 FROM WPCLS WHERE WPC03=@WPC03)");
            cmd.Parameters.Add(SafeSQL.CreateInputParam("WPC03", SqlDbType.Int, cid));
        }
        if (bid != 0)
        {
            prop.WhereTxts.Add("WP.B01=@B01");
            cmd.Parameters.Add(SafeSQL.CreateInputParam("B01", SqlDbType.Int, bid));

        }
        if (eid != 0)
        {
            prop.WhereTxts.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        }
        prop.OrderBy = "ORDER BY WP.WP01 DESC";
        prop.page = 1;
        prop.pcount = maxcount;
        prop.LgType = (this.Master as mobile).LgType;
        prop.TagType = SearchProp.EmTagType.IMG;
        cmd.CommandText = ProductBL.GetProductSqlTxt(prop);

        DataTable dt = SqlDbmanager.queryBySql(cmd);

        return dt;

        //return rval;
    }
}