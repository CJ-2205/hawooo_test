<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="mit_mega_sale.aspx.cs" Inherits="mobile_static_mit_mega_sale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mit_mega_sale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_01m.png" %>' alt="首頁banner" style="width: 100%;" />
        </div>

        <%--=====================領取折扣券 Start==========================--%>
        <div class="coupon">
            <a id="coupon1" data-clipboard-text="MIT30" onclick="Clip('coupon1');">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/coupon_01m.png" %>' alt="coupon2" style="width: 100%;" />
            </a>
        </div>
        <%--=====================領取折扣券 End==========================--%>

        <%--=====================shop-block-wrap1===Best  Quality Start===============================--%>

        <section class="am-padding-top-lg">
            <div class="banner-box  am-text-center">
                <a href="best_quality.aspx" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_2m.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block1" id="product-make1">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="best_quality.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/morem.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=======================shop-block-wrap1===Best  Quality  End============================--%>

        <%--========================Slider1   Start===============================--%>

        <section class="am-padding-top-lg slider-block-wrapper">
            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=251" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_4m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="am-slider am-slider-default am-slider-carousel  slider-block-mb" data-am-flexslider="{itemWidth: 180, itemMargin: 5, slideshow: false,controlNav:false}">
                <ul class=" am-margin-0 am-slides">
                    <uc1:products runat="server" ID="products2" />
                </ul>
            </div>

        </section>

        <%--=======================Slider1  End============================--%>

        <%--========================Slider2  Start===============================--%>

        <section class="am-padding-top-lg slider-block-wrapper">
            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=32" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_5m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="am-slider am-slider-default am-slider-carousel  slider-block-mb" data-am-flexslider="{itemWidth: 180, itemMargin: 5, slideshow: false,controlNav:false}">
                <ul class=" am-margin-0 am-slides">
                    <uc1:products runat="server" ID="products3" />
                </ul>
            </div>
        </section>

        <%--=======================Slider2  End============================--%>
        <%--========================Slider3   Start===============================--%>

        <section class="am-padding-top-lg slider-block-wrapper">
            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=329" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_6m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="am-slider am-slider-default am-slider-carousel  slider-block-mb" data-am-flexslider="{itemWidth: 180, itemMargin: 5, slideshow: false,controlNav:false}">
                <ul class=" am-margin-0 am-slides">
                    <uc1:products runat="server" ID="products4" />
                </ul>
            </div>
        </section>

        <%--=======================Slider3  End============================--%>

        <%--=====================Taiwan Brands Start===============================--%>

        <section class="am-padding-vertical-lg am-margin-bottom-lg">
            <div class="banner-box  am-text-center">
                <a href="#" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_3m.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block1" id="product-make4">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <div class="hot-brand-item">
                                    <a href='<%# Eval("url") %>' target="_blank">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/"+Eval("img")+".png" %>' style="width: 100%;">
                                    </a>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="banner-box am-text-center">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bgm.png" %>' alt="Banner" style="width: 100%;" />
            </div>
        </section>
        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                MIT Sale<br />
                1. Promotion date : 6th September 2019 - 18th September 2019<br />
                2. Use Code【MIT30】for EXTRA RM30 OFF (min spend 250).<br />
                3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these MIT Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </footer>
    </div>

    <%--=======================shop-block-wrap1===Best offer  End============================--%>

    <script>
        //$(window).load(function () {
        //for (i = 0; i < 7; i++) {
        //    duplicate('product-make1');
        //}
        //for (i = 0; i < 7; i++) {
        //    duplicate('product-make2');
        //}
        //for (i = 0; i < 39; i++) {
        //    duplicate("product-make3");
        //}
        //for (i = 0; i < 7; i++) {
        //    duplicate("product-make4");
        //}
        //for (i = 0; i < 6; i++) {
        //    duplicate("product-make48");
        //}

        //});

        //function duplicate(id) {
        //    var ul = $("#" + id + " ul");
        //    ul.find("li:last")
        //        .clone(true)
        //        .appendTo(ul);
        //}
        //$(function () {
        //    detectLength($('#slider1 li'), 0);
        //    detectLength($('#slider2 li'), 0);
        //    detectLength($('#slider3 li'), 0);
        //});
        ////--------------------算出商品slider總長-----------------//
        //function detectLength(thisli, i) {
        //    var licount = $(thisli).length;   /*li元件個數*/
        //    var liWidth = $(thisli).outerWidth() + i;       /*單個li物件+間距的寬度*/
        //    var litotalWidth = licount * liWidth;            /*總長*/
        //    console.log('litotalWidth: ' + litotalWidth);
        //    $(thisli).parent("ul").css("width", litotalWidth);
        //};
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

