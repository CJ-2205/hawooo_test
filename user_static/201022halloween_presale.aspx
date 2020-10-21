<%@ Page Title="" Language="C#" MasterPageFile="~/user_static/u.master" AutoEventWireup="true" CodeFile="201022halloween_presale.aspx.cs" Inherits="user_static_201022halloween_presale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-contain py-6 position-relative" style="background: #EF7A00">

        <div class="container presale-wrapper">

            <div class="row">
                <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20201022/bbn_02.png" alt="bbn_02" />
            </div>

            <div class="row flex-center mb-2" style="background-color: #111C24;">
                <!--加入商品 (Start) -->
                <div class="col-9 p-4">
                    <div class="swiper-container swiper-container1">
                        <ul class="swiper-wrapper">
                            <li class="swiper-slide border border-100 bg-white p-3">
                                <a class="goods-add" href="#">
                                    <div>
                                        <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                    </div>
                                    <div>
                                        <div class="d-flex flex-between-center mb-2">
                                            <span class="fs--1">3 pcs * 1</span>  <span><i class="far fa-trash-alt"></i></span>
                                        </div>
                                        <h5 class="mt-0 mb-2"><s class="fs--1 text-1100">RM200.00</s><span class="text-primary"> RM180.00</span></h5>
                                        <h6 class="mt-0 mb-2 text-1100 fs--1">RM <span>10</span>  deposit get RM<span>20</span> off</h6>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide border border-100 bg-white p-3">
                                <a class="goods-add" href="#">
                                    <div>
                                        <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                    </div>
                                    <div>
                                        <div class="d-flex flex-between-center mb-2">
                                            <span class="fs--1">3 pcs * 1</span>  <span><i class="far fa-trash-alt"></i></span>
                                        </div>
                                        <h5 class="mt-0 mb-2"><s class="fs--1 text-1100">RM200.00</s><span class="text-primary"> RM180.00</span></h5>
                                        <h6 class="mt-0 mb-2 text-1100 fs--1">RM <span>10</span>  deposit get RM<span>20</span> off</h6>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--加入商品 (End) -->
                <!--小購物車 (Start) -->
                <div class="col-3 p-4">
                    <div class="bg-white">
                        <h2 class="text-center bg-100 py-2 mb-0">Pre Sale Wishlist</h2>
                        <div class="px-3 pb-3">
                            <h5 class="border-bottom border-200 py-3 text-center">You have selected <span>1</span> item(s)</h5>
                            <div>
                                <div class="d-flex flex-between-center mb-3">
                                    <p>Total Amount：</p>
                                    <h5 class="my-0">RM200.00</h5>
                                </div>
                                <div class="d-flex flex-between-center mb-3">
                                    <p>Shipping Fee ：</p>
                                    <h5 class="my-0">RM5.00</h5>
                                </div>
                                <div class="d-flex justify-content-between mb-3">
                                    <p>Deposit：</p>
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
                                <a class="btn btn-block py-2 text-black font-weight-extra-bold" href="#" style="background-color: #00FD00;">Pay <b class="fs-2">RM10 </b>For Deposit</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--小購物車 (End) -->
            </div>

            <div class="row py-3" style="background-color: #111C24;">
                <div class="col-12">
                    <!--預購商品區 (Start) -->
                    <ul class="row row-cols-4">
                        <li>
                            <div class="border border-200 bg-white p-3 m-2 presale-items">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>

                                    <div class="position-relative mb-2">
                                        <img class="w-100 position-relative" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/info_bg.png" alt="" />
                                        <h5 class="position-absolute t-0 l-0 r-0 h-100 my-0 font-weight-normal text-white d-flex flex-center">Final Price <span>RM180.00</span> </h5>
                                    </div>
                                    <p class="goods-name mb-2">Dr.Morita Six Essenceml</p>
                                    <h2 class="mt-0 mb-2"><s class="fs--1 text-1100">RM200.00</s><span class="text-primary"> RM180.00</span></h2>
                                    <h6 class="mb-2">RM10 Deposit Get RM20 off</h6>
                                    <div class="d-flex mb-2">
                                        <select class="p-2 mr-2 w-75">
                                            <option value="Option1">Option1</option>
                                            <option value="Option2">Option2</option>
                                        </select>
                                        <select class="p-2 w-25">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
                                    <div>
                                        <a class="btn btn-block text-white py-2" href="#" style="background-color: #7931B6;">Pay RM10 get RM20 off</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="border border-200 bg-white p-3 m-2 presale-items">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>

                                    <div class="position-relative mb-2">
                                        <img class="w-100 position-relative" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/info_bg.png" alt="" />
                                        <h5 class="position-absolute t-0 l-0 r-0 h-100 my-0 font-weight-normal text-white d-flex flex-center">Final Price <span>RM180.00</span> </h5>
                                    </div>
                                    <p class="goods-name mb-2">Dr.Morita Six Essence Hyaluronic Acid Eye Serum 15mlDr.Morita Six Essence Hyaluronic Acid Eye Serum 15m</p>
                                    <h2 class="mt-0 mb-2"><s class="fs--1 text-1100">RM200.00</s><span class="text-primary"> RM180.00</span></h2>
                                    <h6 class="mb-2">RM10 Deposit Get RM20 off</h6>
                                    <div class="d-flex mb-2">
                                        <select class="p-2 mr-2 w-75">
                                            <option value="Option1">Option1</option>
                                            <option value="Option2">Option2</option>
                                        </select>
                                        <select class="p-2 w-25">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
                                    <div>
                                        <a class="btn btn-block text-white py-2" href="#" style="background-color: #7931B6;">Pay RM10 get RM20 off</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--預購商品區 (End) -->
            </div>
        </div>
    </div>
    <script src="assets/js/swiper.min.js"></script>
    <script>
        setSwiper()
        /* 設定Slider*/
        function setSwiper() {
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
                        slidesPerGroup: 3.5,
                        spaceBetween: 10,

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
                                slidesPerView: 2.3,
                                slidesPerGroup: 2,
                                spaceBetween: 5
                            }
                        }
                    });
                });
            };
        };
    </script>
</asp:Content>

