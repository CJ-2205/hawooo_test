<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200618mys2.aspx.cs" Inherits="mobile_static_200618mys2" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <style>
        /* Logo border style */
        /* #logo a {
        overflow: hidden;
        border: 2.5px solid #362E2B;
        } */
        /*@media screen and (min-width: 650px) {
            #s1 .goods-more .goods-bottom {
                min-height: 234px;
            }
        }

        @media screen and (max-width: 650px) {
            #s1 .goods-more .goods-bottom {
                min-height: 115px;
            }
        }*/

        .mb-shop-block {
            padding: 3px;
        }

        .category-slider {
            background: #A93921;
        }

        .coupon {
            position: relative;
        }

            .coupon img {
                -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
                filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
            }

        .coupon-code {
            background: #fff;
            color: #A63B24;
            font-weight: bold;
            text-align: center;
            font-size: 14px;
            padding: 3px 5px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media screen and (max-width: 650px) {
            .coupon-code {
                font-size: 12px;
                min-height: 49px;
            }
        }

        .footer-bar {
            z-index: 100;
        }
    </style>

    <title>Mid Year Sale2</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #A93921;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_02m.png" %>' alt="main-banner" />
        </div>
        <div class="am-margin-bottom">
            <div class="am-padding-horizontal-xs">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs coupon">
                        <a class="btnn " data-clipboard-text="MID25">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>
                                <asp:Literal runat="server" ID="Coupon1"></asp:Literal></span> have used it</h6>

                        </div>
                    </li>
                    <li class="am-padding-xs coupon">
                        <a class="btnn " data-clipboard-text="MID40">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>
                                <asp:Literal runat="server" ID="Coupon2"></asp:Literal></span> have used it</h6>

                        </div>
                    </li>
                    <li class="am-padding-xs coupon">
                        <a class="btnn " data-clipboard-text="MID65">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_03.png" %>' alt="coupon_01" />
                        </a>
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>
                                <asp:Literal runat="server" ID="Coupon3"></asp:Literal></span> have used it</h6>

                        </div>

                    </li>
                    <li class="am-padding-xs  coupon">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_04.png" %>' alt="coupon_04" class="coupon-gift" />
                        <div class="coupon-code">
                            <h6 class="am-margin-top-xs"><span>min spend 500,limited 200 sets</span> </h6>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 FLASHSALE(Start) =====================================================--%>
       
            <section class="am-margin-bottom flash-sale-none" id="s1">
                <div class="am-margin-bottom-0">
                    <a href="200618mys2_flash_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_03m.png?v=1" %>' alt="bn_03m" />
                    </a>
                </div>
                <div class="am-padding-top-sm" style="background: #D39929;">
                    <div class="swiper-container swiper-container9 mb-shop-block flashsale-slider">
                        <ul class="swiper-wrapper ">
                            <asp:Repeater ID="rp_plist" runat="server" OnItemDataBound="rp_plist_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                    <li class="am-fl goods goods-flashsale">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                            <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                            <div class="goods-top">
                                                <div class="goods-img">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                    <div class="goods-discount goods-discount3">
                                                        <span class="ribbon">
                                                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="goods-bottom">
                                                <div class="goods-block fire-progress">
                                                    <div class="fire-img">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                                                    </div>
                                                    <div class="fire-sold">
                                                        sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                    </div>
                                                    <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                </div>
                                                <div class="goods-block">
                                                    <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                                </div>
                                                <div class="goods-block">
                                                    <h1 class="goods-price">
                                                        <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                    <s class="goods-original-price">
                                                        <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                    </s>
                                                </div>
                                                <div class="goods-block">
                                                    <p>
                                                        SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                            <li class="am-fl swiper-slide goods-more goods-flashsale">
                                <a href="200618mys2_flash_sale.aspx" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 style="line-height: 100px;">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="am-padding-vertical-sm">
                        <a class="am-u-sm-centered am-block" href="200618mys2_flash_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_04m.png" %>' alt="more" />
                        </a>
                    </div>
                </div>
            </section>
        
        <%--Block1 FLASHSALE(End) ======================================================--%>
        <%--Block2 HOTDEAL(Start) =====================================================--%>
        <section class="am-margin-bottom" id="s2">
            <div class="am-margin-bottom-0">
                <a href="200618mys2_hot_deal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_05m.png" %>' alt="bn_05m" />
                </a>
            </div>
            <div class="am-padding-top-sm" style="background: #1C2834;">
                <div class="swiper-container swiper-container7 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="200618mys2_hot_deal.aspx" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-vertical-sm">
                    <a class="am-u-sm-centered am-block" href="200618mys2_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_06m.png" %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block2 HOTDEAL(End) ======================================================--%>

        <%--Block3 VALUEBUY(Start) =====================================================--%>
        <section class="am-margin-bottom" id="s3">
            <div class="am-padding-bottom-0">
                <a href="200618mys2_value_buy.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_07m.png" %>' alt="bn_04m" />
                </a>
            </div>
            <div class="am-padding-top-sm" style="background: #D49928;">
                <div class="swiper-container swiper-container8 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="200618mys2_value_buy.aspx" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-vertical-sm">
                    <a class="am-u-sm-centered am-block" href="200618mys2_value_buy.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_08m.png" %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block3 VALUEBUY(End) ======================================================--%>

        <%--Block4 Highlighted Brands(Start)==========================================--%>
        <section class="am-margin-bottom" id="s4">
            <div class="am-margin-bottom-sm">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_09m.png" %>' alt="bn_09m" />
            </div>
            <div class="am-padding-vertical-sm" style="background: #362E2B;">
                <div class="mb-shop-block" id="logo">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
            </div>
        </section>
        <%--Block4 Highlighted Brands(End) ==========================================--%>

        <%--Block5 Shop By Category (Start) ==========================================--%>
        <!--Category1 (Start) -->
        <section id="s5" style="position: relative;">
            <div>
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/bn_10m.png" alt="bn_10m" />
            </div>

            <div class="am-margin-vertical-xs">
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs" id="point1"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/v_01.png" alt="v_01" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/v_02.png" alt="v_02" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/v_03.png" alt="v_03" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/v_04.png" alt="v_04" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/v_05.png" alt="v_05" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/v_06.png" alt="v_06" /></a></li>
                </ul>
            </div>

            <div>
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/h_01m.png" %>' alt="ca_01m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products5" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
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
        <section class="am-margin-top-0" id="point2">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/h_02m.png" %>' alt="h_02m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
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
        <section class="am-margin-top-0" id="point3">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/h_03m.png" %>' alt="h_03m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
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
        <section class="am-margin-top-0" id="point4">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/h_04m.png" %>' alt="h_04m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
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
        <section class="am-margin-top-0" id="point5">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/h_05m.png" %>' alt="h_05m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
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
        <section class="am-margin-top-0" id="point6">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/h_06m.png" %>' alt="h_06m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products10" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!--Category6 (End) -->
        <%--Block5 Shop By Category (End) ==========================================--%>

        <%--Block6  You May Also Like... (Start)========================================--%>
        <section class="am-margin-vertical-sm">
            <h6 class="am-margin-bottom-0 am-padding-left am-text-center" style="color: #000;">You May Also Like...</h6>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <uc1:products runat="server" id="products11" />
                </ul>
            </div>
        </section>
        <%--Block6  You May Also Like... (End)=========================================--%>
        <%--Terms & Conditions (Start) =============================================--%>


        <div class="am-padding activity-method" style="background: #000;" id="s6">
            <div class="am-container">
                <p class="am-margin-top-0">
                    Terms & Conditions<br>
                    Mid Year Sale Round 2<br>
                    1. 618 Flash Sale Promotion Date : 18th June 2020 12:00 - 20th June 2020 23:59<br>
                    2. After Sale Promotion Date : 18th June 2020 12:00 - 25th June 2020 23:59<br>
                    3. Sitewide Promo Code:
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - RM25 OFF, Use Code [MID25] (min spend 280)<br>
                    - RM40 OFF, Use Code [MID40] (min spend 430)<br>
                    - RM65 OFF, Use Code [MID65]  (min spend 650)
                </p>
                <p class="am-margin-top-0">
                    4. Promo Codes are LIMITED, first come first serve<br>
                    5. Promo Codes are applicable sitewide, including flash sale items, and applicable on selected Flagship Stores, including Dr Morita, Paradiso Garden, Dore Dore, Zephyrine, DV, Laler, Choyer, Hsu's, DV Tokyo, Eurocare 1838, Enjoy The Life, Sofei, Unipapa, Anriea, Cest Vrai, Pandababy, HH(except items on this page) , Double Doctor<br>
                    6. Free Gift (minspend 500, amount after using voucher)
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - Unicat Anti-Pore Clean Lotion 150ml (limited 200 sets, worth RM90)
                </p>
                <p class="am-margin-top-0">
                    7. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mid Year Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </div>


        <%--Terms & Conditions (End) ==============================================--%>
        <%-- flash期間顯示 6/18-6/20 23:59 (Start) --%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-4 flash-sale-display1">
                    <li onclick="goto('top',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_00m.png" %>' alt="ss_00m" />
                    </li>
                    <li onclick="goto('s1',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_01m.png" %>' alt="ss_01m" />
                    </li>
                    <li onclick="goto('s2',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_02m.png" %>' alt="ss_02m" />
                    </li>
                    <li onclick="goto('s3',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_03m.png" %>' alt="ss_03m" />
                    </li>
                    <li>
                        <a href="200618mys2.aspx">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_04m.png" %>' alt="ss_04m" /></a>
                    </li>
                    <li onclick="goto('s4',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_05m.png" %>' alt="ss_05m" />
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_06m.png" %>' alt="ss_06m" />
                    </li>
                    <li onclick="goto('s6',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_07m.png" %>' alt="ss_07m" />
                    </li>
                </ul>
            </div>
        </div>
        <%-- flash期間顯示 6/18-6/20 23:59 (End) --%>
        <%-- flash後顯示 (Start)--%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-3 flash-sale-display2">
                    <li onclick="goto('top',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_00m_ch.png?v=1" %>' alt="ss_00m" />
                    </li>
                    <li onclick="goto('s2',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_02m.png?v=1" %>' alt="ss_02m" />
                    </li>
                    <li onclick="goto('s3',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_03m.png?v=1" %>' alt="ss_03m" />
                    </li>
                    <li onclick="goto('s4',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_05m.png?v=1" %>' alt="ss_05m" />
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_06m.png?v=1" %>' alt="ss_06m" />
                    </li>
                    <li onclick="goto('s6',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_07m.png?v=1" %>' alt="ss_07m" />
                    </li>
                </ul>
            </div>
        </div>
        <%-- flash後顯示 (End)--%>
        <%--</div>--%>

        <%--MB  Contain Max-width:650px(End) ==========================================--%>

        <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
        <script src="assets/js/swiper.min.js"></script>
        <script src="assets/js/events.js"></script>
        <script type="text/javascript">

            /*Load HTML*/
            $(document).ready(function () {
                $("#s1 a").attr("href", "200618mys2_flash_sale.aspx");
                $("#s2 a").attr("href", "200618mys2_hot_deal.aspx");
                $("#s3 a").attr("href", "200618mys2_value_buy.aspx");
                $(".swiper-container li").addClass("am-fl swiper-slide");
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
                // for (i = 0; i < 11; i++) {
                //   duplicate('logo');
                // }

                setThem();
                //PutImg();
                PutImg('20200618', [235, 334, 450, 287, 307, 432, 180, 72, 345, 297, 407, 269]);
                hiddenFooterMenu();
                ifFlashsaleDisplay();
                ifFlashsaleNone();
                couponGiftAlterImgSrc('2020-06-21T00:00:00');

                function duplicate(id) {
                    var ul = $("#" + id + " ul");
                    ul.find("li:last")
                        .clone(true)
                        .appendTo(ul);
                }
            }


            //var brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
            //function PutImg() {
            //    for (i = 0; i < brandNo.length; i++) {
            //        $('#logo li').eq(i).prepend('<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank"><div class="brand-logo">' +
            //            '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_' + paddingLeft("" + (i + 1) + "", 2) + '.png">' +
            //            '</div>' + '</a>');
            //        $('#logo li a:not(.b)').eq(i).attr({
            //            "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
            //            "target": "_blank"
            //        });
            //    }
            //};



            // Example usage: putBrandImg('20200618', [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316])
            function PutImg(eventName = '', brandNo = []) {
                // For testing purpose only:
                //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
                // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
                let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
                let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';
                for (i = 0; i < brandNo.length; i++) {
                    let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
          <div class="brand-logo">
            <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1) + "", 2)}.png?v=2">
          </div>
        </a>`;
                    // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png":
                    $('#logo li').eq(i).prepend(prependDOMStr);
                    $('#logo li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
                        "href": `${brandLinkPfx}${brandNo[i]}`,
                        "target": "_blank"
                    });

                }
            }
            /* Used by putBrandImg() */
            function paddingLeft(str, lenght) {
                debugger;
                if (str.length >= lenght)
                    return str;
                else
                    return paddingLeft("0" + str, lenght);
            };

            function ifFlashsaleDisplay() {
                let dateFSEndTime = new Date('2020-06-21T00:00:00');
                let dateNow = new Date();
                let flashSaleDisplay1 = $('.flash-sale-display1');
                let flashSaleDisplay2 = $('.flash-sale-display2');
                // If pass the flash Sale timming, some elements will not be shown.
                if (dateNow < dateFSEndTime) {
                    for (let i = 0; i < flashSaleDisplay2.length; i++) {
                        flashSaleDisplay2.eq(i).css("display", "none");
                    }
                }
                if (dateNow > dateFSEndTime) {
                    for (let i = 0; i < flashSaleDisplay1.length; i++) {
                        flashSaleDisplay1.eq(i).css("display", "none");
                    }
                }
            }


            function ifFlashsaleNone() {
                let dateFSEndTime = new Date('2020-06-21T00:00:00');
                let dateNow = new Date();
                let flashSaleNone = $('.flash-sale-none');

                // If pass the flash Sale timming, some elements will not be shown.

                if (dateNow > dateFSEndTime) {
                    for (let i = 0; i < flashSaleNone.length; i++) {
                        flashSaleNone.eq(i).css("display", "none");
                    }
                }
            }

            function couponGiftAlterImgSrc(dateStr = '2020-06-21T00:00:00') {
                let dateFSEndTime = new Date(dateStr);
                let dateNow = new Date();
                if (dateNow > dateFSEndTime) {
                    $('.coupon-gift').eq(0).attr('src', 'https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/coupon_04fn.png');

                }
            }

            /* Used by putimg() */
            function paddingLeft(str, length) {
                // debugger;
                if (str.length >= length)
                    return str;
                else
                    return paddingLeft("0" + str, length);
            };


            /*隱藏手機FotterBar*/
            function hiddenFooterMenu() {
                $("#footermenu").css('display', 'none');
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
                            slidesPerView: 3.2,
                            slidesPerGroup: 3,
                            spaceBetween: 0,
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
                                    spaceBetween: 0,
                                    slidesPerGroup: 2
                                }
                            }
                        });
                    });
                };
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


