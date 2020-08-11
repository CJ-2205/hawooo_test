﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200514_rayasale.aspx.cs" Inherits="mobile_static_200514_rayasale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        /* Logo border style */
        #logo a {
            overflow: hidden;
            border: 2.5px solid #BE9C7B;
        }

        .banner {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            padding: 0 4%;
            transform: translateY(-50%);
        }

        .mb-shop-block {
            padding: 3px;
        }
    </style>
    <!--MB  Contain Max-width:650px(Start) ==========================================-->
    <div class="am-g main-contain mb-contain" id="top" style="background: #BD6B08;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/bn_01m.png" %>' alt="main-banner" />
        </div>

        <!--領取折扣券 (Start)====================================================-->
        <div class="am-margin-bottom" style="position: relative; margin-top: 5.3rem;">
            <div class="banner banner1">
                <a href="2020momsday2_hot_deal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/bn_02m.png" %>' alt="bn_02m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm am-padding-horizontal-xs" style="background: #1A1425; padding-top: 10%;">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="RAYA15">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="RAYA35">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="RAYA55">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/coupon_04.png" %>' alt="coupon_04" />
                    </li>
                </ul>
            </div>
        </div>
        <!--領取折扣券 (End) ====================================================-->
        <!--Block1 (Start) =====================================================-->
        <section class="am-margin-bottom" id="s1">
            <div>
                <a href="200514_rayasale_hotdeal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/bn_03m.png" %>' alt="bn_03m" />
                </a>
            </div>
            <div style="background: #1A1425;">
                <div class="swiper-container swiper-container7 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="200514_rayasale_hotdeal.aspx" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-vertical">
                    <a class="am-u-sm-5 am-u-md-4 am-block am-u-sm-centered" href="200514_rayasale_hotdeal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/more.png" %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <!--Block1 (End) ======================================================-->
        <!--Block2 (Start) ======================================================-->
        <section class="am-margin-bottom" id="s2">
            <div>
                <a href="200514_rayasale_valuebuy.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/bn_04m.png" %>' alt="bn_04m" />
                </a>
            </div>
            <div style="background: #1A1425;">
                <div class="swiper-container swiper-container8 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="#" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-vertical">
                    <a class="am-u-sm-5 am-u-md-4 am-block am-u-sm-centered" href="200514_rayasale_valuebuy.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/more.png" %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <!--Block2 (End) =======================================================-->
        <!--Block3 Highlighted Brands(Start)==========================================-->
        <section class="am-margin-bottom" id="s3" style="position: relative; margin-top: 4.3rem;">
            <div class="banner banner2">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/bn_05m.png" %>' alt="bn_05m" />
            </div>
            <div class="mb-shop-block" id="logo" style="background: #1A1425; padding-top: 12%;">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
        </section>
        <!--Block3 Highlighted Brands(End) ==========================================-->
        <!--Block4 Shop By Category (Start) ==========================================-->
        <!--Category1 (Start) -->
        <section class="am-margin-bottom" id="s4" style="position: relative; margin-top: 5.3rem;">
            <div class="banner banner2">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/bn_06m.png" %>' alt="bn_06m" />
            </div>

            <div style="background: #1A1425; padding-top: 10%; padding-bottom: 1%;">
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs" id="point1">
                        <a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/v_01.png" %>' alt="v_01" />
                        </a>
                    </li>
                    <li class="am-padding-xs" onclick="goto('point2')">
                        <a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/v_02.png" %>' alt="v_02" />
                        </a>
                    </li>
                    <li class="am-padding-xs" onclick="goto('point3')">
                        <a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/v_03.png" %>' alt="v_03" />
                        </a>
                    </li>
                    <li class="am-padding-xs" onclick="goto('point4')">
                        <a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/v_04.png" %>' alt="v_04" />
                        </a>
                    </li>
                    <li class="am-padding-xs" onclick="goto('point5')">
                        <a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/v_05.png" %>' alt="v_05" />
                        </a>
                    </li>
                    <li class="am-padding-xs" onclick="goto('point6')">
                        <a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/v_06.png" %>' alt="v_06" />
                        </a>
                    </li>
                </ul>
            </div>

            <div>
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_01m.png" %>' alt="ca_01m" />
                    </a>
                </div>
                <div class="category-slider" style="background: #1A1425">
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products4" />
                            <li class="am-fl swiper-slide am-text-center goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!--Category1 (End) -->
        <!--Category2 (Start) -->
        <section class="am-margin-top-sm" id="point2">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_02m.png" %>' alt="h_02m" />
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!--Category2 (End) -->
        <!--Category3 (Start) -->
        <section class="am-margin-top-sm" id="point3">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_03m.png" %>' alt="h_03m" />
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!--Category3 (End) -->
        <!--Category4 (Start) -->
        <section class="am-margin-top-sm" id="point4">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_04m.png" %>' alt="h_04m" />
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!--Category4 (End) -->
        <!--Category5 (Start) -->
        <section class="am-margin-top-sm" id="point5">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_05m.png" %>' alt="h_05m" />
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!--Category5 (End) -->
        <!--Category6 (Start) -->
        <section class="am-margin-top-sm" id="point6">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_06m.png" %>' alt="h_06m" />
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />
                        <li class="am-fl swiper-slide am-text-center goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!--Category6 (End) -->
        <!--Block3 Shop By Category (End) ==========================================-->
        <!--Block4  You May Also Like... (Start)========================================-->
        <section class="am-margin-vertical-sm">
            <h6 class="am-margin-bottom-0 am-padding-left am-text-center"
                style="color: #ffff; text-shadow: 0.1em 0.1em 0.05em #333">You May Also Like...
            </h6>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <uc1:products runat="server" id="products10" />
                </ul>
            </div>
        </section>
        <!--Block4  You May Also Like... (End)=========================================-->
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-2">
                    <li onclick="goto('top')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/ss_00m.png" %>' alt="ss_00m" />
                    </li>
                    <li onclick="goto('s1')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/ss_01m.png" %>' alt="ss_01m" />
                    </li>
                </ul>
            </div>
            <div>
                <ul class="am-avg-sm-3">
                    <li onclick="goto('s2')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/ss_02m.png" %>' alt="ss_02m" />
                    </li>
                    <li onclick="goto('s3')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/ss_03m.png" %>' alt="ss_03m" />
                    </li>
                    <li onclick="goto('s4')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200514/ss_04m.png" %>' alt="ss_04m" />
                    </li>
                </ul>
            </div>
        </div>
        <!--Block5 活動辦法 (Start)================================================-->
        <footer class="am-padding activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    Raya Sale
                    <br>
                    1. Promotion Date : 14th May 2020 12:00 - 26th May 2020 23:59<br>
                    2. Sitewide Promo Code:<br>
                </p>
                <p class="am-padding-left">
                    - RM15 OFF (min spend 250), use code [ RAYA15 ]<br>
                    - RM35 OFF (min spend 390), use code [ RAYA35 ]<br>
                    - RM55 OFF (min spend 580), use code [ RAYA55 ]<br>
                </p>
                <p>
                    3. Promo Codes are applicable on selected Flagship Stores, including
                    <br>
                    4. 4. Free Gift<br>
                    <br>
                    5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Raya Sale terms from time
          to
          time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <!--Block5 活動辦法 (End)================================================-->
    </div>

    <!--MB  Contain Max-width:650px(End) ==========================================-->

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">


        $(function () {
            $(".swiper-container li").addClass("am-fl swiper-slide");
            $("#s1 a").attr("href", "200514_rayasale_hotdeal.aspx");
            $("#s2 a").attr("href", "200514_rayasale_valuebuy.aspx");

            PutBrandUrl();
            setThem();
            hiddenFooterMenu();
        });

        function PutBrandUrl() {
            var url = "";
            var index = 0;
            $(".brand-href li").each(function () {
                url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
                switch (index) {
                    case 0:
                        {
                            url = url + '307';
                            break;
                        }
                    case 1:
                        {
                            url = url + '287';
                            break;
                        }
                    case 2:
                        {
                            url = url + '235';
                            break;
                        }
                    case 3:
                        {
                            url = url + '334';
                            break;
                        }
                    case 4:
                        {
                            url = url + '283';
                            break;
                        }
                    case 5:
                        {
                            url = url + '345';
                            break;
                        }
                    case 6:
                        {
                            url = url + '72';
                            break;
                        }
                    case 7:
                        {
                            url = url + '180';
                            break;
                        } case 8:
                        {
                            url = url + '450';
                            break;
                        }
                    case 9:
                        {
                            url = url + '407';
                            break;
                        }
                    case 10:
                        {
                            url = url + '131';
                            break;
                        }
                    case 11:
                        {
                            url = url + '319';
                            break;
                        }
                }
                $(this).find('a').attr("href", url);
                index++;
            });
        };


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
                        spaceBetween: 10,
                        //autoplay: {
                        //    delay: 5000,
                        //},
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
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };



        function putimg(count) {
            for (i = 0; i < count; i++) {
                $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        };

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
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

