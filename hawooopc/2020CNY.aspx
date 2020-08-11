<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020CNY.aspx.cs" Inherits="user_static_2020CNY" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" rel="stylesheet">
    <style>
        .banner-box1 {
            color: #A92F2D;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain">
        <%--========================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_00.png" %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_03.png" %>' alt="ss_03" />
                </li>
                <%--<li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04.png" %>' alt="ss_04" />
                </li>--%>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04.png" %>' alt="ss_05" />
                </li>
            </ul>
        </div>
        <%--======================== 側邊選單 End ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_01.png" %>' alt="主banner" />
        </div>
        <div class="am-container">
            <%--=====================領取折扣券 Start ==========================--%>
            <div class="copy-coupon am-padding-vertical-xl">
                <ul class="am-avg-sm-3">
                    <li>
                        <a id="coupon1" data-clipboard-text="NY25" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/coupon_01.png" %>' alt="coupon_01" class="btn1" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="NY40" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/coupon_02.png" %>' alt="coupon_02" class="btn1" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon3" data-clipboard-text="NY50" onclick="Clip('coupon3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/coupon_03.png" %>' alt="coupon_03" class="btn1" />
                        </a>
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End ===========================--%>
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_02.png" %>' alt="free gifts for ypu" />
            </div>
            <%--===================== Slider1 Hot Deal Start ======================--%>
            <section class="am-margin-top-xl" id="s1">
                <div class="shop-block-bg">
                    <div class="banner-box banner-box1">
                        <a href="2020CNY_hot_deals.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_03.png" %>' alt="bn_03" />
                        </a>
                        <span class="clock clock1">
                            <span id="d"></span>:
                            <span id="h"></span>:
                            <span id="m"></span>:
                            <span id="s"></span>
                        </span>
                    </div>

                    <div class="am-padding-sm slider-block">
                        <div class="swiper-container swiper-container1" id="product-make7">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products1" />

                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="2020CNY_hot_deals.aspx" target="_blank">
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
                </div>
            </section>
            <%--===================== Slider1 Hot Deal End =======================--%>

            <%--===================== Highlighted Brands Start =====================--%>
            <section class="am-margin-top-xl" id="s2">

                <div class="banner-box">

                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_04.png" %>' alt="bn_04" />

                </div>
                <div class="shop-block shop-block-bg am-padding-sm">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />
                    </ul>
                </div>
            </section>
            <%--=====================Highlighted Brands ===End===================--%>

            <%--===================== Slider2 New Year Beauty Start ================--%>
            <section class="am-margin-top-xl" id="s3">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="2020CNY_beauty.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_05.png" %>' alt="bn_07" />
                        </a>
                    </div>

                    <div class="am-padding-sm slider-block shop-block">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products2" />

                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="2020CNY_beauty.aspx" target="_blank">
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
            <%--=================Slider2  New Year Beauty  End  ====================--%>

            <%--=================Slider3 Tasty Food Great Year Start ===================--%>
            <%--<section class="am-margin-top-xl" id="s4">
                <div class="shop-block-bg">
                    <div class="banner-box">
                        <a href="2020CNYtasty_food.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_06.png" %>' alt="bn_07" />
                        </a>
                    </div>

                    <div class="am-padding-sm slider-block shop-block">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products3" />

                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="2020CNYtasty_food.aspx" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div>
                                            <span>See More</span>
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
            </section>--%>
            <%--=================Slider3 Tasty Food Great Year  End ===================--%>

            <%--=====================錨點連結區1 Shop By Category Start ===============--%>
            <section class="am-padding-top-lg am-margin-top-lg" id="s5">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bn_06.png" %>' alt="bn_07" />
                </div>

                <div class="pc-float-menu">
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
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="h_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="h_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="h_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_01.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products4" />


                            <%--<li class="am-fl  hvr-float">
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
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>
            <%--===================== 錨點連結區2  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="bg_01" /></a></li>
                        <li class="is-active" id="tab2"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_02.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products5" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="bg_02" /></a></li>
                        <li class="is-active" id="tab3"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="bg_05" /></a></li>
                        <%-- <li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_03.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products6" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
            <section class="am-padding-top">
                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="bg_03" /></a></li>
                        <li class="is-active" id="tab4"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_04.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products7" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>
            <%--===================== 錨點連結區5  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_04.png" %>' alt="bg_04" /></a></li>
                        <li class="is-active" id="tab5"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_05.png" %>' alt="bg_05" /></a></li>
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=44" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_05.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products8" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>
            <%--===================== 錨點連結區6  Start==========================--%>
            <%--            <section class="am-padding-top">

                <div class="pc-float-menu">
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
                        <li class="is-active" id="tab6"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5 shop-block-bg">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=266" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_06.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products9" />

                        </ul>
                    </div>
                </div>
            </section>--%>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--===================== 錨點連結區7  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
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
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li class="is-active" id="tab7"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_07.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products10" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區7  End ==========================--%>
            <%--===================== 錨點連結區8  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
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
                        <%--<li onclick="AnchorPoint('tab6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_06.png" %>' alt="bg_06" /></a></li>--%>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_07.png" %>' alt="bg_07" /></a></li>
                        <li class="is-active" id="tab8"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ca_08.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products11" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區8  End ==========================--%>

            <%--=====================You May Also Like...  Start=====================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs  also-like">You May Also Like...</h1>
                <div>
                    <div class="shop-block-bg am-padding-sm shop-block">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products12" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
            <%--=======================活動辦法 Start ===========================--%>
        </div>
    </div>

    <footer class="activity-method am-padding-vertical-lg">
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
                    <%--<li>Free red envelopes with min spend RM150 (limited 1000 pcs)</li>--%>
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
    </footer>
    <%--=======================活動辦法 End============================--%>

    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $("#s1 .swiper-container li").last().addClass('see-more-item');
            $("#s3 .swiper-container li").last().addClass('see-more-item');
            //$("#s4 .swiper-container li").last().addClass('see-more-item');
            ChangeHref();
            setThem();

        });

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


    </script>

    <script type="text/javascript">

        var brandNo = [208, 307, 235, 222, 373, 102, 283, 318];
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s2 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200110/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s2 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
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

