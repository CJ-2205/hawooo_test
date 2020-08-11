using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_border : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            if (Request.QueryString["oid"] != null)
            {
                string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
                bool ismobile = PbClass.isMobile(u);
                if (Session["desktop"] == null)
                {
                    if (ismobile)
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='../mobile/border.aspx?oid=" + Request.QueryString["oid"].ToString() + "'", true);
                    }
                }
                if (Session["A01"] != null)
                {
                    //string OID = PbClass.desDecryptBase64(Request.QueryString["oid"].ToString());
                    string OID = Request.QueryString["oid"].ToString();
                    BindDT(OID, Convert.ToInt32(Session["A01"].ToString()));
                }
                else
                {
                    btn_next.Enabled = false;
                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "onload", "doLogin('border.aspx');", true);
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLoginEnableClose('border.aspx?oid=" + Request.QueryString["oid"].ToString() + "');", true);
                    //Response.Redirect("login.aspx?rurl=border.aspx?oid=" + Request.QueryString["oid"].ToString());
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href='index.aspx';", true);
            }

        }
    }
    private void BindDT(string oid, int A01)
    {
        BFYORM obBORM = new BFYORM();
        obBORM.BORM20 = oid;
        obBORM.BORM18 = A01;
        DataTable dt = CFacade.GetFac.GetBFYORMFac.UserGetBFYORDER(obBORM);
        if (dt.Rows.Count > 0)
        {
            if (!dt.Rows[0]["BORM02"].ToString().Equals("1"))
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('代購單非可付款狀態，請洽Hawooo客服');location.href='index.aspx';", true);
            }
            else
            {
                if (Convert.ToDateTime(dt.Rows[0]["BORM21"].ToString()) < DateTime.Now)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('代購單已超過付款期限，請洽Hawooo客服');location.href='index.aspx';", true);
                }
                else
                {
                    btn_next.Enabled = true;
                    hf_BORM01.Value = dt.Rows[0]["BORM01"].ToString();
                    lit_BORM20.Text = dt.Rows[0]["BORM20"].ToString();
                    lit_BORM13.Text = dt.Rows[0]["BORM13"].ToString();
                    lit_BORM14.Text = dt.Rows[0]["BORM14"].ToString();
                    lit_BORM15.Text = dt.Rows[0]["BORM15"].ToString();
                    lit_BORM16.Text = dt.Rows[0]["BORM16"].ToString();
                    lit_BORM21.Text = Convert.ToDateTime(dt.Rows[0]["BORM21"].ToString()).ToString("yyyy-MM-dd HH:mm");
                    lit_BORM24.Text = dt.Rows[0]["BORM24"].ToString();
                    lit_BORM30.Text = dt.Rows[0]["BORM30"].ToString();
                    lit_BORM33.Text = dt.Rows[0]["BORM33"].ToString();
                    txt_BORM04.Text = dt.Rows[0]["BORM04"].ToString();
                    txt_BORM05.Text = dt.Rows[0]["BORM05"].ToString();
                    txt_BORM06.Text = dt.Rows[0]["BORM06"].ToString();
                    txt_BORM07.Text = dt.Rows[0]["BORM07"].ToString();
                    txt_BORM08.Text = dt.Rows[0]["BORM08"].ToString();
                    txt_BORM11.Text = dt.Rows[0]["BORM11"].ToString();
                    txt_BORM12.Text = dt.Rows[0]["BORM12"].ToString();
                    bindState(dt.Rows[0]["BORM09"].ToString());
                    //txt_State1.Text = AREA.GetAREAStr(dt.Rows[0]["BORM09"].ToString()) + "-" + AREA.GetAREAState2Str(dt.Rows[0]["BORM10"].ToString());
                    rp_cart_list.DataSource = dt;
                    rp_cart_list.DataBind();
                }
            }

        }
        else
        {
            btn_next.Enabled = false;
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('無相關代購單資訊');location.href='index.aspx';", true);
        }
    }
    private void bindState(string stype)
    {
        ddl_state_2.Items.Clear();
        DataTable dt = AREA.GetAREADT();
        DataRow[] SDR = dt.Select("AREA03='" + stype + "'");
        foreach (DataRow dr in SDR)
        {
            ddl_state_2.Items.Add(new ListItem(dr["AREA02"].ToString(), dr["AREA01"].ToString()));
        }
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        string Error = "";
        if (txt_BORM04.Text.Trim().Equals(""))
        {
            Error += "請輸入姓名 \\n";
        }
        if (txt_BORM05.Text.Trim().Equals(""))
        {
            Error += "請輸入電子郵件 \\n";
        }
        if (txt_BORM07.Text.Trim().Equals(""))
        {
            Error += "請輸入Postcode \\n";
        }
        if (txt_BORM08.Text.Trim().Equals(""))
        {
            Error += "請輸入City \\n";
        }
        if (txt_BORM11.Text.Trim().Equals(""))
        {
            Error += "請輸入收件地址 \\n";
        }
        if (Error == "")
        {
            BFYORM BORM = new BFYORM();
            BORM.BORM01 = hf_BORM01.Value;
            BORM.BORM02 = 2;
            BORM.BORM04 = txt_BORM04.Text.Trim();
            BORM.BORM05 = txt_BORM05.Text.Trim();
            BORM.BORM07 = txt_BORM07.Text.Trim();
            BORM.BORM08 = txt_BORM08.Text.Trim();
            BORM.BORM10 = Convert.ToInt32(ddl_state_2.SelectedValue.ToString());
            BORM.BORM11 = txt_BORM11.Text.Trim();
            BORM.BORM12 = txt_BORM12.Text.Trim();
            BORM.BORM23 = Convert.ToInt32(rb_payment.SelectedValue);
            bool rval = CFacade.GetFac.GetBFYORMFac.BORMPayCheck(BORM);
            if (rval)
            {
                if (rb_payment.SelectedValue.ToString().Equals("1"))
                {
                    //信用卡付款  
                    Response.Redirect("../molpay/transToMolPay.aspx?oid=" + lit_BORM20.Text.Trim());
                }
                else if (rb_payment.SelectedValue.ToString().Equals("0"))
                {
                    //CIMB付款
                    Response.Redirect("borderok.aspx?oid=" + hf_BORM01.Value);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(up_step, typeof(UpdatePanel), "msg", "alert('Error,please call hawooo.com');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(up_step, typeof(UpdatePanel), "msg", "alert('" + Error + "');", true);
        }

    }
}