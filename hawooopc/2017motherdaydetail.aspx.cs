using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_2017motherdaydetail : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string GetCP(string stime, string etime, string GB01)
    {
        string msg = "";
        if (DateTime.Now < Convert.ToDateTime(stime))
        {
            msg = "尚未到領取時間";
        }
        else if (DateTime.Now > Convert.ToDateTime(etime))
        {
            msg = "已超過領取時間";
        }
        else
        {
            if (HttpContext.Current.Session["A01"] != null)
            {
                msg = CFacade.GetFac.GetGAFac.JoinEvent((HttpContext.Current.Session["A01"].ToString()), DateTime.Now.ToString("yyyy-MM-dd HH:mm"), GB01);
            }
            else
            {
                msg = "請先登入會員";
            }
        }
        return msg.ToUpper();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["type"] != null)
            {
                if (Request.QueryString["type"] != null)
                {
                    string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
                    bool ismobile = PbClass.isMobile(u);
                    if (ismobile)
                    {
                        Response.Redirect("/mobile/2017motherdaydetail.aspx?type=" + Request.QueryString["type"].ToString());
                    }
                    bindDT(Request.QueryString["type"].ToString());
                }
                else
                {
                    bindDT("A");
                }
            }
            else
            {
                Response.Redirect("2017motherday.aspx");
            }
        }
    }
    private void bindProduct(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP27 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }
    private void bindDT(string Type)
    {
        switch (Type)
        {
            case "A":
                {
                    lit_img1.Text = "<img src=\"http://edm.hawooo.com/20170502/a1.png\" alt=\"美麗保健媽媽\">";
                    lit_img2.Text = "<img src=\"http://edm.hawooo.com/20170502/01m.png\" alt=\"美麗保健媽媽\" />";
                    bindProduct(106);
                    break;
                }
            case "B":
                {
                    lit_img1.Text = "<img src=\"http://edm.hawooo.com/20170502/b1.png\" alt=\"保養媽媽\">";
                    lit_img2.Text = "<img src=\"http://edm.hawooo.com/20170502/b1m.png\" alt=\"保養媽媽\">";
                    bindProduct(107);
                    break;
                }
            case "C":
                {
                    lit_img1.Text = "<img src=\"http://edm.hawooo.com/20170502/c1.png\" alt=\"美妝媽媽\">";
                    lit_img2.Text = "<img src=\"http://edm.hawooo.com/20170502/c1m.png\" alt=\"美妝媽媽\">";
                    bindProduct(108);
                    break;
                }
            case "D":
                {
                    lit_img1.Text = "<img src=\"http://edm.hawooo.com/20170502/d1.png\" alt=\"生活達人媽\">";
                    lit_img2.Text = "<img src=\"http://edm.hawooo.com/20170502/d1m.png\" alt=\"生活達人媽\">";
                    bindProduct(109);
                    break;
                }
            case "E":
                {
                    lit_img1.Text = "<img src=\"http://edm.hawooo.com/20170502/e1.png\" alt=\"時尚媽媽\">";
                    lit_img2.Text = "<img src=\"http://edm.hawooo.com/20170502/e1m.png\" alt=\"時尚媽媽\">";
                    bindProduct(110);
                    break;
                }
            case "F":
                {
                    lit_img1.Text = "<img src=\"http://edm.hawooo.com/20170502/f1.png\" alt=\"清倉折扣\">";
                    lit_img2.Text = "<img src=\"http://edm.hawooo.com/20170502/f1m.png\" alt=\"勤儉持家媽\">";
                    bindProduct(105);
                    break;
                }
        }

    }
}