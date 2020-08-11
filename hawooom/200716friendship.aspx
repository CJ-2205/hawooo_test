<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200716friendship.aspx.cs" Inherits="mobile_static_200716friendship" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <style>
        .mb-shop-block {
            padding: 3px;
        }

        /* Logo border style */
        #logo a {
            overflow: hidden;
            border: 2.5px solid #E5E5E5;
        }

        #logo .goods-brand-group a {
            overflow: hidden;
            border: 0 !important;
        }

        .radius {
            border-bottom-right-radius: 20px;
            border-bottom-left-radius: 20px;
        }

        .even-title,
        .even-title2 {
            font-weight: bold;
            font-size: 14px;
            bottom: 10%;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            color: #0A0A0A;
            font-family: 'Heebo', sans-serif;
        }

        @media screen and (min-width: 650px) {

            .even-title,
            .even-title2 {
                font-size: 20px;
            }
        }

        #s1 .mb-shop-block .goods-more .goods-bottom,
        #s2 .mb-shop-block .goods-more .goods-bottom {
            min-height: 110px;
        }

        #s1 .goods-flashsale .goods-bottom,
        #s2 .goods-flashsale .goods-bottom {
            min-height: 110px;
        }

        .countdown-bn {
            position: relative;
        }

        .b {
            padding: 0 !important;
        }

        .gray-block {
            background: rgba(0, 0, 0, .88);
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }

        /*coupon start*/
        .coupon {
            position: relative;
        }

        .coupon-code {
            background: #fff;
            color: #0E0E0E;
            font-weight: bold;
            text-align: center;
            font-size: 14px;
            padding: 6px 30px;
            margin-top: 5%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media screen and (max-width: 650px) {
            .coupon-code {
                font-size: 12px;
                min-height: 49px;
                padding: 0;
            }
        }
        /*coupon end*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--MB  Contain (Start) ===================================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #17142A;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-padding-sm">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <div class="note-coupon" style="margin-left: -0.5rem; margin-right: -0.5rem;">
            <ul class="am-avg-sm-2">
                <li class="am-padding-xs coupon">
                    <a class="btnn" data-clipboard-text="FRIEND25">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_01.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                    </a>
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs"><asp:Literal ID="Coupon1" runat="server"></asp:Literal> have copied it</h6>
                    </div>
                </li>
                <li class="am-padding-xs  coupon">
                    <a class="btnn" data-clipboard-text="FRIEND35">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_02.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    </a>
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs"><asp:Literal ID="Coupon2" runat="server"></asp:Literal> have copied it</h6>
                    </div>
                </li>
                <li class="am-padding-xs coupon">
                    <a class="btnn" data-clipboard-text="FRIEND55">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_03.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
                    </a>
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs"><asp:Literal ID="Coupon3" runat="server"></asp:Literal> have copied it</h6>
                    </div>
                </li>
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/coupon_04.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Min Spend 500, limited 250 sets</h6>
                    </div>
                </li>
            </ul>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 hot deal(Start) =====================================================--%>
        <section class="note-hotdeal am-margin-bottom am-margin-top-xl all-anchor-href-redirect" id="s1"
            data-redirect="200716friendship_hotdeal.aspx">
            <a>
                <div class="am-margin-bottom-0">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                </div>
                <ul class="am-avg-sm-2">
                  <li class="countdown-bn countdown-bn1">
                    <asp:Panel ID="Countdown1Mask" runat="server" Visible="false">
                      <div class="gray-block"></div>
                    </asp:Panel>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04" />
                    <%--計時器1 --%>
                    <div class="even-title">
                      <h2><%-- Sale Starts in --%>
                        <span class="clock-countdown clock-countdown1">
                          <span class="d">00</span>:
                          <span class="h">00</span>:
                          <span class="m">00</span>:
                          <span class="s">00</span>
                        </span></h2>
                    </div>
                  </li>
                  <li class="countdown-bn countdown-bn2">
                    <asp:Panel ID="Countdown2Mask" runat="server" Visible="false">
                      <div class="gray-block" style="display: flex; justify-content: center; align-items: center;">
                        <span style="font-size: 1.4em; color: white;">Coming Soon</span>
                      </div>
                    </asp:Panel>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_05" />
                    <%--計時器2 --%>
                    <div class="even-title">
                      <h2><%-- Sale Starts in --%>
                        <span class="clock-countdown clock-countdown2">
                          <span class="d">00</span>:
                          <span class="h">00</span>:
                          <span class="m">00</span>:
                          <span class="s">00</span>
                        </span></h2>
                    </div>
                  </li>
                </ul>
            </a>
            <div class="am-padding-top-sm radius" style="background: #F9DB7D;">
                <div class="swiper-container swiper-container7 mb-shop-block">
                    <ul class="swiper-wrapper am-avg-sm-2 am-avg-md-3">
                        <asp:Repeater ID="rpHotDeal" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HotDeal">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
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
                        <li class="am-fl swiper-slide goods-more">
                            <a>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    <a class="am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_06m.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>

        <%--Block1 hot deal(End) ======================================================--%>

        <%--Block2 bundle sale(Start) =====================================================--%>
        <section class="note-bundle am-margin-bottom all-anchor-href-redirect" data-redirect="200716friendship_bundle.aspx" id="s2">
            <div class="am-padding-bottom-0">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_07m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04m" />
                </a>
            </div>
            <div class="am-padding-top-sm radius" style="background: #86D2D2">
                <div class="swiper-container swiper-container8 mb-shop-block">
                    <ul class="swiper-wrapper am-avg-sm-2 am-avg-md-3">
                        <asp:Repeater ID="rpBundle" runat="server" OnItemDataBound="rp_plist_ItemDataBound_Bundle">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                        <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                        <li class="am-fl swiper-slide goods-more">
                            <a>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    <a class="am-u-sm-centered am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_08m.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block2 (End) ======================================================--%>

        <%--Block3 Highlighted Brands(Start)==========================================--%>
        <section class="note-highlighted am-margin-bottom" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_09m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_09m" />
            </div>
            <div class="am-margin-bottom-sm" style="background: #141126;">
                <div id="logo">
                    <%-- 品牌帶3小塊商品組合-1 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <div id="inject-logo-for-brand-1"></div>
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rpHighLightArea1" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea1">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                                <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-1 (End)--%>
                    <%-- 品牌帶3小塊商品組合-2 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <div id="inject-logo-for-brand-2"></div>
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rpHighLightArea2" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea2">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                                <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-2 (End)--%>
                    <%-- 品牌帶3小塊商品組合-3 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <div id="inject-logo-for-brand-3"></div>
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rpHighLightArea3" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea3">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                                <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-3 (End)--%>
                    <%-- 品牌帶3小塊商品組合-4 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <div id="inject-logo-for-brand-4"></div>
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rpHighLightArea4" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea4">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                                <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-4 (End)--%>
                    <div class="mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3" id="inject-logo-for-brands">
                            <asp:Repeater ID="rpHighLightArea5" runat="server" OnItemDataBound="rp_plist_ItemDataBound_HighLightArea5">
                                <ItemTemplate>
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                    <li class="am-fl goods goods-flashsale">
                                        <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                            <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
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
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <%--Block3 Highlighted Brands(End) ==========================================--%>

        <%--Block4 Shop By Category (Start) ==========================================--%>
        <div id="s4" class="note-category">
            <%--Category1 (Start) --%>
            <section style="position: relative;">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/bn_10m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_10m" />
                </div>

                <div class="am-margin-vertical-xs">
                    <ul class="am-avg-sm-3">
                        <li class="am-padding-xs" id="point1"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_01.png" + "?cacheVersion=" + cacheVersion %>' alt="v_01" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_02.png" + "?cacheVersion=" + cacheVersion %>' alt="v_02" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_03.png" + "?cacheVersion=" + cacheVersion %>' alt="v_03" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_04.png" + "?cacheVersion=" + cacheVersion %>' alt="v_04" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_05.png" + "?cacheVersion=" + cacheVersion %>' alt="v_05" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/v_06.png" + "?cacheVersion=" + cacheVersion %>' alt="v_06" /></a></li>
                    </ul>
                </div>
                <%--Category1 (start) --%>
                <div>
                    <div>
                        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                            <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_01m.png" + "?cacheVersion=" + cacheVersion %>'
                                alt="ca_01m" />
                        </a>
                    </div>
                    <div class="am-padding-bottom-sm category-slider">
                        <div class="swiper-container swiper-container1 mb-shop-block">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="productCategorySec1" />
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
            <%--Category1 (End) --%>

            <%--Category2 (Start) --%>
            <section class="am-margin-top-sm" id="point2">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02m.png" + "?cacheVersion=" + cacheVersion %>'
                            alt="h_02m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container2 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="productCategorySec2" />
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
            <%--Category2 (End) --%>

            <%--Category3 (Start) --%>
            <section class="am-margin-top-sm" id="point3">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03m.png" + "?cacheVersion=" + cacheVersion %>'
                            alt="h_03m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container3 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="productCategorySec3" />
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
            <%--Category3 (End) --%>

            <%--Category4 (Start) --%>
            <section class="am-margin-top-sm" id="point4">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04m.png" + "?cacheVersion=" + cacheVersion %>'
                            alt="h_04m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container4 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="productCategorySec4" />
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
            <%--Category4 (End) --%>

            <%--Category5 (Start) --%>
            <section class="am-margin-top-sm" id="point5">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05m.png" + "?cacheVersion=" + cacheVersion %>'
                            alt="h_05m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container5 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="productCategorySec5" />
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
            <%--Category5 (End) --%>

            <%--Category6 (Start) --%>
            <section class="am-margin-top-sm" id="point6">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img class="am-padding-top-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06m.png" + "?cacheVersion=" + cacheVersion %>'
                            alt="h_06m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container6 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="productCategorySec6" />
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
            <%--Category6 (End) --%>
        </div>
        <%--Block4 Shop By Category (End) ==========================================--%>

        <%--Block5  You May Also Like... (Start)========================================--%>
        <section class="am-margin-vertical-sm">
            <h6 class="am-margin-bottom-0 am-padding-left am-text-center" style="color: #fff;">You May Also Like...</h6>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="productYouMayAlsoLike" />
                </ul>
            </div>
        </section>
        <%--Block5  You May Also Like... (End)=========================================--%>
        <%--Terms & Conditions (Start) =============================================--%>
        <footer class="am-padding activity-method" style="background: #000;" id="s5">
          <div class="am-container">
            <p>
              Terms & Conditions<br>
              Friendship Day Sale<br>
              1. Friendship Day Promotion Date : 16th July 2020 12:00 - 31st July 2020 23:59<br>
              2. Hot Deal Promotion Date:
            </p>
            <p class="am-margin-top-0 am-padding-left">
              - Round 1 : 16th July 2020 12:00 - 24th July 2020 11:59<br>
              - Round 2 : 24th July 2020 12:00 - 31st July 2020 23:59<br>
            </p>
            <p class="am-margin-top-0">
              3. Sitewide Promo Code:
              <br>
              <p class="am-margin-top-0 am-padding-left">
              - RM25 OFF, use code [FRIEND25]  (min spend 270)<br>
              - RM35 OFF, use code [FRIEND35] (min spend 380)<br>
              - RM55 OFF, use code [FRIEND55] (min spend 600)<br>
              </p>
              4. Promo Codes are applicable on selected Flagship Stores, including Pandababy, DV, Laler, Choyer, Hsu's, DV Tokyo, Dr Morita, Paradiso Garden, Zephyrine, HH, Double Doctor, 1838 Eurocares, Enjoy The Life, Sofei, Unipapa, Anriea, Saholea
              <br>
              5. Free Gift (minspend RM500, amount after using promo codes)<br>
              - Dr Morita Pearl Enzyme Exfoliating Gel  (worth RM59, limited 250 sets)
              <br>
              6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Friendship Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
          </div>
        </footer>
        <%--Terms & Conditions (End) ==============================================--%>
        <%-- flash期間顯示 6/18-6/20 23:59 (Start) --%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-3">
                    <li onclick="goto('top',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
                    </li>
                    <li onclick="goto('s1',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
                    </li>
                    <li onclick="goto('s2',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
                    </li>
                    <li onclick="goto('s3',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
                    </li>
                    <li onclick="goto('s4',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200716/ss_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05m" />
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <%--MB  Contain (End) ====================================================--%>

    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
      var clipboard = new ClipboardJS('.btnn');
      clipboard.on('success', function (e) {
        console.info('Action:', e.action);
        console.info('Text:', e.text);
        // Todo_treegb: Why alert don't shows up?
        alert("Yo Leng Lui! You've copied the code liao, paste it when you get ready to pay!");
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

            // for (i = 0; i < 7; i++) {
            //   duplicate('logo');
            // }
            setSwiper();
            set3Img1Brand({
              urlDate: '20200716',
              brandNos: [208, 307, 235, 334],
              cssIds: ["#inject-logo-for-brand-1", "#inject-logo-for-brand-2", "#inject-logo-for-brand-3", "#inject-logo-for-brand-4"],
              device: 'mobile',
              cacheVersion: <%= cacheVersion %>
            });
            set1Img1Brand({
              urlDate: '20200716',
              brandNos: [345, 72, 455, 287, 349, 180, 309, 297],
              indexShift: 4,
              device: 'mobile',
              cacheVersion: <%= cacheVersion %>
            });

            hiddenFooterMenu();
            allAnchorHrefRedirect();
            //hideBlock();
        }


        // # Set a brand image for every product images
        // # Usage example:
        // set1Img1Brand({
        //   urlDate: '20200716',
        //   brandNos: [345, 72, 455, 287, 349, 180, 309, 297],
        //   indexShift: 4,
        //   device: 'mobile',
        //   cacheVersion: <%= cacheVersion %>
        // });
        function set1Img1Brand({ urlDate = '', brandNos = [], indexShift = 0, device = 'user', cacheVersion = 1 } = {}) {
          let brandLinkPfx = `https://www.hawooo.com/${device}/brandeventpage.aspx?bid=`;
          let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

          for (i = 0; i < brandNos.length; i++) {
            let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNos[i]}" target="_blank">
              <div class="brand-logo">
                <img data-sizes="auto" src="${cdnImgPfx}ftp/${urlDate}/logo_${paddingLeft("" + (i + 1 + indexShift) + "", 2)}.png?cacheVersion=${cacheVersion}">
              </div>
            </a>`;
            // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png?cacheVersion=1":

            $('#inject-logo-for-brands li').eq(i).prepend(prependDOMStr);
            $('#inject-logo-for-brands li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
              "href": `${brandLinkPfx}${brandNos[i]}`,
              "target": "_blank"
            });
          }
        }

        // # Set 1 brand image for every 3 (n) product images
        // # Usage example:
        // set3Img1Brand({
        //   urlDate: '20200716',
        //   brandNos: [208, 307, 235, 334],
        //   cssIds: ["#inject-logo-for-brand-1", "#inject-logo-for-brand-2", "#inject-logo-for-brand-3", "#inject-logo-for-brand-4"],
        //   device: 'mobile',
        //   cacheVersion: <%= cacheVersion %>
        // });
        // # Put <div id="inject-logo-for-brand-1"></div> before the target ul, not inside!
        function set3Img1Brand({ urlDate = '', brandNos = [], cssIds = [], device = 'user', cacheVersion = 1 } = {}) {
          let brandLinkPfx = `https://www.hawooo.com/${device}/brandeventpage.aspx?bid=`;
          let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

          for (i = 0; i < brandNos.length; i++) {
            let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNos[i]}" target="_blank">
              <div class="brand-logo">
                <img data-sizes="auto" src="${cdnImgPfx}ftp/${urlDate}/logo_${paddingLeft("" + (i + 1) + "", 2)}.png?cacheVersion=${cacheVersion}">
              </div>
            </a>`;
            // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png?cacheVersion=1":

            $(cssIds[i]).prepend(prependDOMStr);
            $(cssIds[i] + ' a:not(.brand-logo-wrapping-anchor)').attr({
              "href": `${brandLinkPfx}${brandNos[i]}`,
              "target": "_blank"
            });
          }
        }

        /* Used by putimg() or set1Img1Brand() or set3Img1Brand */
        function paddingLeft(str, lenght) {
          debugger;
          if (str.length >= lenght)
            return str;
          else
            return paddingLeft("0" + str, lenght);
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

        function hideBlock() {
            var date1 = new Date("2020-07-24T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('.countdown-bn1').prepend('<div class="gray-block"></div>');

            }
            if (dateNow < date1) {
                $('.countdown-bn2').prepend('<div class="gray-block"></div>');
                $('.countdown-bn1').remove('<div class="gray-block"></div>');
            }
        };

        // Todo_treegb: setCountdown Logic not set yet.
        function setCountdown (spendtime, classOrId = ".clock-countdown") {
          let domD = $(`${classOrId} .d`).eq(0);
          let domH = $(`${classOrId} .h`).eq(0);
          let domM = $(`${classOrId} .m`).eq(0);
          let domS = $(`${classOrId} .s`).eq(0);
          setInterval(() => {
              spendtime--;
              var d = Math.floor(spendtime / (24 * 3600));
              d = PrefixInteger(d, 2);
              var h = Math.floor((spendtime % (24 * 3600)) / 3600);
              //h = parseInt(d) * 24 + parseInt(PrefixInteger(h, 2));
              h = PrefixInteger(h, 2);
              var m = Math.floor((spendtime % 3600) / (60));
              m = PrefixInteger(m, 2);
              var s = Math.floor(spendtime % 60);
              s = PrefixInteger(s, 2);
              if (spendtime > 0) {
                  domD.text(d);
                  domH.text(h);
                  domM.text(m);
                  domS.text(s);
              } else { // 避免倒數變成負的
                  domD.text(0);
                  domH.text(0);
                  domM.text(0);
                  domS.text(0);
              }
          }, 1000)
        }
        function PrefixInteger (num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
    </script>
</asp:Content>
