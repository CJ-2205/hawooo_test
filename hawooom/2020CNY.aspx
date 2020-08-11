<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020CNY.aspx.cs" Inherits="mobile_static_2020CNY" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .banner-box1 {
            color: #A92F2D;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="copy-coupon am-padding-top-sm">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="NY25" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/coupon_01.png" %>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="NY40" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/coupon_02.png" %>' alt="coupon_02" />
                    </a>
                </li>
                <li>
                    <a id="coupon3" data-clipboard-text="NY50" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/coupon_03.png" %>' alt="coupon_03" />
                    </a>
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>

        <div class="banner-box am-padding-sm">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
        </div>

        <%--======================= Slider1 Hot Deal Start =========================--%>

        <section class="am-margin-top-sm" id="s1">
            <div class="banner-box1">
                <a href="2020CNY_hot_deals.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>
                <!-- 如果有要倒數 --->
                <span class="clock-m clock1m">
                    <span id="d"></span>:
                    <span id="h"></span>:
                    <span id="m"></span>:
                    <span id="s"></span>
                </span>
            </div>

            <div class="mb-slider-product">
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products1" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020CNY_hot_deals.aspx" target="_blank">
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

        <%--==================== Slider1 Hot Deal  End============================--%>

        <%--====================Highlighted Brands Start ==========================--%>

        <section>
            <div class="banner-box  am-padding-top" id="s2">

                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_04m.png" %>' alt="bn_06m" style="width: 100%;" />

            </div>

            <div class="goods-3items-mb" id="logo">
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

        <%--=======================New Year beauty Start ========================--%>
        <section class="am-margin-top" id="s3">
            <div class="banner-box">
                <a href="2020CNY_beauty.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_05m.png" %>' alt="bn_07m" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container2">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020CNY_beauty_up.aspx" target="_blank">
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

        <%--=======================New Year beauty End==========================--%>
        <%--====================== Tasty Food, Great Year Start ========================--%>
        <%--<section class="am-margin-top" id="s4">
            <div class="banner-box">
                <a href="2020CNYtasty_food.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_06m.png" %>' alt="bn_06m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />

                        <li class="am-fl swiper-slide see-more-item">
                            <a href="2020CNYtasty_food.aspx" target="_blank">
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
        </section>--%>


        <%--======================= Tasty Food, Great Year Start =====================--%>


        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

        <section class="am-margin-top" id="s5">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_06m.png" %>' alt="bn_07m" />
            </div>

            <div class="float-menu">
                <ul class="am-nav">
                    <li class="is-active" id="tab1"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <%--                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_01m.png" %>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4 category-slider" id="product-make4">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />

                    </ul>
                </div>
            </div>

        </section>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


        <%--=====================錨點連結區2   Start  ==============================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li class="is-active" id="tab2"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_02m.png" %>' alt="c_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />

                    </ul>

                </div>
            </div>

        </section>

        <%--===================== 錨點連結區2  End ============================--%>

        <%--=====================錨點連結區3  Start============================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li class="is-active" id="tab3"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_03m.png" %>' alt="c_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start ==========================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li class="is-active" id="tab4"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_04m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Star t==========================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li class="is-active" id="tab5"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <%--<li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_05m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區5  End ==========================--%>


        <%--=====================錨點連結區6  Start ==========================--%>

        <%--<section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <li class="is-active" id="tab6"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=266" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_06m.png" %>' alt="c_06m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />

                    </ul>
                </div>
            </div>

        </section>--%>

        <%--===================== 錨點連結區6  End ==========================--%>

        <%--=====================錨點連結區7  Start ==========================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="h_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="h_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="h_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="h_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="h_05" /></a></li>
                    <%--                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                    <li class="is-active" id="tab7"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_07m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products10" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區7  End ==========================--%>

        <%--=====================錨點連結區8  Start ==========================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="bg_05" /></a></li>
                    <%--                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                    <li class="is-active" id="tab8"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_08m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10 category-slider">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products11" />

                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區8  End ==========================--%>
        <%--===================== You May Also Like...  Start====================--%>

        <section class="am-padding-top am-padding-bottom-lg maybe-like-block">
            <h3 class="am-margin-bottom-0 am-padding-left-xs">You May Also Like...</h3>
            <div class="mb-slider-product">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products12" />

                    </ul>

                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method">
            <div class="am-padding-xl">
                <div class="am-container">
                    <p>
                        Terms & Conditions<br />
                        New Year Big Sale<br />
                        1.Promotion date : 31th December 2019 - 20th January 2020<br />
                        2.Promotion Coupon:<br />
                    </p>
                    <div>
                        <ul>
                            <li>RM25 OFF (min spend 270), use code [ NY25 ]</li>
                            <li>RM40 OFF (min spend 440), use code [ NY40 ]</li>
                            <li>RM50 OFF (min spend 550), use code [ NY50 ]</li>
                        </ul>
                    </div>
                    <p>
                        3.Gift with purchase
                    </p>

                    <div>
                        <ul>
                            <li>Free New year card with every purchase</li>
                            <%--                            <li>Free red envelopes with min spend RM150 (limited 1000 pcs)</li>--%>
                            <li>Free hand-painted Poker Cards with min spend RM360 (limited 250 pcs)</li>
                        </ul>
                    </div>

                    <div class="indent">
                        <p>
                            1.Coupon is APPLICABLE on selected Flagship Stores , including Hsu's, Laler, Choyer, CHECK2CHECK, Loving Family, Enjoy The Life, Zephyrine, Paradiso Garden, Grandmotherapy, Hallmark, I.vita, Rootfocus, Cest V'rai, DV, Dr.lady, DV Tokyo.                       
                        </p>
                        <p>
                            2.Hawooo reserves the sole right to alter, modify, add to or otherwise vary these New Year Big Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar am-g am-g-collapse">

        <ul class="am-avg-sm-2">
            <li onclick="goto('top')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
            </li>
            <li onclick="goto('s1')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
            </li>
        </ul>
        <ul class="am-avg-sm-3">
            <li onclick="goto('s2')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
            </li>
            <li onclick="goto('s3')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
            </li>
            <%--            <li onclick="goto('s4')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
            </li>--%>
            <li onclick="goto('s5')">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04m.png" %>' alt="ss_05m" style="width: 100%;" />
            </li>
        </ul>
    </div>


    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $("#s1 .swiper-container li").last().addClass('see-more-item');
            $("#s3 .swiper-container li").last().addClass('see-more-item');
            //$("#s4 .swiper-container li").last().addClass('see-more-item');
            ChangeHref();
            SetThem();
            hiddenFooterMenu();
        });

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

        function ChangeHref() {
            $('#s1 a').attr({
                "href": "2020CNY_hot_deals.aspx",
                "target": "_blank"
            });



            $('#s3 a').attr({
                "href": "2020CNY_beauty.aspx",
                "target": "_blank"
            });



        }


        function SetThem() {
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
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        var brandNo = [208, 307, 235, 222, 373, 102, 283, 318];
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200110/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');

            }
        });

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

            $(".clock-m").everyTime('1s',
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

