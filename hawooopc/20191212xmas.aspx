<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191212xmas.aspx.cs" Inherits="user_static_20191212xmas" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <style>
        .close {
            display: none;
        }

        .swiper-wrapper.close {
            transform: translate3d(0px, 0px, 0px) !important;
            transition-duration: 0ms !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <%--===================== 側邊選單 Start ============================--%>
        <div class="side-bar am-center">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/ss_00.png" %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')" id="ss01">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/ss_01.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s3')" id="ss03">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/ss_02.png" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/ss_03.png" %>' alt="ss_04" />
                </li>
            </ul>
        </div>
        <%--===================== 側邊選單 End =============================--%>

        <%--===================== Top Banner Start ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/bn_01.png" %>' alt="主banner" />
        </div>
        <%--======================Top Banner End ==========================--%>

        <div class="am-container">
            <%--====================== 領取折扣券 Start ==========================--%>
            <div class="copy-coupon pc-copy-coupon am-margin-top-xl">

                <ul class="am-avg-sm-3">
                    <li>
                        <a id="coupon1" data-clipboard-text="X25" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="X35" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon3" data-clipboard-text="X45" onclick="Clip('coupon3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                </ul>

            </div>
            <%--======================領取折扣券 End===========================--%>

            <%--===================  Slider1 Flash Sale  Start =======================--%>

            <section class="am-margin-top-xl" id="s1">
                <div class="banner-box">
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_11.png" %>' alt="bn_11" />
                    </a>
                </div>

                <div class="slider-cover shop-block-bg am-padding-sm">
                    <div class="clock am-text-center">
                        <span id="content"></span>
                        <span class="am-padding-right-xs">STARTS IN</span>
                        <span id='d'></span>:
                        <span id='h'></span>:
                        <span id='m'></span>:
                        <span id='s'></span>
                        <span class="am-padding-left-xs">DAYS</span>
                    </div>

                    <%--                    <div class="swiper-container swiper-container2 shop-block1 slider-block" id="product-make8">--%>

                    <%--12/02-12/07 Repeater--%>
                    <div class="swiper-container swiper-container2 shop-block1 slider-block" id="rptFlashSale_1">

                        <ul class="swiper-wrapper am-margin-0 am-padding-0">
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div class="see-more-item">
                                        <h1>Coming Soon</h1>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div class="see-more-item">
                                        <h1>Coming Soon</h1>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div class="see-more-item">
                                        <h1>Coming Soon</h1>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide">
                                <a href="#!" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div class="see-more-item">
                                        <h1>Coming Soon</h1>
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

                    <%--12/08-12/11轉換成下列Repeater--%>
                    <div class="swiper-container swiper-container2 shop-block1 slider-block close" id="rptFlashSale_2">

                        <ul class="swiper-wrapper am-margin-0 am-padding-0 ">
                            <uc1:products runat="server" id="productsflash" />

                            <li class="am-fl swiper-slide">
                                <a href="20191212preorder.aspx" target="_blank">
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
                    <%--12/12當天轉換成下列Repeater--%>
                    <div class="swiper-container swiper-container2 shop-block1 slider-block close" id="rptFlashSale_3">

                        <ul class="swiper-wrapper am-margin-0 am-padding-0 ">
                            <asp:Repeater ID="rptFlashSale" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <li class="am-fl swiper-slide">
                                <a href="20191212preorder.aspx" target="_blank">
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
                <%--</div>--%>
            </section>

            <%--==================== Slider1  Flash Sale   End  ======================--%>

            <%--==================Slider2 Best Gift For You  Start =====================--%>

            <section class="am-margin-top-xl" id="s2">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="20191212best_gifts.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/bn_03.png" %>' alt="bn_03" />
                        </a>
                    </div>
                    <div class="am-padding-sm slider-block">
                        <div class="swiper-container swiper-container2" id="product-make7">
                            <ul class="swiper-wrapper am-padding-0">
                                <uc1:products runat="server" id="products1" />

                                <li class="am-fl swiper-slide">
                                    <a href="20191212best_gifts.aspx" target="_blank">
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
                </div>
            </section>

            <%--===================== Slider2  Best Gift For You   End ==================--%>

            <%--======================= Earn HA Coin Daily Start ====================--%>

            <div class="banner-box am-margin-top-xl" id="s3">
                <a href="20191212earn_ha_coin_daily.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_04.png" %>' alt="bn_04" />
                </a>
            </div>

            <%--======================= Earn HA Coin Daily   End====================--%>

            <div class="banner-box am-margin-top-xs">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_05.png" %>' alt="bn_05" />
            </div>

            <%--===================== Highlighted Brands Start  =====================--%>

            <section class="am-margin-top-xl" id="s4">

                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_06.png" %>' alt="bn_06" />
                </div>
                <div class="shop-block shop-block-bg am-padding-sm" id="product-make0">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />
                    </ul>
                </div>
            </section>

            <%--=====================Highlighted Brands ===End====================--%>

            <%--====================== Cosmetics Start ==========================--%>

            <section class="am-margin-top-xl" id="s5">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="20191212cosmetics.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_07.png" %>' alt="bn_07" />
                        </a>
                    </div>

                    <div class="am-padding-sm slider-block shop-block">
                        <div class="swiper-container swiper-container3" id="product-make7">
                            <ul class="swiper-wrapper am-padding-0">
                                <uc1:products runat="server" id="products2" />

                                <li class="am-fl swiper-slide">
                                    <a href="20191212cosmetics.aspx" target="_blank">
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
                            <a class="prev-btn3 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn3 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--===================== Cosmetics  End  ===========================--%>

            <%--=====================supplement Start ===========================--%>

            <section class="am-margin-top-xl" id="s6">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="20191212supplement.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_08.png" %>' alt="bn_08" />
                        </a>
                    </div>

                    <div class="am-padding-sm slider-block shop-block">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper am-padding-0">
                                <uc1:products runat="server" id="products3" />

                                <li class="am-fl swiper-slide">
                                    <a href="20191212supplement.aspx" target="_blank">
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
                            <a class="prev-btn4 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn4 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--====================== supplement  End==========================--%>

            <%--======================== life style Start =========================--%>

            <section class="am-margin-top-xl" id="s7">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="20191212lifestyle.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_09.png" %>' alt="bn_09" />
                        </a>
                    </div>

                    <div class="am-padding-sm slider-block shop-block">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper am-padding-0">
                                <uc1:products runat="server" id="products4" />

                                <li class="am-fl swiper-slide">
                                    <a href="20191212lifestyle.aspx" target="_blank">
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
                            <a class="prev-btn5 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn5 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--===================== life style  End ============================--%>

            <%--================ =====Clothes, Bra & Shoes Start ====================--%>
            <section class="am-margin-top-xl" id="s8">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="20191212CBS.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bn_10.png" %>' alt="bn_10" />
                        </a>
                    </div>

                    <div class="am-padding-sm slider-block shop-block">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper am-padding-0">
                                <uc1:products runat="server" id="products5" />

                                <li class="am-fl swiper-slide">
                                    <a href="20191212CBS.aspx" target="_blank">
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
                            <a class="prev-btn6 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn6 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--===================== Clothes, Bra & Shoes  End  ====================--%>

            <%--=====================You May Also Like...  Start=====================--%>
            <section class="shop-block-wrap   am-padding-vertical-xl  am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs">You May Also Like...</h1>
                <div class="shop-block" id="product-make6">
                    <ul class="am-avg-sm-5">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
            <%--======================= 活動辦法 Start ==========================--%>
        </div>
    </div>

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
    <%--==============================活動辦法 End=====================================--%>

    <script src="assets/js/swiper.min.js"></script>

    <script>
        function timeToChange() {
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

            }
        };

        var brandNo = [208, 307, 235, 345, 407, 102, 312, 283, 432, 301, 299, 318];
        function putimg() {
            for (i = 0; i < 12; i++) {
                $('#s4 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191213/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s4 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
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
            $(".shop-block-wrap li").attr("class", "am-fl hvr-float");
            timeToChange();
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

