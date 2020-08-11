<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="taiwan_food_festival.aspx.cs" Inherits="user_static_taiwan_food_festival" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/taiwan_food_festival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain" id="gotop">


        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="#">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_01.png" %>' alt="bb_01" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_02.png" %>' alt="bb_02" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('p1')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_03.png" %>' alt="bb_03" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('p2')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_04.png" %>' alt="bb_04" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('p3')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_05.png" %>' alt="bb_05" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('p4')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_06.png" %>' alt="bb_06" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('p5')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_07.png" %>' alt="bb_07" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('p6')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_08.png" %>' alt="bb_08" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a onclick="GoId('gotop')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bb_10.png" %>' alt="bb_10" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/ss_01.png" %>' alt="主banner" style="width: 100%;" />
            <div class="food-table" style="background: url('<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/ss_03.png" %>' )  no-repeat bottom left;">
                <div class="food-table-dishs">
                    <%--=====================領取折扣券 Start==========================--%>
                    <ul class="coupon-box am-avg-sm-3">
                        <li id="coupon1" data-clipboard-text="FOOD20" onclick="Clip('coupon1');">
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/coupon_01.png" %>' alt="coupon_01" style="width: 100%;" />
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/coupon_02.png" %>' alt="coupon_02" style="width: 100%;" />
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/coupon_03.png" %>' alt="coupon_03" style="width: 100%;" />
                            </a>
                        </li>
                    </ul>
                    <%--=====================領取折扣券 End==========================--%>
                </div>
            </div>
        </div>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/ss_02.png" %>' alt="coupon2" style="width: 100%;" />
        </div>
        <%--=====================Top Banner End==========================--%>

        <div class="am-container">

            <%--=====================shop-block-wrap1===DAILY Start===============================--%>
            <section class="shop-block-wrap   am-padding-top-lg am-margin-top-lg " id="p1">

                <div class="banner-box banner-box1 am-text-center am-g">
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_01.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div>
                    <div class=" shop-block1 shop-block-bg am-padding-sm am-g fillet" id="product-make1">
                        <ul class="am-avg-sm-4">
                            <%--<uc1:products runat="server" ID="products1" />--%>
                            <asp:Repeater ID="rp_plist" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                            <div class="am-u-sm-5 more-products-slider-pic">
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="am-img-responsive lazyautosizes lazyloaded" draggable="false">
                                            </div>
                                            <div class="am-u-sm-7 more-products-slider-text">
                                                <h4><%# Eval("WP02").ToString() %></h4>
                                                <h5>RM <%# Eval("WPA06").ToString() %>
                                                    <span style="font-size: 12px; color: #9C9C9C">-RM <%# Eval("decreaseAmount").ToString() %></span>
                                                </h5>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </section>


            <%--=======================shop-block-wrap1===DAILY End============================--%>

            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_02.png" %>' alt="bn_02m" style="width: 100%;" />
                </a>
            </div>

            <%--=======================KOL Selections=== shop-slider1 Start===============================--%>

            <section class="am-padding-top-smshop-block-wrap  wow fadeIn" id="p2">

                <div class="shop-slider-box">
                    <div class="shop-slider am-g shop-block-bg fillet">

                        <div class="am-fl am-u-sm-3 shop-block2 am-padding-right-xs">
                            <div class="hot-brand-item">
                                <a href="#!">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/kol_02.png" %>' style="width: 100%;">
                                </a>
                            </div>
                        </div>

                        <div class="am-u-sm-9">
                            <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 280, itemMargin: 5, slideshow: false ,playAfterPaused: 5000}">
                                <ul class="am-slides">
                                    <uc1:products runat="server" ID="products2" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--==============================KOL Selections=== shop-slider1  End ===============================--%>
            <%--=======================shop-block-wrap2=== shop-slider2 Start===============================--%>

            <section class="am-padding-top-lg shop-block-wrap  wow fadeIn">

                <div class="shop-slider-box">
                    <div class="shop-slider am-g shop-block-bg fillet">

                        <div class="am-fl am-u-sm-3 shop-block2 am-padding-right-xs">
                            <div class="hot-brand-item">
                                <a href="#!">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/kol_03.png" %>' style="width: 100%;">
                                </a>
                            </div>
                        </div>

                        <div class="am-u-sm-9">
                            <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 280, itemMargin: 5, slideshow: false ,playAfterPaused: 5000}">
                                <ul class="am-slides">
                                    <uc1:products runat="server" ID="products3" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--============================== shop-block-wrap2=== shop-slider2  End ===============================--%>

            <%--========================= shop-slider3 Start===============================--%>

            <section class="am-padding-top-lg shop-block-wrap  wow fadeIn">

                <div class="shop-slider-box">
                    <div class="shop-slider am-g shop-block-bg fillet">

                        <div class="am-fl am-u-sm-3 shop-block2 am-padding-right-xs">
                            <div class="hot-brand-item">
                                <a href="#!">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/kol_01.png" %>' style="width: 100%;">
                                </a>
                            </div>

                        </div>

                        <div class="am-u-sm-9">
                            <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 280, itemMargin: 5, slideshow: false ,playAfterPaused: 5000}">
                                <ul class="am-slides">
                                    <uc1:products runat="server" ID="products4" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--================================= shop-slider3  End ===============================--%>

            <%--=========================shop-block-wrap3==== Gourmet Brands Start ===============================--%>
            <section class="shop-block-wrap  shop-block-wrap3  wow fadeIn am-padding-vertical-lg am-margin-vertical-lg" id="p3">

                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_03.png" %>' alt="Banner" style="width: 100%;" />
                </div>

                <div class="am-g  shop-block-bg am-padding-sm fillet">
                    <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 380, itemMargin: 5, slideshow: false}">
                        <ul class="am-slides">
                            <asp:Repeater ID="rpBrand" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href=<%#Eval("url") %> target="_blank">
                                            <div class="imgContain" style="padding: 10px; margin: auto">
                                                <img class="am-img-responsive" src='<%#Eval("img") %>'>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </section>

            <%--==============================shop-block-wrap3====  End ===============================--%>

            <%--=====================Instent Noodles==Start===============================--%>
            <section class="shop-block-wrap   am-padding-top-lg am-margin-top-lg " id="p4">
                <div class="banner-box am-text-center am-g">
                    <a href="Instant_noodles.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="hvr">
                    <div class=" shop-block-bg am-padding shop-block fillet" id="product-make8">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" ID="products5" />
                        </ul>
                        <div class="see-more-btn am-g">
                            <a href="Instant_noodles.aspx" target="_blank">
                                <div class="am-u-sm-2 am-u-sm-centered">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/more.png" %>' alt="Banner" style="width: 100%;" />
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>


            <%--=======================Instent Noodles  End============================--%>

            <%--=====================Variety  Snacks Start===============================--%>
            <section class="shop-block-wrap   am-padding-top-lg am-margin-top-lg " id="p5">
                <div class="banner-box am-text-center am-g">
                    <a href="variety_snacks.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="hvr">
                    <div class="shop-block-bg am-padding shop-block fillet" id="product-make7">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" ID="products6" />
                        </ul>
                        <div class="see-more-btn am-g">
                            <a href="variety_snacks.aspx" target="_blank">
                                <div class="am-u-sm-2 am-u-sm-centered">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/more.png" %>' alt="Banner" style="width: 100%;" />
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>


            <%--=======================Variety  Snacks  End============================--%>

            <%--=====================Tasty Beverages Start===============================--%>
            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-vertical-lg" id="p6">
                <div class="banner-box  am-text-center am-g">
                    <a href="tasty_beverages.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_06.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="hvr">
                    <div class="shop-block-bg am-padding shop-block fillet" id="product-make6">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" ID="products7" />
                        </ul>
                        <div class="see-more-btn am-g">
                            <a href="tasty_beverages.aspx" target="_blank">
                                <div class="am-u-sm-2 am-u-sm-centered">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/more.png" %>' alt="Banner" style="width: 100%;" />
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>


            <%--=======================Tasty Beverages  End============================--%>

            <%--==============================活動辦法 Start =====================================--%>
        </div>
    </div>

    <footer class="activity-method">
        <p class="activity-method-p am-margin-0 am-container">
            Terms & Conditions<br />
            Taiwan Food Festivals<br />
            1. Promotion date : 4th October 2019 - 4th November 2019.<br />
            2. Use Code【FOOD20】for EXTRA RM20 OFF (min spend RM169).<br />
            3. Gift with any purchase is limited for first 50 customer.<br />
            4. Two lucky winners for free order will be announced on 12th November , the amount will be transfer to your account on 14th November.<br />
            5. Daily Deal each item LIMITED 1 UNIT per pax.<br />
            6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Taiwan Food Festival Terms from time to time, and in such manner as Hawooo deems appropriate.
        </p>
    </footer>
    <%--==============================活動辦法 End=====================================--%>


    <script>
        $(function () {
            $(".hvr li").attr("class", "am-fl hvr-float");
        });

        $(function () {
            var date = new Date("2019-10-04T00:00:00"),//開始日
                dateNow = new Date(),
                totalSecond = (dateNow - date),//取得總毫秒
                day = Math.ceil(totalSecond / 1000 / 60 / 60 / 24),//計算活動是第幾天
                count = $('.shop-block1 ul li').length;//li個數
            if (day > count) {
                day = count;
            }
            //for (i = 0; i < day; i++) {
            $('.shop-block1 ul li').eq(day - 1).addClass('noafter');
            //$('.shop-block1 ul li').not('.noafter').find('a').attr("href", "#!");

            //}

        });
    </script>

    <script type="text/javascript">

        $(function () {
            var url = location.search;
            if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
                var v = url.split('?')[1];
                v = v.split('=')[1];
                GoId(v);
            }
        });
        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };
        function GoId(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 500);

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
</asp:Content>

