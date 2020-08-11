<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200618mys2_value_buy.aspx.cs" Inherits="mobile_static_200618mys2_value_buy" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">


    <title>mys2_value_buy</title>
    <style>
        /*@media screen and (min-width: 650px) {
            #s1 .goods-more .goods-bottom {
                min-height: 234px;
            }
        }

        @media screen and (max-width: 650px) {
            #s1 .goods-more .goods-bottom {
                min-height: 115px;
            }
        }*/

        .mb-shop-block {
            padding: 3px;
        }

        .category-slider {
            background: #A93921;
        }

        .coupon {
            position: relative;
        }

            .coupon img {
                -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
                filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
            }

        .coupon-code {
            background: #fff;
            color: #A63B24;
            font-weight: bold;
            text-align: center;
            font-size: 14px;
            padding: 3px 5px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media screen and (max-width: 650px) {
            .coupon-code {
                font-size: 12px;
                min-height: 49px;
            }
        }

        .footer-bar {
            z-index: 100;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #A63B24;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bbn_07m.png" %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_02m.png" %>' alt="main-banner" />
        </div>
        <div class="am-margin-bottom">
            <div class="am-padding-horizontal-xs">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs coupon">
                        <a class="btnn " data-clipboard-text="MID25">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>
                                <asp:Literal runat="server" ID="Coupon1"></asp:Literal></span> have used it</h6>
                        </div>
                    </li>
                    <li class="am-padding-xs  coupon">
                        <a class="btnn " data-clipboard-text="MID40">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>
                                <asp:Literal runat="server" ID="Coupon2"></asp:Literal></span> have used it</h6>
                        </div>
                    </li>
                    <li class="am-padding-xs coupon">
                        <a class="btnn " data-clipboard-text="MID65">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_03.png" %>' alt="coupon_01" />
                        </a>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>
                                <asp:Literal runat="server" ID="Coupon3"></asp:Literal></span> have used it</h6>
                        </div>
                    </li>
                    <li class="am-padding-xs  coupon">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_04.png" %>' alt="coupon_04" class="coupon-gift"/>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>min spend 500,limited 200 sets</span> </h6>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 (Start) =====================================================--%>
        <section class="am-margin-bottom" id="s1">
            <div>
                <div class="mb-shop-block" id="block1">
                    <ul class="am-avg-sm-2  am-avg-md-3">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
            </div>
        </section>
        <%--Block1 (End) ======================================================--%>

        <%--Block2 Shop By Category (Start) ==========================================--%>

        <%--Block2 Shop By Category (End) ==========================================--%>
        <%--Terms & Conditions (Start) =============================================--%>

        <div class="am-padding activity-method" style="background: #000;" id="s7">
            <div class="am-container">
                <p class="am-margin-top-0">
                    Terms & Conditions<br>
                    Mid Year Sale Round 2<br>
                    1. 618 Flash Sale Promotion Date : 18th June 2020 12:00 - 20th June 2020 23:59<br>
                    2. After Sale Promotion Date : 18th June 2020 12:00 - 25th June 2020 23:59<br>
                    3. Sitewide Promo Code:
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - RM25 OFF, Use Code [MID25] (min spend 280)<br>
                    - RM40 OFF, Use Code [MID40] (min spend 430)<br>
                    - RM65 OFF, Use Code [MID65]  (min spend 650)
                </p>
                <p class="am-margin-top-0">
                    4. Promo Codes are LIMITED, first come first serve<br>
                    5. Promo Codes are applicable sitewide, including flash sale items, and applicable on selected Flagship Stores, including Dr Morita, Paradiso Garden, Dore Dore, Zephyrine, DV, Laler, Choyer, Hsu's, DV Tokyo, Eurocare 1838, Enjoy The Life, Sofei, Unipapa, Anriea, Cest Vrai, Pandababy, HH(except items on this page) , Double Doctor<br>
                    6. Free Gift (minspend 500, amount after using voucher)
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - Unicat Anti-Pore Clean Lotion 150ml (limited 200 sets, worth RM90)
                </p>
                <p class="am-margin-top-0">
                    7. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mid Year Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>

        </div>
    
    <%--Terms & Conditions (End) ==============================================--%>
    <div class="footer-bar">
        <div>
            <ul class="am-avg-sm-4 flash-sale-display1">
                <li>
                    <a href="200618mys2.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_00m.png" %>' alt="ss_00m" />
                    </a>
                </li>
                <li>
                    <a href="200618mys2_flash_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_01m.png" %>' alt="ss_01m" />
                    </a>
                </li>
                <li>
                    <a href="200618mys2_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_02m.png" %>' alt="ss_02m" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_03m.png" %>' alt="ss_03m" />
                    </a>
                </li>
                <li>
                    <a href="200618mys2.aspx">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_04m.png" %>' alt="ss_04m" /></a>
                </li>
                <li>
                    <a href="200618mys2.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_05m.png" %>' alt="ss_05m" /></a>
                </li>
                <li>
                     <a href="200618mys2.aspx?#s5" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_06m.png" %>' alt="ss_06m" /></a>
                </li>
                <li onclick="goto('s7',800,'swing')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_07m.png" %>' alt="ss_07m" />
                </li>
            </ul>
        </div>
    </div>
    <%-- flasf 後 --%>
    <div class="footer-bar">
        <div>
            <ul class="am-avg-sm-3 flash-sale-display2">
                <li>
                    <a href="200618mys2.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_00m_ch.png?v=1" %>' alt="ss_00m" />
                    </a>
                </li>
                <li>
                    <a href="200618mys2_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_02m.png?v=1" %>' alt="ss_02m" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_03m.png?v=1" %>' alt="ss_03m" />
                    </a>
                </li>
                <li onclick="goto('s5',800,'swing')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_05m.png?v=1" %>' alt="ss_05m" />
                </li>
                <li>
                    <a href="200618mys2.aspx?#s5" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_06m.png?v=1" %>' alt="ss_06m" /></a>
                </li>
                <li onclick="goto('s7',800,'swing')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_07m.png?v=1" %>' alt="ss_07m" />
                </li>
            </ul>
        </div>
    </div>
    

    <%--MB  Contain Max-width:650px(End) ==========================================--%>

    <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script type="text/javascript">
        /*Load HTML*/
        $(document).ready(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide goods-more");
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
            setThem();
            putimg();
            hiddenFooterMenu();
            ifFlashsaleDisplay();
            couponGiftAlterImgSrc('2020-06-21T00:00:00');
            function duplicate(id) {
                var ul = $("#" + id + " ul");
                ul.find("li:last")
                    .clone(true)
                    .appendTo(ul);
            }
        }


        /*放置logo*/
        function putimg() {
            for (i = 0; i < 12; i++) {
                $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200527/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        }
        /*隱藏手機FotterBar*/
        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

        function ifFlashsaleDisplay() {
            let dateFSEndTime = new Date('2020-06-21T00:00:00');
            let dateNow = new Date();
            let flashSaleDisplay1 = $('.flash-sale-display1');
            let flashSaleDisplay2 = $('.flash-sale-display2');
            // If pass the flash Sale timming, some elements will not be shown.
            if (dateNow < dateFSEndTime) {
                for (let i = 0; i < flashSaleDisplay2.length; i++) {
                    flashSaleDisplay2.eq(i).css("display", "none");
                }
            }
            if (dateNow > dateFSEndTime) {
                for (let i = 0; i < flashSaleDisplay1.length; i++) {
                    flashSaleDisplay1.eq(i).css("display", "none");
                }
            }
        }

        function couponGiftAlterImgSrc(dateStr = '2020-06-21T00:00:00') {
            let dateFSEndTime = new Date(dateStr);
            let dateNow = new Date();
            if (dateNow > dateFSEndTime) {
                $('.coupon-gift').eq(0).attr('src', 'https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/coupon_04fn.png');
            }
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
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("The voucher code have been copied,please enter it when you get ready to pay.");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
</asp:Content>
