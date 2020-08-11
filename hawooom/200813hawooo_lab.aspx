<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200813hawooo_lab.aspx.cs" Inherits="mobile_static_200813hawooo_lab" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link rel="stylesheet" href="assets/css/events_style.min.css">

    <style>
        .mb-shop-block {
            padding: 3px;
        }


        .countdown-txt {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 34%;
            color: #fff;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 30px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #EA5C52;">
        <%--Timer (Start)====================================================--%>
        <div class="am-margin-bottom-0 am-text-center" style="position: relative;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_live/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
            <h4 class="countdown-txt">Sale ends in <span class="countdown">
                <span id='d'>0</span>:
                <span id='h'>0</span>:
                <span id='m'>0</span>:
                <span id='s'>0</span>
            </span></h4>
        </div>
        <%--Timer (End) ====================================================--%>


        <%--Block1 (Start) =====================================================--%>
        <section class="am-margin-bottom" id="s1">
            <div style="background: #EA5C52;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <%--<div>
                    <a href="200527_vip_super_deals.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200529/bn_03.png" alt="more" />
                    </a>
                </div>--%>
            </div>
        </section>
        <%--Block1 (End) ======================================================--%>

        <%-- Todo_treegb: Terms ,, including what? --%>
        <%--Terms & Conditions (Start) =============================================--%>
        <footer class="am-padding activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms &amp; Conditions<br>
                    Hawooo Lab<br>
                    1. Live campaign only available for 48hrs<br>
                    2. New Brand Sale are available for 玩轉科技，RM25 OFF, use code [Brand25] (min spend 250)<br>
                    3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 48 hrs Live 
                    campaign terms from time to time, and in such manner as Hawooo deems appropriate.<br>
                </p>
            </div>
        </footer>
        <%--Terms & Conditions (End) ==============================================--%>
    </div>

    <%--MB  Contain Max-width:650px(End) ==========================================--%>

    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script src="assets/js/clipboard.min.js"></script>

    <script type="text/javascript">

        /*Load HTML*/
        $(document).ready(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");

            // load 網頁共用結構
            let totalLoad = $('.include').length;
            let loadIndex = 0;
            if (totalLoad == 0) {
                initScript();
            }
            $('.include').each(function () {
                $(this).load($(this).data('file'), function () {
                    $(this).children().first().unwrap(); // remove the ha-include div
                    loadIndex++;
                    if (loadIndex == totalLoad) {
                        //共用結構載入完，開始執行頁面自己的初始化
                        initScript();
                    }
                });
            });
        });

        // 執行頁面的script
        function initScript() {
            // duplicateLogo();
            console.log('Inside InitScript');
            setThem();
            // putimg(12);
            hiddenFooterMenu();
            $("#s5 li,#s3 li").addClass("hvr-float");

           
            function duplicate(id) {
                var ul = $("#" + id + " ul");
                ul.find("li:last")
                    .clone(true)
                    .appendTo(ul);
            }
        }


        /*隱藏手機FotterBar*/
        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

        /* 設定Slider*/
        function setThem() {
            var i;
            var cnt = 11; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 0,
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },
                        breakpoints: {
                            640: {
                                slidesPerView: 2.2,
                                spaceBetween: 0,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };

        /* 設定Slider*/
        function PutUrl() {
            $('#s1 a').attr({
                "href": "200527_vip_super_deals.aspx",
                "target": "_blank"
            });
        };


    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>

    <script>
        function setTime(spendtime) {

            $(".countdown").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    if (spendtime > 0) {
                        $("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                    } else { // 避免倒數變成負的
                        $("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                    }

                });

        }

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
        //debug
        //function printDebugMessage(argg) {
        //    console.log(`${argg}`);
        //}
    </script>
</asp:Content>
