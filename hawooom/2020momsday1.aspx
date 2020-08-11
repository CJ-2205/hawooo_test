<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020momsday1.aspx.cs" Inherits="mobile_static_2020momsday1" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020momsday1.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_01m.png" %>' alt="bbannern_02" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a class="btnn" data-clipboard-text="MOM25">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_01m.png" %>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a class="btnn" data-clipboard-text="MOM35">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_02m.png" %>' alt="coupon_02" />

                    </a>
                </li>
                <li>
                    <a class="btnn" data-clipboard-text="MOM55">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_03m.png" %>' alt="coupon_03" />
                    </a>
                </li>
                <li>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_04m.png" %>' alt="coupon_04" />
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>

        <%--======================== Block1 Start ==============================--%>
        <section id="s1">
            <div>
                <a href="2020momsday1_hotdeal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <uc1:products runat="server" id="products1" />
                </ul>
            </div>
            <div class="more">
                <a href="2020momsday1_hotdeal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_03m.png" %>' alt="more" />
                </a>
            </div>
        </section>
        <%--======================== Block1 End =============================--%>

        <%--========================Highlighted Brands Start =====================--%>

        <section class="am-margin-top-sm" id="s2">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
            </div>
            <div class="mb-shop-block" id="logo">
                <ul class="am-avg-sm-2 am-avg-md-3 brand-href">
                    <uc1:products runat="server" id="products2" />
                </ul>
            </div>
        </section>

        <%--=====================Highlighted Brands End ============================--%>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

        <section class="am-margin-top-sm" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_05m.png" %>' alt="bn_05m" />
            </div>

            <div>
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs" id="point1"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_01.png" %>' alt="v_01" />
                    </a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_02.png" %>' alt="v_02" />
                    </a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_03.png" %>' alt="v_03" />
                    </a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_04.png" %>' alt="v_04" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_05.png" %>' alt="v_05" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_06.png" %>' alt="v_06" /></a></li>
                </ul>
            </div>

            <div>
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_01m.png" %>' alt="h_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="mb-slider-product category-slider">
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products3" />
                            <li class="am-fl swiper-slide">
                                <div class="see-more-item">
                                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                                        <div class="product_item_pic">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                        </div>
                                        <div class="product_item_text am-text-center">
                                            <h6>See More</h6>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


        <%--=====================錨點連結區2   Start  ==============================--%>

        <section class="am-margin-top-sm" id="point2">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_02m.png" %>' alt="h_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區2  End ============================--%>

        <%--=====================錨點連結區3  Start============================--%>

        <section class="am-margin-top-sm" id="point3">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_03m.png" %>' alt="h_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start ==========================--%>

        <section class="am-margin-top-sm" id="point4">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_04m.png" %>' alt="h_04m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Start==========================--%>

        <section class="am-margin-top-sm" id="point5">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_05m.png" %>' alt="h_05m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區5  End ==========================--%>
        <%--=====================錨點連結區6  Start==========================--%>

        <section class="am-margin-top-sm" id="point6">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_06m.png" %>' alt="h_06m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區6  End ==========================--%>

        <%--===================== You May Also Like...  Start====================--%>

        <section class="am-margin-vertical-sm">
            <h2 class="am-margin-bottom-0 am-padding-left am-text-center also-like">You May Also Like...</h2>
            <div class="mb-shop-block bg-none">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <uc1:products runat="server" id="products9" />
                </ul>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="am-padding-xl activity-method">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    Mother's Day Sale 1<br>
                    1. Promotion Date : 22nd Apr 2020 12:00 - 30th Apr 2020 11:59<br>
                    2. Promo Code:<br>
                </p>
                <p class="am-padding-left-lg">
                    - RM25 OFF (min spend 280), use code [ MOM25 ]<br>
                    - RM35 OFF (min spend 380), use code [ MOM35 ]<br>
                    - RM55 OFF (min spend 600), use code [ MOM55 ]<br>
                </p>
                <p>
                    3. Free DV Tokyo Redness Relief Soft Cream 5ml with any purchase (Worth RM45, limited 450 sets, only available when the sale has started)<br>
                    4. Promo Codes are applicable on selected Flagship Stores, including Dr Cink, Dr. Morita, DV, Laler, Choyer, Dr.Lady, Hsu's, Ivita, Supercut, Paradiso Garden, Naturero, Eurocares 1838, Enjoy The Life, Unipapa, Check2Check, Sofei, Cest V'rai, Pandababy, Zephyrine, Dore Dore, DV Tokyo, Double Doctor, & HH (selected HH items).
                    <br>
                    5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mother's Day Sale 1 from time to time, and in such manner as Hawooo deems appropriate.<br>
                </p>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar am-g am-g-collapse">

        <ul class="am-avg-sm-4">
            <li onclick="goto('top')">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_01m.png" alt="ss_01m" style="width: 100%;" />
            </li>
            <li onclick="goto('s1')">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_02m.png" alt="ss_02m" style="width: 100%;" />
            </li>
            <li onclick="goto('s2')">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_03m.png" alt="ss_03m" style="width: 100%;" />
            </li>
            <li onclick="goto('s3')">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_04m.png" alt="ss_04m" style="width: 100%;" />
            </li>
        </ul>
    </div>

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">
        function PutUrl() {
            $('#s1 a').attr({
                "href": "2020momsday1_hotdeal.aspx",
                "target": "_blank"
            });
        };
        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            setThem();
            hiddenFooterMenu();
            PutUrl();
            PutBrandUrl();
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

        function PutBrandUrl() {
            var url = "";
            var index = 0;
            $(".brand-href li").each(function () {
                url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
                switch (index) {
                    case 0:
                        {
                            url = url + '208';
                            break;
                        }
                    case 1:
                        {
                            url = url + '307';
                            break;
                        }
                    case 2:
                        {
                            url = url + '235';
                            break;
                        }
                    case 3:
                        {
                            url = url + '283';
                            break;
                        }
                    case 4:
                        {
                            url = url + '334';
                            break;
                        }
                    case 5:
                        {
                            url = url + '450';
                            break;
                        }
                    case 6:
                        {
                            url = url + '222';
                            break;
                        }
                    case 7:
                        {
                            url = url + '131';
                            break;
                        }

                }
                $(this).find('a').attr("href", url);
                index++;
            });
        };
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };


        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        });

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

