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
            bindBrand(cid);
        }
    }

    private void bindClass()
    {
        DataTable dt = CFacade.GetFac.GetBEFac.UserGetList();
        string[] _欄位 = new string[] { "BE01", "BE02", "BE09" };
        DataTable bindDT = dt.DefaultView.ToTable(true, _欄位);
        StringBuilder sb = new StringBuilder();
        foreach (DataRow dr in bindDT.Rows)
        {
            sb.Append("<li class=\"" + dr["BE09"].ToString() + "\"><a href=\"brandlist.aspx?cid=" + dr["BE01"].ToString() + "\">&nbsp;" + dr["BE02"].ToString() + "</a></li>");
        }
        lit_brand_class.Text = sb.ToString();
    }

    private void bindBrand(int? cid = null)
    {
        DataTable dt = CFacade.UserFac.GetBrandListByClass(cid);
        string[] m = new string[] { "B01", "BA06", "BA20", "BA08" };
        DataTable mDT = dt.DefaultView.ToTable(true, m);
        rp_brand_list.DataSource = mDT;
        rp_brand_list.DataBind();
        rp_logo_loop.DataSource = mDT;
        rp_logo_loop.DataBind();
        if (mDT.Rows.Count > 0)
        {
            lit_none_msg.Text = "";
        }
        else
        {
            lit_none_msg.Text = "無品牌資料";
        }
        foreach (RepeaterItem ri in rp_brand_list.Items)
        {
            dt.DefaultView.RowFilter = "B01='" + (ri.FindControl("hf_B01") as HiddenField).Value + "'";
            DataTable PDT = dt.DefaultView.ToTable();
            (ri.FindControl("rp_prodcut") as Repeater).DataSource = PDT;
            (ri.FindControl("rp_prodcut") as Repeater).DataBind();
        }
    }
}