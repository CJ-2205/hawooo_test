<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master"  AutoEventWireup="true" CodeFile="2020momsday1_hotdeal.aspx.cs" Inherits="user_static_2020momsday1_hotdeal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020momsday1.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/bbn_01.png" alt="bbn_01" style="width: 100%;" />
        </div>

        <%--=====================領取折扣券 Start ==========================--%>
        <div>
            <ul class="am-avg-sm-4">
                <li>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/coupon_01.png" alt="coupon_01" />
                </li>
                <li>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/coupon_02.png" alt="coupon_02" />
                </li>
                <li>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/coupon_03.png" alt="coupon_03" />
                </li>
                <li>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/coupon_04.png" alt="coupon_04" />
                </li>
            </ul>
        </div>
        <%--=====================領取折扣券 End ===========================--%>
        <section class="am-container">
            <div class="am-padding-sm shop-block">
                <ul class="am-avg-sm-4">
                    <li class="am-fl  hvr-float">
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
                    </li>
                </ul>
            </div>


            <%--=====================錨點連結區1 Shop By Category Start ===============--%>
            <section class="am-padding-top-lg am-margin-top-lg" id="s3">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/bn_05.png" alt="bn_07" />
                </div>

                <div class="am-margin-vertical pc-float-menu">
                    <ul class="am-avg-sm-6">
                        <li class="is-active" id="point1"><a>
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/v_01.png" alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('point2')"><a>
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/v_02.png" alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('point3')"><a>
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/v_03.png" alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('point4')"><a>
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/v_04.png" alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('point5')"><a>
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/v_05.png" alt="h_05" /></a></li>
                        <li onclick="AnchorPoint('point6')"><a>
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/v_06.png" alt="h_06" /></a></li>
                    </ul>
                </div>


                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/h_01.png" style="width: 100%;">
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
                                    <div class="see-more-item">
                                        <a href="#!" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/h_02.png" style="width: 100%;">
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/h_03.png" style="width: 100%;">
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/h_04.png" style="width: 100%;">
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/h_05.png" style="width: 100%;">
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
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/h_06.png" style="width: 100%;">
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
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="2020momsday1.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_01.png" alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_02.png" alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday1.aspx?#s2" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_03.png" alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday1.aspx?#s3" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/ss_04.png" alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

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

