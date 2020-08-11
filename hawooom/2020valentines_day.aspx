<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020valentines_day.aspx.cs" Inherits="mobile_static_2020valentines_day" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020valentines_day.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .maybe-like-block h3 {
            color: #565656 !important;
            font-size: 12px !important;
        }

        .maybe-like-block h5 {
            color: #ffffff !important;
            font-size: 14px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="LOVE25" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_01m.png" %>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="LOVE35" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_02m.png" %>' alt="coupon_02" />
                    </a>
                </li>
                <li>
                    <a id="coupon3" data-clipboard-text="LOVE55" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_03m.png" %>' alt="coupon_03" />
                    </a>
                </li>
            </ul>
        </div>

        <div class="coupon-mb">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_04m.png" %>' alt="coupon_04" />
            </a>
        </div>

        <%--========================Coupon End===============================--%>

        <%--=======================Slider1 Hot Deal Start =========================--%>

        <section class="am-margin-top-sm" id="s1">
            <div class="banner-box heart-bn">
                <a href="2020valentines_day_hot_deal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_02.png" %>' alt="bn_02" style="width: 100%;" />
                </a>

            </div>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020valentines_day_hot_deal.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider1 Hot Deal Start===========================--%>

        <%--==================== Slider2 Best Gifts Start  ==========================--%>

        <section class="am-margin-top-sm" id="s2">
            <div class="banner-box heart-bn">
                <a href="2020valentines_day_best_gifts.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_03.png" %>' alt="bn_03" style="width: 100%;" />
                </a>

            </div>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020valentines_day_best_gifts.aspx" target="_blank">
                                <div class="product_item_pic">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" />
                                </div>
                                <div class="product_item_text am-text-center">
                                    <h6>See More</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider2 Best Gifts End ===========================--%>

        <%--====================Highlighted Brands Start ==========================--%>

        <section class="am-margin-top-sm">
            <div class="banner-box heart-bn" id="s3">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_04.png" %>' alt="bn_04" style="width: 100%;" />
                </a>
            </div>

            <div class="goods-3items-mb shop-block-bg" id="logo">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='https://www.hawooo.com/mobile/brand_1.aspx?bid=<%# Eval("B01").ToString() %>' target="_blank">
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
                                            <span class="product_item_dis">-<%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("-","") %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands  End=========================--%>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

        <section class="am-margin-top-sm" id="s4">
            <div class="banner-box heart-bn">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_05.png" %>' alt="bn_05" />
            </div>

            <div class="float-menu">
                <ul class="am-nav">
                    <li class="is-active" id="tab1"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_01m.png" %>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4" id="product-make4">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />

                    </ul>
                </div>
            </div>

        </section>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


        <%--=====================錨點連結區2   Start  ==============================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="h_01" /></a></li>
                    <li class="is-active" id="tab2"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_02m.png" %>' alt="c_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />

                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區2  End ============================--%>

        <%--=====================錨點連結區3  Start============================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="h_02" /></a></li>
                    <li class="is-active" id="tab3"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_03m.png" %>' alt="c_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />

                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="h_03" /></a></li>
                    <li class="is-active" id="tab4"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_04m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Star t==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="h_04" /></a></li>
                    <li class="is-active" id="tab5"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="h_05" /></a></li>
                    <%-- <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_05m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區5  End ==========================--%>

        <%--=====================錨點連結區6  Start ==========================--%>

        <%--<section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="h_05" /></a></li>
                    <li id="tab6"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="#!" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_06m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper">
                                                <uc1:products runat="server" id="products8" />

                    </ul>
                </div>
            </div>

        </section>--%>

        <%--===================== 錨點連結區6  End ==========================--%>

        <%--=====================錨點連結區7  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li class="is-active" id="tab7"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_07m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區7  End ==========================--%>

        <%--=====================錨點連結區8  Start ==========================--%>

        <section class="am-margin-top-sm">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01m.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02m.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03m.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04m.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05m.png" %>' alt="bg_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06m.png" %>' alt="bg_07" /></a></li>
                    <li class="is-active" id="tab8"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07m.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_08m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />

                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區8  End ==========================--%>
        <%--===================== You May Also Like...  Start====================--%>

        <section class="am-margin-vertical-sm am-padding-bottom-lg maybe-like-block">
            <h5 class="am-margin-bottom-0 am-padding-left-xs">You May Also Like...</h5>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products10" />
                    </ul>
                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method am-padding">
            <div class="am-container">
                Terms & Conditions<br />
                Valentine's Day Sale<br />
                1.Promotiion Date : 4th Feb 2020 - 14th Feb 2020<br />
                2.Promo Code:  
             <div class="indent">
                 <ul>
                     <li>RM25 OFF (min spend 280), use code [ LOVE25 ]</li>
                     <li>RM35 OFF (min spend 390), use code [ LOVE35 ]</li>
                     <li>RM55 OFF (min spend 630), use code [ LOVE55 ]</li>
                 </ul>
             </div>
                3. Gift with purchase<br />
                <div class="indent">
                    <ul>
                        <li>Free Valentine's Card with every purchase</li>
                        <li>Free Paradiso Garden Essence set with min spend 450 ( Essence 8ml + Mask, worth RM100, limited 100 sets)</li>
                    </ul>
                </div>
                4. Promo Code is applicable on selected Flagship Stores, including<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Valentine's Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.<br />
            </div>

        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <section class="footer-bar am-g am-g-collapse">
        <div>
            <ul class="am-avg-sm-2">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_01m.png" %>' alt="ss_00m" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_02m.png" %>' alt="ss_01m" style="width: 100%;" />
                </li>
            </ul>
        </div>
        <div>
            <ul class="am-avg-sm-3">
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_03m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_04m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_05m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </section>


    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");

            ChangeHref();
            setThem();
            hiddenFooterMenu();
        });

        function ChangeHref() {
            $('#s1 a').attr({
                "href": "2020valentines_day_hot_deal.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "2020valentines_day_best_gifts.aspx",
                "target": "_blank"
            });

        }

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
                                slidesPerView: 2.15,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            },
                            320: {
                                slidesPerView: 2.1,
                                spaceBetween: 3,
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
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        var brandNo = [208, 72, 102, 115, 235, 345, 283, 450];
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200204/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }

        });

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

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

