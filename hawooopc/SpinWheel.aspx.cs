using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_static_SpinWheel : System.Web.UI.Page
{

    private static int _spinLimit = 3;//當天可以玩輪盤的上限
    //private static int _spinLimit = 16;//當天可以玩輪盤的上限
    private int _playTimes = 0;//當日玩的次數
    private decimal _accPrice = 0; //累積消費
    private decimal _nextCost = 0; //距離下次卡別金額    
    private string _cardType = "W";//卡別
    private bool _isRealBlack = false;//真的黑卡會員
    private bool _isGetThHaCoin = false;//可以取得一千哈幣
    private bool _isGetTrialCard = false;//可以取得黑卡體驗
    private SpinWheelRewardFac _swRewardFac = new SpinWheelRewardFac();
    public enum EmUserRewardType { Test, NoBuy = 11, Buy1 = 12, ReBuy = 13 }
    public enum EmReward
    {
        FiftyHaCoin = 18,
        HundredHaCoin = 14,
        TwoHundredHaCoin = 15,
        FiveHundredHaCoin = 16,
        ThousandHaCoin = 17,
        OneMonthBlackExp = 19,
        FiftyPoint = 20,
        TwoCredit = 21
    }
    public enum EmMsgType
    {
        NoLoginTitle,
        NoSpinTitle,
        SpinTitle,
        UnSpingTitle,
        SpinInfo,
        FailInsertReward,
        FailCostHaCoin,
        NoEnoughHaCoin,
        SystemError,
        PlayTimesLimit
    };


    protected void Page_Load(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/" + "SpinWheel.aspx" + qstr);
        }
        if (!IsPostBack)
        {
            LangType lg = (this.Master as user_user).LgType;
            HFlg.Value = lg.ToString();

            if (lg.Equals(LangType.en))//英文版
                Panel_en.Visible = true;
            else
                Panel_zh.Visible = true;

            int UID = 0;
            if (Session["A01"] != null)
            {
                Session["Login"] = "true";
                UID = Convert.ToInt32(Session["A01"].ToString());
                //取得會員資料
                GetUserInfo(UID);
                //獎項綁定
                RenderPrize(UID, lg.ToString());
            }
            else
            {
                Session["Login"] = "false";
            }
            //資訊綁定
            BindSpinWheelInfo(UID, lg.ToString());
        }
    }

    public void BindSpinWheelInfo(int userId, string lg)
    {
        SpinWheelReward swReward = new SpinWheelReward();
        string title = string.Format(swReward.GetMsgStr(EmMsgType.NoLoginTitle, lg), _spinLimit);
        string info = title;
        if (!userId.Equals(0))
        {
            if (_playTimes >= _spinLimit)
                title = string.Format(swReward.GetMsgStr(EmMsgType.UnSpingTitle, lg), _spinLimit);
            else if (_playTimes.Equals(0))
                title = string.Format(swReward.GetMsgStr(EmMsgType.NoSpinTitle, lg), _spinLimit);
            else
                title = string.Format(swReward.GetMsgStr(EmMsgType.SpinTitle, lg), _spinLimit - _playTimes);
            info = string.Format(swReward.GetMsgStr(EmMsgType.SpinInfo, lg), _accPrice, _nextCost);
        }
        litMsg.Text = title;
        litInfo.Text = info;
    }


    public void GetUserInfo(int UID)
    {

        DataTable dt = _swRewardFac.GetPrizeLogDt(UID, DateTime.Now);

        if (dt.Rows.Count == 0)
            _isGetThHaCoin = true;
        else if (dt.Select("Plog04=17").Length == 0)
            _isGetThHaCoin = true;

        MTrialCard mtCard = new MTrialCard(UID);
        mtCard.Year = DateTime.Now.AddMonths(1).Year;
        mtCard.Month = DateTime.Now.AddMonths(1).Month;
        mtCard.Day = 1;
        _isGetTrialCard = !mtCard.CheckTrialBlack();

        _cardType = Session["MCard"].ToString();
        _playTimes = dt.Rows.Count;
        MCard mcard = new MCard();
        DataTable MDT = mcard.GetMCardInfoAndConv(UID);
        {
            _accPrice = Convert.ToDecimal(MDT.Rows[0]["MCost"].ToString());
            _nextCost = NextCardCost(_accPrice, MDT.Rows[0]["MCard"].ToString());
            _isRealBlack = (MDT.Rows[0]["MCard"].ToString().Equals("B")) ? true : false;
        }
    }



    /// <summary>
    /// 
    /// </summary>
    /// <param name="accPrice">累積消費</param>
    /// <param name="cardType"></param>
    /// <returns></returns>
    public decimal NextCardCost(decimal accPrice, string cardType)
    {
        string nextCardType = cardType;
        decimal nextCost = 0;
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
            MCard mcard = new MCard();
            var nextCardObj = mcard.GetMCardObj(nextCardType);
            nextCost = nextCardObj.MCardMinCondition - accPrice; //下一個等級金額-現在消費金額
        }
        return nextCost;
    }

    /// <summary>
    /// 判斷要給什麼獎品
    /// </summary>
    public void RenderPrize(int userid, string lg)
    {
        string customerType = "0";
        string giftId = "0";
        DataSet ds = _swRewardFac.GetRenderPrizeDs(userid, lg);
        DataTable dtOrm = ds.Tables["Orm"];
        //DataTable dtHaCoin = ds.Tables["HaCoin"];
        DataTable dtRepeater = ds.Tables["Repeater"];
        GetPrizeRecord(dtRepeater);
        CoinFac coin = new CoinFac();

        //double HaCoin = Convert.ToDouble(dtHaCoin.Rows[0]["TOTAL"].ToString());
        int HaCoin = Convert.ToInt32(coin.GetMemberCoin(Convert.ToInt32(Session["A01"].ToString())));

        if (HaCoin >= 100)
        {
            SpinWheelReward swReward = new SpinWheelReward();
            Dictionary<int, string> code = new Dictionary<int, string>();

            SpinWheelFilter filter = new SpinWheelFilter();

            if (dtOrm.Rows.Count >= 1 && dtOrm.Rows.Count <= 2)
            {
                filter.userRewardType = EmUserRewardType.Buy1.ToString();
                customerType = EmUserRewardType.Buy1.GetHashCode().ToString();
            }
            else if (dtOrm.Rows.Count > 2)
            {
                filter.userRewardType = EmUserRewardType.ReBuy.ToString();
                customerType = EmUserRewardType.ReBuy.GetHashCode().ToString();
            }
            else
            {
                filter.userRewardType = EmUserRewardType.NoBuy.ToString();
                customerType = EmUserRewardType.NoBuy.GetHashCode().ToString();
            }
            filter.isGetBlackCard = (!_isRealBlack && _isGetTrialCard) ? true : false;
            filter.isGetThousandCoin = _isGetThHaCoin;
            filter.isGetPoint = !_isRealBlack;
            filter.playTimes = _playTimes;
            code = swReward.GetCode(filter);

            if (code.Count > 0)
            {
                Random rand = new Random();
                var g = rand.Next(1, code.Count);
                giftId = code[g];
            }

        }
        else
        {
            giftId = "9";
        }
        Session["GID"] = giftId;
        Session["GTYPE"] = customerType;
    }


    //獲取User得獎記錄
    void GetPrizeRecord(DataTable dt)
    {
        rptPrizeRecord.DataSource = dt;
        rptPrizeRecord.DataBind();
    }


    public class PrizeCs
    {
        public int angles { get; set; }
        public string msg { get; set; }
    }

    [WebMethod(EnableSession = true)]
    public static PrizeCs CheckPrize(string lg)
    {
        PrizeCs pc = new PrizeCs();
        SpinWheelRewardFac swRewardFac = new SpinWheelRewardFac();
        SpinWheelReward swReward = new SpinWheelReward();
        int giftID = Convert.ToInt32(HttpContext.Current.Session["GID"].ToString());
        int angles = 0;
        Dictionary<int, int> dicAngle = swReward.GetAngleDic();
        if (dicAngle.ContainsKey(giftID))
            angles = dicAngle[giftID];

        if (giftID != 9) //9代表 Ha幣不足
        {
            int status = Convert.ToInt32(HttpContext.Current.Session["GTYPE"].ToString());
            int userid = Convert.ToInt32(HttpContext.Current.Session["A01"].ToString());
            int count = swRewardFac.GetPrizeLogDt(userid, DateTime.Now).Rows.Count;
            if (count < _spinLimit)
            {
                //寫入資料庫=true，再帶dk的程式

                string statusAdd = "";
                string statusDeduct = "";

                int pid = swRewardFac.InsertPrizeLog(userid, giftID, status);
                bool statusLog = pid > 0 ? true : false;
                if (statusLog == true)      //代表寫入成功
                {
                    CoinFac coinFac = new CoinFac();
                    statusDeduct = coinFac.DeductCoin(userid, 100, "CoinGame").ToUpper();

                    if (statusDeduct == "OK")
                    {
                        #region 獎品歸戶
                        statusAdd = swReward.DoRewardEvent(userid, Enum.GetName(typeof(EmReward), giftID));
                        #endregion

                        if (statusAdd == "OK")
                            pc.msg = swReward.GetRewardMsg(giftID, lg);
                        else if (statusAdd == "FAIL")
                            pc.msg = swReward.GetMsgStr(EmMsgType.FailInsertReward, lg);

                        swRewardFac.UpdatePrizeLog(pid, statusAdd.Equals("OK") ? 1 : -1);

                    }
                    else if (statusDeduct == "FAIL")
                        pc.msg = swReward.GetMsgStr(EmMsgType.FailCostHaCoin, lg);
                    else if (statusDeduct == "COIN IS NOT ENOUGH。")
                        pc.msg = swReward.GetMsgStr(EmMsgType.NoEnoughHaCoin, lg);
                    else
                        pc.msg = statusDeduct;
                }
                else
                    pc.msg = swReward.GetMsgStr(EmMsgType.SystemError, lg);
            }
            else
                //代表今天已經玩過
                pc.msg = swReward.GetMsgStr(EmMsgType.PlayTimesLimit, lg);
        }
        else
            pc.msg = swReward.GetMsgStr(EmMsgType.NoEnoughHaCoin, lg);

        pc.angles = angles;
        HttpContext.Current.Session["GID"] = EmReward.FiftyHaCoin.GetHashCode();
        return pc;
    }


    public class SpinWheelFilter
    {
        public string userRewardType { get; set; }
        public bool isGetBlackCard { get; set; }
        public bool isGetThousandCoin { get; set; }
        public bool isGetPoint { get; set; }
        public int playTimes { get; set; }

    }

    public class SpinWheelReward
    {
        /// <summary>
        /// 取得獎品池
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public Dictionary<int, string> GetCode(SpinWheelFilter filter)
        {
            Dictionary<int, string> code = new Dictionary<int, string>();
            int count = 1;
            int FiftyHaCoin = 0;
            int HundredHaCoin = 0;
            int TwoHundredHaCoin = 0;
            int FiveHundredHaCoin = 0;
            int ThousandHaCoin = 0;
            int OneMonthBlackExp = 0;
            int FiftyPoint = 0;
            int TwoCredit = 0;

            switch (filter.userRewardType)
            {
                case "NoBuy":
                    {
                        FiftyHaCoin = 360;
                        HundredHaCoin = 335;
                        TwoHundredHaCoin = 290;
                        FiveHundredHaCoin = 15;
                        break;
                    }
                case "Buy1":
                    {
                        FiftyHaCoin = 350;
                        HundredHaCoin = 305;
                        TwoHundredHaCoin = 250;
                        FiveHundredHaCoin = 11;
                        ThousandHaCoin = 0;
                        OneMonthBlackExp = 0;
                        FiftyPoint = 0;

                        if (filter.isGetThousandCoin)
                            ThousandHaCoin = 5;
                        else
                            FiftyHaCoin += 5;

                        if (filter.isGetBlackCard)
                            OneMonthBlackExp = 5;
                        else
                            FiftyHaCoin += 5;

                        if (filter.isGetPoint)
                            FiftyPoint = 74;
                        else
                            FiftyHaCoin += 74;
                        break;
                    }
                case "ReBuy":
                    {
                        FiftyHaCoin = 360;
                        HundredHaCoin = 313;
                        TwoHundredHaCoin = 205;
                        FiveHundredHaCoin = 11;
                        ThousandHaCoin = 0;
                        OneMonthBlackExp = 0;

                        if (filter.isGetThousandCoin)
                            ThousandHaCoin = 6;
                        else
                            FiftyHaCoin += 6;

                        if (filter.isGetPoint)
                            FiftyPoint = 85;
                        else
                            TwoHundredHaCoin += 85;

                        if (filter.isGetBlackCard)
                            OneMonthBlackExp = 10;
                        else
                            FiftyHaCoin += 10;

                        TwoCredit = 10;
                        break;
                    }

            }

            Dictionary<string, int> dicList = new Dictionary<string, int>();
            dicList.Add(EmReward.FiftyHaCoin.GetHashCode().ToString(), FiftyHaCoin);//50 Ha幣
            dicList.Add(EmReward.HundredHaCoin.GetHashCode().ToString(), HundredHaCoin);//Ha幣1倍送
            dicList.Add(EmReward.TwoHundredHaCoin.GetHashCode().ToString(), TwoHundredHaCoin);//Ha幣2倍送
            dicList.Add(EmReward.FiveHundredHaCoin.GetHashCode().ToString(), FiveHundredHaCoin);//Ha幣5倍送
            dicList.Add(EmReward.ThousandHaCoin.GetHashCode().ToString(), ThousandHaCoin);//Ha幣10倍送
            dicList.Add(EmReward.OneMonthBlackExp.GetHashCode().ToString(), OneMonthBlackExp);//體驗黑卡1個月
            dicList.Add(EmReward.FiftyPoint.GetHashCode().ToString(), FiftyPoint);//累積積分(累積金額)+50
            dicList.Add(EmReward.TwoCredit.GetHashCode().ToString(), TwoCredit);//100 HaCoin轉2塊購物金

            foreach (KeyValuePair<string, int> item in dicList)
            {
                for (int i = 1; i <= item.Value; i++)
                {
                    code.Add(count, item.Key);
                    count++;
                }
            }

            return code;
        }

        /// <summary>
        /// 回傳得獎後的信息
        /// </summary>
        /// <param name="ID">giftID</param>
        /// <returns></returns>
        public string GetRewardMsg(int giftID, string lg)
        {
            string response = "";
            string prize = "";
            string date = DateTime.Now.AddDays(3).ToString("yyyy-MM-dd");

            Dictionary<int, string> dicPrize = GetPrizeDic();
            if (dicPrize.ContainsKey(giftID))
                prize = dicPrize[giftID];

            if (lg.Equals("zh"))
                response = "恭喜你獲得" + prize;
            else if (lg.Equals("en"))
                response = "Congrats,You win " + prize;
            return response;
        }

        public Dictionary<int, int> GetAngleDic()
        {
            Dictionary<int, int> dic = new Dictionary<int, int>();
            dic.Add(EmReward.HundredHaCoin.GetHashCode(), 315);
            dic.Add(EmReward.TwoHundredHaCoin.GetHashCode(), 90);
            dic.Add(EmReward.FiveHundredHaCoin.GetHashCode(), 360);
            dic.Add(EmReward.ThousandHaCoin.GetHashCode(), 135);
            dic.Add(EmReward.FiftyHaCoin.GetHashCode(), 225);
            dic.Add(EmReward.OneMonthBlackExp.GetHashCode(), 45);
            dic.Add(EmReward.FiftyPoint.GetHashCode(), 180);
            dic.Add(EmReward.TwoCredit.GetHashCode(), 270);
            return dic;
        }
        public Dictionary<int, string> GetPrizeDic()
        {
            Dictionary<int, string> dic = new Dictionary<int, string>();
            dic.Add(EmReward.HundredHaCoin.GetHashCode(), "100 HaCoin");
            dic.Add(EmReward.TwoHundredHaCoin.GetHashCode(), "200 HaCoin");
            dic.Add(EmReward.FiveHundredHaCoin.GetHashCode(), "500 HaCoin");
            dic.Add(EmReward.ThousandHaCoin.GetHashCode(), "1000 HaCoin");
            dic.Add(EmReward.FiftyHaCoin.GetHashCode(), "50 HaCoin");
            dic.Add(EmReward.OneMonthBlackExp.GetHashCode(), "Black Card 1mth");
            dic.Add(EmReward.FiftyPoint.GetHashCode(), "50 Point");
            dic.Add(EmReward.TwoCredit.GetHashCode(), "RM 2 Credit");
            return dic;
        }

        public string GetMsgStr(EmMsgType type, string lg)
        {
            string msg = "";
            Dictionary<string, string> dicMsg = GetMsgDic(lg);
            if (dicMsg.ContainsKey(type.ToString()))
                msg = dicMsg[type.ToString()];
            return msg;
        }
        private Dictionary<string, string> GetMsgDic(string lg)
        {
            Dictionary<string, string> dicMsg = new Dictionary<string, string>();
            dicMsg.Add(EmMsgType.NoLoginTitle.ToString(), lg.Equals("en") ? "★ max {0} times per day,everyone has prize（100 ha coin required) ★" : "★ 一天最高抽 {0} 次，人人有獎 (每次100 Ha幣) ★");
            dicMsg.Add(EmMsgType.NoSpinTitle.ToString(), lg.Equals("en") ? "★ {0} draw/day ★" : "★ 您今天有<span> {0} 次</span>抽獎 ★");
            dicMsg.Add(EmMsgType.SpinTitle.ToString(), lg.Equals("en") ? "★ left {0} draw/day ★" : "★ 您今天還剩<span> {0} 次</span>抽獎 ★");
            dicMsg.Add(EmMsgType.UnSpingTitle.ToString(), lg.Equals("en") ? "★ {0} times per day,it is full now! ★" : "一天限玩 {0} 次，今日抽獎次數已滿！");
            dicMsg.Add(EmMsgType.SpinInfo.ToString(), lg.Equals("en") ? "Your total spending amount is <span style='color:#EE5984'>RM {0} </span>, can still be promoted to the card level with <span style='color:#EE5984'> RM {1} </span> difference!Try Ur LUCK!" : "您目前累積消費 <span style='color:#EE5984'>RM {0} </span>，還差 <span style='color:#EE5984'>RM {1} </span> 就可晉升卡級! 快來試試您的手氣!! ");
            dicMsg.Add(EmMsgType.FailInsertReward.ToString(), lg.Equals("en") ? "HaCoins transfer failed Please contact our customer service。" : "獎項歸戶失敗，請洽客服。");
            dicMsg.Add(EmMsgType.FailCostHaCoin.ToString(), lg.Equals("en") ? "HaCoins deduction failed. Please contact our customer service。" : "Ha幣扣款失敗，若多次無法執行請與客服聯繫。");
            dicMsg.Add(EmMsgType.NoEnoughHaCoin.ToString(), lg.Equals("en") ? "You don't have enough HaCoins. Keep buying！" : "你賬戶的Ha幣不足喲，每次消費都能累積成你的Ha幣。買越多，賺越多！");
            dicMsg.Add(EmMsgType.SystemError.ToString(), lg.Equals("en") ? "System error. Please contact our customer service。" : "系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。");
            dicMsg.Add(EmMsgType.PlayTimesLimit.ToString(), lg.Equals("en") ? "You are reaching the limit! Come back the next day。" : "看來你今天玩的次數已達到上限了，明天再回來吧。");
            return dicMsg;
        }
        public string DoRewardEvent(int userID, string gift)
        {
            string status = "Fail";
            SpinWheelRewardFac swReward = new SpinWheelRewardFac();
            switch (gift)
            {
                case "FiftyHaCoin":
                    {
                        status = swReward.AddHaCoin(userID, 50);
                        break;
                    }
                case "HundredHaCoin":
                    {
                        status = swReward.AddHaCoin(userID, 100);
                        break;
                    }
                case "TwoHundredHaCoin":
                    {
                        status = swReward.AddHaCoin(userID, 200);
                        break;
                    }
                case "FiveHundredHaCoin":
                    {
                        status = swReward.AddHaCoin(userID, 500);
                        break;
                    }
                case "ThousandHaCoin":
                    {
                        status = swReward.AddHaCoin(userID, 1000);
                        break;
                    }
                case "OneMonthBlackExp":
                    {
                        status = swReward.AddTrialBlackCard(userID, "B") ? "OK" : "Fail";
                        break;
                    }
                case "FiftyPoint":
                    {
                        status = swReward.AddExtraPoint(userID, 50) ? "OK" : "Fail";
                        break;
                    }
                case "TwoCredit":
                    {
                        //購物金Function，Note不能一樣
                        ADFactory adFac = new ADFactory();
                        status = adFac.AddMemberGold(userID, 2, userID + DateTime.Now.ToString("yyyyMMddHHmmss") + swReward.GetPrizeLogDt(userID, DateTime.Now).Rows.Count.ToString().PadLeft(2, '0') + ",SpinWheel:RM 2 Credit") ? "OK" : "FAIL";
                        break;
                    }
            }
            return status;
        }

    }


    public class SpinWheelRewardFac
    {
        /// <summary>
        /// 新增獎項
        /// </summary>
        /// <param name="userid"></param>
        /// <param name="giftID"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        public Int32 InsertPrizeLog(int userid, int giftID, int status)
        {
            string sql = "INSERT INTO PrizeLog (PLOG02,PLOG03,PLOG04,PLOG05,PLOG07) VALUES(@PLOG02,@PLOG03,@PLOG04,@PLOG05,@PLOG07)";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG02", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG03", SqlDbType.BigInt, userid));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG04", SqlDbType.Int, giftID));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG05", SqlDbType.Int, status));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG07", SqlDbType.VarChar, "180516HaCoinSpin"));
            return SqlDbmanager.executeScalar(cmd);
        }

        /// <summary>
        /// 更新獎項
        /// </summary>
        /// <param name="pid"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        public bool UpdatePrizeLog(int pid, int status)
        {
            string strSql = "UPDATE PrizeLog SET PLOG08=@PLOG08 WHERE PLOG01=@PLOG01";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG01", SqlDbType.Int, pid));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@PLOG08", SqlDbType.Int, status));
            return SqlDbmanager.executeNonQry(cmd);
        }

        /// <summary>
        /// 取得獎項資料
        /// </summary>
        /// <param name="userid"></param>
        /// <param name="date"></param>
        /// <param name="rewardId"></param>
        /// <returns></returns>
        public DataTable GetPrizeLogDt(int userid, DateTime date, int rewardId = 0)
        {
            SqlCommand cmdLog = new SqlCommand();
            string sqlLog = @"SELECT PLOG01,PLOG04 FROM PRIZELOG WHERE
PLOG07='180516HaCoinSpin' AND PLOG03=@PLOG03";

            sqlLog += " AND PLog02 BETWEEN  @ST AND @ET ";
            if (rewardId != 0)
            {
                sqlLog += "AND PLog04=@PLog04";
                cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@PLog04", SqlDbType.BigInt, rewardId));
            }

            cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@PLOG03", SqlDbType.BigInt, userid));
            cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@ST", SqlDbType.DateTime, date.ToString("yyyy-MM-dd 00:00:00")));
            cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@ET", SqlDbType.DateTime, date.ToString("yyyy-MM-dd 23:59:59")));
            cmdLog.CommandText = sqlLog;
            return SqlDbmanager.queryBySql(cmdLog);
        }


        /// <summary>
        /// 取得展示出來的獎項DataSet
        /// </summary>
        /// <param name="userid"></param>
        /// <param name="lg"></param>
        /// <returns></returns>
        public DataSet GetRenderPrizeDs(int userid, string lg)
        {
            string sqlLog = @"SELECT PLOG01 FROM PRIZELOG
WHERE PLOG03=@ORM23 AND PLOG07='180516HaCoinSpin'";        //是否轉過

            string sqlOrm = @"SELECT TOP 3 ORM01,ORM03,ORM08 FROM ORDERM WITH(NOLOCK)
WHERE ORM23=@ORM23 AND  YEAR(ORM03)=YEAR(GETDATE()) AND ORM19>0 AND ORM24>0
ORDER BY ORM03 DESC";        //訂單明細          //要用year(getdate())，如果直接設死年份的話明年可能會忘記調整

            //            string sqlHaCoin = @"SELECT ISNULL(PLUS,0)-ISNULL(MINUS,0) AS 'TOTAL' FROM(
            //SELECT SUM(CN03) AS 'PLUS',(SELECT SUM(CN03)  FROM  COIN 
            //WHERE CN02=@ORM23 AND (CN04=0 OR CN04=-1)  AND CN10<=GETDATE() ) AS 'MINUS' FROM  COIN 
            //WHERE CN02=@ORM23 AND CN04=1  AND CN10>GETDATE() ) AS DT";     //是否有足夠的Ha幣

            string sqlRepeater = @"SELECT TOP 10 PLOG01,PLOG02,
PLOG04=CASE PLOG04 ";
            if (lg.Equals("zh"))
            {
                sqlRepeater +=
        @"WHEN 14 THEN '100 Ha幣。' 
WHEN 15 THEN '200 Ha幣。' 
WHEN 16 THEN '500 Ha幣。'  
WHEN 17 THEN '1000 Ha幣。' 
WHEN 18 THEN '50 Ha幣。' 
WHEN 19 THEN 'Black Card 1mth。'
WHEN 20 THEN '50 Point。'
WHEN 21 THEN 'RM 2 Credit'
END,";
            }
            else
            {
                sqlRepeater +=
    @"WHEN 14 THEN '100 HaCoin。' 
WHEN 15 THEN '200 HaCoin。' 
WHEN 16 THEN '500 HaCoin。'  
WHEN 17 THEN '1000 HaCoin。' 
WHEN 18 THEN '50 HaCoin。' 
WHEN 19 THEN 'Black Card 1mth。'
WHEN 20 THEN '50 Point。'
WHEN 21 THEN 'RM 2 Credit'
END,";
            }
            sqlRepeater += @"
'EXPIRED' =CASE PLOG04
WHEN 11 THEN	DATEADD(DAY,3,plog02)		
WHEN 12 THEN  DATEADD(DAY,3,plog02)	
WHEN 13 THEN  DATEADD(DAY,3,plog02)	
WHEN 14 THEN CONVERT(VARCHAR, DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02)),DATEADD(month,+4,PLOG02)) ,110)
WHEN 15 THEN CONVERT(VARCHAR, DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02)),DATEADD(month,+4,PLOG02)) ,110)
WHEN 16 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02)),DATEADD(month,+4,PLOG02)) ,110)
WHEN 17 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02)),DATEADD(month,+4,PLOG02)) ,110)
WHEN 18 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+4,PLOG02)),DATEADD(month,+4,PLOG02)) ,110)
WHEN 19 THEN  CONVERT(VARCHAR,DATEADD(DD,-DAY(DATEADD(month,+2,PLOG02)),DATEADD(month,+2,PLOG02)) ,110) 
END
 FROM PRIZELOG
