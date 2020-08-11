<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020CNY3.aspx.cs" Inherits="user_static_2020CNY3" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY3.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <%--========================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_00.png" %>' alt="ss_00" />
                </li>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_04.png" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_05.png" %>' alt="ss_05" />
                </li>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_06.png" %>' alt="ss_06" />
                </li>
            </ul>
        </div>
        <%--======================== 側邊選單 End ==========================--%>
        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_01.png" %>' alt="主banner" />
        </div>
        <div class="am-container">
            <%--=====================領取折扣券 Start ==========================--%>
            <div class="am-padding-vertical-xl copy-coupon">
                <ul class="am-avg-sm-2">
                    <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/coupon_01.png" %>' alt="coupon_01" class="btn1" />
                    </li>
                    <li>
                        <a id="coupon1" data-clipboard-text="CNY8" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/coupon_02.png" %>' alt="coupon_02" class="btn1" />
                        </a>
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End ===========================--%>
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_02.png" %>' alt="free gifts for ypu" />
            </div>
            <%--===================== Slider1 Top30 Start ======================--%>
            <section class="am-margin-top-xl" id="s1">
                <div class="banner-box banner-box1">
                    <a href="2020CNY3_top30.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_03.png" %>' alt="bn_03" />
                    </a>
                </div>

                <div class="am-padding-sm slider-block slider-block1">
                    <div class="swiper-container swiper-container1" id="product-make7">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products1" />

                            <li class="am-fl swiper-slide see-more-item">
                                <a href="2020CNY3_top30.aspx" target="_blank">
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
            <%--===================== Slider1 Top30 End =======================--%>

            <%--===================== Slider2 HW_recommendation Start =============--%>
            <section class="am-margin-top-xl" id="s2">
                <div class="banner-box banner-box1">
                    <a href="2020CNY3_HW_recommendation.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_04.png" %>' alt="bn_03" />
                    </a>
                </div>
                <div class="am-padding-sm slider-block slider-block2">
                    <div class="swiper-container swiper-container1" id="product-make8">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products2" />

                            <li class="am-fl swiper-slide see-more-item">
                                <a href="2020CNY3_HW_recommendation.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="                                                padding: 10px;
                                                width: 91%;
                                                margin: auto
                                        ">
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
            <%--===================== Slider2  HW_recommendation End ===============--%>
            <%--===================== Highlighted Brands Start =====================--%>
            <section class="am-margin-top-xl" id="s3">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_05.png" %>' alt="bn_04" />
                </div>
                <div class="shop-block  am-padding-sm" id="product-make1">
                    <ul class="am-avg-sm-5">
                        <uc1:products runat="server" id="brands" />

                        <%--<li class="am-fl">
                            <a href="#!">
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
            </section>
            <%--=====================Highlighted Brands ===End===================--%>

            <%--=====================錨點連結區1 Shop By Category Start ===============--%>
            <section class="am-padding-top-lg am-margin-top-lg" id="s4">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bn_06.png" %>' alt="bn_07" />
                </div>

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li class="is-active" id="tab1"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="h_05" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="h_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="h_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_01.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products3" />
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                        <li class="is-active" id="tab2"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_02.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products4" />
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                        <li class="is-active" id="tab3"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_03.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products5" />
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                        <li class="is-active" id="tab4"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_04.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products6" />
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                        <li class="is-active" id="tab5"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=44" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_05.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products7" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>

            <%--===================== 錨點連結區6  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                        <li class="is-active" id="tab7"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                        <li onclick="AnchorPoint('tab8')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_07.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products8" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--===================== 錨點連結區7  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
                    <ul class="am-nav">
                        <li onclick="AnchorPoint('tab1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_01.png" %>' alt="bg_01" /></a></li>
                        <li onclick="AnchorPoint('tab2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_02.png" %>' alt="bg_02" /></a></li>
                        <li onclick="AnchorPoint('tab3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_03.png" %>' alt="bg_03" /></a></li>
                        <li onclick="AnchorPoint('tab4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_04.png" %>' alt="bg_04" /></a></li>
                        <li onclick="AnchorPoint('tab5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_05.png" %>' alt="bg_05" /></a></li>
                        <li onclick="AnchorPoint('tab7')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_07.png" %>' alt="bg_07" /></a></li>
                        <li class="is-active" id="tab8"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/h_08.png" %>' alt="bg_08" /></a></li>
                    </ul>
                </div>

                <div class="am-padding-sm category-bn-group">
                    <div class="shop-block category-bn">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ca_08.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products9" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區7 End ==========================--%>

            <%--=====================You May Also Like...  Start=====================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-lg also-like-block">
                <h1 class="am-margin-bottom-xs am-padding-left-xs  also-like">You May Also Like...</h1>
                <div>
                    <div class="am-padding-sm shop-block">
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
            <p>
                Terms & Conditions<br />
                Happy CNY Sale<br />
                1.Promotion date : 21st January 2020 - 28th January 2020<br />
                2.Promotion Coupon:<br />
            </p>

            <div class="indent">
                <ul>
                    <li>Spend 300 & Above, get extra 8% OFF , use code [ CNY8 ]</li>
                </ul>
            </div>
            <p>
                3.Gift with purchase
            </p>

            <div class="indent">
                <ul>
                    <li>Free New year card with every purchase</li>
                    <li>Free hand-painted Calendar with min spend RM380 (limited 200 pcs)</li>
                    <li>Free Paphiopedilum Revitalizing Serum 8ml + Mask 1 pc with min spend RM480 (limited 100 pcs)</li>
                </ul>
            </div>
            <p>
                4.Coupon is APPLICABLE on selected Flagship Stores , including <b class="brands-txt">DV, DV Tokyo ,Enjoy The Life, Dr. Morita, Paradiso Garden, Grandmotherapy, I.vita, Cest V'rai, Hsu's, Laler, Choyer. 
                </b>
            </p>
            <p>
                5.Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Happy CNY Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");
            $(".category-bn-group li,.also-like-block li").attr("class", "am-fl hvr-float");


            ChangeHref();
            setThem();
            putimg();
        });

        function ChangeHref() {
            $('#s1 a').attr({
                "href": "2020CNY3_top30.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "2020CNY3_HW_recommendation.aspx",
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


        var brandNo = [208, 307, 373, 407, 235, 345, 283, 72, 222, 450];
        function putimg() {
            for (i = 0; i < 10; i++) {
                $('#s3 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200121/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s3 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
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

