<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="SpinWheel.aspx.cs" Inherits="mobile_static_SpinWheel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="HFlg" runat="server" Value="" />

    <div class="am-g" style="overflow: hidden;">

        <!--下方轉盤內容 Stert-->
        <section class="mb-spinwheel-content">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/bg_m.png" alt="主banner" />

            <section class="led-panel">
                <div class="led-panel-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/panel_m.png" alt="跑馬燈面板" />
                </div>
                <!--跑馬燈內容 Stert-->
                <div class="led-marqee">
                    <div class="marquee">
                        <span>
                            <asp:Literal ID="litMsg" runat="server"></asp:Literal></span>
                    </div>
                </div>

                <!--跑馬燈內容 End-->
            </section>
            <!--轉盤 Stert-->
            <div class="mb-spinwheel am-center">

                <div class="am-u-sm-10  am-u-md-9 am-u-sm-centered spinwheel-circle">
                    <div class="am-center" style="width: 100%; position: relative;">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2019hwspin/spin_wheel_circle.png" alt="pointer">
                    </div>
                    <div class="pointer am-center">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2019hwspin/pointer.png" alt="pointer">
                    </div>
                    <div class="small-bulbs am-center">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2019hwspin/bulb.svg" alt="bulbs" />
                    </div>
                    <div class="start-btn am-center">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2019hwspin/spin_now_btn.svg" alt="pointer" onclick="GetPrizeEvent()">
                    </div>
                    <div class="spinwheel-rotate am-center">
                        <img id="rotate" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2019hwspin/spinwheel_rotate.png" alt="turntable">
                    </div>
                </div>
                <div class="mb-spinwheel-seat am-center">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2019hwspin/spin_wheel_seat.png" alt="pointer">
                </div>

            </div>



            <div class="gift-box am-g am-g-collapse">
                <div class="am-u-sm-3">
                    <div class="am-padding-left gift-img">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/gift.png" alt="pointer">
                    </div>
                </div>
                <div class="am-u-sm-9 gift-box-panel">

                    <div class="gift-text am-margin-left">
                        <!-- 禮物預設文字-->
                        <p>
                            <asp:Literal ID="litInfo" runat="server"></asp:Literal>
                        </p>
                        <!-- 玩過後顯示文字 End-->
                    </div>
                </div>
            </div>

        </section>
        <!--轉盤 End-->
        <!--下方轉盤內容 End-->

    </div>


    <!--禮物內容區 Start-->
    <section class="page-main" style="margin: 0 auto; text-align: center">
        <div class="d11-table-wrapper" style="width: 100%; margin: 0 auto; float: none; display: block;">
            <asp:Repeater ID="rptPrizeRecord" runat="server">
                <HeaderTemplate>
                    <table class="d11-table rewards-table">
                        <tr>
                            <th></th>
                            <th>抽獎時間</th>
                            <th>活動贈品</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="d11-number">
                            <img alt="Hawooo推薦商品 再搶好康" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;"></td>
                        <td><%# Eval("Plog02", "{0:dd/MM/yyyy}")%></td>
                        <td style="color: #EE5984"><%# Eval("PLOG04").ToString() +(Eval("EXPIRED").ToString().Equals("")?"":"<br/> "+(HFlg.Value.Equals("zh")?"到期日":"Deadline")+"："+Convert.ToDateTime(Eval("EXPIRED")).ToString("dd-MM-yy")+" 23:59")%></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </section>
    <!--禮物內容區 End-->
    <!--公告Start-->
    <asp:Panel ID="Panel_zh" runat="server" Visible="false">
        <section class="bulletin-board mb-bulletin-board am-g">
            <span class="bulletin-title">什麼是HA幣？HA幣是什麼？</span>
            <p class="am-margin-top-xs">
                HA幣是HAWOOO專屬的貨幣喲，
                <span class="highlight">100HA幣可以直接抵扣RM 1元</span>，
                沒有消費門檻限制喔，可以累積多次以後一起使用，不過要記得在領取
                <span class="highlight">三個月內使用完畢</span>，不然好可惜唷。
            </p>
            <span class="bulletin-title">好想要～我該怎麼得到呢？</span>
            <p class="am-margin-top-xs">
                為了回饋HAWOOO的朋友們，讓您
                <span class="highlight">花多少馬幣就賺多少HA幣</span>，
                例如您這筆訂單買了RM300，您就會獲得300HA幣，以此類推。
            </p>
            <span class="bulletin-title">偷偷跟我說HA幣使用祕技吧！
            </span>
            <p class="am-margin-top-xs">
                還可以拿來測試你的好運氣，每天上線登入後，您都可以來
                <span class="highlight">[HA幣天天轉轉樂]</span>直接玩遊戲，人人都有獎，
                <span class="highlight">每次只要100HA幣</span>，現在就開始吧！
            </p>
            <p>
                1• 每次玩都只需要100HA幣，一天限玩3次，但是天天都歡迎您回來看看我們喔。<br />
                2• 獎項系統隨機抽出，人人都有機會中獎。<br />
                3• 獎項說明<br />
                - Black Card 1mth: 黑卡體驗1個月，於得獎下個月1號開始享有5倍ha幣回饋 與 1v1專屬客服服務，生日禮金不含在黑卡體驗福利內喔。<br />
                - Get RM 2 credit: 獲得購物金RM 2，系統直接轉入，可到「我的購物金」確認。<br />
                - Get 50 point: 累計消費額直接提升RM 50，讓你距離黑卡更進一步，可到「我的會員卡」查看。
                <br />
                4• 天有不測風雲，如果有天災意外或是大停電，HAWOOO.COM 保有活動最後解釋權，謝謝大家體諒我們喔。
            </p>
        </section>
    </asp:Panel>
    <!--公告End-->

    <!--英文版公告Start-->
    <asp:Panel ID="Panel_en" runat="server" Visible="false">

        <section class="bulletin-board mb-bulletin-board am-g">
            <span class="bulletin-title">What is Ha Coin？</span>
            <p class="am-margin-top-xs">
                Ha Coin is the exclusive currency of HAWOOO.  
                <span class="highlight">100 Ha Coins is equal to RM 1</span>
                and can be used to pay for orders directly. 
                There is no present consumption limit; you can spend the Ha Coins you earned separately or all at once for order fee deduction. 
                <span class="highlight">But remember to use it within three months after collection.</span>
                It will be a pity if the Ha Coins are expired.
            </p>
            <span class="bulletin-title">I want it! How do I get it？</span>
            <p class="am-margin-top-xs">
                As a HAWOOO member, <span class="highlight">you earn Ha Coins for every RM you spend.</span>
                For example, if you spend RM 300 this month, you will receive 300 Ha Coins, and so on.
            </p>
            <span class="bulletin-title">Ha Coin Pro Tips！
            </span>
            <p class="am-margin-top-xs">
                You can also test your luck! After logging in online every day, you get to play the 
                <span class="highlight">[Ha Coins Lucky Spin Wheel]</span>Spin the Wheel for a guaranteed prize, 
                <span class="highlight">each spin costs only 100 Ha Coins, and you even have the chance to win RM 100</span> ,Ready? Let's Go!
            </p>
            <p>
                1. Each spin costs only 100 Ha Coins, and each member gets 3 spins per day, but you are welcome to visit us every day!<br />
                2. The spinning system is random, so everyone has a chance to hit the jackpot.<br />
                3. Award description<br />
                - Black Card 1mth: Enjoy 5 times ha coin rebate and 1v1 exclusive customer service on the 1st of the next month, birthday gift is not included.<br />
                - Get RM 2 credit: Get RM 2 shopping credit, system will transfer directly, can check it in "My Credits".<br />
                - Get 50 point: Total spending amount directly increases by RM 50, can check it in "My Card"<br />
                4. HAWOOO.COM reserves the right of final interpretation in the event of natural disasters or main power outages. Thank you for understanding!<br />
            </p>

        </section>
    </asp:Panel>
    <!--英文版公告End-->


    <script src="assets/js/spin.js"></script>
    <script src="assets/js/blockUI.js"></script>
    <script src="assets/js/awardRotate.js"></script>
    <script src="assets/js/marquee.js"></script>


    <div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                HaWooo Message
            </div>
            <div class="am-modal-bd">
                <span id="confirm-msg"></span>
            </div>
            <div class="am-modal-footer">
                <span class="am-modal-btn" data-am-modal-cancel style="width: 50%">Cancel</span>
                <span class="am-modal-btn" data-am-modal-confirm style="width: 50%">OK</span>
            </div>
        </div>
    </div>
    <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                HaWooo Message
            </div>
            <div class="am-modal-bd">
                <span id="alert-msg"></span>
            </div>
            <div class="am-modal-footer">
                <span class="am-modal-btn" data-am-modal-confirm>Confirm</span>
            </div>
        </div>
    </div>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js" type="text/javascript"></script>
    <script>
        function blockUI() {
            $.blockUI({
                overlayCSS: { opacity: 0.0 },
            });

            setTimeout($.unblockUI, 7000);
        };


        function GetPrizeEvent() {
            var bool = '<%=Session["Login"] %>';
            if (bool == 'true') {
                toserver();
            }
            else {
                window.location = "login.aspx?rurl=SpinWheel.aspx";
            }
        };


        function toserver() {
            blockUI();
            $('#rotate').stopRotate();
            var msg = "";
            var toAngles = 360;
            var lang ='<%= HFlg.Value  %>';
            $.ajax({
                type: 'post',
                url: 'SpinWheel.aspx/CheckPrize',
                async: false,
                data: JSON.stringify({ lg: lang }),
                datatype: "json",
                contentType: "application/json; charset=utf-8",
                success: function (response) {
                    msg = response.d.msg;
                    toAngles = response.d.angles;
                    console.log(response.d.angles);
                },
                error:
                    function () {
                        var msg = '';
                        if (lang == "zh")
                            msg = "Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫";
                        else if (lang == "en")
                            msg = "Oh No,System error. Please contact our customer service.";
                        if (confirm(msg) == true) {
                            window.location.href = "https://www.hawooo.com/mobile/SpinWheel.aspx";
                        }
                        else {
                            window.location.href = "https://www.hawooo.com/mobile/SpinWheel.aspx";
                        };
                    }
            });

            debugger;
            $('#rotate').rotate({
                angle: 0,
                animateTo: toAngles + 1800,
                duration: 8000,
                callback: function () {
                    SwalMsg(msg);
                }
            });

        };

        $('.marquee').marquee({
            duplicated: true,
            duration: 6000,
        });


        function SwalMsg(msg) {
            swal({
                title: "Wow!",
                text: msg,
                type: "info",
                allowOutsideClick: false,
                allowEscapeKey: false
            }).then(function () {
                window.location.href = "SpinWheel.aspx";
            });
        }
    </script>

</asp:Content>

