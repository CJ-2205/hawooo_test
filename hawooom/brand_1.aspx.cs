using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class brand_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as mobile).LgType;
            int i = 0;
            int bcid = 0;
            int bid = 0;
            if (Request.QueryString["bid"] != null)
            {
                if (int.TryParse(Request.QueryString["bid"], out i))
                {
                    bid = Convert.ToInt32(Request.QueryString["bid"].ToString());

                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            if (Request.QueryString["bcid"] != null)
            {
                if (int.TryParse(Request.QueryString["bcid"], out i))
                {
                    bcid = Convert.ToInt32(Request.QueryString["bcid"].ToString());
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }

            ViewState["num"] = 1;
            bindDT(bcid, bid);

        }
    }
    //private void bindClassName(int cid, int bid)
    //{
    //string strSql = "SELECT TOP 1 BA02,BB01,BB07_TW FROM BA INNER JOIN BB ON BB.B01=BA.B01 WHERE BB.B01=" + bid + "";
    //if (cid != 0)
    //{
    //    strSql += "AND BB.BB01=" + cid;
    //}

    //DataTable dt = SqlDbmanager.queryBySql(strSql);
    //if (dt.Rows.Count > 0)
    //{
    //    if (cid == 0)
    //    {
    //        lit_class_name.Text = dt.Rows[0]["BA02"].ToString() + " > 全部商品";
    //    }
    //    else
    //    {
    //        lit_class_name.Text = dt.Rows[0]["BA02"].ToString() + " > " + dt.Rows[0]["BB07_TW"].ToString();
    //    }

    //}
    //}
    private void bindTopImg(int bid)
    {
        DataTable dt = CFacade.UserFac.GetMobileTopAD(bid);
        rp_top_ad.DataSource = dt;
        rp_top_ad.DataBind();
        //string strSql = "SELECT TOP 1 BD02 FROM BD WHERE BD10='MB02' AND B01=" + bid;
        //DataTable dt = SqlDbmanager.queryBySql(strSql);
        //if (dt.Rows.Count > 0)
        //{
        //    lit_top_img.Text = "<img src=\"http://www.hawooo.com/images/adimgs/" + dt.Rows[0]["BD02"].ToString() + "\" class=\"am-img-thumbnail\" />";
        //}
    }
    private static string GetNum = "1";

    [WebMethod]
    public static string Num()
    {
        return GetNum;
    }
    private void bindDT(int cid, int bid)
    {
        bindTopImg(bid);

        int pcount = 10;
        if (Session["num"] != null)
        {
            ViewState["num"] = Session["num"];
            Session["num"] = null;
        }

        if (ViewState["num"] != null)
            pcount = pcount * Convert.ToInt32(ViewState["num"]);


        SearchProp searchProp = new SearchProp();
        searchProp.BrandID = bid;
        searchProp.ClassID = cid;
        searchProp.page = 1;
        searchProp.pcount = pcount;
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.TagType = SearchProp.EmTagType.IMG;
        DataTable productDT = BrandBL.GetBrandProduct(searchProp);
        p_list.DataSource = productDT;
        p_list.DataBind();

        int max = 10;
        if (productDT.Rows.Count > 0)
        {
            if (max > Convert.ToInt32(productDT.Rows[0]["ASUM"]))
            {
                lnk_more.Visible = false;
            }
            else
            {
                lnk_more.Visible = true;
            }
        }

        BindClass(bid);

    }
    private void BindClass(int B01)
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = CFacade.GetFac.GetBBFac.BrandGetClass(B01, (this.Master as mobile).LgType);
        dt.DefaultView.RowFilter = "BB04='0'";
        DataTable MDT = dt.DefaultView.ToTable();
        rp_m_class.DataSource = MDT; //綁定主類別
        rp_m_class.DataBind();
        foreach (RepeaterItem item in rp_m_class.Items)
        {
            string _id = ((HiddenField)item.FindControl("hf_BB01")).Value;
            dt.DefaultView.RowFilter = "BB04='" + _id + "'";
            DataTable CDT = dt.DefaultView.ToTable();
            ((Repeater)item.FindControl("rp_c_class")).DataSource = CDT;
            ((Repeater)item.FindControl("rp_c_class")).DataBind();
        }
    }
    //private void bindClass(int BB01)
    //{
    //    StringBuilder sb = new StringBuilder();
    //    DataTable dt = CFacade.GetFac.GetBBFac.BrandGetClass(BB01);
    //    dt.DefaultView.RowFilter = "BB04='0'";
    //    DataTable MDT = dt.DefaultView.ToTable();
    //    rp_m_class.DataSource = MDT; //綁定主類別
    //    rp_m_class.DataBind();
    //    foreach (RepeaterItem item in rp_m_class.Items)
    //    {
    //        string _id = ((HiddenField)item.FindControl("hf_BB01")).Value;
    //        dt.DefaultView.RowFilter = "BB04='" + _id + "'";
    //        DataTable CDT = dt.DefaultView.ToTable();
    //        ((Repeater)item.FindControl("rp_c_class")).DataSource = CDT;
    //        ((Repeater)item.FindControl("rp_c_class")).DataBind();
    //    }
    //}
    protected void lnk_more_Click(object sender, EventArgs e)
    {
        //讀取更多
        if (ViewState["num"] != null)
        {
            ViewState["num"] = Convert.ToInt32(ViewState["num"].ToString()) + 1;
            GetNum = ViewState["num"].ToString();
            int cid = 0;
            int bid = 0;

            if (Request.QueryString["cid"] != null)
            {
                cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
            }
            if (Request.QueryString["bid"] != null)
            {
                bid = Convert.ToInt32(Request.QueryString["bid"].ToString());
            }
            bindDT(cid, bid);
        }
    }
}