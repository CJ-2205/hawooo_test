<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200401stay_home_shop.aspx.cs" Inherits="mobile_static_200401stay_home_shop" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200401stay_home_shop.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .maybe-like-block h3 {
            color: #565656 !important;
            font-size: 12px !important;
        }

        .maybe-like-block h5 {
            color: #6a0204 !important;
            font-size: 14px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>
        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="STAYHOME8" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/cp_01m.png" %>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/cp_02m.png" %>' alt="coupon_02" />
                    </a>
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>

        <%--======================== block1 Start =========================--%>

        <section class="am-margin-top-sm" id="s1">
            <div>
                <a href="200401stayhome_skincare.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container1" id="copydiv1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="200401stayhome_skincare.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--======================= block1  End=================--%>

        <%--======================= block2 Start ================--%>

        <section class="am-margin-top-sm" id="s2">
            <div>
                <a href="200401stayhome_supplement.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container2" id="copydiv2">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="200401stayhome_supplement.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--====================  block2 End ====================--%>
        <%--====================  block3 Start  ===================--%>

        <section class="am-margin-top-sm" id="s3">
            <div>
                <a href="200401stayhome_lifestyle.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="200401stayhome_lifestyle.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--====================  block3 End ====================--%>

        <%--==================== block4 Start ====================--%>

        <section>
            <div class="am-margin-top-sm" id="s4">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_05m.png" %>' alt="bn_05m" style="width: 100%;" />
            </div>
            <div class="mb-shop-block brand-block" id="logo">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="brands" />
                </ul>
            </div>
        </section>

        <%------------------------------------------ block4 End --------------------------------------------%>

        <%------------------------------------------block5 Start--------------------------------------------%>

        <section class="am-margin-top-sm" id="s5">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_06m.png" %>' alt="bn_06m" />
            </div>

            <div class="mb-slider-product category-slider">
                <div>
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_01m.png" %>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />

                    </ul>
                </div>
            </div>

            <div class="mb-slider-product category-slider">
                <div>
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_02m.png" %>' alt="ca_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />

                    </ul>
                </div>
            </div>

            <div class="mb-slider-product category-slider">
                <div>
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_03m.png" %>' alt="ca_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />

                    </ul>
                </div>
            </div>

            <div class="mb-slider-product category-slider">
                <div>
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_04m.png" %>' alt="ca_04m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />

                    </ul>
                </div>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_05m.png" %>' alt="ca_05m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />

                    </ul>
                </div>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_06m.png" %>' alt="ca_06m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />

                    </ul>
                </div>
            </div>
        </section>

        <%------------------------------------------block5 End--------------------------------------------%>

        <%---------------------------------------You May Also Like...  Start------------------------------%>
        <section class="am-margin-vertical-sm am-padding-bottom-lg maybe-like-block">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_07m.png" %>' alt="bn_07m" style="width: 100%;" />
            </div>
            <h5 class="am-margin-bottom-0 am-text-center">You May Also Like...</h5>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container10">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products10" />

                    </ul>
                </div>
            </div>
        </section>
        <%---------------------------------------You May Also Like...   End-------------------------------%>


        <%--======================= Footer=== Start ========================--%>
        <footer class="am-padding activity-method">
            <div class="am-container am-margin-bottom-xl">
                <p>
                    Stay Home & Shop Festival<br />
                    1. Promotion Date : 1st Apr 2020 12:00 - 8th Mar 2020 23:59<br />
                    2. Sitewide Promo Code:<br />
                    <span class="am-padding-right">- Extra 8% OFF, use code [ STAYHOME8 ], minspend RM250</span>
                    <br />
                    3. Promo Codes are applicable on selected Flagship Stores, including Dr.Morita, Paradiso Garden, Double Doctor, Zephyrine, Dore Dore, DV Tokyo, HH, DV, Laler, Choyer, Hsu's, C'est Vrai, Eurocare 1838， Loving Family, Enjoy The Life, Pandababy<br />
                    4. Free Mask with minspend RM350 (3pcs/pack, worth RM30, limited 130 sets)<br />
                    5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these  Stay Home & Shop Festival terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar am-g am-g-collapse">
        <ul class="am-avg-sm-4">
            <li onclick="goto('top')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
            </li>
            <li onclick="goto('s1')">
                <%--<a href="200401stayhome_skincare.aspx" target="_blank">--%>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                <%--</a>--%>
            </li>
            <li onclick="goto('s2')">
<%--                <a href="200401stayhome_supplement.aspx" target="_blank">--%>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
<%--                </a>--%>
            </li>
            <li onclick="goto('s3')">
<%--                <a href="200401stayhome_lifestyle.aspx" target="_blank">--%>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
<%--                </a>--%>
            </li>
        </ul>
    </div>

  
    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");
            $(".category-bn li,.also-like-block li").attr("class", "am-fl hvr-float");
            ChangeHref();
            setThem();
            putimg();
            hiddenFooterMenu();
        });


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



        function ChangeHref() {
            $('#s1 a').attr({
                "href": "200401stayhome_skincare.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "200401stayhome_supplement.aspx",
                "target": "_blank"
            });

            $('#s3 a').attr({
                "href": "200401stayhome_lifestyle.aspx",
                "target": "_blank"
            });
        }

        var brandNo = [307, 235, 283, 72, 345, 334, 301, 309];
        function putimg() {
            for (i = 0; i < 8; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200401/bd_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });

            }
        };

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

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
</asp:Content>

