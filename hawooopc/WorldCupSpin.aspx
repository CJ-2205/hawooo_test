<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorldCupSpin.aspx.cs" Inherits="WorldCupSpin" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 18%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

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

        #animation img {
            display: none;
        }

            #animation img:first-child {
                display: block;
            }

        .rotate {
            transform: scale(0.95);
            transform: rotate(12deg);
            transform-origin: 0% 0%;
        }

        .rotate33 {
            transform-origin: 0% 0%;
            transform: rotate(-12deg);
        }
    </style>


    <script>
        function kick() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u !=null) {

                var c = document.getElementById("leg");
                c.classList.remove("rotate");
                c.classList.add("rotate33");
                blockUI();  }
            else {
                doLogin('https://www.hawooo.com/user/WorldCupSpin.aspx')
            }
        }

        function blockUI() {
            $.blockUI({
                overlayCSS: { opacity: 0.0 },
                message: null,
                css: {

                },
            });

            GetPrizeEvent();
            setTimeout($.unblockUI, 600);
        };




        function GetPrizeEvent() {        
            debugger;
            var item = '<%=HFp.Value%>';
            var userType = '<%=HFtype.Value%>';
            startAnimation();
             
            setTimeout(function() {
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
                }},800);      
                 
        }

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
            }, 100);
        }

        function toserver(pID, userType) {
            $.ajax({
                type: 'post',
                url: 'WorldCupSpin.aspx/CheckPrize',
                data: '{pID:"' + pID + '", userType:"' + userType + '"}',
                datatype: "json",
                contentType: "application/json; charset=utf-8",
                success: function (response) {
                    var msg = response.d;
                    confirm2url(msg, "https://www.hawooo.com/user/WorldCupSpin.aspx");
                },
                error:
                function () {
                    alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫", "https://www.hawooo.com/user/WorldCupSpin.aspx");
                }
            })
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="HFp" runat="server" />
    <asp:HiddenField ID="HFtype" runat="server" />
    <div id="gotop" style="width: 100%; position: relative; width: 850px; z-index: 1; margin: 0 auto; margin-top: -60px;">

        <div id="animation">
            <img src="https://www.hawooo.com/images/ftp/20180620/pc01.png" alt="世足" style="width: 100%">
            <img src="https://www.hawooo.com/images/ftp/20180620/pc02.png" alt="世足" style="width: 100%">
            <img src="https://www.hawooo.com/images/ftp/20180620/pc03.png" alt="世足" style="width: 100%">
            <img src="https://www.hawooo.com/images/ftp/20180620/pc04.png" alt="世足" style="width: 100%">
        </div>

        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <a href="#">
            <img id="play" onclick="kick()" class="go_bt" src="https://www.hawooo.com/images/ftp/20180620/playnow.png" alt="Play now" style="position: absolute; top: 84%; margin: auto; width: 48%; right: -45%;" />
           </a> <img class="uptodown-play" src="https://www.hawooo.com/images/ftp/20180620/people.png" alt="守門員" style="position: absolute; top: 54%; margin: auto; width: 46%; right: -46%;" />
            <img class="heartbeat-play2" src="https://www.hawooo.com/images/ftp/20180620/footerball.png" alt="ha幣足球賽" style="position: absolute; top: 10%; margin: auto; width: 73%; right: -45%;" />
            <a href="https://www.hawooo.com/user/qa16.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180620/yellow2.png" alt="what's ha幣" style="position: absolute; top: 76%; margin: auto; width: 28%; left: 114.5%;" />
            </a>
            <img id="leg" class="rotate " src="https://www.hawooo.com/images/ftp/20180620/leg.png" alt="黃金右腳" style="position: absolute; top: 71%; margin: auto; width: 48%; right: 30%;" />
        </div>
    </div>
    <div style="width: 850px; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180620/edm_02.gif" alt="拿獎金搶贈品" style="width: 100%">
    </div>

    <div style="width: 100%; margin: 0 auto; display: block; width: 850px;">
        <!-- table -->
        <section>
            <div class="d11-table-wrapper">
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
                                <img alt="Icon" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;" /></td>
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
            <table width="850" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="8%" bgcolor="#000000"></td>

                        <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px;  text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 18px">什麼是HA幣？HA幣是什麼？<br>
                            <span style="color: white;">HA幣是HAWOOO專屬的貨幣喲，<span class="highlight">100 HA幣可以直接抵扣RM 1</span>，沒有消費門檻限制喔，可以累積多次以後一起使用，不過要記得在領取<span class="highlight">三個月內使用完畢</span>，不然好可惜唷。</span>

                            <br>
                            <br>
                            好想要～我該怎麼得到呢<span style="color: white;"><br>
                                為了回饋HAWOOO的朋友們，讓您<span class="highlight">花多少馬幣就賺多少HA幣</span>，例如您這筆訂單買了RM300，您在隔月1號就能直接獲得300 HA幣，以此類推。當然新朋友我們也沒忘記給你見面禮，每位消費者都能在<span class="highlight">首次加入會員時免費獲得1500 HA幣</span>唷。</span>

                            <br>
                            <br>
                            Ha幣世足賽  我也能踢足球賺大錢嗎？<span style="color: white;"><br>
                                當然可以～而且賺來的HA幣還能用來抵一趟國際運費喔，超划算！        
                                <br />
                                每天上線登入後，您都可以來[HA幣世足賽]直接玩遊戲，人人都有獎，每次只要100 HA幣，就有機會賺RM100，現在就開始吧！<br />
                                1• 每次玩都只需要100 HA幣，一天限玩3次，但是天天都歡迎您回來看看我們喔。<br>
                                2• 獎項系統隨機抽出，人人都有機會中大獎。最大獎有機會獲得RM 100購物金，直接等同現金抵扣訂單金額。<br>
                                3• 若您獲得折扣券(COUPON)，要記得在<span class="highlight">三天內使用完畢</span>(E.G. 20/6拿到，22/6前要用完)。<br>
                                4• 天有不測風雲，如果有天災意外或是大停電，HAWOOO.COM 保有活動最後解釋權，謝謝大家體諒我們喔。<br>
                            </span>
                        </td>

                        <td width="8%" bgcolor="#000000"></td>

                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180620/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>
            <a href="https://www.hawooo.com/user/18worldcup.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180620/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="猜八強拿獎金 押注頁"></a>
            <a href="https://www.hawooo.com/user/wordcupsales.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180620/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="世足搶好康 優惠商品"></a>
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180620/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>

        </div>
    </div>
    <link rel="stylesheet" href="../xmas/css/d11.css" />
    <script src="assets/js/blockUI.js"></script>

    <script type="text/javascript">

        $(function () {
            debugger;
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }
        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })
    </script>
</asp:Content>