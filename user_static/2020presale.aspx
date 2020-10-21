<%@ Page Title="" Language="C#" MasterPageFile="~/user_static/u.master" AutoEventWireup="true" CodeFile="2020presale.aspx.cs" Inherits="user_static_2020presale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets_v2/css/event.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container my-9 py-7 presale-wrapper">
        <div class="row flex-center bg-white mb-2">
            <!--加入商品 (Start) -->
            <div class="col-9 p-4">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide border border-100 p-3 add-goods">
                            <a href="#">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>
                                    <div class="d-flex flex-between-center">
                                        <span>3 pcs * 1</span>     <span><i class="far fa-trash-alt"></i></span>
                                    </div>
                                    <p class="goods-neme">e Serum 15ml</p>
                                    <h5 class="mt-0 mb-2 text-primary">Final Price RM180.00</h5>
                                    <h6 class="mt-0 mb-2">RM <span>10</span>  deposit get RM<span>20</span> off</h6>
                                </div>
                            </a>
                        </li>
                        <li class="swiper-slide border border-100 p-3">
                            <a href="#">
                                <div>
                                    <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                                </div>
                                <div>
                                    <div class="d-flex flex-between-center">
                                        <span>3 pcs * 1</span>     <span><i class="far fa-trash-alt"></i></span>
                                    </div>
                                    <p class="goods-neme">Dr.Morita Six Essence Hyaluronic Acid Eye Serum 15ml</p>
                                    <h5 class="mt-0 mb-2 text-primary">Final Price RM180.00</h5>
                                    <h6 class="mt-0 mb-2">RM <span>10</span>  deposit get RM<span>20</span> off</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--加入商品 (End) -->
            <!--小購物車 (Start) -->
            <div class="col-3 p-4">
                <div>
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

                        <div class="d-flex flex-between-center mb-3 text-primary">
                            <span>Final Payment：</span>
                            <span>RM185.00</span>
                        </div>
                        <div>
                            <a class="btn btn-outline-primary btn-block py-2" href="#">Pay <b>RM10 </b>For Deposit</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--小購物車 (End) -->
        </div>
        <div class="row bg-white">
            <div class="col-12">
                <h1 class="text-center">Pre Sale</h1>
                <!--預購商品區 (Start) -->
                <ul class="row row-cols-4">
                    <li>
                        <div class="border border-200 bg-white p-3 m-3 presale-items">
                            <div>
                                <img class="w-100" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20200710092907466.jpg" alt="" />
                            </div>
                            <div>
                                <div class="mb-2">
                                    <p>Dr.Morita Six Essence Hyaluronic Acid Eye Serum 15ml</p>
                                </div>
                                <h5 class="my-0 font-weight-normal text-primary">Final Price <b>RM180.00</b> </h5>
                                <h6 class="mt-0 mb-2">RM200.00<span>-RM20</span> </h6>
                                <div class="d-flex mb-2">
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
                                    <a class="btn btn-block btn-primary py-2" href="#">Pay RM10 get RM20 off</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!--預購商品區 (End) -->
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

