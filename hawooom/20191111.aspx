<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191111.aspx.cs" Inherits="mobile_static_20191111" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />

    <style>
        .close {
            display: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="SF30" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/coupon_01.png" %>' alt="ss_01m" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="SF40" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/coupon_02.png" %>' alt="ss_01m" />
                    </a>
                </li>
                <%-- coupon3  11/11當日才能使用--%>
                <li class="coupon3">
                    <a id="coupon3" data-clipboard-text="SF111" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/coupon_03.png" %>' alt="ss_01m" />
                    </a>
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>


        <%--=====================Slider1  Pre Sale  Start===============================--%>

        <section class="am-padding-top goods-mb slider-cover link-block" id="s1">
            <div class="mb-slider-product mb-shop-bg">
                <div class="banner-box">
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container1 sww" id="product-make1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide">
                            <a href="20191111pre_sale.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--====================Slider1  Pre Sale  End============================--%>

        <%--==================Slider2  Flash Sale  Start==========================--%>

        <section class="am-padding-top goods-mb" id="s2">
            <div class="mb-slider-product mb-shop-bg">
                <div class="banner-box">
                    <a href="20191111preorder.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" id="bn03" />
                    </a>
                </div>
                <div class="slider2">
                    <div class="clock am-text-center">
                        <span id="content"></span>
                        <span class="am-padding-right-xs">STARTS IN</span>
                        <span id='d'></span>:
                        <span id='h'></span>:
                        <span id='m'></span>:
                        <span id='s'></span>
                        <span class="am-padding-left-xs">DAYS</span>
                    </div>
                </div>
                <div class="swiper-container swiper-container2 sww" id="product-make2">

                    <ul class="swiper-wrapper am-margin-0 am-padding-0" id="rptFlashSale_1">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide">
                            <a href="20191111preorder.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                    <%--11/11當天轉換成下列Repeater--%>
                    <ul class="swiper-wrapper am-margin-0 am-padding-0 close" id="rptFlashSale_2">
                        <asp:Repeater ID="rptFlashSale" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                        <div class="product_item_pic">
                                            <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                        </div>
                                        <div class="product_item_text">
                                            <div class="product_item_block am-cf">
                                                <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                            </div>
                                            <div class="product_item_block am-cf">

                                                <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                                <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                            </div>

                                            <%-- 火力bar --%>
                                            <div class="fire-bar-block">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                                </div>
                                                <div class="fire-bar">
                                                    已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>
                                            <%-- 火力end --%>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                        <li class="am-fl swiper-slide">
                            <a href="20191111preorder.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h2><strong>See More</strong></h2>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <%--11/11當天Repeater End--%>
                </div>
            </div>
        </section>

        <%--=======================Slider2  Flash Sale  End============================--%>

        <%--=======================Ranking Contest  Start=============================--%>

        <div class="banner-box am-padding-top">
            <a href="20191111rank.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_04m.png" %>' alt="bn_04m" />
            </a>
        </div>

        <div class="banner-box  am-padding-top-sm">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_05m.png" %>' alt="bn_05m" style="width: 100%;" />
        </div>
        <%--=======================Ranking Contest  End=============================--%>

        <%--=======================Highlighted Brands1 Start===========================--%>

        <div class="banner-box  am-padding-top" id="s3">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_06m.png" %>' alt="bn_06m" style="width: 100%;" />
        </div>

        <section class="mb-shop-block-wrap" id="b1">

            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_01.png" %>' alt="bd_01" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb" id="product-make7">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rp3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%--<li class="am-fl">
                                <a href="#">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM 31.840</h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis">-RM20.040</span>
                                        </div>
                                    </div>
                                </a>
                            </li>--%>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands1  End============================--%>

        <%--=======================Highlighted Brands2 Start===========================--%>

        <section class="mb-shop-block-wrap am-padding-top-xs " id="b2">

            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_02.png" %>' alt="bd_02" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rp4" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands2   End============================--%>
        <%--=======================Highlighted Brands3 Start===========================--%>

        <section class="mb-shop-block-wrap am-padding-top-xs" id="b3">

            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_03.png" %>' alt="bd_03" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rp5" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands3   End============================--%>
        <%--=======================Highlighted Brands4 Start===========================--%>

        <section class="mb-shop-block-wrap am-padding-top-xs" id="b4">

            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_04.png" %>' alt="bd_04" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rp6" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands4   End============================--%>
        <%--====================Highlighted Brands 5~12=== Start============================--%>
        <section class="am-padding-top-xs  mb-shop-block-wrap">
            <div class="mb-shop-block mb-shop-block3  mb-shop-bg  goods-mb">
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
                    <%--                    <li class="am-fl">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/bd_05.png" alt="bd_05" />
                        </a>
                    </li>--%>
                </ul>
            </div>
        </section>

        <%--====================Highlighted Brands 5~12=== End============================--%>


        <%--=============================Value Package Start============================--%>
        <section class="am-padding-top-lg  mb-shop-block-wrap" id="s4">
            <div class="banner-box">
                <a href="value_package.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_07m.png" %>' alt="bn_07m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block3  mb-shop-bg  goods-mb" id="product-make6">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products7" />
                </ul>
            </div>
        </section>

        <%--=====================Value Package  End===============================--%>

        <%--=====================錨點連結區1  Start===============================--%>

        <section class="am-padding-top" id="s5">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_08m.png" %>' alt="bn_08m" />
            </div>

            <div class="mb-shop-block-wrap  float-menu">

                <ul class="am-nav">
                    <li class="is-active" id="tab1"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>
            <div class="mb-slider-product mb-shop-bg  goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_01m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3 sww link-block" id="product-make4">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products8" />
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區1  End ==========================--%>


        <%--=====================錨點連結區2  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li class="is-active" id="tab2"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>
            <div class="mb-slider-product mb-shop-bg   goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_02m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products9" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區2  End ==========================--%>

        <%--=====================錨點連結區3  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li class="is-active" id="tab3"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>

            <div class="mb-slider-product mb-shop-bg  goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_03m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products10" />
                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li class="is-active" id="tab4"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>
            <div class="mb-slider-product mb-shop-bg  goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_04m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products11" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li class="is-active" id="tab5"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>

            <div class="mb-slider-product mb-shop-bg goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_05m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products12" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區5  End ==========================--%>


        <%--=====================錨點連結區6  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li class="is-active" id="tab6"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>

            <div class="mb-slider-product mb-shop-bg  goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=266" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_06m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products13" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區6  End ==========================--%>

        <%--=====================錨點連結區7  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li class="is-active" id="tab7"><a>Food</a></li>
                    <li onclick="AnchorPoint('tab8')"><a>Mom&Baby</a></li>
                </ul>
            </div>
            <div class="mb-slider-product mb-shop-bg  goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_07m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products14" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區7  End ==========================--%>

        <%--=====================錨點連結區8  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>Makeup</a></li>
                    <li onclick="AnchorPoint('tab2')"><a>Skincare</a></li>
                    <li onclick="AnchorPoint('tab3')"><a>Supplements</a></li>
                    <li onclick="AnchorPoint('tab4')"><a>Home&Living</a></li>
                    <li onclick="AnchorPoint('tab5')"><a>Lingerie</a></li>
                    <li onclick="AnchorPoint('tab6')"><a>Fashion</a></li>
                    <li onclick="AnchorPoint('tab7')"><a>Food</a></li>
                    <li class="is-active" id="tab8"><a>Mom&Baby</a></li>
                </ul>
            </div>
            <div class="mb-slider-product mb-shop-bg   goods-mb">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_08m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10 sww link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products15" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區8  End ==========================--%>

        <%--=====================You May Also Like...  Start========================--%>

        <section class="am-padding-top am-padding-bottom-lg">
            <h3 class="am-margin-bottom-0 am-padding-left-xs">You May Also Like...</h3>
            <div class="mb-slider-product mb-shop-bg  goods-mb">
                <div class="swiper-container swiper-container11 sww" id="product-make9">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products16" />
                    </ul>
                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <footer class="activity-method">

            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                1111 Shopping Festival<br />
                1. Promotion date : 1st November 2019 - 11th November  2019<br />
                2. 1111 Promotion Coupon:
* RM30 OFF (min spend 300), use code [ SF30 ]
* RM40 OFF (min spend 370), use code [ SF40 ]
* RM111 OFF (min spend 900), use code [ SF111 ] *ONLY applicable on 11/11/2019<br />
                3. 111 Free gift:
* Free Bao-Mommy Washing machine/ Toilet Bowl Cleaning Powder (min spend 250 , limited 200 packs)
* Free Dr. Morita Mask ( 5 pcs, min spend 450, limited 100 sets)<br />
                4. Coupon is APPLICABLE on selected Flagship Stores , including Dr. Cink, Dr. Morita, Paradiso Garden, DV, Dr.Lady, Check 2 Check,Laler, Choyer, Nature Food Cover, Hsu's, C'est Vrai, hallmark, Loving Family, Bao Mummy, Anriea, rootfocus, mooimom, deseno, Naturero, Enjoy the life<br />
            </p>
        </footer>
        <%--=======================shop-block-wrap1===Best offer  End============================--%>
    </div>

    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-5">
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06m.png" %>' alt="ss_06m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">

        $(function hrefChange() {
            $('#s1 a').attr({
                "href": "20191111pre_sale.aspx",
                "target": "_black"
            });


            $('#b1 a').attr({
                "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=208",
                "target": "_black"
            });

            $('#b2 a').attr({
                "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=235",
                "target": "_black"
            });

            $('#b3 a').attr({
                "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=312",
                "target": "_black"
            });

            $('#b4 a').attr({
                "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=283",
                "target": "_black"
            });

            $('#s4 a').attr({
                "href": "value_package.aspx",
                "target": "_black"
            });
        });

        $(function closeTimer() {
            var date2 = new Date("2019-11-06T00:00:00");
            var dateNow = new Date();
            if (dateNow > date2) {
                $("div").remove(".clock");

            }
        });

        $(function hide() {
            var date1 = new Date("2019-11-11T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('.coupon3').removeClass();//顯示coupon3
                $('#s1').addClass('slider1');//反灰presale區塊
                $('#bn03').attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_09m.png" %>')//更換FlashSale Banner
                $('#rptFlashSale_1').remove();//移除原flashsale商品塊
                $("#rptFlashSale_2").removeClass('close');//顯示新flashsale商品塊(有火)

            }
        });

    </script>
    <script src="assets/js/swiper.min.js"></script>

    <script>

        $(window).load(function () {
            $(".sww li").attr("class", "am-fl swiper-slide");
            setThem();

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

