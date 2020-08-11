<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="mobile_blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js" type="text/javascript" async></script>
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/v2/blogs.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Main Blog (Start) ===============================================-->
    <main class="bg-white container">
        <div class="row">
        <div class="col-12">
                         <!-- Search Bar (Start) -->
                <div class="mt-4 mb-2 d-flex align-items-center border w-100">
                    <input class="form-control form-control-md rounded-0 border-0 w-100  px-2 py-3" type="search" placeholder="大家都在搜的文章" aria-label="Search">
                    <span class="mr-2"><i class="fas fa-search"></i></span>
                </div>
                <!-- Search Bar (End) -->
            <div>
                <ul class="nav flex-nowrap overflow-auto text-nowrap fs--1">
                    <li class="nav-item">
                        <a class="nav-link active text-900" href="#"><b>全部</b></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">熱門</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">最新</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">保養</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">保健</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">生活</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">美妝</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">美食</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-600" href="#">母嬰</a>
                    </li>
                </ul>
            </div>
    
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/adimgs/o20200309052806746.jpg"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/adimgs/o20200309052914538.jpg"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/adimgs/o20200309052806746.jpg"></a>
                    </div>
                </div>
                <div class="button-next"><i class="fas fa-chevron-circle-right"></i></div>
                <div class="button-prev"><i class="fas fa-chevron-circle-left"></i></div>
                <div class="swiper-pagination"></div>
            </div>
            <!-- Blog Article Cards (Start) -->
            <div class="row row-cols-md-2 no-gutters my-3 article-card" id="grid">
                <div class="p-2 grid-item">
                    <div class="card">
                        <a href="blog_detail.aspx" target="_blank">
                            <div class="card-img-top">
                                <img class="w-100 img-fluid"
                                    src="https://p8r7m4d5.stackpathcdn.com/images/atcimgs/t20200326031243380.jpg" alt="">
                            </div>
                            <div class="card-body">
                                <h6 class="mt-0 mb-2 article-category fs--1 text-900">美妝類</h6>
                                <h4 class="mt-0 card-title text-black-50 article-title">【大馬網紅推薦】Zephyrine玫瑰超導修護露</h4>
                                <div>
                                    <ul class="d-flex pl-0 text-900 fs--1">
                                        <li class="border-right pr-2">作者:<span>Stephy鄭意文</span></li>
                                        <li class="border-right px-2"><i class="far fa-thumbs-up"></i><span>999</span></li>
                                        <li class="pl-2">瀏覽數:<span>999</span></li>
                                    </ul>
                                </div>
                                <p class="card-text text-600 article-content fs--1">
                                    以前总觉得保养品要够贵，才会有效😅
                      但发现了初时肌#玫瑰超导修复护露👉 lihi1.com/1Spbw
                      才了解，原来不用花大钱，皮肤一样好到爆！ 才了解，原来不用花大钱，皮肤一样好到爆！
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="p-2 grid-item">
                    <div class="card">
                        <a href="blog_detail.aspx" target="_blank">
                            <div class="card-img-top">
                                <img class="w-100 img-fluid"
                                    src="https://p8r7m4d5.stackpathcdn.com/images/atcimgs/t20200326031243380.jpg" alt="">
                            </div>
                            <div class="card-body">
                                <h6 class="mt-0 mb-2 article-category fs--1 text-900">美妝類</h6>
                                <h4 class="mt-0 card-title text-black-50 article-title">【大馬網紅推薦】Zephyrine玫瑰超導修護露</h4>
                                <div>
                                    <ul class="d-flex pl-0 text-900 fs--1">
                                        <li class="border-right pr-2">作者:<span>Stephy鄭意文</span></li>
                                        <li class="border-right px-2"><i class="far fa-thumbs-up"></i><span>999</span></li>
                                        <li class="pl-2">瀏覽數:<span>999</span></li>
                                    </ul>
                                </div>
                                <p class="card-text text-600 article-content fs--1">
                                    以前总觉得保养品要够贵，才会有效😅
                      但发现了初时肌#玫瑰超导修复护露👉 lihi1.com/1Spbw
                      才了解，原来不用花大钱，皮肤一样好到爆！ 才了解，原来不用花大钱，皮肤一样好到爆！
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="p-2 grid-item">
                    <div class="card">
                        <a href="blog_detail.aspx" target="_blank">
                            <div class="card-img-top">
                                <img class="w-100 img-fluid"
                                    src="https://p8r7m4d5.stackpathcdn.com/images/atcimgs/t20200326031243380.jpg" alt="">
                            </div>
                            <div class="card-body">
                                <h6 class="mt-0 mb-2 article-category fs--1 text-900">美妝類</h6>
                                <h4 class="mt-0 card-title text-black-50 article-title">【大馬網紅推薦】Zephyrine玫瑰超導修護露</h4>
                                <div>
                                    <ul class="d-flex pl-0 text-900 fs--1">
                                        <li class="border-right pr-2">作者:<span>Stephy鄭意文</span></li>
                                        <li class="border-right px-2"><i class="far fa-thumbs-up"></i><span>999</span></li>
                                        <li class="pl-2">瀏覽數:<span>999</span></li>
                                    </ul>
                                </div>
                                <p class="card-text text-600 article-content fs--1">
                                    以前总觉得保养品要够贵，才会有效😅
                      但发现了初时肌#玫瑰超导修复护露👉 lihi1.com/1Spbw
                      才了解，原来不用花大钱，皮肤一样好到爆！ 才了解，原来不用花大钱，皮肤一样好到爆！
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="p-2 grid-item">
                    <div class="card">
                        <a href="blog_detail.aspx" target="_blank">
                            <div class="card-img-top">
                                <img class="w-100 img-fluid"
                                    src="https://p8r7m4d5.stackpathcdn.com/images/atcimgs/t20200326031243380.jpg" alt="">
                            </div>
                            <div class="card-body">
                                <h6 class="mt-0 mb-2 article-category fs--1 text-900">美妝類</h6>
                                <h4 class="mt-0 card-title text-black-50 article-title">【大馬網紅推薦】Zephyrine玫瑰超導修護露</h4>
                                <div>
                                    <ul class="d-flex pl-0 text-900 fs--1">
                                        <li class="border-right pr-2">作者:<span>Stephy鄭意文</span></li>
                                        <li class="border-right px-2"><i class="far fa-thumbs-up"></i><span>999</span></li>
                                        <li class="pl-2">瀏覽數:<span>999</span></li>
                                    </ul>
                                </div>
                                <p class="card-text text-600 article-content fs--1">
                                    以前总觉得保养品要够贵，才会有效😅
                      但发现了初时肌#玫瑰超导修复护露👉 lihi1.com/1Spbw
                      才了解，原来不用花大钱，皮肤一样好到爆！ 才了解，原来不用花大钱，皮肤一样好到爆！
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Blog Article Cards (End) -->
        </div>
            </div>
    </main>
    <!-- Main Blog (End) ================================================-->

        <script src="assets/js/swiper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <div id="fb-root"></div>
    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper('.swiper-container', {
            navigation: {
                nextEl: '.button-next',
                prevEl: '.button-prev',
            },
            pagination: {
                el: '.swiper-pagination',
            },
        });
    </script>
    <script>
        var $grid = $('#grid').imagesLoaded(function () {
            var elem = document.querySelector('#grid');
            var msnry = new Masonry(elem, {
                itemSelector: '.grid-item',
                columnWidth: '.grid-item',
            });
        });
    </script>
</asp:Content>

