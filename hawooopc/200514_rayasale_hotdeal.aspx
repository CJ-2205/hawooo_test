<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200514_rayasale_hotdeal.aspx.cs" Inherits="user_static_200514_rayasale_hotdeal" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <style>
        #s2 li,
        #s1 li {
            border: 1px dashed #f2f2f2;
        }

        /* Logo border style */
        #logo a {
            overflow: hidden;
            border: 3px solid #BE9C7B;
        }

        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            background: #BD6B08;
        }

        .banner {
            position: absolute;
            left: 0;
            right: 0;
            /*transform: translateY(-50%);*/
            margin: 0 auto;
            padding: 0 4%;
        }

        .banner1 {
            top: -22%;
        }

        .banner2 {
            top: -5%;
        }

        .banner3 {
            top: -10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" style="background: #BD6B08;">
        <!--側邊選單  (Start) =====================================================-->
        <div class="side-bar">
            <ul>
                <li>
                    <a href="200514_rayasale.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_00.png" alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_01.png" alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="200514_rayasale_valuebuy.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_02.png" alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="200514_rayasale.aspx?#s3" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_03.png" alt="ss_03" />
                    </a>
                </li>
                <!--?+id 代表會連結到主頁的#s4區塊 -->
                <li>
                    <a href="200514_rayasale.aspx?#s4" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/ss_04.png" alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <!--側邊選單 (End) =======================================================-->

        <div>
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bbn_01.png" alt="bbn_01" />
        </div>

        <div class="am-container">

            <!--領取折扣券 (Start)====================================================-->
            <div style="position: relative; margin-top: 8%;">
                <div class="banner banner1">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_02.png" alt="折扣banner">
                </div>

                <div class="am-margin-bottom-xl am-padding-bottom-sm" style="background: #1A1425; padding-top: 6.2rem;">
                    <ul class="am-avg-sm-4">
                        <li class="am-padding-sm ">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_01.png" alt="coupon_01" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_02.png" alt="coupon_02" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_03.png" alt="coupon_03" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_04.png" alt="coupon_04" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--領取折扣券 (End) ====================================================-->

            <!--Block2 (Start) ======================================================-->
            <div class="am-margin-bottom-xl am-padding-sm shop-block">
                <ul class="am-avg-sm-4">
                    <!--後端帶入商品 (Start) -->
                    <uc1:products runat="server" id="products1" />
                    <!--後端帶入商品 (Start) -->
                </ul>
            </div>
            <!--Block2 (End) =======================================================-->

            <!--Block3 Shop By Category (Start) ==========================================-->
            <!--Block4 Shop By Category (Start) ==========================================-->
            <!--Category1 (Start) -->
            <div style="position: relative; margin-top: 10%;">
                <div class="banner banner3">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_06.png" alt="bn_06" />
                </div>
                <section class="am-margin-bottom-xl am-padding" id="s4" style="background: #1A1425; padding-top: 6.2rem;">
                    <!--類別錨點 (Start)-->
                    <div class="am-padding-vertical">
                        <ul class="am-avg-sm-6">
                            <li class="am-padding-xs" id="point1"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_01.png"
                                    alt="h_01" /></a></li>
                            <li class="am-padding-xs" onclick="goto('point2')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_02.png"
                                    alt="h_02" /></a></li>
                            <li class="am-padding-xs" onclick="goto('point3')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_03.png"
                                    alt="h_03" /></a></li>
                            <li class="am-padding-xs" onclick="goto('point4')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_04.png"
                                    alt="h_04" /></a></li>
                            <li class="am-padding-xs" onclick="goto('point5')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_05.png"
                                    alt="h_05" /></a></li>
                            <li class="am-padding-xs" onclick="goto('point6')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_06.png"
                                    alt="h_06" /></a></li>
                        </ul>
                    </div>
                    <!--類別錨點 (Start)-->
                    <div class="am-margin-bottom am-padding-xs  pc-category-block">
                        <div class="am-margin-right-sm category-bn ">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_01.png" style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container1" id="block4">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="products2" />
                                    <li class="am-fl swiper-slide am-text-center goods-more">
                                        <a href="2020momsday2_hot_deal.aspx" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom">
                                                <h3 class="am-padding-top-xl">See More</h3>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <a href="#!" class="prev-btn prev-btn1">
                                    <span class="am-icon-chevron-left"></span>
                                </a>
                                <a href="#!" class="next-btn next-btn1">
                                    <span class="am-icon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!--Category1 (End) -->

            <!--Category2 (Start) -->
            <section class="am-margin-bottom-xl" id="point2">
                <div class="am-margin-bottom am-padding-sm  pc-category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_02.png" style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products3" />

                            </ul>
                            <a href="#!" class="prev-btn prev-btn2">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn2">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category2 (End) -->

            <!--Category3 (Start) -->
            <section class="am-margin-bottom-xl" id="point3">
                <div class="am-margin-bottom am-padding-sm  pc-category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_03.png" style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products4" />

                            </ul>
                            <a href="#!" class="prev-btn prev-btn3">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn3">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!--Category3 (End) -->

            <!--Category4 (Start) -->
            <section class="am-margin-bottom-xl" id="point4">
                <div class="am-margin-bottom am-padding-sm  pc-category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_04.png" style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products5" />

                            </ul>
                            <a href="#!" class="prev-btn prev-btn4">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn4">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category4 (End) -->

            <!--Category5 (Start) -->
            <section class="am-margin-bottom-xl" id="point5">
                <div class="am-margin-bottom am-padding-sm  pc-category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_05.png" style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products6" />

                            </ul>
                            <a href="#!" class="prev-btn prev-btn5">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn5">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category5 (End) -->

            <!--Category6 (Start) -->
            <section class="am-margin-bottom-xl" id="point6">
                <div class="am-margin-bottom am-padding-sm  pc-category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_06.png" style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products7" />

                            </ul>
                            <a href="#!" class="prev-btn prev-btn6">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn6">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!--Category6 (End) -->
            <!--Block3 Shop By Category (End) ==========================================-->
        </div>
    </div>


    <!-- Useless, since master page have it included already. -->
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $(".swiper-container li").addClass("am-fl swiper-slide");
            setThem();
        });



        // 設定Slider
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

        //電梯
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

    </script>
</asp:Content>
