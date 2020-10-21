<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="201022halloween_presale.aspx.cs" Inherits="mobile_static_201022halloween_presale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <style>
        .am-footer {
            display: none !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container main-contain px-2 pb-6" style="background-color: #EF7A00;">
        <div class="mb-3">
            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/bbn_02m.png" alt="bbn_02m" />
        </div>
        <!--小購物車 (Start) -->
        <div class="row no-gutters">
            <div class="col-12">
                <div style="background-color:#111C24;">
                    <h5 class="py-2 mb-0 text-center bg-100">Pre Sale Wishlist</h5>
                    <div data-am-widget="accordion" class="am-accordion am-active m-3 pb-3 am-accordion-gapped am-no-layout">
                        <h6 class="am-accordion-title mb-0 bg-white text-center p-3 mb-1">You have selected <b class="text-primary">1</b> item(s)
                        </h6>
                        <div class="am-accordion-bd am-collapse bg-white">
                            <div class="am-accordion-content">
                                <section class="wrapper-cart">
                                    <div>
                                        <div>
                                            <div class="d-flex flex-between-center mb-3">
                                                <p class="mb-0">Total Amount：</p>
                                                <h5 class="my-0">RM200.00</h5>
                                            </div>
                                            <div class="d-flex flex-between-center mb-3">
                                                <p class="mb-0">Shipping Fee ：</p>
                                                <h5 class="my-0">RM5.00</h5>
                                            </div>
                                            <div class="d-flex justify-content-between mb-3">
                                                <p class="mb-0">Deposit：</p>
                                                <div class="text-right">
                                                    <h5 class="my-0">-RM10.00 x2</h5>
                                                    <small>(Double Discount)</small>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-between-center mb-3">
                                            <span>Final Payment：</span>
                                            <b class="text-primary">RM185.00</b>
                                        </div>
                                        <div>
                                            <a class="btn btn-block py-2 text-black font-weight-extra-bold shadow-none border-0" href="#" style="background-color: #00FD00;">Pay <b class="fs-2">RM10 </b>For Deposit</a>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--小購物車 (End) -->

        <!--加入商品 (Start) -->
        <div class="row no-gutters mb-3" id="top">
            <div class="col-12">
                <div class="swiper-container swiper-container1 p-3" style="background: #111C24;">
                    <ul class="pl-0 mb-0 swiper-wrapper">
                        <li class="border border-100 bg-white p-2 p-md-3">
                            <a class="goods-add" href="#">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>
                                    <div class="d-flex flex-between-center text-600">
                                        <span class="fs--1">3 pcs * 1</span>  <span><i class="am-icon-trash"></i></span>
                                    </div>
                                    <h6 class="mt-0 mb-2"><s class="fs--1 text-900">RM200.00</s><span class="text-primary"> RM180.00</span></h6>
                                    <h6 class="mt-0 mb-2 text-1100 fs--1">RM <span>10</span>  deposit get RM<span>20</span> off</h6>
                                </div>
                            </a>
                        </li>
                        <li class="border border-100 bg-white p-2 p-md-3">
                            <a class="goods-add" href="#">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>
                                    <div class="d-flex flex-between-center text-600">
                                        <span class="fs--1">3 pcs * 1</span>  <span><i class="am-icon-trash"></i></span>
                                    </div>
                                    <h6 class="mt-0 mb-2"><s class="fs--1 text-900">RM200.00</s><span class="text-primary"> RM180.00</span></h6>
                                    <h6 class="mt-0 mb-2 text-1100 fs--1">RM <span>10</span>  deposit get RM<span>20</span> off</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--加入商品 (End) -->

        <!--預購商品區 (Start) -->
                <div class="mb-3" style="background-color: #111C24;">
                    <ul class="p-2 row row-cols-2 row-cols-md-3">
                        <li>
                            <div class="border border-200 bg-white p-1 p-md-2 m-1 m-md-2 presale-items">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>

                                    <div class="position-relative mb-2">
                                        <img class="w-100 position-relative" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/info_bg.png" alt="" />
                                        <h5 class="position-absolute t-0 l-0 r-0 h-100 my-0 font-weight-normal text-white d-flex flex-center fs-1">Final Price <span>RM180.00</span> </h5>
                                    </div>
                                    <p class="goods-name mb-2 fs-2">Dr.Morita Six Essenceml</p>
                                    <h6 class="mt-0 mb-2"><s class="fs--1 text-1100">RM200.00</s><span class="text-primary"> RM180.00</span></h6>
                                    <h6 class="mb-2 fs--1">RM10 Deposit Get RM20 off</h6>
                                    <div class="d-flex mb-2 fs--1">

                                        <select class="p-1 mr-2 w-75">
                                            <option value="Option1">Option1</option>
                                            <option value="Option2">Option2</option>
                                        </select>
                                        <select class="p-1 w-25">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
                                    <div>
                                        <a class="btn btn-block text-white p-1 fs--1" href="#" style="background-color: #7931B6;">Pay RM10 get RM20 off</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                                       <li>
                            <div class="border border-200 bg-white p-1 p-md-2 m-1 m-md-2 presale-items">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>

                                    <div class="position-relative mb-2">
                                        <img class="w-100 position-relative" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/info_bg.png" alt="" />
                                        <h5 class="position-absolute t-0 l-0 r-0 h-100 my-0 font-weight-normal text-white d-flex flex-center fs-1">Final Price <span>RM180.00</span> </h5>
                                    </div>
                                    <p class="goods-name mb-2 fs-2">Dr.Morita Six Essenceml</p>
                                    <h6 class="mt-0 mb-2"><s class="fs--1 text-1100">RM200.00</s><span class="text-primary"> RM180.00</span></h6>
                                    <h6 class="mb-2 fs--1">RM10 Deposit Get RM20 off</h6>
                                    <div class="d-flex mb-2 fs--1">

                                        <select class="p-1 mr-2 w-75">
                                            <option value="Option1">Option1</option>
                                            <option value="Option2">Option2</option>
                                        </select>
                                        <select class="p-1 w-25">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
                                    <div>
                                        <a class="btn btn-block text-white p-1 fs--1" href="#" style="background-color: #7931B6;">Pay RM10 get RM20 off</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
        <!--預購商品區 (End) -->

       <!---Footer Bar (Start) -->
        <div class="footer-bar footer-bar-auto w-100 mx-auto">
            <div class="mx-auto">
                <ul class="pl-0 mb-0 d-flex justify-content-center">
                    <li>
                        <a href="201022halloween.aspx" target="_blank">
                            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/ss_00m.png" alt="ss_00m" />
                        </a>
                    </li>
                    <li>
                        <a onclick="goto('top',800,'swing')">
                            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/ss_01m.png" alt="ss_01m" />
                        </a>
                    </li>
                    <li>
                        <a href="#!">
                            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/ss_02m.png" alt="ss_02m" />
                        </a>
                    </li>
                    <li>
                        <a href="201022halloween.aspx?#s3" target="_blank">
                            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/ss_03m.png" alt="ss_03m" />
                        </a>
                    </li>
                    <li>
                        <a href="201022halloween.aspx?#s4" target="_blank">
                            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/ss_04m.png" alt="ss_04m" />
                        </a>
                    </li>
                    <li>
                        <a href="201022halloween.aspx?#s5" target="_blank">
                            <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/ss_05m.png" alt="ss_05m" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!---Footer Bar (End) -->
    </div>


    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script type="text/javascript">
        setSwiper();
        /* 設定Slider*/
        function setSwiper() {
            $(".swiper-container li").addClass("am-fl swiper-slide");
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
                        spaceBetween: 5,
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
                            }
                        }
                    });
                });
            };
        };

    </script>
</asp:Content>

