<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191212xmas.aspx.cs" Inherits="mobile_static_20191212xmas" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

    <style>
        .close {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="X25" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/coupon_01m.png" %>' alt="coupon_01m" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="X35" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/coupon_02m.png" %>' alt="coupon_02m" />
                    </a>
                </li>
                <li>
                    <a id="coupon3" data-clipboard-text="X45" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/coupon_03m.png" %>' alt="coupon_03m" />
                    </a>
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>


        <%--==================Slider1 Flash Sale Start===============================--%>

        <section class="am-margin-top-sm goods-mb" id="s1">
            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_11m.png" %>' alt="bn_11m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="slider-cover">
                    <div class="clock am-text-center">
                        <span id="content"></span>
                        <span class="am-padding-right-xs">STARTS IN</span>
                        <span id='d'></span>:
                        <span id='h'></span>:
                        <span id='m'></span>:
                        <span id='s'></span>
                        <span class="am-padding-left-xs">DAYS</span>
                    </div>

                    <%--                    <div class="swiper-container swiper-container2">--%>

                    <%--12/02-12/07 Repeater--%>
                    <div class="swiper-container swiper-container2" id="rptFlashSale_1">

                        <ul class="swiper-wrapper am-margin-0 am-padding-0">
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h2><strong>Coming Soon</strong></h2>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h2><strong>Coming Soon</strong></h2>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h2><strong>Coming Soon</strong></h2>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h2><strong>Coming Soon</strong></h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <%--12/08-12/11轉換成下列Repeater--%>
                    <div class="swiper-container swiper-container2 close" id="rptFlashSale_2">

                        <ul class="swiper-wrapper am-margin-0 am-padding-0">
                            <uc1:products runat="server" id="productsflash" />
                            <li class="am-fl swiper-slide">
                                <a href="20191212preorder.aspx" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h2><strong>See More</strong></h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <%--12/12當天轉換成下列Repeater--%>
                    <div class="swiper-container swiper-container2 close" id="rptFlashSale_3">
                        <ul class="swiper-wrapper am-margin-0 am-padding-0">
                            <asp:Repeater ID="rptFlashSale" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="product_item_pic">
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                            <div class="product_item_text">
                                                <div class="product_item_block am-cf">
                                                    <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                </div>
                                                <div class="product_item_block am-cf">

                                                    <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                                    <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                </div>

                                                <%-- 火力bar --%>
                                                <div class="fire-bar-block">
                                                    <div class="fire-img">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                                    </div>
                                                    <div class="fire-bar">
                                                        已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                    </div>
                                                    <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                </div>
                                                <%-- 火力end --%>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                            <li class="am-fl swiper-slide">
                                <a href="20191212preorder.aspx" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h2><strong>See More</strong></h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <%--11/11當天Repeater End--%>
                </div>
            </div>
        </section>

        <%--=======================Slider1 Flash Sale  End============================--%>

        <%--=====================Slider2 Best Gift For You  Start =========================--%>

        <section class="am-margin-top-sm goods-mb am-margin-bottom-sm" id="s2">
            <div class="banner-box">
                <a href="20191212best_gifts.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide">
                            <a href="20191212best_gifts.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </section>

        <%--====================Slider2 Best Gift For You  End============================--%>

        <%--=======================Earn HA Coin Daily Start ============================--%>

        <a href="20191212earn_ha_coin_daily.aspx" target="_blank" id="s3">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
        </a>

        <div class="banner-box  am-padding-top-sm">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_05m.png" %>' alt="bn_05m" style="width: 100%;" />
        </div>
        <%--=======================Earn HA Coin Daily Start ===========================--%>

        <%--=======================Highlighted Brands Start ===========================--%>

        <section>
            <div class="banner-box  am-padding-top" id="s4">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_06m.png" %>' alt="bn_06m" style="width: 100%;" />
            </div>

            <div class="shop-block-bg goods-3items-mb" id="logo">
                <ul class="am-avg-sm-3">
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

        <%--=======================Cosmetics Start Start===========================--%>
        <section class="am-margin-top-sm goods-mb" id="s5">
            <div class="banner-box">
                <a href="20191212cosmetics.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_07m.png" %>' alt="bn_07m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide">
                            <a href="20191212cosmetics.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </section>

        <%--=======================Cosmetics Start   End============================--%>
        <%--==================== supplement= Start ================================--%>
        <section class="am-margin-top-sm goods-mb" id="s6">
            <div class="banner-box">
                <a href="20191212supplement.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_08m.png" %>' alt="bn_08m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products3" />

                        <li class="am-fl swiper-slide">
                            <a href="20191212supplement.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </section>


        <%--========================supplement== End ============================--%>


        <%--=============================life style Start==========================--%>
        <section class="am-margin-top-sm goods-mb" id="s7">
            <div class="banner-box">
                <a href="20191212lifestyle.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_09m.png" %>' alt="bn_09m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products4" />

                        <li class="am-fl swiper-slide">
                            <a href="20191212lifestyle.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </section>
        <%--===================== life style  End===============================--%>

        <%--==================== Clothes, Bra & Shoes Start  =======================--%>

        <section class="am-margin-top-sm goods-mb" id="s8">
            <div class="banner-box">
                <a href="20191212CBS.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_10m.png" %>' alt="bn_10m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products5" />

                        <li class="am-fl swiper-slide">
                            <a href="20191212CBS.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </section>

        <%--===================== Clothes, Bra & Shoes  End =======================--%>


        <%--=====================You May Also Like...  Start========================--%>

        <section class="am-padding-top-sm am-padding-bottom-lg">
            <h3 class="am-margin-bottom-0 am-padding-left-xs">You May Also Like...</h3>
            <div class="mb-slider-product shop-block-bg  goods-mb">
                <div class="swiper-container swiper-container11" id="product-make9">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                Xmas x 1212 Sale<br />
                1. Promotion date : 2nd December 2019 - 26th December 2019<br />
                2. Promotion Coupon:<br />
                * RM25 OFF (min spend 250), use code [ X25 ]<br />
                * RM35 OFF (min spend 350), use code [ X35 ]<br />
                * RM45 OFF (min spend 450), use code [ X45 ]<br />
                * Coupon is NOT applicable on 1212 Flash Sale Items<br />
                3.Gift with purchase<br />
                * Free Beauty Box with min spend RM400 (limited 200 pcs)<br />
                * Free HaWooo 2020 Calendar with min spend RM500 (limited 300 pcs)<br />
                4. Coupon is APPLICABLE on selected Flagship Stores , including Dr.Lady, Nature Food Cover, Hsu's, Laler, Choyer, CHECK2CHECK, Cest V'rai, Loving Family, Rootfocus, Enjoy The Life, ANRIEA, Dr.Cink, Zephyrine, Paradiso Garden, Grandmotherapy, Hallmark, Mooimom, Dore Dore.<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 1111 After Party Sale Terms from time to time, and in such manner as Hawooo deems appropriate.<br />
            </p>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-3">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')" id="ss01">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')" id="ss03">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_05m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>


    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">


        function timeChange() {
            var date1 = new Date("2019-12-08T00:00:00");
            var date2 = new Date("2019-12-12T00:00:00");
            var date3 = new Date("2019/12/13 00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('.clock').remove();
                $('#rptFlashSale_1').remove();//移除原flashsale商品塊
                $('#rptFlashSale_2').removeClass('close');//顯示flashsale預購商品塊
                $('#s1 a').attr({
                    "href": "20191212preorder.aspx",
                    "target": "_blank"
                });
            }
            if (dateNow > date2) {
                $('#rptFlashSale_2').remove();//移除flashsale預購商品塊
                $('#rptFlashSale_3').removeClass('close');//顯示新flashsale商品塊(有火)
            }

            if (dateNow > date3) {
                $('#s1,#s3,#ss01,#ss03').remove();
                $(".footer-bar ul").attr('class', 'am-avg-sm-4');

            }
        };

        var brandNo = [307, 208, 235, 12, 407, 102, 312, 283, 368, 96, 437, 318];
        function putimg() {
            for (i = 0; i < 12; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191202/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');

            }
        };

        function changeUrl() {
            $('#s2 a').attr({
                "href": "20191212best_gifts.aspx",
                "target": "_blank"
            });
            $('#s5 a').attr({
                "href": "20191212cosmetics.aspx",
                "target": "_blank"
            });
            $('#s6 a').attr({
                "href": "20191212supplement.aspx",
                "target": "_blank"
            });
            $('#s7 a').attr({
                "href": "20191212lifestyle.aspx",
                "target": "_blank"
            });
            $('#s8 a').attr({
                "href": "20191212CBS.aspx",
                "target": "_blank"
            });
        };

        $(window).load(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            timeChange();
            setThem();
            putimg();
            changeUrl();
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

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };


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

