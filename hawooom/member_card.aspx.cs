using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_member_card : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCardInfo();
        }
    }
    private MCard _mcard = new MCard();
    private StringBuilder _sb;
    private void BindCardInfo()
    {
        LangType lg = (this.Master as mobile).LgType; //正式 LangType 

        if (Session["A01"] != null && Session["IsBlackExp"] != null)
        {
            string IsBlackExp = Session["IsBlackExp"].ToString();
            int memberId = 0;
            memberId = Convert.ToInt32(Session["A01"].ToString());
            DataTable MDT = _mcard.GetMCardInfoAndConv(memberId);
            MTrialCard mtcard = new MTrialCard(memberId);

            if (MDT.Rows.Count > 0)
            {
                string title = "";
                mtcard.Year = DateTime.Now.AddMonths(1).Year;
                mtcard.Month = DateTime.Now.AddMonths(1).Month;
                mtcard.Day = 1;
                bool IsNextMonthBlackExp = mtcard.CheckTrialBlack();
                string cardType = MDT.Rows[0]["MCard"].ToString();
                if (IsBlackExp.Equals("YES"))
                {
                    cardType = "B";
                    title = "Hawooo Black Card";
                    mtcard.Year = DateTime.Now.Year;
                    mtcard.Month = DateTime.Now.Month;
                    mtcard.Day = DateTime.Now.Day;
                    litDays.Text = mtcard.GetTrialBlackRemainingDays().ToString();
                    PanelPointInfo.Visible = false;
                    ing.Visible = true;
                    Point.Visible = false;
                    days.Visible = true;

                }
                else if (IsNextMonthBlackExp)
                {
                    if (lg.Equals(LangType.en))//英文版
                    {
                        litMsg.Text = @"You will get to enjoy<b> Black Card </b>privilege on next month。";

                    }
                    else if (lg.Equals(LangType.zh))
                    {
                        litMsg.Text = @"您即將再下個⽉1號，開始享有<b> Black Card </b>會員等級優惠。";
                    }
                    before.Visible = true;
                }

                var cardObj = _mcard.GetMCardObj(cardType);
                if (title.Equals(""))
                    title = "Hawooo " + cardObj.CardTitle.ToString();
                lit_card_title.Text = title;
                lit_img.Text = "<img src='" + cardObj.CardImgUrl + "'/>";
                lit_icon.Text = "<img src='" + cardObj.CardIconUrl + "'/>";
                decimal accPrice = Convert.ToDecimal(MDT.Rows[0]["MCost"].ToString());

                //設定CARD資訊
                SetUpCardInfo(accPrice, cardType);
                _sb = new StringBuilder();
                foreach (string s in cardObj.CardOfferInfos)
                {
                    if (!(IsBlackExp.Equals("YES") && s.Contains("birthday")))
                    {
                        SetServiceInfo(s);
                    }

                }
                lit_msg.Text = _sb.ToString();

                GetNonPay(memberId);

                //綁定QROCDE 
                string mcode = MDT.Rows[0]["MCode"].ToString();
                BindQrCode(mcode);
                //綁定推薦碼
                lit_code1.Text = mcode;
                lit_code2.Text = mcode;
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    private void SetUpCardInfo(decimal accPrice, string cardType)
    {
        string priceRangeTxt = "";
        string nextCardType = cardType;
        decimal pinkPercent = 100;
        if (!nextCardType.Equals("B"))
        {
            switch (nextCardType)
            {
                case "W":
                    {
                        nextCardType = "S";
                        break;
                    }
                case "S":
                    {
                        nextCardType = "G";
                        break;
                    }
                case "G":
                    {
                        nextCardType = "B";
                        break;
                    }
            }

            var nextCardObj = _mcard.GetMCardObj(nextCardType);
            priceRangeTxt += "/" + nextCardObj.MCardMinCondition;
            lit_card_type.Text = nextCardObj.CardTitle;
            pinkPercent = MCard.CalculationPinkPercent(accPrice);
            //
        }
        lit_price_range.Text = "RM" + accPrice.ToString() + priceRangeTxt;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "SetPinkBar(" + pinkPercent + ");", true);
    }

    private void SetServiceInfo(string msg)
    {
        _sb.Append("<li>");
        _sb.Append("<div class=\"pink-circle\"></div>");
        _sb.Append("<span>");
        _sb.Append(msg);
        _sb.Append("</span>");
        _sb.Append("</li>");
    }

    private void GetNonPay(int userId)
    {
        var sb = new StringBuilder();
        sb.Append("SELECT COUNT(ORM01) as ONUM ");
        sb.Append("FROM ORDERM WITH(NOLOCK) ");
        sb.Append("WHERE ORM23=@MID ");
        sb.Append("AND ORM19=0 ");
        sb.Append("AND ORM24>=0 ");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("MID", SqlDbType.Int, userId));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            lit_nopay_tag.Text = "<span class=\"ctag\">" + dt.Rows[0]["ONUM"].ToString() + "</span>";
        }
    }

    private void BindQrCode(string code)
    {
        var rval = MCard.GetQrCodePath(code);
        lit_qrcode.Text = "<img src='" + rval.Item1 + "'>";
        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "SetUrl('" + rval.Item2 + "');", true);
    }
}