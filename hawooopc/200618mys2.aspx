<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200618mys2.aspx.cs" Inherits="user_static_200618mys2" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <style>
        /* Logo border style */
        #logo a {
            overflow: hidden;
            border: 4px solid #F1CA7A;
        }

        .side-bar {
            top: 28%;
            width: 120px;
        }

        .goods-flashsale a {
            padding: 0;
        }


        /* Coupon */
        .coupon {
            position: relative;
        }

        .coupon-code {
            position: absolute;
            bottom: 28%;
            left: 0;
            right: 0;
            text-align: center;
            font-weight: bold;
            font-size: 20px;
            padding-left: 4%;
            color: #000;
        }

        .font-style {
            text-align: center;
            background-color: #FFFFFF;
            width: 270px;
            height: 50px;
            line-height: 50px;
            color: #A63B24;
            border-style: solid;
            font-weight: bold;
            font-size: 16px;
        }

        .coupon img {
            -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
            filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
        }


        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            color: #fff;
            background: #9F9C9B;
        }

        .category-bg {
            background: #A63B24
        }

        .pc-slider li.swiper-slide {
            height: 400px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain " style="background: #A63B24;">
        <%--側邊選單 (Start) ======================================================--%>
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_00.png?v=1" %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')" class="flash-sale-display">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_01.png?v=1" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_02.png?v=1" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_03.png?v=1" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_04.png?v=1" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_05.png?v=1" %>' alt="ss_05" />
                </li>
                <li onclick="goto('s6')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/ss_06.png?v=1" %>' alt="ss_05" />
                </li>
            </ul>
        </div>
        <%--側邊選單 (End) =======================================================--%>


        <div class="am-margin-bottom-xl" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_01.png" %>' alt="主banner" />
        </div>


        <div class="am-container">
            <%--領取折扣券 (Start)====================================================--%>
            <div class="am-margin-bottom_xl">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_02.png" %>' alt="bn_02" />
            </div>

            <div style="position: relative;">
                <div class="am-margin-bottom-sm am-padding-bottom-sm">

                    <ul class="am-avg-sm-4">
                        <li class="am-padding-sm coupon">
                            <a href="#!" class="btnn" data-clipboard-text="MID25">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_01.png" %>' alt="coupon_01" />
                            </a>
                            <h3 class="am-margin-top-sm font-style"><span>
                                <asp:Literal ID="Coupon1" runat="server"></asp:Literal></span> have used it</h3>
                        </li>
                        <li class="am-padding-sm coupon">
                            <a href="#!" class="btnn" data-clipboard-text="MID40">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_02.png" %>' alt="coupon_02" />
                            </a>
                            <h3 class="am-margin-top-sm font-style"><span>
                                <asp:Literal ID="Coupon2" runat="server"></asp:Literal></span> have used it</h3>
                        </li>
                        <li class="am-padding-sm coupon">
                            <a href="#!" class="btnn" data-clipboard-text="MID65">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_03.png" %>' alt="coupon_01" />
                            </a>
                            <h3 class="am-margin-top-sm font-style"><span>
                                <asp:Literal ID="Coupon3" runat="server"></asp:Literal></span> have used it</h3>
                        </li>
                        <li class="am-padding-sm coupon">
                            <div>
                                <img class="coupon-gift" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/coupon_04.png" %>' alt="coupon_02" />
                            </div>
                            <h3 class="am-margin-top-sm font-style">min spend 500,limited 200 sets</h3>
                        </li>
                    </ul>
                </div>
            </div>
            <%--領取折扣券 (End) ====================================================--%>

            <%--Block1 (Start) =====================================================--%>
            <section class="am-margin-bottom-xl flash-sale-display all-anchor-href-redirect" id="s1" data-redirect="200618mys2_flash_sale.aspx">
                <div>
                    <a href="200618mys2_flash_sale.aspx" target="_blank">
                        <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_03.png?v=2" %>'
                            alt="bn_02" />
                    </a>
                </div>

                <div style="background: #D39929;">
                    <div class="am-padding pc-slider">
                        <div class=" swiper-container swiper-container7 shop-block" id="block1">
                            <ul class="swiper-wrapper">
                                <asp:Repeater ID="rp_plist" runat="server" OnItemDataBound="rp_plist_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                                <div class="goods-top">
                                                    <div class="goods-img">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                        <div class="goods-discount goods-discount3">
                                                            <span class="ribbon">
                                                                <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">
                                                    <div class="goods-block fire-progress">
                                                        <div class="fire-img">
                                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 23px" />
                                                        </div>
                                                        <div class="fire-sold">
                                                            sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                        </div>
                                                        <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                    </div>
                                                    <div class="goods-block">
                                                        <p class="goods-name">
                                                            <%# Eval("WP02").ToString() %>
                                                        </p>
                                                    </div>
                                                    <div class="goods-block">
                                                        <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                        <s class="goods-original-price">
                                                            <span>RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                            </span>
                                                        </s>
                                                        <div class="goods-block">
                                                            <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <li class="am-fl swiper-slide">
                                    <a class="goods-more" href="200618mys2_flash_sale.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="am-text-center goods-bottom">
                                            <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
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
                    <div class="am-padding-vertical-lg am-u-sm-centered">
                        <a href="200618mys2_flash_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_04.png" %>' alt="more" />
                        </a>
                    </div>
                </div>
            </section>
            <%--Block1 (End) =====================================================--%>
            <section class="am-margin-bottom-xl all-anchor-href-redirect" id="s2" data-redirect="200618mys2_hot_deal.aspx">
                <div>
                    <a href="200618mys2_hot_deal.aspx" target="_blank">
                        <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_05.png" %>'
                            alt="bn_02" />
                    </a>
                </div>
                <div style="background: #1C2834;">
                    <div class="am-padding pc-slider">
                        <div class="swiper-container swiper-container7" id="block1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="productHotDeal" />
                                <li class="am-fl swiper-slide am-text-center">
                                    <a class="goods-more" href="200618mys2_hot_deal.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="am-text-center goods-bottom">
                                            <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
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
                    <div class="am-padding-vertical-lg am-u-sm-centered">
                        <a href="200618mys2_hot_deal.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_06.png" %>' alt="more" />
                        </a>
                    </div>
                </div>
            </section>
            <%--Block2 (Start)=====================================================--%>
            <section class="am-margin-bottom-xl all-anchor-href-redirect" id="s3" data-redirect="200618mys2_value_buy.aspx">
                <div>
                    <a href="200618mys2_value_buy.aspx" target="_blank">
                        <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_07.png" %>'
                            alt="bn_02" />
                    </a>
                </div>
                <div style="background: #D39929;">
                    <div class="am-padding pc-slider">
                        <div class="swiper-container swiper-container7" id="block1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="productValueBuy" />
                                <li class="am-fl swiper-slide">
                                    <a class="goods-more" href="200618mys2_value_buy.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="am-text-center goods-bottom">
                                            <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
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
                    <div class="am-padding-vertical-lg am-u-sm-centered">
                        <a href="200618mys2_value_buy.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_08.png" %>' alt="more" />
                        </a>
                    </div>
                </div>
            </section>
            <%--Block2 (End)=====================================================--%>
            <%--Block3 Highlighted Brands(Start)==========================================--%>
            <div style="position: relative;" id="s4">
                <div>
                    <img class="am-margin-bottom-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_09.png" %>'
                        alt="bn_05" />
                </div>
                <section class="am-margin-bottom-xl" style="background: #A63B24">
                    <div class="am-padding-sm shop-block highlighted-brands" id="logo" style="background: #A63B24">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" id="productHighlightedBrands" />
                        </ul>
                    </div>
                </section>
            </div>
            <%--Block3 Highlighted Brands(End) ======================================--%>

            <%--Block4 Shop By Category (Start) ==========================================--%>
            <div class="am-margin-bottom-xs" id="s5">
                <%--Category1 (Start) --%>
                <div>
                    <div>
                        <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/bn_10.png" %>' alt="bn_06" />
                    </div>
                    <section class="category-bg am-margin-bottom-0 ">
                        <%--類別錨點 (Start)--%>
                        <div class="am-padding-bottom-0">
                            <ul class="am-avg-sm-6">
                                <li class="am-padding-xs" id="point1"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/v_01.png" %>' alt="h_01" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/v_02.png" %>' alt="h_02" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/v_03.png" %>' alt="h_03" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/v_04.png" %>' alt="h_04" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/v_05.png" %>' alt="h_05" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200618/v_06.png" %>' alt="h_06" /></a></li>
                            </ul>
                        </div>
                        <%--類別錨點 (Start)--%>
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_01.png" %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container1">
                                    <ul class="swiper-wrapper">
                                        <uc1:products runat="server" id="productCategorySec1" />
                                        <li class="am-fl swiper-slide goods-more">
                                            <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                    </div>
                                                </div>
                                                <div class="goods-bottom am-text-center">
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
                <%--Category1 (End) --%>

                <%--Category2 (Start) --%>
                <section class="category-bg am-margin-bottom-0  " id="point2">
                    <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container2">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productCategorySec2" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom am-text-center">
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
                <%--Category2 (End) --%>

                <%--Category3 (Start) --%>
                <section class="category-bg am-margin-bottom-0" id="point3">
                    <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container3">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productCategorySec3" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom am-text-center">
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

                <%--Category3 (End) --%>

                <%--Category4 (Start) --%>
                <section class="category-bg am-margin-bottom-0" id="point4">
                    <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container4">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productCategorySec4" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom am-text-center">
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
                <%--Category4 (End) --%>

                <%--Category5 (Start) --%>
                <section class="category-bg am-margin-bottom-0" id="point5">
                    <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container5">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productCategorySec5" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom am-text-center">
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
                <%--Category5 (End) --%>

                <%--Category6 (Start) --%>
                <section class="category-bg am-margin-bottom-0" id="point6">
                    <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container6">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productCategorySec6" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom am-text-center">
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
                <%--Category6 (End) --%>
            </div>
            <%--Block4 Shop By Category (End) ===========================================--%>


            <%--Block5  You May Also Like... (Start)========================================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-xl">
                <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center" style="color: black;">You May Also
              Like...
                </h1>
                <div>
                    <div class="shop-block" id="block5">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="productYouMayAlsoLike" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--Block5  You May Also Like... (End)=========================================--%>
        </div>

        <%--Terms & Conditions (Start) =====================================================--%>
        <div class="am-padding activity-method" id="s6" style="background: #000;">
            <div class="am-container">
                <p>
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
                    5. Promo Codes are applicable sitewide, including flash sale items, and applicable on selected Flagship Stores, including Dr Morita, Paradiso Garden, Dore Dore, Zephyrine, DV, Laler, Choyer, Hsu's, DV Tokyo, Eurocare 1838, Enjoy The Life, Sofei, Unipapa, Anriea, Cest Vrai, Pandababy, HH (except items on this page) & Double Doctor<br>
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
        <%--Terms & Conditions (End) ======================================================--%>
    </div>


    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>
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
            // for (i = 0; i < 11; i++) {
            //     duplicate('logo');
            // }

            // Todo_treegb: Change to real time.
            ifFlashsaleDisplay('2020-06-11T00:00:00');
            couponGiftAlterImgSrc('2020-06-21T00:00:00');
            setSwiper();
            allAnchorHrefRedirect();
            //Todo_treegb: change brandNo.
            putBrandImg('20200618', [235, 334, 450, 287, 307, 432, 180, 72, 345, 297, 407, 269]);

            $(".shop-block li").addClass("hvr-float");

            function duplicate(id) {
                var ul = $("#" + id + " ul");
                ul.find("li:last")
                    .clone(true)
                    .appendTo(ul);
            }
            $(".hvr li").attr("class", "am-fl hvr-float");
        }

        // Example usage: putBrandImg('20200618', [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316])
        function putBrandImg(eventName = '', brandNo = []) {
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

        //Usage example:
        //  <ul class="all-anchor-href-redirect" data-redirect="http://www.example.com?foo=111">
        //    <li><a></a></li>
        //    <li><a></a></li>
        //  </ul>
        //  <ul class="all-anchor-href-redirect" data-redirect="http://www.example.com?foo=222">
        //    <li><a></a></li>
        //    <li><a></a></li>
        //  </ul>
        //So all a inside ul.all-anchor-href-redirect will have href replaced to it's own data-redirect data.
        function allAnchorHrefRedirect() {
            let allAnchorParent = $(".all-anchor-href-redirect");

            for (let i = 0; i < allAnchorParent.length; i++) {
                let anchorParentData = allAnchorParent.eq(i).data("redirect");
                let allAnchor = allAnchorParent.eq(i).find("a");

                for (let j = 0; j < allAnchor.length; j++) {
                    allAnchor.eq(j).attr(
                        "href",
                        anchorParentData
                    );
                }
            }
        }

        /* 設定Slider*/
        function setSwiper() {
            $(".swiper-container li").addClass("am-fl swiper-slide");
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

        function ifFlashsaleDisplay(dateStr = '2020-06-01T00:00:00') {
            let dateFSEndTime = new Date(dateStr);
            let dateNow = new Date();
            let flashSaleDisplay = $('.flash-sale-display');

            // If pass the flash Sale timming, some elements will not be shown.
            if (dateNow > dateFSEndTime) {
                for (let i = 0; i < flashSaleDisplay.length; i++) {
                    flashSaleDisplay.eq(i).css("display", "none");
                }
            }
        }
        
        function couponGiftAlterImgSrc (dateStr = '2020-06-21T00:00:00') {
          let dateFSEndTime = new Date(dateStr);
          let dateNow = new Date();
            
          if (dateNow > dateFSEndTime) {
            $('.coupon-gift').eq(0).attr('src', 'https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/coupon_04fn.png');  
          }
        }

    </script>

</asp:Content>
