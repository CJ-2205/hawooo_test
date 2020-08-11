using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_member_level_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCardInfo();
        }
    }

    private MCard _mcard = new MCard();

    private void BindCardInfo()
    {
        LangType lg = (this.Master as user_user).LgType; //正式 LangType 
                                                         //LangType lg = LangType.en; //測試
        if (Session["A01"] != null && Session["IsBlackExp"] != null)
        {
            string IsBlackExp = Session["IsBlackExp"].ToString();

            int memberId = Convert.ToInt32(Session["A01"].ToString());
            MTrialCard mtcard = new MTrialCard(memberId);


            DataTable MDT = _mcard.GetMCardInfo(memberId);
            if (MDT.Rows.Count > 0)
            {
                DataRow dr = MDT.Rows[0];
                string cardType = dr["MCard"].ToString();

                mtcard.Year = DateTime.Now.AddMonths(1).Year;
                mtcard.Month = DateTime.Now.AddMonths(1).Month;
                mtcard.Day = 1;
                bool IsNextMonthBlackExp = mtcard.CheckTrialBlack();


                if (IsBlackExp.Equals("YES"))
                {
                    cardType = "B";
                    mtcard.Year = DateTime.Now.Year;
                    mtcard.Month = DateTime.Now.Month;
                    mtcard.Day = DateTime.Now.Day;
                    litDays.Text = mtcard.GetTrialBlackRemainingDays().ToString();
                    trialing.Visible = true;
                    Point.Visible = false;
                    Point2.Visible = false;

                }
                else if (IsNextMonthBlackExp)
                {
                    beforeTrial.Visible = true;
                    if (lg.Equals(LangType.en))//英文版
                    {
                        litMsg.Text = @"You will get to enjoy<b>Black Card </b>privilege on next month。";

                    }
                    else if (lg.Equals(LangType.zh))
                    {
                        litMsg.Text = @"您即將再下個⽉1號，開始享有<b>Black Card </b>會員等級優惠。";
                    }
                }
                string lookBack = dr["LookBack"].ToString();



                up_lookback.Visible = false;
                if (lookBack != "1")
                {
                    up_lookback.Visible = true;
                }

                var cardObj = _mcard.GetMCardObj(cardType);
                lit_card_img.Text = "<img src='" + cardObj.CardImgUrl + "'/>";
                string getCardTime = Convert.ToDateTime(MDT.Rows[0]["MCTime"]).ToString("yyyy-MM-dd HH:mm:ss");

                decimal accPrice = Convert.ToDecimal(MDT.Rows[0]["MCost"].ToString());

                //設定更新CARD資訊
                SetUpCardInfo(accPrice, cardType);

                string mcode = dr["MCode"].ToString();

                BindQrCode(mcode);


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

        }
        lit_price_range.Text = "RM" + accPrice.ToString() + priceRangeTxt;
        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "SetPinkBar(" + pinkPercent + ");", true);
    }
    private int memberId = 0;
    private void BindQrCode(string code)
    {
        lit_code.Text = code;
        var rval = MCard.GetQrCodePath(code);
        lit_qrcode.Text = "<img src='" + rval.Item1 + "'>";
        ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "SetUrl('" + rval.Item2 + "');", true);
    }

    protected void btnLookBack_OnClick(object sender, EventArgs e)
    {
        int userId = Convert.ToInt32(Session["A01"].ToString());
        string tStr = "2019-01-01 00:00:00";
        bool rval = _mcard.ConvMCard(userId, tStr);
        if (rval)
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "location.href='member_level_list.aspx';", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "alert('Error');", true);
        }
    }

}