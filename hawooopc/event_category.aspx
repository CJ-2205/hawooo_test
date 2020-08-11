<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="event_category.aspx.cs" Inherits="user_static_event_category" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Category1 (Start) -->
    <div style="position: relative; margin-top: 10%;">
        <div class="banner banner3">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/bn_06.png" alt="bn_06" />
        </div>
        <section class="am-margin-bottom-xl am-padding" id="s4" style="background: #1A1425; padding-top: 7.7rem;">
            <!--類別錨點 (Start)-->
            <div class="am-padding-bottom">
                <ul class="am-avg-sm-6">
                    <li class="am-padding-xs" id="point1"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_01.png" alt="h_01" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point2')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_02.png" alt="h_02" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point3')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_03.png" alt="h_03" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point4')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_04.png" alt="h_04" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point5')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_05.png" alt="h_05" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point6')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200514/v_06.png" alt="h_06" /></a></li>
                </ul>
            </div>
            <!--類別錨點 (Start)-->
            <div class="am-margin-bottom am-padding-xs  pc-category-block">
                <div class="am-margin-right-sm category-bn ">
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_01.png" style="width: 100%;">
                    </a>
                </div>
                <div class="category-slider">
                    <div class="swiper-container swiper-container1" id="block4">
                        <ul class="swiper-wrapper">
                            <li class="am-fl swiper-slide">
                                <a href="#!">
                                    <div class="am-panel am-panel-default pitem"
                                        style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img class="am-img-responsive"
                                                src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM
                          268.90
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
                                                <div class="am-fr">
                                                    <span class="product-items-tag">
                                                        <img src="../../assets/img/免運.svg" style="width: 20px">免運</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="am-fl swiper-slide am-text-center goods-more">
                                <a href="2020momsday2_hot_deal.html" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom">
                                        <h3 class="am-padding-top-xl">See More</h3>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a href="#!" class="prev-btn prev-btn1">
                            <span class="am-icon-chevron-left"></span>
                        </a>
                        <a href="#!" class="next-btn next-btn1">
                            <span class="am-icon-chevron-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!--Category1 (End) -->

    <!--Category2 (Start) -->
    <section class="am-margin-bottom-xl" id="point2" style="background: #1A1425;">
        <div class="am-margin-bottom am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
                <a href="#!">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_02.png" style="width: 100%;">
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container2">
                    <ul class="swiper-wrapper">
                    </ul>
                    <a href="#!" class="prev-btn prev-btn2">
                        <span class="am-icon-chevron-left"></span>
                    </a>
                    <a href="#!" class="next-btn next-btn2">
                        <span class="am-icon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--Category2 (End) -->

    <!--Category3 (Start) -->
    <section class="am-margin-bottom-xl" id="point3" style="background: #1A1425;">
        <div class="am-margin-bottom am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
                <a href="#!">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_03.png" style="width: 100%;">
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper">
                    </ul>
                    <a href="#!" class="prev-btn prev-btn3">
                        <span class="am-icon-chevron-left"></span>
                    </a>
                    <a href="#!" class="next-btn next-btn3">
                        <span class="am-icon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!--Category3 (End) -->

    <!--Category4 (Start) -->
    <section class="am-margin-bottom-xl" id="point4" style="background: #1A1425;">
        <div class="am-margin-bottom am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
                <a href="#!">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_04.png" style="width: 100%;">
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container4">
                    <ul class="swiper-wrapper">
                    </ul>
                    <a href="#!" class="prev-btn prev-btn4">
                        <span class="am-icon-chevron-left"></span>
                    </a>
                    <a href="#!" class="next-btn next-btn4">
                        <span class="am-icon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--Category4 (End) -->

    <!--Category5 (Start) -->
    <section class="am-margin-bottom-xl" id="point5" style="background: #1A1425;">
        <div class="am-margin-bottom am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
                <a href="#!">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_05.png" style="width: 100%;">
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper">
                    </ul>
                    <a href="#!" class="prev-btn prev-btn5">
                        <span class="am-icon-chevron-left"></span>
                    </a>
                    <a href="#!" class="next-btn next-btn5">
                        <span class="am-icon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--Category5 (End) -->

    <!--Category6 (Start) -->
    <section class="am-margin-bottom-xl" id="point6">
        <div class="am-margin-bottom am-padding-sm  pc-category-block">
            <div class="am-margin-right-sm category-bn">
                <a href="#!">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_06.png" style="width: 100%;">
                </a>
            </div>
            <div class="category-slider">
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper">
                    </ul>
                    <a href="#!" class="prev-btn prev-btn6">
                        <span class="am-icon-chevron-left"></span>
                    </a>
                    <a href="#!" class="next-btn next-btn6">
                        <span class="am-icon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--Category6 (End) -->



</asp:Content>

