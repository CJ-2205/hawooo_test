using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_borderok : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["A01"] != null)
        {
            if (Request.QueryString["oid"] != null)
            {
                Guid g;
                if (Guid.TryParse(Request.QueryString["oid"].ToString(), out g))
                {
                    BFYORM obBORM = new BFYORM();
                    obBORM.BORM01 = Request.QueryString["oid"].ToString();

                    DataTable dt = CFacade.GetFac.GetBFYORMFac.GetOkBFYOrderDT(obBORM);
                    if (dt.Rows.Count > 0)
                    {
                        if (!dt.Rows[0]["BORM32"].ToString().Equals("YES"))
                        {
                            //CFacade.GetFac.GetBFYORMFac.SendOKMail(dt.Rows[0]["BORM01"].ToString());
                        }
                        //hf_sum.Value = dt.Rows[0]["ORM08"].ToString();
                        //checkOK(Convert.ToDecimal(dt.Rows[0]["ORM08"].ToString()));
                        lit_BORM16.Text = dt.Rows[0]["BORM16"].ToString();
                        lit_BORM20.Text = dt.Rows[0]["BORM20"].ToString();
                        lit_BORM21.Text = Convert.ToDateTime(dt.Rows[0]["BORM21"].ToString()).ToString("yyyy-MM-dd HH:mm");
                        if (dt.Rows[0]["BORM23"].ToString().Equals("0")) //銀行匯款
                        {
                            //銀行匯款
                            Panel1.Visible = true;
                        }
                        else if (dt.Rows[0]["BORM23"].ToString().Equals("1")) //molpay付款
                        {
                            Panel2.Visible = true;
                            if (dt.Rows[0]["BORM02"].ToString().Equals("4"))
                            {
                                //付款完成
                                lit_crad_info.Text = "MOLPAY交易成功</br><span style=\"font-size:20px\">(Credit card transaction is successful)</span>";
                            }
                            else if (dt.Rows[0]["BORM02"].ToString().Equals("3"))
                            {
                                //付款失敗
                                lit_crad_info.Text = "MOLPAY交易失敗</br><span style=\"font-size:20px\">(Credit card transaction fails)</span>";
                            }
                            else if (dt.Rows[0]["BORM02"].ToString().Equals("2"))
                            {
                                //處理中(尚未確認款項)
                                lit_crad_info.Text = "款項確認中</br><span style=\"font-size:20px\">(Payment confirmation)</span>";
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("index.aspx");
                    }
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }
}