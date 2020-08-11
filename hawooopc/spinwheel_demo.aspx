<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="spinwheel_demo.aspx.cs" Inherits="user_static_spinwheel_demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/spinwheel.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="HFp" runat="server" />
    <asp:HiddenField ID="HFtype" runat="server" />
    <script>

        var _url = "spinwheel_demo.aspx";

        function blockUI() {
            $.blockUI({
                overlayCSS: { opacity: 0.0 },
            });
            setTimeout($.unblockUI, 7000);
        };
        function GetPrizeEvent() {
            var bool = '<%=Session["Login"] %>';
            if (bool === 'true') {
                //if (bRotate) return;
                var item = '<%=HFp.Value%>';
                var userType = '<%=HFtype.Value%>';
                if (item === "9") {
                    alert("您的Ha幣不足，趕快去下單賺取Ha幣吧！");
                } else {
                    rotateFn(item, userType);
                }
            }
            else {
                doLogin(_url);
            }
        }

        function rotateFn(awards, txt) {
            awards = parseInt(awards);
            var gid = parseInt(<%= Session["GID"] != null ? Session["GID"] : 0 %>);
            if (gid === awards) {
                blockUI();
                var angles;
                switch (awards) {

                    case 17:
                        angles = 45;
                        break;

                    case 12:
                        angles = 90;
                        break;

                    case 15:
                        angles = 135;
                        break;

                    case 13:
                        angles = 180;
                        break;

                    case 14:
                        angles = 225;
                        break;

                    case 16:
                        angles = 270;
                        break;

                    case 11:
                        angles = 315;
                        break;

                    case 18:
                        angles = 360;
                        break;
                }
                var bRotate = false;
                bRotate = !bRotate;
                $('#rotate').stopRotate();
                var msg = toserver(angles);
                $('#rotate').rotate({
                    angle: 0,
                    animateTo: angles + 1800,
                    duration: 8000,
                    callback: function () {
                        bRotate = !bRotate;
                        alert2url(msg, _url);
                    }
                });
            } else {
                alert2url("Oh No,轉盤有問題，請您重新轉一次。", _url);
            }

        };

        function toserver(angles) {
            var msg = "";
            $.ajax({
                type: 'post',
                url: _url + '/CheckPrize',
                data: '{ angles : ' + angles + ' }',
                datatype: "json",
                async: false,
                contentType: "application/json; charset=utf-8",
                success: function (response) {
                    msg = response.d;
                },
                error:
                    function () {
                        msg = "Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫";
                    }
            });
            return msg;
        }

    </script>
    <main class="am-container ">
        <!--下方轉盤內容 Stert-->
        <div class="am-g spinwheel-wrapper" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/spinwheel_bg.png' ) no-repeat center center; background-size: 100% 100%;">

            <!--跑馬燈 Stert-->
            <section class="led-panel">
                <div class="led-panel-img">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/panel.png" alt="跑馬燈面板" style="width: 100%;" />
                </div>

                <div class="led-marqee">
                    <ul>
                        <!-- <li>★ 您今天有<span>3次</span>抽獎★</li>
                        <li>★ 您今天還剩<span>2次</span>抽獎★</li>
                        <li>★ 您今天還剩<span>1次</span>抽獎★</li>-->
                        <li>一天限玩3次，今日抽獎次數已滿！</li>

                        <!--英文版內容-->
                        <!--<li>★ 3 draw/day ★</li>
                        <li>★ left 2 draw/day ★</li>
                        <li>★ left 1 draw/day ★</li>
                        <li>3 times per day,it is full now!</li>-->
                    </ul>
                </div>
            </section>
            <!--跑馬燈 End-->

            <!-- 飄彩帶 Stert-->
            <div id='content'>
                <div id="snowflake"></div>
            </div>
            <!-- 飄彩帶 End-->

            <!--轉盤 Stert-->
            <section class="spinwheel">
                <div class="spinwheel-contain">
                    <div class="spinwheel-circle" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/spin_wheel_circle.png' ) no-repeat center center; background-size: 100% 100%;">
                        <div class="pointer">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/pointer.png" alt="pointer">
                        </div>
                        <div class="small-bulbs">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/bulb.svg" alt="bulbs" />
                        </div>
                        <div class="start-btn">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/spin_now_btn.svg" alt="start-btn" onclick="GetPrizeEvent()">
                        </div>
                        <div class="spinwheel-rotate">
                            <img id="rotate" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/spinwheel_rotate.png" alt="rotate">
                        </div>
                    </div>

                    <div class="spinwheel-seat">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/spin_wheel_seat.png" alt="pointer">
                    </div>
                </div>
            </section>

            <div class="gift-box">
                <div class="gift-panel" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/text_panel.png' ) no-repeat center center; background-size: 100% 100%;">

                    <div class="gift animated infinite tada delay-2s slow">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/gift.png" alt="pointer">
                    </div>
                    <div class="gift-text">

                        <!-- 禮物預設文字-->
                        <p>
                            一天最高抽3次，人人有獎 (每次100 Ha幣)
                        </p>
                        <!--  <p>
                        Max 3 times per day,everyone has prize (100 hacoin required)
                    </p>-->
                        <!-- 禮物預設文字 End-->

                        <!-- 玩過後顯示文字-->
                        <!-- <p>
 &emsp;您目前累積消費 <span>950RM</span>，還差 <span>50RM </span>就可晉升卡級! 快來試試您的手氣!!
 &emsp;Your total spending amount is<span> RM 950</span>, can still be promoted to the card level with<span> RM 50  </span>difference!Try Ur LUCK!
                    </p>-->
                        <!-- 玩過後顯示文字 End-->
                    </div>
                </div>
            </div>

        </div>
        <!--轉盤 End-->
        <section class="am-g">
            <div class="rewards-table-wrapper rewards-table-wrapper">
                <asp:Repeater ID="rptPrizeRecord" runat="server">
                    <HeaderTemplate>
                        <table class="rewards-table">
                            <tr>
                                <th></th>
                                <th>項目</th>
                                <th>抽獎時間</th>
                                <th>活動贈品</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td class="rewards-img">
                                <img alt="gift" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png">
                            </td>
                            <td><%# Container.ItemIndex + 1%></td>
                            <td><%# Eval("Plog02", "{0:dd/MM/yyyy}")%></td>
                            <td class="rewards-item"><%# Eval("PLOG04").ToString() +Convert.ToDateTime(Eval("EXPIRED")).ToString("dd-MM-yy")+" 23:59"%></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </section>
        <!--下方轉盤內容 End-->
        <section style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">
            <div class="am-modal am-modal-alert" tabindex="-1" id="popmsg">
                <div class="am-modal-dialog">
                    <div style="margin: 0; position: absolute; right: 0">
                        <a href="javascript:void(0);" onclick="closeModal('popmsg');">
                            <img src="../images/icon/close.png" style="background-color: #fff; width: 50px" />
                        </a>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
            <div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
                <div class="am-modal-dialog">
                    <div class="am-modal-hd">
                        HaWooo Message
                    </div>
                    <div class="am-modal-bd">
                        <span id="confirm-msg"></span>
                    </div>
                    <div class="am-modal-footer">
                        <span class="am-modal-btn" data-am-modal-cancel>Cancel</span> <span class="am-modal-btn"
                            data-am-modal-confirm>OK</span>
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
        </section>


        <!--公告Start-->
        <asp:Panel ID="Panel_zh" runat="server" Visible="false">

            <section class="bulletin-board am-g">
                <span class="bulletin-title">什麼是HA幣？HA幣是什麼？</span>
                <p>
                    HA幣是HAWOOO專屬的貨幣喲，
                <span class="highlight">100HA幣可以直接抵扣RM 1元</span>，
                沒有消費門檻限制喔，可以累積多次以後一起使用，不過要記得在領取
                <span class="highlight">三個月內使用完畢</span>，不然好可惜唷。
                </p>
                <br />
                <span class="bulletin-title">好想要～我該怎麼得到呢？</span>
                <p>
                    為了回饋HAWOOO的朋友們，讓您
                <span class="highlight">花多少馬幣就賺多少HA幣</span>，
                例如您這筆訂單買了RM300，您就會獲得300HA幣，以此類推。
                </p>
                <br />
                <span class="bulletin-title">偷偷跟我說HA幣使用祕技吧！
                </span>
                <p>
                    噓～小秘密喲！HA幣還能用來
                <span class="highlight">抵一趟國際運費</span>
                    喔，超划算！還可以拿來測試你的好運氣，每天上線登入後，您都可以來
                <span class="highlight">[HA幣天天轉轉樂]</span>直接玩遊戲，人人都有獎，
                <span class="highlight">每次只要100HA幣</span>，現在就開始吧！
                </p>
                <p>
                    1• 每次玩都只需要100HA幣，一天限玩3次，但是天天都歡迎您回來看看我們喔。
                </p>
                <p>
                    2• 獎項系統隨機抽出，人人都有機會中獎。
                </p>
                <p>
                    3• 天有不測風雲，如果有天災意外或是大停電，HAWOOO.COM 保有活動最後解釋權，謝謝大家體諒我們喔。
                </p>
            </section>
        </asp:Panel>
        <!--公告End-->

        <!--英文版公告Start-->
        <asp:Panel ID="Panel_en" runat="server" Visible="false">

            <section class="bulletin-board am-g">
                <span class="bulletin-title">What is Ha Coin？</span>
                <p>
                    Ha Coin is the exclusive currency of HAWOOO.  
                <span class="highlight">100 Ha Coins is equal to RM 1</span>
                    and can be used to pay for orders directly. 
                There is no present consumption limit; you can spend the Ha Coins you earned separately or all at once for order fee deduction. 
                <span class="highlight">But remember to use it within three months after collection.</span>
                    It will be a pity if the Ha Coins are expired.
                </p>
                <br />
                <span class="bulletin-title">I want it! How do I get it？</span>
                <p>
                    As a HAWOOO member, <span class="highlight">you earn Ha Coins for every RM you spend.</span>
                    For example, if you spend RM 300 this month, you will receive 300 Ha Coins, and so on.
                </p>
                <br />
                <span class="bulletin-title">Ha Coin Pro Tips！
                </span>
                <p>
                    Shhh... It's a secret! You can even <span class="highlight">use Ha Coins to pay for international shipping.</span>
                    What a great deal! You can also test your luck! After logging in online every day, you get to play the 
                <span class="highlight">[Ha Coins Lucky Spin Wheel]</span>Spin the Wheel for a guaranteed prize, 
                <span class="highlight">each spin costs only 100 Ha Coins, and you even have the chance to win RM 100</span> ,Ready? Let's Go!
                </p>
                <p>
                    1. Each spin costs only 100 Ha Coins, and each member gets 3 spins per day, but you are welcome to visit us every day!
                </p>
                <p>
                    2. The spinning system is random, so everyone has a chance to hit the jackpot. 
                </p>
                <p>
                    3. HAWOOO.COM reserves the right of final interpretation in the event of natural disasters or main power outages. Thank you for understanding!
                </p>
            </section>
        </asp:Panel>
        <!--英文版公告End-->

    </main>
    <!--End container-->

    <script src="assets/js/ribbon.js"></script>
    <script src="assets/js/spin.js"></script>
    <script src="assets/js/blockUI.js"></script>
    <script src="assets/js/awardRotate.js"></script>
    <script src="assets/js/jquery.transit.js"></script>





    <%--    <script>

        function alert(msg) {
            $("#alert-msg").html(msg);
            $("#my-alert").css("z-index", 50);
            $("#my-alert").modal('open');
        }
        function alert2url(msg, url) {
            $("#alert-msg").html(msg);
            $("#my-alert").css("z-index", 50);
            $("#my-alert").modal({
                relatedTarget: this,
                closeViaDimmer: false,
                onConfirm: function (options) {
                    location.href = url;
                }
            });
        }
        function confirm2url(msg, url) {
            $("#confirm-msg").html(msg);
            $("#my-confirm").css("z-index", 50);
            $('#my-confirm').modal({
                relatedTarget: this,
                //closeOnCancel: false,
                closeViaDimmer: false,
                onConfirm: function (options) {
                    location.href = url;
                },
                // closeOnConfirm: false,
                onCancel: function () {
                    $("#my-confirm").modal('close');
                }
            });
        }
    </script>--%>
</asp:Content>

