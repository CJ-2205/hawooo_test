using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercode_membercoupon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                bindDT();
            }
        }
    }
    private void bindDT()
    {


        DataTable dtGet = CFacade.GetFac.GetGAFac.MemberGetCoupon(Convert.ToInt32(Session["A01"].ToString()));
        if (dtGet.Rows.Count > 0)
        {
            dtGet.DefaultView.RowFilter = " #" + DateTime.Now.ToString("yyyy/MM/dd 00:00:00") + "# <= GA12 ";
            DataTable dt2 = dtGet.DefaultView.ToTable();
            Repeater1.DataSource = dt2;
            Repeater1.DataBind();
            if (dt2.Rows.Count == 0)
            {
                lit_get_coupon.Text = "無獲得折扣券紀錄";
            }
        }

        DataTable dtUse = CFacade.GetFac.GetGAFac.MemeberUseCoupon(Convert.ToInt32(Session["A01"].ToString()));
        if (dtUse.Rows.Count > 0)
        {
            if (dtGet.Rows.Count > 0)
            {
                dtGet.DefaultView.RowFilter = " #" + DateTime.Now.ToString("yyyy/MM/dd 00:00:00") + "# > GA12 ";
                DataTable dt = dtGet.DefaultView.ToTable();
                foreach (DataRow dr in dt.Rows)
                {
                    DataRow drUse = dtUse.NewRow();
                    drUse["GA01"] = dr["GA01"].ToString();
                    drUse["GA07"] = dr["GA07"].ToString();
                    drUse["GA11"] = dr["GA11"].ToString();
                    drUse["GA12"] = dr["GA12"].ToString();
                    drUse["ORM02"] = dr["ORM02"].ToString();
                    drUse["GA02"] = dr["GA02"].ToString();
                    dtUse.Rows.Add(drUse);
                }
            }

            rp_list.DataSource = dtUse;
            rp_list.DataBind();
            if (dtUse.Rows.Count == 0)
            {
                lit_no_coupon.Text = "無使用折扣卷紀錄";
            }
        }


    }
}