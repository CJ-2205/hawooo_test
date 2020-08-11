<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="event_category.aspx.cs" Inherits="user_static_event_category" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        /* Logo border style */
        #logo a {
            overflow: hidden;
            border: 3px solid #BE9C7B;
        }

        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            background: #BD6B08;
            border-radius: 50% !important;
        }

        .banner {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            padding: 0 4%;
            transform: translateY(-50%);
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain" style="background: #BD6B08;">
        <!--側邊選單 (Start) ======================================================-->
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_00.png" alt="ss_00" />
                </li>
                <li onclick="goto('s1')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_01.png" alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_02.png" alt="ss_02" />
                </li>
                <li onclick="goto('s3')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_03.png" alt="ss_03" />
                </li>
                <li onclick="goto('s4')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_04.png" alt="ss_04" />
                </li>
            </ul>
        </div>
        <!--側邊選單 (End) =======================================================-->

        <div id="top">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_01.png" alt="主banner" />
        </div>

        <div class="am-container">

            <!--領取折扣券 (Start)====================================================-->
            <div style="position: relative; margin-top: 8%;">
                <div class="banner">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_02.png" alt="折扣banner">
                </div>

                <div class="am-margin-bottom-xl am-padding-bottom-sm" style="background: #1A1425; padding-top: 6.2rem;">
                    <ul class="am-avg-sm-4">
                        <li class="am-padding-sm ">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_01.png"
                                    alt="coupon_01" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_02.png"
                                    alt="coupon_02" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_03.png"
                                    alt="coupon_03" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_04.png"
                                    alt="coupon_04" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--領取折扣券 (End) ====================================================-->

            <!--Block1 (Start) =====================================================-->
            <section class="am-margin-bottom-xl" id="s1">
                <div>
                    <a href="200514_rayasale_hotdeal.html" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_03.png" alt="bn_02" />
                    </a>
                </div>
                <div style="background: #1A1425">
                    <div class="am-padding pc-slider">
                        <div class="swiper-container swiper-container7" id="block1">
                            <ul class="swiper-wrapper">
                                <li class="am-fl swiper-slide">
                                    <a href="200514_rayasale_hotdeal.html">
                                        <div class="am-panel am-panel-default pitem"
                                            style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img class="am-img-responsive"
                                                    src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title"
                                                    style="color: #000 !important; text-align: left; height: 42px;">
                                                    Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span
                                                            style="color: #EE5984; font-size: 18px; font-weight: bold;">RM
                                                            268.90
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed 6.7K
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span class="product-items-tag">
                                                            <img src="../../assets/img/免運.svg"
                                                                style="width: 20px">免運</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="am-fl swiper-slide am-text-center goods-more">
                                    <a href="2020momsday2_hot_deal.html" target="_blank">
                                        <div class="am-panel am-panel-default pitem"
                                            style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png"
                                                    alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <h2 class="am-padding-top-lg">See More</h2>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a href="#!" class="prev-btn prev-btn7">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn7">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                    <div class="am-padding-vertical am-u-sm-3 am-u-sm-centered am-margin-bottom-xl">
                        <a href="200514_rayasale_hotdeal.html" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/more.png" alt="more" />
                        </a>
                    </div>
                </div>
            </section>
            <!--Block1 (End) ======================================================-->

            <!--Block2 (Start) =====================================================-->
            <section class="am-margin-bottom-xl" id="s2">
                <div>
                    <a href="200514_rayasale_valuebuy.html" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_04.png" alt="bn_03" />
                    </a>
                </div>
                <div style="background: #1A1425">
                    <div class="am-padding pc-slider">
                        <div class="swiper-container swiper-container8" id="block1">
                            <ul class="swiper-wrapper">
                                <li class="am-fl swiper-slide">
                                    <a href="200514_rayasale_valuebuy.html">
                                        <div class="am-panel am-panel-default pitem"
                                            style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img class="am-img-responsive"
                                                    src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title"
                                                    style="color: #000 !important; text-align: left; height: 42px;">
                                                    Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span
                                                            style="color: #EE5984; font-size: 18px; font-weight: bold;">RM
                                                            268.90
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed 6.7K
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span class="product-items-tag">
                                                            <img src="../../assets/img/免運.svg"
                                                                style="width: 20px">免運</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="am-fl swiper-slide am-text-center goods-more">
                                    <a href="2020momsday2_hot_deal.html" target="_blank">
                                        <div class="am-panel am-panel-default pitem"
                                            style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png"
                                                    alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <h2 class="am-padding-top-lg">See More</h2>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a href="#!" class="prev-btn prev-btn8">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn8">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                    <div class="am-padding-vertical am-u-sm-3 am-u-sm-centered am-margin-bottom-xl">
                        <a href="200514_rayasale_valuebuy.html" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/more.png" alt="more" />
                        </a>
                    </div>
                </div>
            </section>
            <!--Block2 (Start) =====================================================-->

            <!--Block3 Highlighted Brands(Start)==========================================-->
            <div style="position: relative; margin-top: 10%;" id="s3">
                <div class="banner">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_05.png" alt="bn_05" />
                </div>
                <section class="am-margin-bottom-xl" style="background: #1A1425">
                    <div class="am-padding-sm shop-block highlighted-brands" id="logo"
                        style="background: #1A1425; padding-top: 8.2rem;">
                        <ul class="am-avg-sm-4">
                            <li class="am-fl">
                                <a href="#!">
                                    <div class="am-panel am-panel-default pitem"
                                        style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img class="am-img-responsive"
                                                src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery-title"
                                                style="color: #000 !important; text-align: left; height: 42px;">
                                                Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM
                                                        268.90
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="font-size: 13px;">
                                                        <i class="far am-icon-eye"></i>Viewed 6.7K
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span class="product-items-tag">
                                                        <img src="../../assets/img/免運.svg" style="width: 20px">免運</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
            <!--Block2 Block3 Highlighted Brands(End) ======================================-->

            <!--Block3 Shop By Category (Start) ==========================================-->
            <div class="include" data-file="event_category.aspx"></div>
            <!--Block3 Shop By Category (End) ===========================================-->

            <!--Block4  You May Also Like... (Start)========================================-->
            <section class="am-padding-vertical-lg  am-margin-bottom-xl" id="s5">
                <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center"
                    style="color: white; text-shadow: 0.1em 0.1em 0.05em #333">You May Also
                    Like...
                </h1>
                <div>
                    <div class="shop-block" id="block5">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl">
                                <a href="#!">
                                    <div class="am-panel am-panel-default pitem"
                                        style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img class="am-img-responsive"
                                                src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery-title"
                                                style="color: #000 !important; text-align: left; height: 42px;">
                                                Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM
                                                        268.90
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="font-size: 13px;">
                                                        <i class="far am-icon-eye"></i>Viewed 6.7K
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span class="product-items-tag">
                                                        <img src="../../assets/img/免運.svg" style="width: 20px">免運</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <!--Block4  You May Also Like... (End)=========================================-->
        </div>
    </div>

    <!--Block5 活動辦法 (Start)================================================-->
    <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
        <div class="am-container">
            <p>
                Terms & Conditions<br />
                Raya Sale<br />
                1. Promotion Date : 14th May 2020 12:00 - 26th May 2020 23:59<br>
                2. Sitewide Promo Code:<br>
            </p>
            <p class="am-padding-left-lg">
                - RM15 OFF (min spend 250), use code [ RAYA15 ]<br>
                - RM35 OFF (min spend 390), use code [ RAYA35 ]<br>
                - RM55 OFF (min spend 580), use code [ RAYA55 ]<br>
            </p>
            <p>
                3. Promo Codes are applicable on selected Flagship Stores, including
                <br>
                4. Free Gift<br>
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Raya Sale terms from
                time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <!--Block5 活動辦法 (End)================================================-->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <script src="../../assets/js/events.js"></script>
    <script src="../../assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        /*Load HTML*/
        $(document).ready(function () {
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

            for (i = 0; i < 11; i++) {
                duplicate('logo');
            }
            for (i = 0; i < 20; i++) {
                duplicate('block1');
            }
            for (i = 0; i < 3; i++) {
                duplicate('block2');
            }
            for (i = 0; i < 7; i++) {
                duplicate('block3');
            }
            for (i = 0; i < 20; i++) {
                duplicate('block4');
            }
            setThem();
            putimg();
            $("#s5 li,#s3 li").addClass("hvr-float");

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
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/logo_0' + (i + 1) + '.png">' +
                    '</div>');
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
                        slidesPerView: 4.25,
                        slidesPerGroup: 4,
                        spaceBetween: 10,
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },
                    });
                });
            };
        };

    </script>
</asp:Content>