WHERE Plog03=@A01 AND PLOG07='180516HaCoinSpin' ORDER BY PLOG02 DESC";          //User玩過的Log

            Dictionary<string, SqlCommand> dcmd = new Dictionary<string, SqlCommand>();
            SqlCommand cmdOrm = new SqlCommand();
            SqlCommand cmdLog = new SqlCommand();
            SqlCommand cmdHaCoin = new SqlCommand();
            SqlCommand cmdRepeater = new SqlCommand();
            cmdOrm.CommandText = sqlOrm;
            cmdLog.CommandText = sqlLog;
            //cmdHaCoin.CommandText = sqlHaCoin;
            cmdRepeater.CommandText = sqlRepeater;
            cmdOrm.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
            cmdLog.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
            //cmdHaCoin.Parameters.Add(SafeSQL.CreateInputParam("@ORM23", SqlDbType.BigInt, userid));
            cmdRepeater.Parameters.Add(SafeSQL.CreateInputParam("@A01", SqlDbType.Int, userid));
            dcmd.Add("Log", cmdLog);
            //dcmd.Add("HaCoin", cmdHaCoin);
            dcmd.Add("Orm", cmdOrm);
            dcmd.Add("Repeater", cmdRepeater);
            DataSet ds = SqlDbmanager.queryBySql(dcmd);
            return ds;
        }

        /// <summary>
        /// 新增黑卡體驗
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="card"></param>
        /// <returns></returns>
        public bool AddTrialBlackCard(int userID, string card)
        {
            MemberTrialCard tCard = new MemberTrialCard();
            tCard.SysId = Guid.NewGuid().ToString();
            tCard.MemberId = userID;
            tCard.Card = card;
            tCard.GetTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            tCard.STime = DateTime.Now.AddMonths(1).ToString("yyyy-MM-01 00:00:00");
            tCard.DTime = DateTime.Now.AddMonths(2).ToString("yyyy-MM-01 00:00:00");
            tCard.Status = 1;
            tCard.Source = "Roulette";
            MemberTrialCardFac tCardFac = new MemberTrialCardFac();
            return tCardFac.insertMemberTrialCard(tCard);

        }
        /// <summary>
        /// 新增額外積分
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="point"></param>
        /// <returns></returns>
        public bool AddExtraPoint(int userID, int point)
        {
            MemberExtraPoint ePoint = new MemberExtraPoint();
            ePoint.SysId = Guid.NewGuid().ToString();
            ePoint.MemberId = userID;
            ePoint.Point = point;
            ePoint.GetTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            ePoint.Status = 1;
            ePoint.Source = "Roulette";
            MemberExtraPointFac tPointFac = new MemberExtraPointFac();
            return tPointFac.insertMemberExtraPoint(ePoint);
        }


        public string AddHaCoin(int userID, int rebate)
        {
            CoinFac coinFac = new CoinFac();
            string i = coinFac.AddCoin(userID, rebate, "CoinGame");
            return i.ToUpper();
        }
    }

    /// <summary>
    /// MTrialCard 的摘要描述
    /// </summary>
    public class MTrialCard
    {
        private int _userId = 0;
        private int _year = DateTime.Now.Year;
        private int _month = DateTime.Now.Month;
        private int _day = DateTime.Now.Day;
        public int Year { get { return _year; } set { _year = value; } }
        public int Month { get { return _month; } set { _month = value; } }
        public int Day { get { return _day; } set { _day = value; } }

        private string _strSql = "SELECT DISTINCT Card,STime,DTime FROM MemberTrialCard ";

        public MTrialCard(int userId)
        {
            _userId = userId;
            //
            // TODO: 在這裡新增建構函式邏輯
            //
        }

        /// <summary>
        /// 確認黑卡體驗狀態
        /// </summary>
        /// <returns>狀態</returns>
        public bool CheckTrialBlack()
        {
            if (_userId.Equals(0))
                return false;
            string strSql = _strSql + "WHERE  Status=1 AND MemberId=@MID AND @DATE BETWEEN STime AND DTime  ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("MID", SqlDbType.Int, _userId));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("DATE", SqlDbType.DateTime, new DateTime(_year, _month, _day)));
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            if (dt.Rows.Count > 0)
                return true;
            else
                return false;

        }


        public int GetTrialBlackRemainingDays()
        {
            int days = 0;
            if (_userId.Equals(0) || !CheckTrialBlack())
                return days;

            DateTime stime = new DateTime(_year, _month, _day, 0, 0, 0);
            DateTime etime = stime;

            string strSql = _strSql + "WHERE Status=1 AND MemberId=@MID AND DTime>=@DATE ORDER BY Stime ASC ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("MID", SqlDbType.Int, _userId));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("DATE", SqlDbType.DateTime, etime));
            DataTable dt = SqlDbmanager.queryBySql(cmd);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (etime.ToString("yyyy-MM-dd").Equals(stime.ToString("yyyy-MM-dd")) || etime.ToString("yyyy-MM-dd").Equals(DateTime.Parse(dr["STime"].ToString()).ToString("yyyy-MM-dd")))
                    {
                        etime = DateTime.Parse(dr["DTime"].ToString());
                    }
                    else
                    {
                        break;
                    }
                }
            }
            TimeSpan ts = etime - stime;
            days = ts.Days;
            return days;
        }
    }



    public class MemberTrialCard
    {
        private int? _SeqNo = null;
        public int? SeqNo
        {
            get { return _SeqNo; }
            set { _SeqNo = value; }
        }

        private String _SysId = null;
        public String SysId
        {
            get { return _SysId; }
            set { _SysId = value; }
        }

        private int? _MemberId = null;
        public int? MemberId
        {
            get { return _MemberId; }
            set { _MemberId = value; }
        }

        private String _Card = null;
        public String Card
        {
            get { return _Card; }
            set { _Card = value; }
        }

        private String _GetTime = null;
        public String GetTime
        {
            get { return _GetTime; }
            set { _GetTime = value; }
        }

        private String _STime = null;
        public String STime
        {
            get { return _STime; }
            set { _STime = value; }
        }

        private String _DTime = null;
        public String DTime
        {
            get { return _DTime; }
            set { _DTime = value; }
        }

        private int? _Status = null;
        public int? Status
        {
            get { return _Status; }
            set { _Status = value; }
        }

        private String _Source = null;
        public String Source
        {
            get { return _Source; }
            set { _Source = value; }
        }

    }

    public class MemberTrialCardFac
    {
        public bool insertMemberTrialCard(MemberTrialCard obj)
        {
            if (SqlDbmanager.executeNonQry(SqlExtension.getInsertSqlCmd("MemberTrialCard", obj)))
                return true;
            return false;
        }
        public bool updateMemberTrialCard(MemberTrialCard obj)
        {
            if (SqlDbmanager.executeNonQry(SqlExtension.getUpdateSqlCmd("MemberTrialCard", obj, new List<string> { "SysId" }, new List<string> { "SysId=@SysId" })))
                return true;
            return false;
        }
        public bool deleteMemberTrialCard(MemberTrialCard obj)
        {
            if (SqlDbmanager.executeNonQry(SqlExtension.getDeleteSqlCmd("MemberTrialCard", obj, new List<string> { "SysId=@SysId" })))
                return true;
            return false;
        }
        public DataTable getMemberTrialCard()
        {
            string strSql = "SELECT * FROM MemberTrialCard";
            DataTable dt = SqlDbmanager.queryBySql(SqlExtension.getSelectSqlCmdByParams(strSql));
            return dt;
        }
        public List<MemberTrialCard> getMemberTrialCard(DataTable dt)
        {
            List<MemberTrialCard> rval = SqlExtension.ToList<MemberTrialCard>(dt) as List<MemberTrialCard>;
            return rval;
        }
        //CREATE PROCEDURE CUMemberTrialCard
        //(
        //   @SeqNo Int,
        //   @SysId UniqueIdentifier,
        //   @MemberId Int,
        //   @Card VarChar(5),
        //   @GetTime DateTime,
        //   @STime DateTime,
        //   @DTime DateTime,
        //   @Status Int,
        //   @Source VarChar(50)
        //)
        //AS
        //BEGIN
        //DECLARE @ID UniqueIdentifier
        //SELECT @ID=SysId FROM MemberTrialCard WHERE SysId=@SysId
        //if (@ID is not null)
        //   UPDATE MemberTrialCard SET 
        //   MemberId=@MemberId,
        //   Card=@Card,
        //   GetTime=@GetTime,
        //   STime=@STime,
        //   DTime=@DTime,
        //   Status=@Status,
        //   Source=@Source
        //   WHERE SysId=@ID
        //   else
        //   INSERT INTO MemberTrialCard(
        //   SysId,
        //   MemberId,
        //   Card,
        //   GetTime,
        //   STime,
        //   DTime,
        //   Status,
        //   Source
        //   ) VALUES (
        //   @SysId,
        //   @MemberId,
        //   @Card,
        //   @GetTime,
        //   @STime,
        //   @DTime,
        //   @Status,
        //   @Source
        //)
        //   return @ID
        //END

        //CREATE TABLE MemberTrialCard(
        //SeqNo Int IDENTITY(1,1),
        //SysId UniqueIdentifier,
        //MemberId Int,
        //Card VarChar(5),
        //GetTime DateTime,
        //STime DateTime,
        //DTime DateTime,
        //Status Int,
        //Source VarChar(50),
        // PRIMARY KEY(SysId)
        //)
    }

    public class MemberExtraPoint
    {
        private int? _SeqNo = null;
        public int? SeqNo
        {
            get { return _SeqNo; }
            set { _SeqNo = value; }
        }

        private String _SysId = null;
        public String SysId
        {
            get { return _SysId; }
            set { _SysId = value; }
        }

        private int? _MemberId = null;
        public int? MemberId
        {
            get { return _MemberId; }
            set { _MemberId = value; }
        }

        private int? _Point = null;
        public int? Point
        {
            get { return _Point; }
            set { _Point = value; }
        }

        private String _GetTime = null;
        public String GetTime
        {
            get { return _GetTime; }
            set { _GetTime = value; }
        }

        private int? _Status = null;
        public int? Status
        {
            get { return _Status; }
            set { _Status = value; }
        }

        private String _Source = null;
        public String Source
        {
            get { return _Source; }
            set { _Source = value; }
        }

    }


    public class MemberExtraPointFac
    {
        public bool insertMemberExtraPoint(MemberExtraPoint obj)
        {
            if (SqlDbmanager.executeNonQry(SqlExtension.getInsertSqlCmd("MemberExtraPoint", obj)))
                return true;
            return false;
        }
        public bool updateMemberExtraPoint(MemberExtraPoint obj)
        {
            if (SqlDbmanager.executeNonQry(SqlExtension.getUpdateSqlCmd("MemberExtraPoint", obj, new List<string> { "SysId" }, new List<string> { "SysId=@SysId" })))
                return true;
            return false;
        }
        public bool deleteMemberExtraPoint(MemberExtraPoint obj)
        {
            if (SqlDbmanager.executeNonQry(SqlExtension.getDeleteSqlCmd("MemberExtraPoint", obj, new List<string> { "SysId=@SysId" })))
                return true;
            return false;
        }
        public DataTable getMemberExtraPoint()
        {
            string strSql = "SELECT * FROM MemberExtraPoint";
            DataTable dt = SqlDbmanager.queryBySql(SqlExtension.getSelectSqlCmdByParams(strSql));
            return dt;
        }
        public List<MemberExtraPoint> getMemberExtraPoint(DataTable dt)
        {
            List<MemberExtraPoint> rval = SqlExtension.ToList<MemberExtraPoint>(dt) as List<MemberExtraPoint>;
            return rval;
        }
        //CREATE PROCEDURE CUMemberExtraPoint
        //(
        //   @SeqNo Int,
        //   @SysId UniqueIdentifier,
        //   @MemberId Int,
        //   @Point Int,
        //   @GetTime DateTime,
        //   @Status Int,
        //   @Source VarChar(50)
        //)
        //AS
        //BEGIN
        //DECLARE @ID UniqueIdentifier
        //SELECT @ID=SysId FROM MemberExtraPoint WHERE SysId=@SysId
        //if (@ID is not null)
        //   UPDATE MemberExtraPoint SET 
        //   MemberId=@MemberId,
        //   Point=@Point,
        //   GetTime=@GetTime,
        //   Status=@Status,
        //   Source=@Source
        //   WHERE SysId=@ID
        //   else
        //   INSERT INTO MemberExtraPoint(
        //   SysId,
        //   MemberId,
        //   Point,
        //   GetTime,
        //   Status,
        //   Source
        //   ) VALUES (
        //   @SysId,
        //   @MemberId,
        //   @Point,
        //   @GetTime,
        //   @Status,
        //   @Source
        //)
        //   return @ID
        //END

        //CREATE TABLE MemberExtraPoint(
        //SeqNo Int IDENTITY(1,1),
        //SysId UniqueIdentifier,
        //MemberId Int,
        //Point Int,
        //GetTime DateTime,
        //Status Int,
        //Source VarChar(50),
        // PRIMARY KEY(SysId)
        //)
    }
}