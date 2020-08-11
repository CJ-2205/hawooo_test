<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="0302womens_day.aspx.cs" Inherits="user_static_0302womens_day" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/0302womens_day.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="am-g main-contain">
        <%--========================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_00.png" %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_04.png" %>' alt="ss_04" />
                </li>
            </ul>
        </div>
        <%--======================== 側邊選單 End ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_01.png" %>' alt="主banner" />
        </div>

        <div class="am-container am-margin-vertical-lg">
            <%--=====================領取折扣券 Start ==========================--%>
            <section class="section-spacing copy-coupon">
                <ul class="am-avg-sm-4">
                    <li>
                        <a id="coupon1" data-clipboard-text="WM18" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="WM38" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon3" data-clipboard-text="WM58" onclick="Clip('coupon3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                    <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/coupon_04.png" %>' alt="coupon_04" />
                    </li>
                </ul>
            </section>
            <%--=====================領取折扣券 End ===========================--%>
            <%--================== Slider1 Hot Deal   End  Start =====================--%>

            <section class="section-spacing" id="s1">

                <div class="banner-box hot-deal-bn-block">
                    <ul class="am-avg-sm-2">
                        <li class="hot-deal-bn1">
                            <a href="0302womens_day_hot_deal.aspx" target="_blank">
                                <img runat="server" id="img1" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/bn_02.png" />
                            </a>
                            <%-- 計時器 Start--%>
                            <div class="clock" runat="server" id="clock1">
                                <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                            </div>
                            <%-- 計時器 End--%>
                        </li>
                        <li class="hot-deal-bn2" style="position: relative;">
                            <a href="#!" target="_blank">
                                <img runat="server" id="img2" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/bn_03.png" />
                            </a>
                            <%-- 計時器 Start--%>
                            <div class="clock" runat="server" id="clock2" visible="false">
                                <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                            </div>
                            <%-- 計時器 End--%>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container1" id="product-make1">
                        <ul class="swiper-wrapper am-padding-0">

                            <uc1:products runat="server" id="products1" />

                            <li class="am-fl swiper-slide">
                                <a href="0302womens_day_hot_deal.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div class="see-more-item">
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn1 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn1 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>

            </section>

            <%--================== Slider1 Hot Deal   End =====================--%>
            <%--================== Slider2  Buy One Free One Start ===============--%>

            <section class="section-spacing" id="s2">

                <div class="banner-box">
                    <a href="0302womens_day_buy1free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_04.png" %>' />
                    </a>
                </div>
                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container2">
                        <ul class="swiper-wrapper am-padding-0">
                            <uc1:products runat="server" id="products2" />

                            <li class="am-fl swiper-slide">
                                <a href="0302womens_day_buy1free1.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div class="see-more-item">
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn2 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn2 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>

            </section>

            <%--===================== Slider2  Buy One Free One  End ==================--%>
            <%--===================== Highlighted Brands Start  =====================--%>

            <section class="section-spacing" id="s3">

                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_05.png" %>' alt="bn_05" />
                </div>
                <div class="shop-block am-padding-sm" id="product-make3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />

                    </ul>
                </div>
            </section>

            <%--=====================Highlighted Brands ===End====================--%>

            <%--=====================錨點連結區1 Shop By Category Start ===============--%>
            <section class="section-spacing" id="s4">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_06.png" %>' alt="bn_06" />
                </div>

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li class="is-active" id="tab1"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="h_05" /></a></li>
                        <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="bg_06" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs category-bn shop-block">
                    <ul class="am-avg-sm-5">
                        <li class="am-fl  hvr-float">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_01.png" %>'>
                            </a>
                        </li>
                        <uc1:products runat="server" id="products3" />

                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>
            <%--===================== 錨點連結區2  Start==========================--%>
            <section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="bg_01" /></a></li>
                        <li class="is-active" id="tab2"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="bg_06" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs category-bn shop-block">
                    <ul class="am-avg-sm-5">
                        <li class="am-fl  hvr-float">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_02.png" %>'>
                            </a>
                        </li>
                        <uc1:products runat="server" id="products4" />

                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
            <section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="bg_02" /></a></li>
                        <li class="is-active" id="tab3"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="bg_06" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block category-bn">
                    <ul class="am-avg-sm-5">
                        <li class="am-fl  hvr-float">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_03.png" %>'>
                            </a>
                        </li>
                        <uc1:products runat="server" id="products5" />
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
            <section class="am-margin-top-lg">
                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="bg_03" /></a></li>
                        <li class="is-active" id="tab4"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="bg_06" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block category-bn">
                    <ul class="am-avg-sm-5">
                        <li class="am-fl  hvr-float">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_04.png" %>'>
                            </a>
                        </li>
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>
            <%--===================== 錨點連結區5  Start==========================--%>
            <section class="am-margin-top-lg">
                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="bg_04" /></a></li>
                        <li class="is-active" id="tab5"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="bg_06" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block category-bn">
                    <ul class="am-avg-sm-5">
                        <li class="am-fl  hvr-float">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_05.png" %>'>
                            </a>
                        </li>
                        <uc1:products runat="server" id="products7" />

                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>
            <%--===================== 錨點連結區6  Start==========================--%>
            <section class="am-margin-top-lg">
                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="bg_05" /></a></li>
                        <li class="is-active" id="tab6"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="bg_07" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block category-bn">
                    <ul class="am-avg-sm-5">
                        <li class="am-fl  hvr-float">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_06.png" %>'>
                            </a>
                        </li>
                        <uc1:products runat="server" id="products8" />
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--=====================You May Also Like...  Start=====================--%>
            <section class="section-spacing you-may-also-like-block">
                <h1 class="am-margin-bottom-xs am-padding-left-xs">You May Also Like...</h1>
                <div class="am-padding-xs shop-block">
                    <ul class="am-avg-sm-5">
                        <uc1:products runat="server" id="products9" />

                    </ul>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
        </div>
        <%--=======================活動辦法 Start ===========================--%>
        <footer class="activity-method am-padding-vertical-lg">
            <div class="am-container">
                Terms & Conditions<br />
                International Women's Day Sale<br />
                1.Promotion Date : 2nd Mar 2020 12:00 - 11th Mar 2020 23:59<br />
                2.Promo Code: 
             <div class="indent">
                 <ul>
                     <li>- RM18 OFF (min spend 250), use code [ WM18 ]</li>
                     <li>- RM38 OFF (min spend 450), use code [ WM38 ]</li>
                     <li>- RM58 OFF (min spend 650), use code [ WM58 ]</li>
                 </ul>
             </div>
                * Promo Codes are NOT applicable on Hot Deal Items<br />
                3. Free Gift with min spend (only available when the sale has started)<br />
                <div class="indent">
                    <ul>
                        <li>- Free Zephyrine Rose Essence Lotion 30ml (Worth RM 40, Min Spend RM380, Limited 300 sets)</li>
                    </ul>
                </div>
                4. Promo Codes are applicable on selected Flagship Stores, including Dr.Morita, Paradiso Garden, Grandma Therapy, Naturero, Zephyrine, DV Tokyo, C'est Vrai, DV, Laler, Choyer, Ivita, Check2check, Loving Famliy & Enjoy The Life, Hsu's<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these International Women's Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.<br />
            </div>
        </footer>
        <%--=======================活動辦法 End============================--%>
    </main>

    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        //function hidecoupon() {
        //    var date4 = new Date("2019-12-07T00:00:00");
        //    var dateNow = new Date();

        //    if (dateNow > date4) {
        //        $('.slider-cover').remove();
        //    }
        //};
        //hidecoupon();


    </script>
    <script>

        $(window).load(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            //$("#s1 .swiper-container li").last().addClass('see-more-item');
            //$("#s3 .swiper-container li").last().addClass('see-more-item');
            $(".shop-block li").attr("class", "am-fl  hvr-float")
            ChangeHref();

            setThem();
        });


        function ChangeHref() {
            $('#s1 a').attr({
                "href": "0302womens_day_hot_deal.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "0302womens_day_buy1free1.aspx",
                "target": "_blank"
            });

        }

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
                        slidesPerView: 3.5,
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

                    });
                });
            };
        };

    </script>
    <script type="text/javascript">

        $(function () {
            var url = location.search;
            if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
                var v = url.split('?')[1];
                v = v.split('=')[1];
                goto(v);
            }
        });

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //$(function () {
        //    var url = location.search;
        //    if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
        //        var v = url.split('?')[1];
        //        v = v.split('=')[1];
        //        goto(v);
        //    }
        //});

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        var brandNo = [208, 307, 72, 102, 235, 345, 349, 283, 203, 222, 450, 334];
        $(function putimg() {
            for (i = 0; i < 12; i++) {
                $('#s3 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s3 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }
        });

    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $("#<%= clock1.ClientID %>").everyTime('1s',
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

            $("#<%= clock2.ClientID %>").everyTime('1s',
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
    </script>
</asp:Content>

