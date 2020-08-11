<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="black_friday.aspx.cs" Inherits="user_static_black_friday" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/black_friday.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain pc-contain" id="s1">
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_04.png" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_05.png" %>' alt="ss_05" />
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_06.png" %>' alt="ss_06" />
                </li>
                <li onclick="goto('s6')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_07.png" %>' alt="ss_07" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_08.png" %>' alt="ss_08" />
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>

        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bn_01.png" %>' alt="bn_01" style="width: 100%;" />
        </div>
        <%--=====================領取折扣券 Start ==========================--%>
        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="BF25" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/coupon_01.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="BF35" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/coupon_02.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/coupon_03.png" %>' alt="coupon3" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================領取折扣券 End==========================--%>


        <%--=====================Most POPULAR ITEMS Start===============================--%>
        <div class="am-container">
            <section id="s2">
                <div class="shop-block">
                    <div class="banner-box">
                        <a href="bk_fri_most_popular.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bn_02.png" %>' alt="bn_02" style="width: 100%;" />
                        </a>
                    </div>

                    <div class="am-padding  slider-block">
                        <div class="swiper-container swiper-container1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="popular" />

                                <%-- <li class="am-fl swiper-slide">
                                    <a href="#">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM 268.90
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed 6.7K
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="">
                                                        <span class="product-items-tag">
                                                            <img src="../images/icon/免運.svg" style="width: 20px">免運</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>                           --%>
                                <li class="am-fl more  swiper-slide">
                                    <a href="bk_fri_most_popular.aspx" target="_black" class="am-center">
                                        <div class="see-more-img">
                                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/more.png" %>' style="width: 100%;">
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
            <%--====================Most POPULAR ITEMS  End============================--%>

            <%--=============================Beauty 1+1 Sale Start============================--%>

            <section id="s3">
                <div class="shop-block">
                    <div class="banner-box">
                        <a href="bk_fri_beauty_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bn_03.png" %>' alt="bn_03m" style="width: 100%;" />
                        </a>
                    </div>
                    <div class="am-padding slider-block">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="beauty" />

                                <li class="am-fl more  swiper-slide">
                                    <a href="bk_fri_beauty_sale.aspx" target="_black" class="am-center">
                                        <div class="see-more-img">
                                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/more.png" %>' style="width: 100%;">
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn2 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn2 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--=====================Beauty 1+1 Sale End===============================--%>

            <%--=====================LIFE 1+1 Sale Start===========================--%>
            <section id="s4">
                <div class="shop-block">
                    <div class="banner-box">
                        <a href="bk_fri_life_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bn_04.png" %>' alt="bn_04m" style="width: 100%;" />
                        </a>
                    </div>
                    <div class="am-padding slider-block">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="life" />

                                <li class="am-fl more  swiper-slide">
                                    <a href="bk_fri_life_sale.aspx" target="_black" class="am-center">
                                        <div class="see-more-img">
                                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/more.png" %>' style="width: 100%;">
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn3 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn3 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--=======================LIFE 1+1 Sale  End============================--%>

            <%--====================Highlighted Brands 1~4=== Start============================--%>
            <section id="s5">
                <div class="banner-box  am-padding-top">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bn_05.png" %>' alt="bn_04" />
                </div>
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs">
                        <div class="banner-box">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=208" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bd_01.png" %>' alt="bd_01" />
                            </a>
                        </div>

                        <div class="mb-shop-block goods-items3 pc-goods-items3" id="product-make000">
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rptBrand1" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl ">
                                            <a href="https://www.hawooo.com/user/brands.aspx?bid=208" target="_blank">
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
                    </li>
                    <li class="am-padding-xs">
                        <div class="banner-box">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=235" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bd_02.png" %>' alt="bd_02" />
                            </a>
                        </div>
                        <div class="mb-shop-block goods-items3 pc-goods-items3">
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rptBrand2" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl ">
                                            <a href="https://www.hawooo.com/user/brands.aspx?bid=235" target="_blank">
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
                    </li>
                    <li class="am-padding-xs  am-padding-top">
                        <div class="banner-box">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=407" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bd_03.png" %>' alt="bd_03" />
                            </a>
                        </div>

                        <div class="mb-shop-block goods-items3 pc-goods-items3">
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rptBrand3" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl ">
                                            <a href="https://www.hawooo.com/user/brands.aspx?bid=407" target="_blank">
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
                    </li>
                    <li class="am-padding-xs am-padding-top">
                        <div class="banner-box">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=283" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bd_04.png" %>' alt="bd_04" />
                            </a>
                        </div>

                        <div class="mb-shop-block goods-items3 pc-goods-items3">
                            <ul class="am-avg-sm-3">
                                <asp:Repeater ID="rptBrand4" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl ">
                                            <a href="https://www.hawooo.com/user/brands.aspx?bid=283" target="_blank">
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
                    </li>
                </ul>
            </section>

            <%--====================Highlighted Brands 5~12=== Start============================--%>
            <section class="am-padding-top">
                <div class="shop-block">
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
                    </ul>
                </div>
            </section>

            <%--====================Highlighted Brands 5~12=== End============================--%>

            <%--=====================錨點連結區  Start===============================--%>
            <section class="am-u-sm-8 am-u-sm-centered category-point-block" id="s6">
                <div class="banner-box  category-point-img">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/ca_01.png"%>' alt="ca_01" style="width: 100%;" />
                </div>
                <div class="pc-category-point">
                    <ul class="am-avg-sm-4">
                        <li onclick="anchorPoint('point1')"></li>
                        <li onclick="anchorPoint('point2')"></li>
                        <li onclick="anchorPoint('point3')"></li>
                        <li onclick="anchorPoint('point4')"></li>
                        <li onclick="anchorPoint('point5')"></li>
                        <li onclick="anchorPoint('point6')"></li>
                        <li onclick="anchorPoint('point7')"></li>
                        <li onclick="anchorPoint('point8')"></li>
                    </ul>
                </div>

            </section>

            <%--===================== 錨點連結區1  End ==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point1">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_06.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider1 " id="product-make9">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products1" />

                            <%--<li class="am-fl swiper-slide">
                                <a href="#">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM 268.90
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="font-size: 13px;">
                                                        <i class="far am-icon-eye"></i>Viewed 6.7K
                                                    </span>
                                                </div>
                                                <div class="am-fr" style="">
                                                    <span class="product-items-tag">
                                                        <img src="../images/icon/免運.svg" style="width: 20px">免運</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                            </li>--%>
                        </ul>
                        <div>
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
            <%--===================== 錨點連結區2  Start==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point2">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_07.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider2">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products2" />

                        </ul>
                        <div>
                            <a class="prev-btn2 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn2 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point3">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_08.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider3">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products3" />

                        </ul>
                        <div>
                            <a class="prev-btn3 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn3 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point4">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_09.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider4">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products4" />

                        </ul>
                        <div>
                            <a class="prev-btn4 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn4 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>

            <%--===================== 錨點連結區5  Start==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point5">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_10.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider5">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products5" />

                        </ul>
                        <div>
                            <a class="prev-btn5 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn5 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>
            <%--===================== 錨點連結區6  Start==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point6">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=266" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_11.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider6 ">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products6" />

                        </ul>
                        <div>
                            <a class="prev-btn6 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn6 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--===================== 錨點連結區7  Start==========================--%>

            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point7">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_12.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider7">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products7" />

                        </ul>
                        <div>
                            <a class="prev-btn7 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn7 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區7  End ==========================--%>
            <%--===================== 錨點連結區8  Start==========================--%>
            <section class="category-bn-group am-g am-padding-xs am-g-collapse" id="point8">
                <div class="am-u-sm-2 category-bn">
                    <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "/ftp/20191127/bn_13.png"%>'>
                    </a>
                </div>
                <div class="am-u-sm-9 category-slider-contain">
                    <div class="shop-block swiper-container category-slider  category-slider8">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products8" />

                        </ul>
                        <div>
                            <a class="prev-btn8 prev-btn" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn8 next-btn" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <%--===================== 錨點連結區8  End ==========================--%>


            <%--=====================You May Also Like...  Start========================--%>
            <section class="am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs  also-like">You May Also Like...</h1>
                <div>
                    <div class="shop-block" id="product-make15">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products9" />

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
            1. Promotion date : 27th November 2019 - 2nd December 2019<br />
            2. Promotion Coupon:<br />
            * RM25 OFF (min spend 240), use code [ BF25 ]<br />
            * RM35 OFF (min spend 330), use code [ BF35 ]<br />
            3.Spend RM500 and above, get 2000HA Coins (worth RM20)<br />
            5. Coupon is APPLICABLE on selected Flagship Stores , including : Mooimoon, Hsu's, DV, Laler, Choyer, Loving Family, Anriea, Enjoy the life, Paradiso, Zephyrine<br />
            5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 1111 After Party Sale Terms from time to time, and in such manner as Hawooo deems<br />
        </p>
    </footer>
    <%--==============================活動辦法 End=====================================--%>


    <%-- <script src="../js/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>--%>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s2 li').eq(i).prepend('<div class="award">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191127/aw_0' + (i + 1) + '.png">' +
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
            putimg();
            setThem();
        });

        function setThem() {
            var i;
            var cnt = 11; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                var str2 = '.category-slider';

                $('.category-slider').each(function (index, value) {
                    var classCall = str2 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 4,
                        slidesPerGroup: 4,
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

