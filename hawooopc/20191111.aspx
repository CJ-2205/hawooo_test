<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191111.aspx.cs" Inherits="user_static_20191111" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

    <style>
        .close {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <%--=====================側邊選單 Start ==========================--%>

        <div class="side-bar am-center">

            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04.png" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05.png" %>' alt="ss_05" />
                </li>
                <li onclick="goto('s6')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06.png" %>' alt="ss_06" />
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_01.png" %>' alt="主banner" />
        </div>
        <%--=====================Top Banner End==========================--%>

        <div class="am-container pc-container">

            <%--=====================領取折扣券 Start==========================--%>
            <div class="copy-coupon pc-copy-coupon">

                <ul class="am-avg-sm-3">
                    <li>
                        <a id="coupon1" data-clipboard-text="SF30" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="SF40" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li class="coupon3 pc-coupon3">
                        <a id="coupon3" data-clipboard-text="SF111" onclick="Clip('coupon3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                </ul>

            </div>
            <%--=====================領取折扣券 End==========================--%>


            <%--=====================Slider1  Pre Sale  Start===============================--%>

            <section class="am-margin-top  slider-cover" id="s1">
                <div class="shop-block mb-shop-bg">
                    <div class="banner-box s1">
                        <a href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_02.png" %>' alt="bn_02m" style="width: 100%;" />
                        </a>
                    </div>

                    <div class="am-padding">
                        <div class="swiper-container swiper-container1 sww ">
                            <ul class="swiper-wrapper s1">
                                <uc1:products runat="server" id="products1" />

                                <li class="am-fl swiper-slide">
                                    <a href="#!">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="pre-sale-pag">
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
                </div>

            </section>

            <%--====================Slider1  Pre Sale  End============================--%>

            <%--==================Slider2  Flash Sale  Start==========================--%>


            <section class="am-margin-top goods-mb" id="s2">
                <div class="shop-block mb-shop-bg">
                    <div class="banner-box">
                        <a href="20191111preorder.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_03.png" %>' alt="bn_03m" id="bn03" />
                        </a>
                    </div>
                    <%--                    <div class="slider2 slider-cover">--%>
                    <%--<div class="clock am-text-center" id="s-clock">
                            <span id="content"></span>
                            <span class="am-padding-right-xs">STARTS IN</span>
                            <span id='d'>00</span>:
                            <span id='h'>00</span>:
                            <span id='m'>00</span>:
                            <span id='s'>00</span>
                            <span class="am-padding-left-xs">DAYS</span>
                        </div>--%>

                    <div class="am-padding">
                        <div class="swiper-container swiper-container1 sww ">


                            <ul class="swiper-wrapper" id="rptFlashSale_1">
                                <uc1:products runat="server" id="products2" />

                                <li class="am-fl swiper-slide">
                                    <a href="20191111preorder.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="pre-sale-pag">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <%--11/11當天轉換成下列ul--%>
                            <ul class="swiper-wrapper close" id="rptFlashSale_2">
                                <asp:Repeater ID="rptFlashSale" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                    </div>
                                                    <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                        <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                            <%# Eval("WP02").ToString() %>
                                                        </div>
                                                        <div class="am-u-sm-12 " style="padding: 5px !important">
                                                            <div class="am-fl">
                                                                <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                            </div>
                                                            <div class="am-fr">
                                                                <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                            </div>
                                                        </div>
                                                        <div class="am-u-sm-12 " style="padding: 5px !important">
                                                            <div class="fire-bar-block pc-fire-bar-block">
                                                                <div class="fire-img">
                                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                                </div>
                                                                <div class="fire-bar pc-fire-bar">
                                                                    已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                                </div>
                                                                <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>

                                <li class="am-fl swiper-slide">
                                    <a href="20191111preorder.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="pre-sale-pag">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                             <%--11/11當天ul End--%>

                            <a class="prev-btn1 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn1 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <%--</div>--%>
            </section>

            <%--=======================Slider2  Flash Sale  End============================--%>

            <%--=======================Ranking Contest  Start=============================--%>

            <section class="am-padding-top">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-right-xs">
                        <a href="20191111rank.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_04.png" %>' alt="bn_04m" />
                        </a>
                    </li>
                    <li class="am-padding-left-xs">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_05.png" %>' alt="bn_05m" />
                    </li>
                </ul>
            </section>

            <%--=======================Ranking Contest  End=============================--%>

            <%--=======================Highlighted Brands1 Start===========================--%>

            <div class="banner-box  am-padding-top" id="s3">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_06.png" %>' alt="bn_06" />
            </div>

            <section class=" am-padding-top-sm">

                <ul class="am-avg-sm-2">
                    <li class="am-padding-right-xs" id="b1">
                        <div class="banner-box">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_01.png" %>' alt="bd_01" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items hvr" id="product-make0000">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="products3" />
                            </ul>
                        </div>

                    </li>

                    <li class="am-padding-left-xs" id="b2">
                        <div class="banner-box">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_02.png" %>' alt="bd_02" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items hvr" id="product-make000">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="products4" />
                            </ul>
                        </div>
                    </li>

                    <li class="am-padding-right-xs am-padding-top-sm" id="b3">
                        <div class="banner-box">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_03.png" %>' alt="bd_03" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items hvr" id="product-make00">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="products5" />
                            </ul>
                        </div>
                    </li>

                    <li class="am-padding-left-xs am-padding-top-sm" id="b4">
                        <div class="banner-box">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bd_04.png" %>' alt="bd_04" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items hvr" id="product-make0">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="products6" />
                            </ul>
                        </div>
                    </li>
                </ul>

            </section>

            <%--=======================Highlighted Brands1  End============================--%>

            <%--====================Highlighted Brands 5~12=== Start============================--%>
            <section class="am-padding-top-xs">
                <div class="mb-shop-block mb-shop-bg goods-mb">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%#Eval("url") %>' target="_blank">
                                        <img src='<%#Eval("img") %>' />
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li class="am-fl">
                            <a href="#!">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/bd_05.png" alt="bd_05" />
                            </a>
                        </li>--%>
                    </ul>
                </div>
            </section>

            <%--====================Highlighted Brands 5~12=== End============================--%>


            <%--=============================Value Package Start============================--%>

            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-vertical-lg" id="s4">

                <div class="banner-box  am-text-center">
                    <a href="value_package.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_07.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div>
                    <div class="shop-block-bg am-padding-sm shop-block hvr" id="product-make9">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" id="products7" />
                        </ul>
                    </div>
                </div>
            </section>

            <%--=====================Value Package  End===============================--%>
            <%--=====================錨點連結區1  Start===============================--%>

            <section id="s6">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_08.png" %>' alt="bn_08" />
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=16">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_01.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products8" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>

            <%--===================== 錨點連結區2  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=42">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_02.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products9" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=43">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_03.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products10" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=48">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_04.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products11" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>
            <%--===================== 錨點連結區5  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=44">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_05.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products12" />

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>
            <%--===================== 錨點連結區6  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=266">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_06.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products13" />
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--===================== 錨點連結區7  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=47">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_07.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products14" />
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區7  End ==========================--%>
            <%--===================== 錨點連結區8  Start==========================--%>
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3 hvr">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=49">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/c_08.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products15" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <%--===================== 錨點連結區8  End ==========================--%>


            <%--=====================You May Also Like...  Start========================--%>
            <section class="shop-block-wrap   am-padding-vertical-lg  am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs">You May Also Like...</h1>
                <div>
                    <div class="shop-block-bg am-padding-sm shop-block  shop-block3 hvr" id="product-make6">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products16" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
            <%--==============================活動辦法 Start =====================================--%>
        </div>
    </div>

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
    <%--==============================活動辦法 End=====================================--%>



    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        $(function hrefChange() {
            $('.s1 a').attr({
                "href": "20191111pre_sale.aspx",
                "target": "_black"
            });

            //$('#s2 a').attr("href", "#!");

            $('#b1 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=208",
                "target": "_black"
            });

            $('#b2 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=235",
                "target": "_black"
            });

            $('#b3 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=312",
                "target": "_black"
            });

            $('#b4 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=283",
                "target": "_black"
            });

            $('#s4 a').attr({
                "href": "value_package.aspx",
                "target": "_black"
            });
        });


        $(function closeTimer() {
            var date1 = new Date("2019-11-06T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $("div").remove(".clock");
                //$('#s2 a').attr({
                //    "href": "20191111preorder.aspx",
                //    "target": "_black"
                //});
            }
        });

        $(function hide() {
            var date2 = new Date("2019-11-11T00:00:00");
            var dateNow = new Date();
            if (dateNow > date2) {
                $('.coupon3').removeClass();//顯示coupon3
                $('#s1').addClass('slider1');//反灰presale區塊
                $('#bn03').attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bn_09.png" %>')//更換FlashSale Banner
                $('#rptFlashSale_1').remove();//移除原flashsale商品塊
                $("#rptFlashSale_2").removeClass('close');//顯示新flashsale商品塊(有火)

            }
        });

    </script>
    <script>

        $(window).load(function () {
            $(".sww li").attr("class", "am-fl swiper-slide");
            $(".hvr li").attr("class", "am-fl hvr-float");

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
                        slidesPerView: 3.5,
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
        //function duplicate(id) {
        //    var ul = $('#' + id + ' ul');
        //    ul.find('li:last').clone(true).appendTo(ul);
        //};
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };


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

