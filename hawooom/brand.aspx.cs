using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_brand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as mobile).LgType;
            BindClass();
            int? cid = null;
            if (Request.QueryString["bcid"] != null)
            {
                int i = 0;
                if (int.TryParse(Request.QueryString["bcid"].ToString(), out i))
                {
                    cid = Convert.ToInt32(Request.QueryString["bcid"].ToString());

                }
            }
            ViewState["cid"] = cid;
            BindBrand(cid);


        }
    }
    private void BindClass()
    {
        DataTable dt = CFacade.GetFac.GetBEFac.GetBrandList((this.Master as mobile).LgType);
        string[] _欄位 = new string[] { "BE01", "BE02", "BE09" };
        DataTable bindDT = dt.DefaultView.ToTable(true, _欄位);
        rp_brand_class.DataSource = bindDT;
        rp_brand_class.DataBind();
    }
    private void BindBrand(int? cid = null, int vcount = 1)
    {
        int bcount = 10 * vcount;
        ViewState["vcount"] = vcount;
        DataTable dt = CFacade.UserFac.GetBrandListByClass(cid, bcount, productCount: 4, lang: (LangType)ViewState["LG"]);
        string[] m = new string[] { "B01", "BA06", "BA20", "BA08", "BA18" };
        DataTable mDT = dt.DefaultView.ToTable(true, m);
        rp_brand_list.DataSource = mDT;
        rp_brand_list.DataBind();
        rp_logo_loop.DataSource = mDT;
        rp_logo_loop.DataBind();

        foreach (RepeaterItem ri in rp_brand_list.Items)
        {
            dt.DefaultView.RowFilter = "B01='" + ((HiddenField)ri.FindControl("hf_B01")).Value + "'";
            DataTable PDT = dt.DefaultView.ToTable();
            ((Repeater)ri.FindControl("rp_product")).DataSource = PDT;
            ((Repeater)ri.FindControl("rp_product")).DataBind();
        }
        up_brand.Update();
    }

    protected void lnk_more_Click(object sender, EventArgs e)
    {
        int vcount = int.Parse(ViewState["vcount"].ToString()) + 1;
        int? cid = null;
        if (ViewState["cid"] != null)
            cid = int.Parse(ViewState["cid"].ToString());
        BindBrand(cid, vcount);
    }
}