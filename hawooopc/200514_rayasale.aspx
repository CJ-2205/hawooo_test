<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200514_rayasale.aspx.cs" Inherits="user_static_200514_rayasale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

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
        }

        .banner {
            position: absolute;
            left: 0;
            right: 0;
            transform: translateY(-50%);
            margin: 0 auto;
            padding: 0 4%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Todo_treegb:  
    #Coupon copy mot working.
      #Highlight ,, logo is broken.
      #"2020momsday2_hot_deal.html" 要改成什麼? (等下 howard  會給我)。
       #About categories, 1. should I  duplicate it? 2. sub page, should I duplicate it from index??  (Howoard 重新傳 mobile 做好的給我)
  -->
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
                <div class="banner ">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_02.png" alt="折扣banner">
                </div>

                <div class="am-margin-bottom-xl am-padding-bottom-sm" style="background: #1A1425; padding-top: 6.2rem;">
                    <ul class="am-avg-sm-4">
                        <li class="am-padding-sm ">
                            <a class="btnn" data-clipboard-text="RAYA15">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_01.png"
                                    alt="點我複製 RAYA15" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a class="btnn" data-clipboard-text="RAYA35">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_02.png"
                                    alt="點我複製 RAYA35" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a class="btnn" data-clipboard-text="RAYA55">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_03.png"
                                    alt="點我複製 RAYA55" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/coupon_04.png"
                                    alt="點我複製 bday15" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--領取折扣券 (End) ====================================================-->

            <!--Block1 (Start) =====================================================-->
            <section class="am-margin-bottom-xl" id="s1">
                <div>
                    <a href="200514_rayasale_hotdeal.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_03.png" alt="bn_02" />
                    </a>
                </div>
                <div style="background: #1A1425">
                    <div class="am-padding pc-slider">
                        <div class="swiper-container swiper-container7" id="block1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products1" />
                                <li class="am-fl swiper-slide am-text-center goods-more">
                                    <a href="200514_rayasale_hotdeal.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem"
                                            style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png"
                                                    alt="more" />
                                            </div>
                                        </div>
                                        <div class="am-text-center goods-bottom">
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
                        <a href="200514_rayasale_hotdeal.aspx" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/more.png" alt="more" />
                        </a>
                    </div>
                </div>
            </section>
            <!--Block1 (End) ======================================================-->

            <!--Block2 (Start) =====================================================-->
            <section class="am-margin-bottom-xl" id="s2">
                <div>
                    <a href="200514_rayasale_valuebuy.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_04.png" alt="bn_03" />
                    </a>
                </div>
                <div style="background: #1A1425">
                    <div class="am-padding pc-slider">
                        <div class="swiper-container swiper-container8" id="block1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products2" />
                                <li class="am-fl swiper-slide am-text-center goods-more">
                                    <a href="200514_rayasale_valuebuy.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem"
                                            style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png"
                                                    alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <h2 class="am-text-center goods-bottom">See More</h2>
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
                        <a href="200514_rayasale_valuebuy.aspx" target="_blank">
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
                        style="background: #1A1425; padding-top: 6.2rem;">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" id="products3" />
                        </ul>
                    </div>
                </section>
            </div>
            <!--Block2 Block3 Highlighted Brands(End) ======================================-->

            <!--Block4 Shop By Category (Start) ==========================================-->
            <!--Category1 (Start) -->
            <div style="position: relative; margin-top: 10%;">
                <div class="banner">
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
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_01.png"
                                    style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container1" id="block4">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="products4" />
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_02.png"
                                style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products5" />
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
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_03.png"
                                style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products6" />
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
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_04.png"
                                style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products7" />
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
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_05.png"
                                style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products8" />
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
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_06.png"
                                style="width: 100%;">
                        </a>
                    </div>
                    <div class="category-slider">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products9" />
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
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
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

            <!--Block4  You May Also Like... (Start)========================================-->
            <section class="am-padding-vertical-lg  am-margin-bottom-xl" id="s5">
                <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center" style="color: white; text-shadow: 0.1em 0.1em 0.05em #333">You May Also
                    Like...
                </h1>
                <div>
                    <div class="shop-block" id="block5">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products10" />
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



    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            setThem();
            putimg();
            $("#s5 li,#s3 li").addClass("hvr-float");
        });



        // 放置logo
        function putimg() {
            for (i = 0; i < 12; i++) {
                $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        }

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
        function PutBrandUrl() {
            var url = "";
            var index = 0;
            $(".brand-href li").each(function () {
                url = "https://www.hawooo.com/user/brands.aspx?bid=";
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
