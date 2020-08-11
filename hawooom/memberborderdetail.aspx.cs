using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_memberborderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ((Literal)member_class.FindControl("lit_class_txt")).Text = "<a href=\"memberborder.aspx\" style=\"color:#FD6B73\">代購單列表</a> > 代購單明細";
            if (Request.QueryString["oid"] != null)
            {
                if (Session["A01"] != null)
                {
                    bindDT(Request.QueryString["oid"].ToString(), Convert.ToInt32(Session["A01"].ToString()));
                }
                else
                {
                    Response.Redirect("memberborder.aspx");
                }
            }
        }
    }
    private void bindDT(string oid, int A01)
    {
        BFYORM obBORM = new BFYORM();
        obBORM.BORM20 = oid;
        obBORM.BORM18 = A01;
        DataTable dt = CFacade.GetFac.GetBFYORMFac.UserGetBFYORDER(obBORM);
        if (dt.Rows.Count > 0)
        {
            lit_BORM13.Text = dt.Rows[0]["BORM13"].ToString();
            lit_BORM14.Text = dt.Rows[0]["BORM14"].ToString();
            lit_BORM15.Text = dt.Rows[0]["BORM15"].ToString();
            lit_BORM16.Text = dt.Rows[0]["BORM16"].ToString();
            lit_BORM20.Text = dt.Rows[0]["BORM20"].ToString();
            lit_BORM21.Text = Convert.ToDateTime(dt.Rows[0]["BORM21"].ToString()).ToString("yyyy-MM-dd HH:mm");
            //lit_BORM23.Text = dt.Rows[0]["BORM23"].ToString();
            txt_BORM23.Text = PbClass.PayTxt(dt.Rows[0]["BORM23"].ToString());
            lit_BORM24.Text = dt.Rows[0]["BORM24"].ToString();
            //lit_BORM27.Text = dt.Rows[0]["BORM27"].ToString();
            txt_BORM27.Text = dt.Rows[0]["BORM27"].ToString();
            //lit_BORM28.Text = dt.Rows[0]["BORM28"].ToString();
            txt_BORM28.Text = dt.Rows[0]["BORM28"].ToString();
            lit_BORM30.Text = dt.Rows[0]["BORM30"].ToString();
            lit_BORM33.Text = dt.Rows[0]["BORM33"].ToString().Equals("") ? "0.00" : dt.Rows[0]["BORM33"].ToString();
            txt_BORM04.Text = dt.Rows[0]["BORM04"].ToString();
            txt_BORM05.Text = dt.Rows[0]["BORM05"].ToString();
            txt_BORM06.Text = dt.Rows[0]["BORM06"].ToString();
            txt_BORM07.Text = dt.Rows[0]["BORM07"].ToString();
            txt_BORM08.Text = dt.Rows[0]["BORM08"].ToString();
            txt_BORM11.Text = dt.Rows[0]["BORM11"].ToString();
            txt_BORM12.Text = dt.Rows[0]["BORM12"].ToString();
            txt_State1.Text = AREA.GetAREAStr(dt.Rows[0]["BORM09"].ToString());
            txt_State2.Text = AREA.GetAREAState2Str(dt.Rows[0]["BORM10"].ToString());
            rp_cart_list.DataSource = dt;
            rp_cart_list.DataBind();
        }
        else
        {
            Response.Redirect("memberborder.aspx");
        }
    }
}