<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpinWheel1.aspx.cs" Inherits="SpinWheel1" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .highlight {
            color: #FEE322;
            text-decoration: underline;
        }

        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }


        /*心跳B*/
        .heartbeat-play2 {
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-name: heartbeat-play2;
            animation-name: heartbeat-play2;
            -webkit-animation-iteration-count: infinite;
            animation-iteration-count: infinite; /* -webkit-animation-direction: alternate;animation-direction: alternate;*/
        }

        @-webkit-keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }

        @keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }

        /*飄-上下*/
        .uptodown-play {
            -webkit-animation: uptodown-play 1.5s ease-in-out infinite alternate;
            animation: uptodown-play 1.5s ease-in-out infinite alternate;
        }

        @-webkit-keyframes uptodown-play {
            0% {
                -webkit-transform: translate(0,-20px);
            }

            100% {
                -webkit-transform: translate(0,0);
            }
        }

        @keyframes uptodown-play {
            0% {
                transform: translate(0,-20px);
            }

            100% {
                transform: translate(0,0);
            }
        }
    </style>


    <script>
        function blockUI() {
            $.blockUI({
                overlayCSS: { opacity: 0.0 },
                message: null,
                css: {

                },
            });
            startAnimation();
            setTimeout($.unblockUI, 400);
        };

        function startAnimation() {
            var frames = document.getElementById("animation").children;
            var frameCount = frames.length;
            var i = 0;
            var timesrun = 0;
            var z = setInterval(function () {
                timesrun += 1;
                if (timesrun < frameCount) {
                    frames[i % frameCount].style.display = "none";
                    frames[++i % frameCount].style.display = "block";
                }
                else {
                    clearInterval(z);       //超過指定counter後將interval停止
                }
                console.log(timesrun);
            }, 100);
        }


        function GetPrizeEvent() {
            var bool = '<%=Session["Login"] %>';
            if (bool == 'true') {
                var item = '<%=HFp.Value%>';
                var userType = '<%=HFtype.Value%>';

                switch (item) {

                    case '17':
                        toserver(17, userType);
                        break;

                    case '12':
                        toserver(12, userType);
                        break;

                    case '15':
                        toserver(15, userType);
                        break;

                    case '13':
                        toserver(13, userType);
                        break;

                    case '14':
                        toserver(14, userType);
                        break;

                    case '16':
                        toserver(16, userType);
                        break;

                    case '11':
                        toserver(11, userType);
                        break;

                    case '18':
                        toserver(18, userType);
                        break;

                    case '9':
                        alert("您的Ha幣不足，趕快去下單賺取Ha幣吧！");
                        break;
                }
            }
            else {
                doLogin('SpinWheel.aspx')
            }
        }

        function toserver(pID, userType) {
            $.ajax({
                type: 'post',
                url: 'SpinWheel.aspx/CheckPrize',
                data: '{pID:"' + pID + '", userType:"' + userType + '"}',
                datatype: "json",
                contentType: "application/json; charset=utf-8",
                success: function (response) {
                    var msg = response.d;
                    alert2url(msg, "https://www.hawooo.com/user/SpinWheel1.aspx");
                },
                error:
                function () {
                    alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫", "https://www.hawooo.com/user/SpinWheel1.aspx");
                }
            })
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="HFp" runat="server" />
    <asp:HiddenField ID="HFtype" runat="server" />

    <div style="width: 100%; position: relative; width: 850px; z-index: 1; margin: 0 auto">
        <div id="animation">
            <img src="https://www.hawooo.com/images/ftp/20180620/edm_01.png" alt="世足" style="width: 100%">
            <img src="https://www.hawooo.com/images/ftp/20180620/edm_02.png" alt="世足" style="width: 100%">
            <img src="https://www.hawooo.com/images/ftp/20180620/edm_03.png" alt="世足" style="width: 100%">
            <img src="https://www.hawooo.com/images/ftp/20180620/edm_04.png" alt="世足" style="width: 100%">
        </div>

        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180620/playnow.png" alt="Play now" style="position: absolute; top: 80%; margin: auto; width: 48%; right: -45%;" onclick="blockUI()" />
            <img class="uptodown-play" src="https://www.hawooo.com/images/ftp/20180620/people.png" alt="守門員" style="position: absolute; top: 54%; margin: auto; width: 46%; right: -46%;" />
            <img class="heartbeat-play2" src="https://www.hawooo.com/images/ftp/20180620/footerball.png" alt="ha幣足球賽" style="position: absolute; top: 10%; margin: auto; width: 73%; right: -45%;" />
        </div>
    </div>
    <div style="width: 850px; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180620/edm_02.gif" alt="拿獎金搶贈品" style="width: 100%">
    </div>

    <!-- table -->
    <section>
        <div class="d11-table-wrapper" style="padding-top: 100px;">
            <asp:Repeater ID="rptPrizeRecord" runat="server">
                <HeaderTemplate>
                    <table class="d11-table" style="max-width: 100%; background-color: transparent; empty-cells: show; border-spacing: 0; border-collapse: collapse">
                        <tr>
                            <th></th>
                            <th>項目</th>
                            <th>抽獎時間</th>
                            <th>活動贈品</th>

                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td width="40px" style="padding: 0 20px">
                            <img alt="Hawooo推薦商品 再搶好康 聖誕第一波" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;" /></td>
                        <td><%# Container.ItemIndex + 1%></td>
                        <td><%# Eval("Plog02", "{0:dd/MM/yyyy}")%></td>
                        <td style="color: #EE5984"><%# Eval("PLOG04").ToString() +Convert.ToDateTime(Eval("EXPIRED")).ToString("dd-MM-yy")+" 23:59"%></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </section>


    <!--公告開始-->
    <div>
        <table width="1000" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="8%" bgcolor="#000000"></td>

                    <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 18px">什麼是HA幣？HA幣是什麼？<br>
                        <span style="color: white;">HA幣是HAWOOO專屬的貨幣喲，<span class="highlight">100 HA幣可以直接抵扣RM 1元</span>，沒有消費門檻限制喔，可以累積多次以後一起使用，不過要記得在領取<span class="highlight">三個月內使用完畢</span>，不然好可惜唷。</span>

                        <br>
                        <br>
                        好想要～我該怎麼得到呢<span style="color: white;"><br>
                            為了回饋HAWOOO的朋友們，讓您<span class="highlight">花多少馬幣就賺多少HA幣</span>，例如您這筆訂單買了RM300，您在隔月1號就能直接獲得300 HA幣，以此類推。當然新朋友我們也沒忘記給你見面禮，每位消費者都能在<span class="highlight">首次加入會員時免費獲得1500 HA幣</span>唷。</span>

                        <br>
                        <br>
                        偷偷跟我說HA幣使用祕技吧！<span style="color: white;"><br>
                            噓～小秘密喲！HA幣還能用來<span class="highlight">抵一趟國際運費</span>喔，超划算！還可以拿來測試你的好運氣，每天上線登入後，您都可以來<span class="highlight">[HA幣天天轉轉樂]</span>直接玩遊戲，人人都有獎，<span class="highlight">每次只要100 HA幣，就有機會賺RM100</span>，現在就開始吧！<br>
                            1• 每次玩都只需要100 HA幣，一天限玩3次，但是天天都歡迎您回來看看我們喔。<br>
                            2• 獎項系統隨機抽出，人人都有機會中大獎。最大獎有機會獲得RM 100購物金，直接等同現金抵扣訂單金額。<br>
                            3• 若您獲得折扣券(COUPON)，要記得在<span class="highlight">三天內使用完畢</span> (E.G. 16/5拿到，18/5前要用完)。<br>
                            4• 天有不測風雲，如果有天災意外或是大停電，HAWOOO.COM 保有活動最後解釋權，謝謝大家體諒我們喔。<br>
                        </span>
                    </td>

                    <td width="8%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
