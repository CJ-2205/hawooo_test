<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200709beauty_sale.aspx.cs" Inherits="mobile_static_200709beauty_sale" %>

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
            border: 2.5px solid #fff;
        }

        #logo .goods-brand-group a {
            overflow: hidden;
            border: 0 !important;
        }

        .goods-preorder a {
            padding: 0;
        }

        .countdown-txt {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 5%;
            color: #fff;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 25px;
            }
        }

        .goods-preorder .add-btn {
            background: #D22248 !important;
        }
        /*coupon start*/
        .coupon {
            position: relative;
        }

            .coupon img {
                -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.3));
                filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.3))
            }

        .coupon-code {
            background: #fff;
            color: #000;
            font-weight: bold;
            text-align: center;
            font-size: 14px;
            padding: 5px;
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
        /*coupon end*/
    </style>

    <title>Beauty Sale</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain (Start) ===================================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #F3D0E1;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>
        <%--<div class="include" data-file="coupon.html"></div>--%>
        <div class="am-padding-horizontal-xs">
            <ul class="am-avg-sm-2">
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Gift with purchase;
                            <br>
                            Limited 100 sets</h6>
                    </div>
                </li>
                <li class="am-padding-xs  coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Minspend RM188;
                            <br>
                            Limited 80 sets</h6>
                    </div>
                </li>
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_03" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Minspend RM288;
                            <br>
                            Limited 100 sets</h6>
                    </div>
                </li>
                <li class="am-padding-xs coupon">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/coupon_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_04" />
                    <div class="coupon-code">
                        <h6 class="am-margin-top-xs">Minspend RM388;
                            <br>
                            Limited 200 sets</h6>
                    </div>
                </li>
            </ul>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 PREORDER 預購頁面 7/12換開賣頁 (Start) =====================================================--%>
        <%--<asp:Panel runat="server" ID="preorder" Visible="true">--%>
        <%-- <section class="am-margin-bottom all-anchor-href-redirect" id="s1" data-redirect="200709beauty_sale_preorder.aspx">--%>
        <section class="am-margin-bottom-0 am-text-center" style="position: relative;" id="clock1">
            <a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                <h4 class="countdown-txt"><span id="startend"></span><%--Sale starts in --%>
                    <%--<%= sale %>--%>
                    <span class="countdown">
                        <span id='d'>0</span>:
                            <span id='h'>0</span>:
                            <span id='m'>0</span>:
                            <span id='s'>0</span>
                    </span>
                </h4>
            </a>
        </section>
        <%--        <section class="am-margin-bottom-0 am-text-center" style="position: relative;" id="clock2">
            <a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                <h4 class="countdown-txt">Sale ends in 
               
                        <span class="countdown">
                            <span id='d'>0</span>:
                            <span id='h'>0</span>:
                            <span id='m'>0</span>:
                            <span id='s'>0</span>
                        </span>
                </h4>
            </a>
        </section>--%>
        <section class="am-margin-bottom all-anchor-href-redirect" id="s1" data-redirect="200709beauty_sale_preorder.aspx">
            <div class="am-padding-top-sm" style="background: #E84364;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <%--預購商品塊 --%>
                        <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href="200709beauty_sale_preorder.aspx">
                                        <div class="resize-sm">

                                            <div class=" goods goods-preorder" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>
                                                <div class="goods-top">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' style="width: 100%;" />


                                                    <div class="viewed-tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                        Added
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">
                                                    <div class="goods-block">
                                                        <h3 class="goods-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="goods-block flex-between">
                                                        <h4 class="goods-price">
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="goods-block flex-between">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="am-btn am-btn-block add-btn" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="am-padding-vertical-sm am-u-sm-5 am-u-md-4 am-u-sm-centered">
                    <a class="am-u-sm-centered am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%-- </asp:Panel>--%>
        <%--Block1 PREORDER預購頁面  (End) ======================================================--%>

        <%--Block1 FLASH SALE開賣頁面 (Start) =====================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" id="s2" data-redirect="200709beauty_sale_flashsale.aspx">

            <%--<div class="am-margin-bottom-0 am-text-center" style="position: relative;">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                    <h6 class="countdown-txt">Sale Ends in
            <span class="countdown" >
                <span id='d'>0</span>:
                <span id='h'>0</span>:
                <span id='m'>0</span>:
                <span id='s'>0</span>
            </span></h6>
                </a>
            </div>--%>
            <div class="am-padding-top-sm" style="background: #E84364;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <%--Flash Sale商品塊 --%>
                        <asp:Repeater ID="flashsale_rp" runat="server" OnItemDataBound="flashrp_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <%--<a href='<%# "product.aspx?id="+Eval("WP01")%>'>--%>
                                    <a href="200709beauty_sale_flashsale.aspx">
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
                                          <%--  <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>--%>
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
                <div class="am-padding-vertical-sm am-u-sm-5 am-u-md-4 am-u-sm-centered">
                    <a class="am-u-sm-centered am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block1  FLASH SALE開賣頁面 (End) ======================================================--%>

        <%--Block2 hot deal(Start) =====================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" data-redirect="200709beauty_sale_hotdeal.aspx" id="s3">
            <div class="am-padding-bottom-0">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_05m" />
                </a>
            </div>
            <div class="am-padding-top-sm" style="background: #0E4493;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <asp:Repeater ID="hotdeal_rp" runat="server" OnItemDataBound="hotrp_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
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
                                            <%-- <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>--%>
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
                <div class="am-padding-vertical-sm am-u-sm-5 am-u-md-4 am-u-sm-centered">
                    <a class="am-u-sm-centered am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block2 hot deal(End) ======================================================--%>

        <%--Block3 Highlighted Brands(Start)==========================================--%>
        <section class="am-margin-bottom" id="s4">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_06m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_06m" />
            </div>
            <div class="am-margin-bottom-sm">
                <div id="logo">
                    <div class="mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3">
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>

                            <li class="logo309 am-fl brand"></li>

                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                            <li class="am-fl brand"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <%--Block3 Highlighted Brands(End) ==========================================--%>
         <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%; ">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" style="width: 100%;" />
         </div>
        <div class="am-margin-bottom-lg">
            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_07m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" />
            </a>
        </div>

        <div class="am-margin-bottom-lg ">
            <a href="https://www.hawooo.com/mobile/200710supplement.aspx" target="_blank"><%--supplement_01m--%>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200710/supplement_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" class="supplement-bn" />
            </a>
        </div>

        <div class="am-margin-bottom-lg ">
            <a href="https://www.hawooo.com/mobile/200713lifestyle.aspx" target="_blank"><%--lifestyle_01m--%>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/lifestyle_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_07" class="lifestyle-bn" />
            </a>
        </div>
        <%--Terms & Conditions (Start) =============================================--%>

        <footer class="am-padding activity-method" style="background: #D22248;" id="s5">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    1. Promotion Date : 9th July 2020 12:00 - 15th July 2020 23:59
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - Flash Sale (Add to wishlist): 9th July 2020 12:00 - 11th July 2020 23:59<br>
                    - Flash Sale (On Sale): 12th July 2020 00:00 - 15th July 2020 23:59
                </p>
                <p class="am-margin-top-0">
                    2. Free Gift (NON-accumulated gifts. Applicable on ALL skin care brands & cosmetics brands)
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - Naturero Tote Bag (Free gift with any purchase, Worth RM20, limited 100 sets)<br>
                    - Dr.Morita Eye Cream (Min.spend RM188, Worth RM52, limited 80 sets)<br>
                    - DV Hyaluronic Acid Soothing Mask 5pcs/box (Min.spend RM288, Worth RM70, limited 100 sets)<br>
                    - Double Doctor Brightening Serum 30ml (Min.spend RM388, Worth RM174, limited 200 sets)
                </p>
                <p class="am-margin-top-0">
                    3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Beauty Shocking Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>

            </div>
        </footer>

        <%--Terms & Conditions (End) ==============================================--%>

        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-2">
                    <li onclick="goto('top',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
                    </li>
                    <li onclick="goto('s1',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
                    </li>
                </ul>
                <ul class="am-avg-sm-3">
                    <li onclick="goto('s3',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
                    </li>
                    <li onclick="goto('s4',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
                    </li>
                </ul>
            </div>
        </div>
        <%--MB  Contain (End) ====================================================--%>

        <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
        <script src="assets/js/swiper.min.js"></script>
        <script src="assets/js/events.js"></script>
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
                PutImg('20200709', [287, 450, 307, 208, 429, 309, 72, 283, 297, 432, 319, 199]);
                PutImg();
                allAnchorHrefRedirect();
                hideBlock();
                hiddenFooterMenu();
                supplementBanner('2020-07-10T12:00:00');
                lifestyleBanner('2020-07-13T12:00:00');
                changelogo309('2020-07-09T23:59:59');
            }


            // Example usage: putBrandImg('20200618', [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316])cacheVersion=${cacheVersion}
            function PutImg(eventName = '', brandNo = [], indexShift = 0, cacheVersion = 2) {
                // For testing purpose only:
                //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
                // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
                let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
                let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';
                for (i = 0; i < brandNo.length; i++) {
                    let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
          <div class="brand-logo">
            <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1) + "", 2)}.png?cacheVersion=4">
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

            function changelogo309(dateStr = '2020-07-09T23:59:59') {
                let datechangeLogo = new Date(dateStr);
                let dateNow = new Date();
                if (dateNow > datechangeLogo) {
                    $('.logo309 img').eq(0).attr('src', 'https://p8r7m4d5.stackpathcdn.com/images/ftp/20200709/logo_13.png');
                }
            }

            /*設定時間隱藏區塊*/
            function hideBlock() {
                var date1 = new Date("2020-07-11T23:59:59");
                var dateNow = new Date();
                var msg1 = "Sale starts in";
                var msg2 = "Sale ends in";
                if (dateNow > date1) {
                    $('#s1').hide();
                    $("#startend").html(msg2);
                }
                if (dateNow < date1) {
                    $('#s2').hide();
                    $("#startend").html(msg1);
                }
            };

            function supplementBanner(dateStr = '2020-07-10T12:00:00') {
                let dateLifestyle = new Date(dateStr);
                let dateNow = new Date();
                if (dateNow < dateLifestyle) {
                    $('.supplement-bn').eq(i).css("display", "none");
                }
            }
            function lifestyleBanner(dateStr = '2020-07-13T12:00:00') {
                let dateLifestyle = new Date(dateStr);
                let dateNow = new Date();
                if (dateNow < dateLifestyle) {
                    $('.lifestyle-bn').eq(i).css("display", "none");
                }
            }



        </script>

        <%--clock--%>
        <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>

        <script>
            function setTime(spendtime) {

                $(".countdown").everyTime('1s',
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

            //function setTime2(spendtime) {

            //    $(".countdown2").everyTime('1s',
            //        function (i) {
            //            spendtime--;
            //            var d = Math.floor(spendtime / (24 * 3600));
            //            d = PrefixInteger(d, 2);
            //            var h = Math.floor((spendtime % (24 * 3600)) / 3600);
            //            h = PrefixInteger(h, 2);
            //            var m = Math.floor((spendtime % 3600) / (60));
            //            m = PrefixInteger(m, 2);
            //            var s = Math.floor(spendtime % 60);
            //            s = PrefixInteger(s, 2);
            //            if (spendtime > 0) {
            //                $("#d2").text(d);
            //                $("#h2").text(h);
            //                $("#m2").text(m);
            //                $("#s2").text(s);
            //            } else { // 避免倒數變成負的
            //                $("#d2").text(0);
            //                $("#h2").text(0);
            //                $("#m2").text(0);
            //                $("#s2").text(0);
            //            }
            //        });
            //}

            function GetQty(selectItem) {

                var itemID = selectItem.value;
                var qty = itemID.split("#")[1];
                var ddlQty = selectItem.parentNode.parentNode.children[1].children[0];
                $(ddlQty).empty();
                for (var i = 1; i <= qty; i++) {
                    var o = new Option(i, i);
                    $(ddlQty).append(o);
                }
            };

            function PrefixInteger(num, length) {
                return (Array(length).join('0') + num).slice(-length);
            }
        </script>
</asp:Content>
