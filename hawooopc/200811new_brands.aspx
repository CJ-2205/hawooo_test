<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200811new_brands.aspx.cs" Inherits="user_static_200811new_brands" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <title>New Brands Sale</title>
    <style>
        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            color: #FFF3EE;
            background: #0A0A0A;
        }
        /*coupon start*/
        .main-contain h6 {
            margin-top: 0;
        }

        .side-bar {
            top: 40%;
            width: 120px;
        }

        .coupon-txt {
            background-color: #FFFFFF;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            font-size: large;
        }

        .event-title-bg {
            position: relative;
        }

        .event-title {
            font-size: 65px;
            letter-spacing: 1px;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            color: #0A0A0A;
            font-family: 'Bebas Neue', sans-serif;
            bottom: 25%;
        }

        .event-title-wrap {
            font-size: 40px;
            bottom: 10%;
            font-family: 'Bebas Neue', sans-serif;
        }
        /*coupon ends*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" style="background: #FFF3EE;">
        <%--側邊選單 (Start) ======================================================--%>
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_00.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_02.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_03.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_04.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04" />
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/ss_01.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05" />
                </li>
            </ul>
        </div>
        <%--側邊選單 (End) =======================================================--%>
        <div class="am-margin-bottom-xl" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_01.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" />
        </div>

        <div class="am-container am-margin-bottom-xl">

            <%--領取折扣券 (Start)====================================================--%>
            <div class="am-margin-bottom_xl">
                <div class="event-title-bg">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
                    <div class="event-title event-title-wrap">
                        <h1>LIMITED COUPON & FREE GIFT</h1>
                        <h6 class="am-text-xxl">(T&C Apply)</h6>
                    </div>
                </div>
                <div class="am-margin-bottom-sm am-padding-bottom-sm">
                    <ul class="am-avg-sm-2">
                        <li class="am-padding-sm">

                            <a class="btnn" data-clipboard-text="BRAND25" data-clipboard-abcc="ABCC." href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                            </a>
                            <div class="am-padding-top-sm">
                                <div class="am-padding coupon-txt">
                                    <h3>
                                        <asp:Literal ID="Coupon1" runat="server"></asp:Literal>
                                        have copied it</h3>
                                </div>
                            </div>
                        </li>
                        <li class="am-padding-sm">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                            </a>
                            <div class="am-padding-top-sm">
                                <div class="am-padding coupon-txt">
                                    <h3>Min spend 280, limited 300 sets</h3>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <%--領取折扣券 (End) ====================================================--%>

            <%--Block1 (Start) =====================================================--%>
            <div>
                <a href="https://www.facebook.com/groups/190420328219044/" target="_blank">
                    <img class="am-padding-bottom-xl"
                        src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_03.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03" /></a>
            </div>
            <section class="am-margin-bottom-xl am-panel-default" id="s1">
                <div class="event-title-bg all-anchor-href-redirect" data-redirect="200811new_brands_top.aspx">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
                        <div class="event-title event-title-wrap">
                        <h1>TOP BRAND ITEMS</h1>
                        <h6 class="am-text-xxl am-text-danger">Up to 90% OFF!</h6>
                    </div>
                    </a>
                </div>

                <div class="am-padding pc-slider" style="background: #B9966D;">
                    <div class="swiper-container top-brand-swiper">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="topbrands_rp" runat="server" OnItemDataBound="topbrands_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <li class="am-fl goods goods-flashsale">
                                        <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                            <div class="goods-top">
                                                <div class="goods-img">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                    <div class="goods-discount goods-discount3">
                                                        <span class="ribbon">
                                                            <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="goods-bottom">
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

                            <li class="goods all-anchor-href-redirect" data-redirect="200811new_brands_top.aspx">
                                <a class="goods-more">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                        <div class="imgContain" style="width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                        </div>
                                    </div>
                                    <div class="am-text-center goods-bottom">
                                        <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a href="#!" class="prev-btn prev-top-brand">
                            <span class="am-icon-chevron-left"></span>
                        </a>
                        <a href="#!" class="next-btn next-top-brand">
                            <span class="am-icon-chevron-right"></span>
                        </a>
                    </div>
                </div>

                <div class=" all-anchor-href-redirect" data-redirect="200811new_brands_top.aspx">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/shop.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </section>
            <%--Block1 (end) =====================================================--%>

            <%--Block2 (Start) =====================================================--%>
            <section class="am-margin-bottom-xl am-panel-default" id="s2">
                <div class="event-title-bg all-anchor-href-redirect" data-redirect="200811new_brands_best.aspx">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
                        <div class="event-title event-title-wrap">
                        <h1>MAKE UP BEST SELLERS</h1>
                        <h6 class="am-text-xxl am-text-danger">All below RM50</h6>
                    </div>
                    </a>
                </div>

                <div class="am-padding pc-slider" style="background: #B9966D;">
                    <div class="swiper-container best-seller-swiper">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="bestseller_rp" runat="server" OnItemDataBound="bestseller_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <li class="am-fl goods goods-flashsale">
                                        <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                            <div class="goods-top">
                                                <div class="goods-img">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                    <div class="goods-discount goods-discount3">
                                                        <span class="ribbon">
                                                            <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="goods-bottom">
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
                            <li class="goods all-anchor-href-redirect" data-redirect="200811new_brands_best.aspx">
                                <a class="goods-more">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                        <div class="imgContain" style="width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                        </div>
                                    </div>
                                    <div class="am-text-center goods-bottom">
                                        <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a href="#!" class="prev-btn prev-best-seller">
                            <span class="am-icon-chevron-left"></span>
                        </a>
                        <a href="#!" class="next-btn next-best-seller">
                            <span class="am-icon-chevron-right"></span>
                        </a>
                    </div>
                </div>

                <div class=" all-anchor-href-redirect" data-redirect="200811new_brands_best.aspx">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/shop.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </section>
            <%--Block2(end) =====================================================--%>

            <%--Block4 Shop By Category (Start) ==========================================--%>
            <div id="s4">
                <%--Category1 (Start) --%>
                <div class="event-title-bg">
                    <img class="am-margin-bottom-0" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/bn_02.png" + "?cacheVersion=" + cacheVersion %>'
                        alt="bn_06" />
                    <h2 class="event-title">BRAND AVENUE
                    </h2>
                </div>
                <div style="background-color: #B9966D">
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=458" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_01.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container1">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands1_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=458" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category1 (End) --%>

                    <%--Category2 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=455" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_02.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container1">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands2_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=455" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category2 (End) --%>

                    <%--Category3 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=454" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_03.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container3">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands3_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=454" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=235" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_04.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container4">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands4_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=235" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=459" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_05.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container4">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands5_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=459" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category5 (End) --%>
                    <%--Category6 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=456" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_06.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands6_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--<%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=456" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category7 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=334" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_07.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands7_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=334" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category7 (End) --%>
                    <%--Category8 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=297" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_08.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands8_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=297" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category8 (End) --%>
                    <%--Category9 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=440" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_09.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands9_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=440" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category9 (End) --%>
                    <%--Category10 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=461" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_10.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands10_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=461" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category10(End) --%>
                    <%--Category11 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=131" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_11.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands11_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=131" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category11(End) --%>
                    <%--Category12 (Start) --%>
                    <section class="category-bg">
                        <div class="am-margin-bottom-0 am-padding-sm  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=27" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200811/h_12.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                        <asp:Repeater ID="brands12_rp" runat="server" OnItemDataBound="brands_ItemDataBound">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <li class="am-fl goods goods-flashsale">
                                                    <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                        <div class="goods-top">
                                                            <div class="goods-img">
                                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                                <div class="goods-discount goods-discount3">
                                                                    <span class="ribbon">
                                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="goods-bottom">
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
                                        <li class="goods-more">
                                            <a href="https://www.hawooo.com/user/brandeventpage.aspx?bid=27" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
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
                    <%--Category12(End) --%>
                </div>
            </div>
            <%--Block4 Shop By Category (End) ===========================================--%>
        </div>
    </div>
    </div>
  </div>

  <%--Terms & Conditions (Start) =====================================================--%>
    <div id="s5" class="note-terms am-padding-vertical-lg activity-method" style="background: #000000;">
        <div class="am-container">
            <p class="am-padding-bottom-sm">
                Terms & Conditions<br>
            </p>
            <div class="am-margin-left">
                <ul style="list-style-type: decimal!important;">
                    <li class="am-margin-bottom-sm">New Brands Sale Promotion Date : 11th Aug 2020 12:00 - 17th July 2020 23:59
                    </li>
                    <li class="am-margin-bottom-sm">Lucky Pick : Show Off Your Order & Win RM100
          <div class="am-padding-left-sm">
              <ul>
                  <li>- STEP1 > Join [HaWooo VIP Club] on Facebook</li>
                  <li>- STEP2 > Screenshot your order details and post it in the club</li>
                  <li>- Order details must include at least one of [New Brands Sale Promotion] item.</li>
                  <li>- An order details can only be participated : one time</li>
                  <li>- 5 winners will be picked randomly , each winner will win RM100 Shopping Cash.</li>
                  <li>- Results of the Lucky Draws will be published in HaWooo Facebook Fans Page on 2nd Sep 2020</li>
                  <li>- Winners will need to contact our Customer service for confirmation before 9th Sep 2020</li>
                  <li>- Transaction of shopping cash will be done before 14th Sep 2020
                  </li>
              </ul>
          </div>
                    </li>
                    <li class="am-margin-bottom-sm">Promo Code:
          <div class="am-padding-left-sm">
              - RM25 OFF, use code [Brand25] (min spend 250)
          </div>
                    </li>
                    <li class="am-margin-bottom-sm">Promo Codes are applicable on selected stores, including Mayskin,1838 Eurocares, SAHOLEA, arin, Jadia,
          Puriginal Life,
          Snova, Contin, Unicat, NAF, 1028, CATISS,
          DAYLA, UNT, Paradiso Garden, TSUVIMI, C'est Vrai, FZC, WorldHops, DV, i3Fresh, Kuai Che
                    </li>
                    <li class="am-margin-bottom-sm">Free Gift (minspend RM280, amount after using promo codes)
          <div class="am-padding-left-sm">
              <ul>
                  <li>- Saholea Herbal Essence Series 28ml , Worth RM30 (limited 300 sets)</li>
                  <li>- Conditioner/ Shower Gel/ Shampoo, shipped randomly
                  </li>
              </ul>
          </div>
                    </li>
                    <li class="am-margin-bottom-sm">
                    Hawooo reserves the sole right to alter, modify, add to or otherwise vary these
          New Brands Sale terms from time to time,
          and in such manner as Hawooo deems appropriate.
                </ul>
            </div>
        </div>
    </div>
    <%--Terms & Conditions (End) ======================================================--%>

    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>--%>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js"
    type="text/javascript"></script>
    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        /*Load aspx*/
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
            console.log("pnt 1");
            setSwiper();
            console.log("pnt 2");
            setSwiper2();
            console.log("pnt 3");
            allAnchorHrefRedirect();
            console.log("pnt 4");
            $(".shop-block li").addClass("hvr-float");
            console.log("pnt 5");
        }

        /* 設定Slider*/
        function setSwiper() {
            $(".swiper-container li").addClass("am-fl");
            $(".swiper-container li").addClass("swiper-slide");
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
                        slidesPerGroup: 3.5,
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
        
        function setSwiper2() {
            new Swiper('.top-brand-swiper', {
                slidesPerView: 4.25,
                spaceBetween: 10,
                navigation: {
                    nextEl: '.next-top-brand',
                    prevEl: '.prev-top-brand',
                },
            });
            new Swiper('.best-seller-swiper', {
                slidesPerView: 4.25,
                spaceBetween: 10,
                navigation: {
                    nextEl: '.next-best-seller',
                    prevEl: '.prev-best-seller',
                },
            });
        }
  
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("Yo Leng Lui! You've copied the code liao, paste it when you get ready to pay!");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
</asp:Content>
