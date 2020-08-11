<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020valentines_day.aspx.cs" Inherits="user_static_2020valentines_day" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020valentines_day.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <%--========================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_04.png" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_05.png" %>' alt="ss_05" />
                </li>
            </ul>
        </div>
        <%--======================== 側邊選單 End ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_01.png" %>' alt="主banner" />
        </div>
        <div class="am-container">
            <%--=====================領取折扣券 Start ==========================--%>
            <div class="am-padding-vertical-xl copy-coupon">
                <ul class="am-avg-sm-4">
                    <li>
                        <a id="coupon1" data-clipboard-text="LOVE25" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="LOVE35" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon3" data-clipboard-text="LOVE55" onclick="Clip('coupon3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                    <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/coupon_04.png" %>' alt="coupon_04" />
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End ===========================--%>

            <%--==================== Slider1 Hot Deal Start =======================--%>
            <section class="am-margin-top-xl" id="s1">
                <div class="banner-box heart-bn">
                    <a href="2020valentines_day_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_02.png" %>' alt="bn_02" />
                    </a>
                </div>

                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container1">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products1" />

                            <li class="am-fl swiper-slide see-more-item">
                                <a href="2020valentines_day_hot_deal.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div>
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn1 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn1 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </section>
            <%--=================== Slider1 Hot Deal  End ======================--%>

            <%--===================  Slider2 Best Gifts Start =====================--%>
            <section class="am-margin-top-xl" id="s2">
                <div class="banner-box heart-bn">
                    <a href="2020valentines_day_best_gifts.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_03.png" %>' alt="bn_03" />
                    </a>
                </div>
                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container1" id="product-make8">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products2" />


                            <li class="am-fl swiper-slide see-more-item">
                                <a href="2020valentines_day_best_gifts.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div>
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn1 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn1 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </section>
            <%--===================  Slider2 Best Gifts End =====================--%>

            <%--=================== Highlighted Brands Start  ===================--%>
            <section class="am-margin-top-xl" id="s3">
                <div class="banner-box heart-bn">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_04.png" %>' alt="bn_04" />
                </div>
                <div class="shop-block shop-block-bg am-padding-sm">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />

                    </ul>
                </div>
            </section>
            <%--=====================Highlighted Brands ===End===================--%>

            <%--=====================錨點連結區1 Shop By Category Start ===============--%>


            <section class="am-margin-top-xl" id="s4">
                <div class="banner-box heart-bn">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bn_05.png" %>' alt="bn_05" />
                </div>

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li class="is-active" id="tab1"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="h_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="h_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="h_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_01.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products3" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>
            <%--===================== 錨點連結區2  Start==========================--%>
            <section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li class="is-active" id="tab2"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_02.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products4" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
            <section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li class="is-active" id="tab3"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <%-- <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_03.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products5" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
            <section class="am-margin-top-lg">
                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li class="is-active" id="tab4"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></l--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_04.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products6" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>
            <%--===================== 錨點連結區5  Start==========================--%>
            <section class="am-margin-top-lg">
                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li class="is-active" id="tab5"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=44" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_05.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products7" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>
            <%--===================== 錨點連結區6  Start==========================--%>
            <%--<section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <li class="is-active" id="tab6"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm shop-block-bg">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_06.png" %>'>
                                </a>
                            </li>
                            <li class="am-fl  hvr-float"></li>
                        </ul>
                    </div>
                </div>
            </section>--%>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--===================== 錨點連結區7  Start==========================--%>
            <section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li class="is-active" id="tab7"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_07.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products8" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區7  End ==========================--%>
            <%--===================== 錨點連結區8  Start==========================--%>
            <section class="am-margin-top-lg">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_06.png" %>' alt="bg_07" /></a></li>
                        <li class="is-active" id="tab8"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/h_07.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ca_08.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products9" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區8 End ==========================--%>

            <%--=====================You May Also Like...  Start====================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs  also-like">You May Also Like...</h1>
                <div>
                    <div class="am-padding-sm shop-block also-like-block">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products10" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
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
            3. Gift with purchase （only available when the sale has started)<br />
            <div class="indent">
                <ul>
                    <li>Free Valentine's Card with every purchase</li>
                    <li>Free Paradiso Garden Essence set with min spend 450 ( Essence 8ml + Mask, worth RM100, limited 100 sets)</li>
                </ul>
            </div>
            4. Promo Code is applicable on selected Flagship Stores, including Cest Vrai, Anriea, DV, Laler, Choyer, Hsu’s, Loving Family, DV Tokyo,<br />
            Grandma Therapy, Paradiso Garden.<br />
            5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Valentine's Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.<br />
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");
            $(".category-bn li,.also-like-block li").attr("class", "am-fl hvr-float");
            ChangeHref();
            setThem();
            putimg();
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
                        slidesPerView: 3.5,
                        slidesPerGroup: 3,
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


        var brandNo = [208, 72, 102, 115, 235, 345, 283, 450];
        var brandNo2 = [307, 72, 115, 102, 235, 345, 283, 450];
        function putimg() {
            var date2 = new Date("2020-02-14T00:00:00");
            var dateNow = new Date();
            if (dateNow < date2) {
                for (i = 0; i < 10; i++) {
                    $('#s3 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                        '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200204/logo_0' + (i + 1) + '.png">' + '</a>' +
                        '</div>');
                    $('#s3 li a:not(.b)').eq(i).attr({
                        "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                        "target": "_blank"
                    });
                }
            }
            else {
                for (i = 0; i < 10; i++) {
                    $('#s3 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo2[i] + '"' + ' target="_blank">' +
                        '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200204/logo_0' + (i + 9) + '.png">' + '</a>' +
                        '</div>');
                    $('#s3 li a:not(.b)').eq(i).attr({
                        "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo2[i],
                        "target": "_blank"
                    });
                }
            }
        };

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
</asp:Content>

