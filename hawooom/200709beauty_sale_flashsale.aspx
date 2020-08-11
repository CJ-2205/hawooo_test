<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200709beauty_sale_flashsale.aspx.cs" Inherits="mobile_static_200709beauty_sale_flashsale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <title>pds_value_buy</title>
    <style>
        .mb-shop-block {
            padding: 3px;
        }

        .countdown-txt {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 7%;
            color: #fff;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 30px;
            }
        }

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--MB  Contain (Start) ===================================================-->
    <div class="am-g main-contain mb-contain" style="background: #F3D0E1;">
        <div class="am-margin-bottom-0 am-text-center" style="position: relative;">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bbn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
            <h4 class="countdown-txt">Sale ends in <span class="countdown">
                <span id='d'>0</span>:
                <span id='h'>0</span>:
                <span id='m'>0</span>:
                <span id='s'>0</span>
            </span></h4>
        </div>

        <!--領取折扣券 (Start)====================================================-->
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <div>
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
        <!--領取折扣券 (End) ====================================================-->

        <!--Block1 (Start) =====================================================-->
        <section class="am-margin-bottom">
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <asp:Repeater ID="flashsale_rp" runat="server" OnItemDataBound="flashrp_ItemDataBound">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                            <li class="am-fl goods goods-flashsale">
                                <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
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
        </section>
        <!--Block1 (End) ======================================================-->

        <!--Terms & Conditions (Start) =============================================-->
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
        <!--Terms & Conditions (End) ==============================================-->
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-2">
                    <li>
                        <a href="200709beauty_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
                        </a>
                    </li>
                    <li>
                        <a href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
                        </a>
                    </li>
                </ul>
                <ul class="am-avg-sm-3">
                    <li>
                        <a href="200709beauty_sale_hotdeal.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
                        </a>
                    </li>
                    <li>
                        <a href="200709beauty_sale.aspx?#s4" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
                        </a>
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200709/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!--MB  Contain Max-width:650px(End) ==========================================-->

    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> -->
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
            hiddenFooterMenu();
        }

    </script>
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

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
    </script>
</asp:Content>
