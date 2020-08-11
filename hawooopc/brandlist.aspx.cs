using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_brandlist : Compress.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //DataTable dt = CFacade.UserFac.GetBrandList();
            //rp_list.DataSource = dt;
            //rp_list.DataBind();
            bindClass();
            int? cid = null;

            if (Request.QueryString["cid"] != null)
            {
                int i = 0;
                if (int.TryParse(Request.QueryString["cid"].ToString(), out i))
                {
                    cid = Convert.ToInt32(Request.QueryString["cid"].ToString());
                }
            }
            int page = 1;
            if (Request.QueryString["page"] != null)
            {
                page = int.Parse(Request.QueryString["page"].ToString());
            }
            bindBrand(cid, page);
        }
    }

    private void bindClass()
    {
        DataTable dt = CFacade.GetFac.GetBEFac.GetBrandList((this.Master as user_user).LgType);
        string[] _欄位 = new string[] { "BE01", "BE02", "BE09" };
        DataTable bindDT = dt.DefaultView.ToTable(true, _欄位);
        StringBuilder sb = new StringBuilder();
        foreach (DataRow dr in bindDT.Rows)
        {
            sb.Append("<li class=\"" + dr["BE09"].ToString() + "\"><a href=\"brandlist.aspx?cid=" + dr["BE01"].ToString() + "\">&nbsp;" + dr["BE02"].ToString() + "</a></li>");
        }
        lit_brand_class.Text = sb.ToString();
    }
    //private void bindClass()
    //{

    //    DataTable brandDT = BEFac.GetBEFac.GetBrandListClass(((user_user)Page.Master).LgType);
    //    StringBuilder sb = new StringBuilder();
    //    foreach (DataRow dr in brandDT.Rows)
    //    {
    //        sb.Append("<li class=\"" + dr["BE09"].ToString() + "\"><a href=\"brandlist.aspx?cid=" + dr["BE01"].ToString() + "\">&nbsp;" + dr["BE02"].ToString() + "</a></li>");
    //    }
    //    lit_brand_class.Text = sb.ToString();
    //}

    private void bindBrand(int? cid = null, int page = 1)
    {
        int pcount = 10;
        DataSet ds = CFacade.UserFac.GetBrandList(cid, page, pcount, (this.Master as user_user).LgType);
        rp_logo_loop.DataSource = ds.Tables["Brands"];
        rp_logo_loop.DataBind();

        rp_brand_list.DataSource = ds.Tables["ShowBrands"];
        rp_brand_list.DataBind();

        lit_page.Text = PbClass.GetPageNum2(int.Parse(ds.Tables["Brands"].Rows[0]["ASUM"].ToString()), 10);

        DataTable productDT = ds.Tables["Product"];
        foreach (RepeaterItem item in rp_brand_list.Items)
        {
            productDT.DefaultView.RowFilter = "B01='" + (item.FindControl("hf_B01") as HiddenField).Value + "'";
            DataTable bindDT = productDT.DefaultView.ToTable();
            //DataTable bindDT = productDT.AsEnumerable().Where(row => row.Field<int>("B01").Equals(b01)).ToDataTable();
            (item.FindControl("rp_prodcut") as Repeater).DataSource = bindDT;
            (item.FindControl("rp_prodcut") as Repeater).DataBind();
        }
    }
}