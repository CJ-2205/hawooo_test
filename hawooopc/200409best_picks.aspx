<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200409best_picks.aspx.cs" Inherits="user_static_200409best_picks" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200409hw_staraward.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bbn_05.png" %>' alt="主banner" />
        </div>

        <div class="am-margin-vertical-lg">
            <div class="am-container">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="am-padding picks-item">
                            <a href='<%# Eval("_url") %>' target="_blank">
                                <img src='<%# Eval("_image") %>' alt="" />
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


                <div>
                    <%--=====================錨點連結區1 Shop By Category Start ===============--%>
                    <section class="am-padding-top-lg am-margin-top-lg" id="s4">
                        <div class="pc-float-menu">
                            <ul>
                                <li class="is-active" id="point1"><a>
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_01.png" alt="v_01" /></a></li>
                                <li onclick="AnchorPoint('point2')"><a>
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_02.png" alt="v_02" /></a></li>
                                <li onclick="AnchorPoint('point3')"><a>
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_03.png" alt="v_03" /></a></li>
                                <li onclick="AnchorPoint('point4')"><a>
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_04.png" alt="v_04" /></a></li>
                                <li onclick="AnchorPoint('point5')"><a>
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_05.png" alt="v_05" /></a></li>
                                <li onclick="AnchorPoint('point6')"><a>
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_06.png" alt="v_06" /></a></li>
                            </ul>
                        </div>

                        <div class="am-margin-bottom am-padding-sm  category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_01.png" style="width: 100%;">
                                </a>
                            </div>
                            <div class="slider-block">
                                <div class="swiper-container swiper-container1">
                                    <ul class="swiper-wrapper">
                                        <li class="am-fl swiper-slide">
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
                                                                    <img src="image/熱品.svg" style="width: 20px">免運</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="am-fl swiper-slide">
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
                                                                    <img src="image/熱品.svg" style="width: 20px">免運</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="am-fl swiper-slide">
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
                                                                    <img src="image/熱品.svg" style="width: 20px">免運</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <a class="prev-btn prev-btn1" href="#">
                                        <i class="fas fa-chevron-left"></i>
                                    </a>
                                    <a class="next-btn next-btn1" href="#">
                                        <i class="fas fa-chevron-right"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </section>
                    <%--===================== 錨點連結區1  End ==========================--%>
                    <%--===================== 錨點連結區2  Start==========================--%>
                    <section class="am-padding-top" id="point2">
                        <div class="am-margin-bottom am-padding-sm  category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_02.png" style="width: 100%;">
                                </a>
                            </div>
                            <div class="slider-block">
                                <div class="swiper-container swiper-container2">
                                    <ul class="swiper-wrapper">
                                    </ul>
                                    <a class="prev-btn prev-btn2" href="#">
                                        <i class="fas fa-chevron-left"></i>
                                    </a>
                                    <a class="next-btn next-btn2" href="#">
                                        <i class="fas fa-chevron-right"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </section>
                    <%--===================== 錨點連結區2  End ==========================--%>
                    <%--===================== 錨點連結區3  Start==========================--%>
                    <section class="am-padding-top" id="point3">
                        <div class="am-margin-bottom am-padding-sm  category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_03.png" style="width: 100%;">
                                </a>
                            </div>
                            <div class="slider-block">
                                <div class="swiper-container swiper-container3">
                                    <ul class="swiper-wrapper">
                                    </ul>
                                    <a class="prev-btn prev-btn3" href="#">
                                        <i class="fas fa-chevron-left"></i>
                                    </a>
                                    <a class="next-btn next-btn3" href="#">
                                        <i class="fas fa-chevron-right"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </section>
                    <%--===================== 錨點連結區3  End ==========================--%>
                    <%--===================== 錨點連結區4  Start==========================--%>
                    <section class="am-padding-top" id="point4">
                        <div class="am-margin-bottom am-padding-sm  category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_04.png" style="width: 100%;">
                                </a>
                            </div>
                            <div class="slider-block">
                                <div class="swiper-container swiper-container4">
                                    <ul class="swiper-wrapper">
                                    </ul>
                                    <a class="prev-btn prev-btn4" href="#">
                                        <i class="fas fa-chevron-left"></i>
                                    </a>
                                    <a class="next-btn next-btn4" href="#">
                                        <i class="fas fa-chevron-right"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </section>
                    <%--===================== 錨點連結區4  End ==========================--%>
                    <%--===================== 錨點連結區5  Start==========================--%>
                    <section class="am-padding-top" id="point5">
                        <div class="am-margin-bottom am-padding-sm  category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_05.png" style="width: 100%;">
                                </a>
                            </div>
                            <div class="slider-block">
                                <div class="swiper-container swiper-container5">
                                    <ul class="swiper-wrapper">
                                    </ul>
                                    <a class="prev-btn prev-btn5" href="#">
                                        <i class="fas fa-chevron-left"></i>
                                    </a>
                                    <a class="next-btn next-btn5" href="#">
                                        <i class="fas fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <%--===================== 錨點連結區5  End ==========================--%>

                    <%--===================== 錨點連結區6  Start==========================--%>
                    <section class="am-padding-top" id="point6">
                        <div class="am-margin-bottom am-padding-sm  category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="#!">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_06.png" style="width: 100%;">
                                </a>
                            </div>
                            <div class="slider-block">
                                <div class="swiper-container swiper-container6">
                                    <ul class="swiper-wrapper">
                                    </ul>
                                    <a class="prev-btn prev-btn6" href="#">
                                        <i class="fas fa-chevron-left"></i>
                                    </a>
                                    <a class="next-btn next-btn6" href="#">
                                        <i class="fas fa-chevron-right"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </section>
                    <%--===================== 錨點連結區6  End ==========================--%>
                </div>
            </div>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
        <div class="am-container">
            <p>
                Terms & Conditions<br />
                HaWooo Star Award<br />
                1. Sales period: 9th April 2020 12:00 - 21st April 2020 23:59<br />
                2. Super brands & Super Items : Top 5 Brands & Items voted by HA fans from 1st April 2020 - 8th April 2020<br />
                3. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>


    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(function () {
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
                        slidesPerView: 4,
                        slidesPerGroup: 4,
                        loop: true,
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

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

    </script>
</asp:Content>


