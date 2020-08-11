<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="black_friday.aspx.cs" Inherits="mobile_static_black_friday" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/black_friday.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain" id="s1">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_01m.png"%>' alt="main-banner" />
        </div>

        <%--========================Coupon Start====================================--%>

        <div class="copy-coupon">
            <ul class="am-g am-g-collapse am-padding-0">
                <li class="am-u-sm-6">
                    <a id="coupon1" data-clipboard-text="BF25" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/coupon_01m.png"%>' alt="coupon_01m" />
                    </a>
                </li>
                <li class="am-u-sm-6">
                    <a id="coupon2" data-clipboard-text="BF35" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/coupon_02m.png"%>' alt="coupon_02m" />
                    </a>
                </li>
                <li class="am-u-sm-12">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/coupon_03m.png"%>' alt="coupon_03m" />
                    </a>
                </li>
            </ul>

        </div>

        <%--========================Coupon End=====================================--%>


        <%--=====================Most POPULAR ITEMS  Start===============================--%>

        <section class="am-padding-top-sm" id="s2">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-margin-bottom-xs">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_02m.png"%>' alt="bn_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="popular" />
                        <%--<li class="am-fl swiper-slide">
                                    <div class="award">
                                        <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191127/aw_01m.png">
                                    </div>
                                    <a href="#">
                                        <div class="product_item_pic">
                                            <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                                        </div>
                                        <div class="product_item_text">
                                            <div class="product_item_block am-cf">
                                                <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                                            </div>
                                            <div class="product_item_block am-cf">

                                                <h4 class="am-fl">RM 31.840</h4>
                                                <span class="product_item_dis">-RM20.040</span>
                                            </div>
                                            <div class="product_item_block am-cf">
                                                <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                                                <p class="am-fr" style="">
                                                    <span class="product-items-tag">
                                                        <img src="../image/熱品.svg" draggable="false">買就送
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>--%>


                        <li class="am-fl more  swiper-slide">
                            <a class="am-center">
                                <div class="see-more-img">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/more.png"%>' style="width: 100%;">
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </section>

        <%--====================Most Popular Items  End============================--%>

        <%--==================Beauty 1+1 Sale Start ===============================--%>

        <section class="am-padding-top-sm" id="s3">
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-margin-bottom-xs">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_03m.png"%>' alt="bn_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3 link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="beauty" />
                        <%--<li class="am-fl swiper-slide">
                            <a href="#">
                                <div class="product_item_pic">
                                    <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM 31.840</h4>
                                        <span class="product_item_dis">-RM20.040</span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                                        <p class="am-fr" style="">
                                            <span class="product-items-tag">
                                                <img src="../image/熱品.svg" draggable="false">買就送
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>--%>

                        <li class="am-fl more  swiper-slide">
                            <a class="am-center">
                                <div class="see-more-img">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/more.png"%>' style="width: 100%;">
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </section>

        <%--=======================Beauty 1+1 Sale  End============================--%>

        <%--==================LIFE 1+1 Sale Start==================================--%>

        <section class="am-padding-top-sm" id="s4">
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-margin-bottom-xs">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_04m.png"%>' alt="b_04m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3 link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="life" />

                        <li class="am-fl more  swiper-slide">
                            <a class="am-center">
                                <div class="see-more-img">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/more.png"%>' style="width: 100%;">
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </section>

        <%--=======================LIFE 1+1 Sale  End===============================--%>

        <%--=======================Highlighted Brands1 Start===========================--%>


        <section class="am-padding-top-xs  mb-shop-block-wrap" id="s5">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_05m.png"%>' alt="bn_05m" style="width: 100%;" />
            </div>
            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=208" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bd_01.png"%>' alt="bd_01" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block goods-items3">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=208" target="_blank">
                                    <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                    <div class="goods-img">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-neme">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>

                                        <div class="goods-price">
                                            <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                        </div>
                                         <span class="original-price">RM <%# Eval("WPA10").ToString() %></span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands1  End===========================--%>

        <%--=======================Highlighted Brands2 Start===========================--%>

        <section class="am-padding-top-xs  mb-shop-block-wrap">
            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=235" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bd_02.png"%>' alt="bd_02" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block goods-items3">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=235" target="_blank">
                                    <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                    <div class="goods-img">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-neme">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>

                                        <div class="goods-price">
                                            <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                        </div>
                                         <span class="original-price">RM <%# Eval("WPA10").ToString() %></span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands2   End===========================--%>
        <%--=======================Highlighted Brands3 Start===========================--%>

        <section class="am-padding-top-xs  mb-shop-block-wrap">

            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=407" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bd_03.png"%>' alt="bd_03" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block shop-block-bg goods-items3">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=407" target="_blank">
                                    <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                    <div class="goods-img">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-neme">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>

                                        <div class="goods-price">
                                            <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                        </div>
                                         <span class="original-price">RM <%# Eval("WPA10").ToString() %></span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands3   End===========================--%>
        <%--=======================Highlighted Brands4 Start===========================--%>

        <section class="am-padding-top-xs  mb-shop-block-wrap">
            <div class="banner-box">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=283" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bd_04.png"%>' alt="bd_04" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block shop-block-bg goods-items3">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand4" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=283" target="_blank">
                                    <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                    <div class="goods-img">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-neme">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>

                                        <div class="goods-price">
                                            <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                        </div>
                                         <span class="original-price">RM <%# Eval("WPA10").ToString() %></span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands4  End===============================--%>
        <%--====================Highlighted Brands 5~12=== Start============================--%>
        <section class="am-padding-top-xs  mb-shop-block-wrap">
            <div class="mb-shop-block mb-shop-block3">
                <ul class="am-avg-sm-2">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("url") %>' target="_blank">
                                    <img src='<%#Eval("img") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--====================Highlighted Brands 5~12=== End=====================--%>


        <%--=====================錨點連結區  Start===============================--%>

        <section class="am-padding-top-sm category-point-block" id="s6">
            <div class="banner-box am-padding-vertical-xs category-point-img">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/ca_01m.png"%>' alt="ca_01m" style="width: 100%;" />
            </div>
            <div class="category-point">
                <ul class="am-avg-sm-4">
                    <li onclick="anchorPoint('point1')">1</li>
                    <li onclick="anchorPoint('point2')">2</li>
                    <li onclick="anchorPoint('point3')"></li>
                    <li onclick="anchorPoint('point4')"></li>
                    <li onclick="anchorPoint('point5')"></li>
                    <li onclick="anchorPoint('point6')"></li>
                    <li onclick="anchorPoint('point7')"></li>
                    <li onclick="anchorPoint('point8')"></li>
                </ul>
            </div>

        </section>

        <%--===================== 錨點連結區 End ==============================--%>


        <%--=====================Make Up  Start===============================--%>

        <section class="am-padding-top" id="point1">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_06m.png"%>' alt="bn_06m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products1" />
                        <%--<li class="am-fl swiper-slide">
                            <a href="#">
                                <div class="product_item_pic">
                                    <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM 31.840</h4>
                                        <span class="product_item_dis">-RM20.040</span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                                        <p class="am-fr" style="">
                                            <span class="product-items-tag">
                                                <img src="../image/熱品.svg" draggable="false">買就送
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>--%>
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Make Up  End ===============================--%>

        <%--=====================Skin Care Start===============================--%>

        <section class="am-padding-top" id="point2">


            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_07m.png"%>' alt="bn_07m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Skin Care  End ==========================--%>

        <%--=====================Supplements  Start===============================--%>

        <section class="am-padding-top" id="point3">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_08m.png"%>' alt="b_08m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Supplements  End ==========================--%>


        <%--=====================Home & Living  Start===============================--%>

        <section class="am-padding-top" id="point4">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_09m.png"%>' alt="bn_09m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Home & Living  End ==========================--%>


        <%--=====================Lingerie  Start===============================--%>

        <section class="am-padding-top" id="point5">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_10m.png"%>' alt="bn_10m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products5" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Lingerie  End ==============================--%>

        <%--=====================Fashion  Start===============================--%>

        <section class="am-padding-top" id="point6">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=266" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_11m.png"%>' alt="bn_11m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Fashion  End ==========================--%>

        <%--===================== Food  Start===============================--%>

        <section class="am-padding-top" id="point7">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_12m.png"%>' alt="bn_12m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products7" />
                    </ul>
                </div>
            </div>

        </section>

        <%--=====================  Food   End ==========================--%>
        <%--===================== Mom & Baby Start=======================--%>

        <section class="am-padding-top" id="point8">

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box am-padding-bottom-xs">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_13m.png"%>' alt="bn_13m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products8" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== Mom & Baby End ==========================--%>

        <%--=====================You May Also Like...  Start========================--%>

        <section class="am-padding-top-sm am-padding-bottom-lg">
            <h3 class="am-margin-bottom-0 also-like">You May Also Like...</h3>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products9" />
                    </ul>
                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                1. Promotion date : 27th November 2019 - 2nd December 2019<br />
                2. Promotion Coupon:<br />
                * RM25 OFF (min spend 240), use code [ BF25 ]<br />
                * RM35 OFF (min spend 330), use code [ BF35 ]<br />
                3.Spend RM500 and above, get 2000HA Coins (worth RM20)<br />
                5. Coupon is APPLICABLE on selected Flagship Stores , including : Mooimoon, Hsu's, DV, Laler, Choyer, Loving Family, Anriea, Enjoy the life, Paradiso, Zephyrine<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 1111 After Party Sale Terms from time to time, and in such manner as Hawooo deems<br />
            </p>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar">
        <div class="footer-bar-block">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/ss_01m.png"%>' alt="ss_01m" style="width: 100%;" />
            </div>
            <div class="footer-bar-point">
                <ul class="am-avg-sm-3">
                    <li onclick="goto('s1')"></li>
                    <li onclick="goto('s2')"></li>
                    <li onclick="goto('s3')"></li>
                    <li onclick="goto('s4')"></li>
                    <li onclick="goto('s5')"></li>
                    <li onclick="goto('s6')"></li>
                </ul>
            </div>
        </div>
    </div>


    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        
        function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s2 li').eq(i).prepend('<div class="award">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191127/aw_0' + (i + 1) + 'm.png">' +
                    '</div>');
            }

        };

        $(window).load(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $('#s2 a').attr({
                "href": "bk_fri_most_popular.aspx",
                "target": "_blank"
            });
            $('#s3 a').attr({
                "href": "bk_fri_beauty_sale.aspx",
                "target": "_blank"
            });
            $('#s4 a').attr({
                "href": "bk_fri_life_sale.aspx",
                "target": "_blank"
            });

            setThem();
            putimg();
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
        function anchorPoint(id) {
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
</asp:Content>

