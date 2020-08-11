<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="0302womens_day.aspx.cs" Inherits="mobile_static_0302womens_day" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/0302womens_day.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .maybe-like-block h3 {
            color: #565656 !important;
            font-size: 12px !important;
        }

        .maybe-like-block h5 {
            color: #ffffff !important;
            font-size: 14px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
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
            </ul>
        </div>

        <div class="coupon-mb">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/coupon_04m.png" %>' alt="coupon_04" />
        </div>

        <%--========================Coupon End===============================--%>

        <%--=======================Slider1 Hot Deal Start =========================--%>

        <section class="section-spacing" id="s1">
            <div class="banner-box hot-deal-clock">
                <a href="0302womens_day_hot_deal.aspx" target="_blank">
                    <img runat="server" id="img1" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/bn_02m.png" alt="bn_02" style="width: 100%;" />
                </a>
                <%-- 計時器 Start--%>
                <div class="clock" runat="server" id="clock1">
                    <span id="d"></span>:
                        <span id='h'></span>:
                        <span id='m'></span>:
                        <span id='s'></span>
                </div>
                <%-- 計時器 End--%>
            </div>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="0302womens_day_hot_deal.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
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

        <%--==================== Slider1 Hot Deal Start===========================--%>

        <%--==================== Slider2 Best Gifts Start  ==========================--%>

        <section class="section-spacing" id="s2">
            <div class="banner-box heart-bn">
                <a href="0302womens_day_buy1free1.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_04m.png" %>' alt="bn_03" style="width: 100%;" />
                </a>

            </div>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="0302womens_day_buy1free1.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
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

        <%--==================== Slider2 Best Gifts End ===========================--%>

        <%--====================Highlighted Brands Start ==========================--%>

        <section class="section-spacing">
            <div class="banner-box heart-bn" id="s3">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_05m.png" %>' alt="bn_05" style="width: 100%;" />
                </a>
            </div>

            <div class="goods-3items-mb" id="logo">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='https://www.hawooo.com/mobile/brand_1.aspx?bid=<%# Eval("B01").ToString() %>' target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis">-<%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("-","") %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands  End=========================--%>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

        <section class="section-spacing" id="s4">
            <div class="banner-box heart-bn">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bn_06m.png" %>' alt="bn_06" />
            </div>

            <div class="float-menu">
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
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="h_06" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box am-margin-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_01m.png" %>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4" id="product-make4">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />

                    </ul>
                </div>
            </div>

        </section>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


        <%--=====================錨點連結區2   Start  ==============================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="h_01" /></a></li>
                    <li class="is-active" id="tab2"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="h_06" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_02m.png" %>' alt="c_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />
                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區2  End ============================--%>

        <%--=====================錨點連結區3  Start============================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="h_02" /></a></li>
                    <li class="is-active" id="tab3"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="h_06" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_03m.png" %>' alt="c_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />
                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="h_03" /></a></li>
                    <li class="is-active" id="tab4"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="h_06" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_04m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Star t==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="h_04" /></a></li>
                    <li class="is-active" id="tab5"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="h_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="h_06" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_05m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區5  End ==========================--%>

        <%--=====================錨點連結區6  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_05.png" %>' alt="h_05" /></a></li>
                    <li id="tab6"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/h_06.png" %>' alt="h_06" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ca_06m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區6  End ==========================--%>


        <%--===================== You May Also Like...  Start====================--%>

        <section class="section-spacing maybe-like-block">
            <h5 class="am-margin-bottom-0 am-padding-left-xs">You May Also Like...</h5>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />
                    </ul>
                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method am-padding">
            <div class="am-container">
                Terms & Conditions<br />
                International Women's Day Sale<br />
                1.Promotion Date : 2nd Mar 2020 12:00 - 11th Mar 2020 23:59<br />
                2.Promo Code: 
             <div class="indent">
                 <ul>
                     <li>-RM18 OFF (min spend 250), use code[ WM18 ]</li>
                     <li>-RM38 OFF (min spend 450), use code[ WM38 ]</li>
                     <li>-RM58 OFF (min spend 650), use code[ WM58 ]</li>
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
        <%--=======================Footer===End==========================--%>
    </div>

    <section class="footer-bar am-g am-g-collapse">
        <div>
            <ul class="am-avg-sm-2">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_00m.png" %>' alt="ss_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_02m.png" %>' alt="ss_01m" style="width: 100%;" />
                </li>
            </ul>
        </div>
        <div>
            <ul class="am-avg-sm-3">
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_03m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_04m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_05m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </section>


    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");

            setThem();
            ChangeHref();

            hiddenFooterMenu();
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
                                slidesPerView: 2.15,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            },
                            320: {
                                slidesPerView: 2.1,
                                spaceBetween: 3,
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


        var brandNo = [208, 307, 72, 102, 235, 345, 349, 283, 203, 222, 450, 334];
        $(function putimg() {
            for (i = 0; i < 12; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }
        });


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
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".clock").everyTime('1s',
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

