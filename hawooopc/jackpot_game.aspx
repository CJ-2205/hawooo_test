<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="jackpot_game.aspx.cs" Inherits="user_static_jackpot_game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/jackpot_game.min.css" rel="stylesheet" />
    <link href="assets/css/jquery.slotmachine.min.css" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" rel="stylesheet">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField ID="HFSt" runat="server" />

    <div class="am-container">

        <div class="am-g slot-bg">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/bg.png" alt="bg_img" style="width: 100%; position: relative;" />

            <section class="jackpot-block-top">
                <div class="am-g" style="position: relative;">
                    <div class="am-u-sm-3">
                        <div class="am-fr balloon balloon-left">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/balloon_left.png" alt="左氣球" style="width: 100%;" />
                        </div>
                    </div>

                    <div class="am-u-sm-6">
                        <div class="bigwin">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/big_win.svg" alt="bg_img" style="width: 100%;" />
                        </div>
                    </div>
                    <div class="am-u-sm-3">
                        <div class="am-fl balloon balloon-right">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/balloon_right.png" alt="右氣球" style="width: 100%;" />
                        </div>
                    </div>

                </div>
            </section>

            <section class="slot-machine-contain">
                <div class="slot-machine" style="background: url('https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/slot_machine.svg' ) no-repeat  center center;">

                    <div class="slot-machine-panel">
                        <h2 id="showPanelText">✤ Try Your Luck! ✤</h2>
                    </div>

                    <div class="slot-machine-goods">
                        <div id="machine1" class="randomizeMachine">
                            <asp:Repeater ID="rpGoods1" runat="server">
                                <ItemTemplate>
                                    <div class="slot">
                                        <img src='<%# "https://p8r7m4d5.stackpathcdn.com/images//webimgs/" + Eval("img") %>' />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--<div class="slot slot1">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190701120123798.jpg" />
                            </div>
                            <div class="slot slot2">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190802113858716.jpg" />
                            </div>
                            <div class="slot slot3">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190812073533478.jpg" />
                            </div>
                            <div class="slot slot4">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190805121845026.jpg" />
                            </div>
                            <div class="slot slot5">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190827095010721.jpg" />
                            </div>
                            <div class="slot slot6">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180314040806099.jpeg" />
                            </div>--%>
                        </div>

                        <div id="machine2" class="randomizeMachine">
                            <asp:Repeater ID="rpGoods2" runat="server">
                                <ItemTemplate>
                                    <div class="slot">
                                        <img src='<%# "https://p8r7m4d5.stackpathcdn.com/images//webimgs/" + Eval("img") %>' />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                        <div id="machine3" class="randomizeMachine">
                            <asp:Repeater ID="rpGoods3" runat="server">
                                <ItemTemplate>
                                    <div class="slot">
                                        <img src='<%# "https://p8r7m4d5.stackpathcdn.com/images//webimgs/" + Eval("img") %>' />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                    <div class="metal-frame" id="gotoCart">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/metal_frame.png" alt="metal_frame" style="width: 100%;" />
                        </a>
                    </div>

                    <div class="redeem-ticket">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/ticket.png" alt="coin" style="width: 100%;" />
                    </div>

                    <!--拉桿Start-->
                    <div id="randomizeButton">
                        <a href="#!">
                            <div id="lever-ball">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/lever_ball.png" alt="pull_up" style="width: 100%;" />
                            </div>
                            <div id="lever-stick">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/jackpot_game/lever_stick.png" alt="pull_up" style="width: 100%;" />
                            </div>
                        </a>
                    </div>
                    <!--拉桿End-->

                </div>
            </section>

            <section class="am-u-sm-8 am-u-sm-centered award-block">

                <div class="am-text-center award-title">
                    <h2>Best Award</h2>
                </div>

                <div class="swiper-container award-slider-contain" id="award">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rpGoodBox" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide hover-box">
                                    <a href="#!">
                                        <div class="award-goods">
                                            <img src='<%# "https://p8r7m4d5.stackpathcdn.com/images//webimgs/" + Eval("img") %>' />
                                        </div>
                                        <div class="award-info-box">
                                            <div class="award-info">
                                                <div class="goods-name"><%# Eval("name") %></div>
                                                <%--<h5 class="goods-qty">Final Qty:
                                            <span>25</span></h5>--%>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <a class="prev-btn" href="#">
                    <i class="fas fa-chevron-left"></i>
                </a>
                <a class="next-btn" href="#">
                    <i class="fas fa-chevron-right"></i>
                </a>
            </section>
        </div>


        <!--公告Start-->
        <section class="bulletin-board am-g">
            <span class="bulletin-title am-margin-bottom">遊戲規則說明:
            </span>
            <br />
            <p class="am-padding-top-sm">
                1.  獎項系統隨機抽出，人人都有機會中獎。商品費用為RM 0，只需支付運費（西馬：RM 19；東馬：RM 25），即可獲得超值商品。
            </p>
            <p class="am-padding-top-sm">
                2.  抽中商品，商品會自動加入購物車，請填寫收件資料與完成運費支付即可。
             相關商品需要在該月份內進行兌換，否則將會自動取消哦。
            </p>
            <p class="am-padding-top-sm">
                3.  若是想要加購網站商品，也可以湊免運喔（西馬RM 199免運，東馬RM 299免運）。
            </p>
            <p class="am-padding-top-sm">
                4.  每個帳號一個月只能玩一次哦。
            </p>
            <p class="am-padding-top-sm">
                5.  天有不測風雲，如果有天災意外或是大停電，HAWOOO.COM 保有活動最後解釋權，謝謝大家體諒我們喔。
            </p>
        </section>
        <!--公告End-->
        <!--英文版公告Start-->
        <%--  <section class="bulletin-board am-g">
            <span class="bulletin-title am-margin-bottom">
                遊戲規則說明:
            </span>
              <br />
            <p class="am-padding-top-sm">
            1. Everyone can be the lucky person as the winner will be randomly selected by system. You will only need to pay the shipping fee (W.M.: RM 19; E.M.: RM 25) to get the FREE item!
            </p>
            <p class="am-padding-top-sm">
         2. Kindly find the product in your shopping cart if you are the winner. Please fill up your details and complete the payment as it needs to be redeemed within 72hrs, otherwise will be cancelled automatically.
            </p>
            <p class="am-padding-top-sm">
         3. If you want to add more products from website, shipping fee could be waived! (W.M. RM 199 free shipping, E.M. RM 299 free shipping).
            </p>
            <p class="am-padding-top-sm">
            4. Each account can only be redeemed once a month.
            </p>
            <p class="am-padding-top-sm">
          5. HAWOOO.COM reserves the right of final interpretation in the event of natural disasters or main power outages. Thank you for understanding!
            </p>
        </section>--%>
        <!--英文版公告End-->
    </div>
    <script src="assets/js/slotmachine.min.js"></script>
    <script src="assets/js/jquery.slotmachine.min.js"></script>
    <script src="assets/js/swiper.min.js"></script>

    <script>
        var imgIndex;
        var goodName;
        var goodId;

        $(function () {
            GetGoods();

            var machine1 = $("#machine1").slotMachine({
                active: 0, //初始化顯示第幾張圖鑑
                delay: 500,
                randomize: function () {
                    return imgIndex;//每次旋轉後選中值的索引（從0開始）
                }
            });

            var machine2 = $("#machine2").slotMachine({
                active: 1,
                delay: 500,
                randomize: function () {
                    return imgIndex;
                }
            });

            var machine3 = $("#machine3").slotMachine({
                active: 2,
                delay: 500,
                randomize: function () {
                    return imgIndex;
                }
            });

            var arr = [];
            function onComplete(active) {
                if (arr.length <= 1) {
                    arr.push(active);
                }
                else if (arr.length > 1) {
                    arr.push(active);
                    if (arr[0] == arr[1] && arr[1] == arr[2]) {

                        $("#showPanelText").text("Congratulations!");
                        alert("You win：" + goodName);
                    }
                    else {
                        $("#showPanelText").text("Next Time Will Be Better");
                    }
                    arr = [];
                }
            }

            $("#randomizeButton").on('click', function () {
                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u == null) {
                    doLogin('jackpot_game.aspx');
                } else {
                    var type = '<%=HFSt.Value%>';
                    switch (type) {

                        case '1':
                            blockUI();

                            $(".slot-machine-contain").addClass('shake');
                            $('.redeem-ticket').addClass('fell-out');//For desktop

                            machine1.shuffle(5, onComplete); //調用第一欄
                            setTimeout(function () { //0.5s後調用第二欄
                                machine2.shuffle(5, onComplete);
                            }, 500);
                            setTimeout(function () { //1s後調用第三欄
                                machine3.shuffle(5, onComplete);
                            }, 1000);
                            CheckPrize(u, goodId);
                            $('#gotoCart a').attr('href', 'cart1.aspx').hover('cursor', 'pointer');
                            break;

                        case '-1':
                            alert("Only play once a Month!");
                            break;
                    }
                }
            });

        });

        function blockUI() {
            $.blockUI({
                overlayCSS: { opacity: 0.0 },
                message: null,
            });
            setTimeout($.unblockUI, 4000);
        };

        function GetGoods() {
            $.ajax({
                type: "POST",
                url: "jackpot_game.aspx/GetGoods",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {

                    var aryGoods = [];
                    var totalData = JSON.parse(data.d);
                    for (var i = 0; i < totalData.length; i++) {
                        var pid = String(totalData[i].id);
                        var limit = parseInt(totalData[i].chance);

                        for (var j = 0; j < limit; j++) {
                            aryGoods.push(pid);
                        }
                    }
                    var ran = getRandom(1000);

                    goodId = aryGoods[ran];

                    imgIndex = $.map(totalData, function (item, index) {
                        return item.id
                    }).indexOf(goodId);//商品池ID相同的index

                    goodName = totalData[imgIndex].name;
                },
                error: function () {
                    alert('Ajax ERROR');
                }
            });
        };

        function getRandom(x) {
            return Math.floor(Math.random() * x);
        };

        function CheckPrize(u, FGId) {
            $.ajax({
                type: "POST",
                url: "jackpot_game.aspx/CheckPrize",
                data: '{userID:"' + u + '", FGId:"' + FGId + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (msg) {
                    var rmsg = JSON.parse(msg.d)[0].rmsg;
                    if (rmsg === "OK") {
                        $("#randomizeButton").off('click');

                    }
                    else {
                        alert(rmsg);
                    }
                },
                error: function () {
                    alert('Goods Ajax Error');
                }
            });
        };

        //拉霸手桿動畫
        var moveLeverStick = [
            { transform: "scaleY(1)" },
            {
                offset: 0.65,
                transform: "scaleY(-1)"
            },
            { transform: "scaleY(1)" }
        ];

        var moveLeverBall = [
            { transform: "translateY(0)" },
            {
                offset: 0.65,
                transform: "translateY(240px)"
            },
            { transform: "translateY(0)" }
        ];

        var lever = document.getElementById("randomizeButton");
        var leverStick = document.getElementById("lever-stick");
        var leverBall = document.getElementById("lever-ball");

        lever.addEventListener("click", function () {
            leverStick.animate(moveLeverStick, {
                duration: 700,
                easing: "ease",
                fill: "forwards"
            });
            leverBall.animate(moveLeverBall, {
                duration: 700,
                easing: "ease",
                fill: "forwards"
            });
        });

        //獎項 slider
        var swiper = new Swiper('.award-slider-contain', {
            slidesPerView: 4,
            spaceBetween: 10,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.next-btn',
                prevEl: '.prev-btn',
            },
            //如果要輪播 
            //autoplay: {
            //    delay: 5000,
            //},
        });

        //排名
        //$(function putimg() {
        //    for (i = 0; i < 8; i++) {
        //        $('#award li').eq(i).prepend('<div class="award">' +
        //            '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191127/aw_0' + (i + 1) + '.png">' +
        //            '</div>');
        //    }
        //});
    </script>

</asp:Content>

