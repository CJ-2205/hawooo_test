using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

using Newtonsoft.Json;


public partial class user_20181111redenvelope : System.Web.UI.Page
{
    private decimal memberGetCoin = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ((Master as user_user).FindControl("rurl") as HiddenField).Value = "20181111redenvelope.aspx";
            BindRedCoinInfo();
            NoteState();
            TopInfo();
        }
    }

    private void TopInfo()
    {
        string temp1 = "<span style='cursor: pointer;' onclick='doLogin();'>立刻登入領取紅包</span>";
        string temp2 =
            "<span>HI #name#  Attendance #Date#</span><br />" +
            "<span>此活動您已獲得 #GetCoin# ha 幣，您目前共有 #TotalCoin# Ha幣</span>";
        if (Session["A01"] == null)
            lit_info.Text = temp1;
        else
        {
            CoinFac coinFac = new CoinFac();
            var totalCoin = coinFac.GetMemberCoin(Convert.ToInt32(Session["A01"].ToString()));
            temp2 = temp2.Replace("#name#", Session["A02"].ToString());
            temp2 = temp2.Replace("#TotalCoin#", totalCoin.ToString());
            temp2 = temp2.Replace("#GetCoin#", memberGetCoin.ToString());
            temp2 = temp2.Replace("#Date#", DateTime.Now.ToString("dd/MM"));
            lit_info.Text = temp2;

        }

    }
    private void BindRedCoinInfo()
    {
        List<RedCoin> redCoins = RedEnvelopeFac.GetCoinGiftInfo();
        redCoins.RemoveAll(v => v.Date.Equals("2018-11-11"));
        rp_date.DataSource = redCoins;
        rp_date.DataBind();
        GetGetList();
    }

    private void NoteState()
    {
        zh_note.Visible = false;
        en_note.Visible = false;
        if ((Master as user_user).LgType == LangType.en)
        {
            en_note.Visible = true;
        }
        else
        {
            zh_note.Visible = true;
        }
    }


    private void GetGetList()
    {
        if (Session["A01"] != null)
        {
            RedEnvelopeFac redFac = new RedEnvelopeFac();
            DataTable dt = redFac.GetMemberGetList(Convert.ToInt32(Session["A01"].ToString()));
            foreach (RepeaterItem item in rp_date.Items)
            {
                string key = ((HiddenField)item.FindControl("hf_key")).Value;
                var chkDT = dt.AsEnumerable().SingleOrDefault(x => x.Field<string>("CN06").Equals(key));

                ((Panel)item.FindControl("panel1")).Visible = false;
                ((Panel)item.FindControl("panel2")).Visible = false;
                if (chkDT == null)
                    ((Panel)item.FindControl("panel1")).Visible = true;
                else
                    ((Panel)item.FindControl("panel2")).Visible = true;
            }


            memberGetCoin = dt.AsEnumerable().Sum(r => r.Field<decimal>("CN03"));

            var chkSingleDay = dt.AsEnumerable().SingleOrDefault(x => x.Field<string>("CN06").Equals("20181111-1111"));
            if (chkSingleDay != null)
            {
                bigimg0.Visible = false;
                if (chkSingleDay["CN03"].ToString().Equals("1000"))
                {
                    bigimg1.Visible = true;
                }
                else
                {
                    bigimg2.Visible = true;
                }

            }
        }

    }

    [System.Web.Services.WebMethod]
    public static string GetRed(string date)
    {
        string json = "";
        int memberID = int.Parse(HttpContext.Current.Session["A01"].ToString());
        RedEnvelopeFac redFac = new RedEnvelopeFac();
        json = redFac.GetRedCoin(memberID, date + "-1111");
        return json;
    }
}