using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_memberhacoin2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;
            if (Session["A01"] != null)
            {
                CoinFac coin = new CoinFac();
                DataTable dt = coin.getCoinByMemberID(Convert.ToInt32(Session["A01"].ToString()));
                rp_list.DataSource = dt;
                rp_list.DataBind();

                int total = Convert.ToInt32(coin.GetMemberCoin(Convert.ToInt32(Session["A01"].ToString())));
                lit_total.Text = total.ToString("D");
                if (total > 0)
                {
                    Tuple<string, string> t = getTimeOutHaCoinAndDate(Convert.ToInt32(Session["A01"].ToString()));
                    lit_timeout_coupon.Text = t.Item1;
                    lit_timeout_day.Text = string.Format(LangClass.GetMsgInfo("M048", (LangType)ViewState["LG"]), t.Item2);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "remove", "removeTimeoutPanel()", true);
                }

            }
            else
            {
                Response.Redirect("index.aspx");
            }
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