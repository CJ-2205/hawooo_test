using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;

public partial class mobile_membercoin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ((Literal)member_class.FindControl("lit_class_txt")).Text = "<span class='txtRsc' data-id='m011'>我的Ha幣</span>";
            if (Session["A01"] != null)
            {
                CoinFac coin = new CoinFac();
                DataTable dt = coin.getCoinByMemberID(Convert.ToInt32(Session["A01"].ToString()));

                if (dt.Rows.Count > 0)
                {
                    dt.DefaultView.RowFilter = "CN04=1";
                    DataTable dt1 = dt.DefaultView.ToTable();
                    rp_list.DataSource = dt1;
                    rp_list.DataBind();

                    if (dt1.Rows.Count > 0)
                    {
                        msg1.Visible = false;
                    }
                    else
                    {
                        msg1.Visible = true;
                    }

                    dt.DefaultView.RowFilter = "CN04=0";
                    DataTable dt2 = dt.DefaultView.ToTable();
                    rp_list_use.DataSource = dt2;
                    rp_list_use.DataBind();

                    if (dt2.Rows.Count > 0)
                    {
                        msg2.Visible = false;
                    }
                    else
                    {
                        msg2.Visible = true;

                    }


                }

                //lit_total.Text = coin.GetMemberCoin(Convert.ToInt32(Session["A01"].ToString())).ToString();
                int total = Convert.ToInt32(coin.GetMemberCoin(Convert.ToInt32(Session["A01"].ToString())));

                lit_total.Text = total.ToString("D");

                if (total > 0)
                {
                    Tuple<string, string> t = getTimeOutHaCoinAndDate(Convert.ToInt32(Session["A01"].ToString()));
                    lit_timeout_coupon.Text = t.Item1;
                    lit_timeout_day.Text = string.Format(LangClass.GetMsgInfo("M048", (this.Master as mobile).LgType), t.Item2);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "remove", "removeTimeoutPanel();", true);
                }

            }
            else
            {
                Response.Redirect("login.aspx?rurl=membercoin.aspx");
            }



            //if (b1 == false && b2 == false)
            //{
            //    lit_get_coin.Text = "無獲得Ha幣紀錄";
            //    lit_use_coin.Text = "無使用Ha幣紀錄";
            //    ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "removeMsg(3)", true);
            //}
            //else if (b1 == false)
            //{
            //    lit_get_coin.Text = "無獲得Ha幣紀錄";
            //    ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "removeMsg(1)", true);
            //}
            //else if (b2 == false)
            //{
            //    lit_use_coin.Text = "無使用Ha幣紀錄";
            //    ScriptManager.RegisterStartupScript(Page, GetType(), "msg", "removeMsg(2)", true);
            //}

        }
    }


    private Tuple<string, string> getTimeOutHaCoinAndDate(int userId)
    {
        string strCoin = string.Empty, strDate = string.Empty;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = @"SELECT TOP 1 * FROM 
(SELECT (SELECT SUM (CASE WHEN CN04=1 THEN CN03 WHEN CN04=0 THEN -CN03 END) AS A FROM HAWOOO.dbo.Coin AS DT1 WHERE Convert(varchar(10),DT1.CN10,111)<=Convert(varchar(10),DT2.CN10,111) AND DT1.CN02=MAX(DT2.CN02) ) AS RA
,Convert(varchar(10),DT2.CN10,111) AS RB 
FROM HAWOOO.dbo.Coin AS DT2 
WHERE CN02=@CN02 
GROUP BY Convert(varchar(10),DT2.CN10,111) ) AS DT3 
WHERE RA>0 
ORDER BY RB ASC";

        cmd.Parameters.Add(SafeSQL.CreateInputParam("CN02", SqlDbType.BigInt, userId));
        DataTable dt = SqlDbmanager.queryBySql(cmd);

        if (dt.Rows.Count > 0)
        {
            strCoin = Convert.ToInt32(dt.Rows[0]["RA"]).ToString();
            strDate = dt.Rows[0]["RB"].ToString();
        }

        return new Tuple<string, string>(strCoin, strDate);

    }


}