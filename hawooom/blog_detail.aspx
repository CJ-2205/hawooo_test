<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="blog_detail.aspx.cs" Inherits="mobile_blog_detail" %>

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
            <!-- Blog Article Cards (Start) -->

            <!-- 專欄標題及主要圖片 (Start) -->
                <div>
                    <img class="w-100 img-fluid" src="https://p8r7m4d5.stackpathcdn.com/images/adimgs/o20200309052806746.jpg" alt="">
                    <div class="text-center">
                        <h1 class="mt-3">[大馬模特推薦] ANRIEA美齒貼片+精油牙膏+電動牙刷</h1>
                        <div>
                            <ul class="d-flex justify-content-center pl-0">
                                <li class="border-right px-2">By :<span>Leng Leng (Candy Chan)</span></li>
                                <li class="border-right px-2"><i class="far fa-thumbs-up"></i><span>999</span></li>
                                <li class="px-2">瀏覽數:<span>999</span></li>
                            </ul>
                        </div>
                        <!-- Share Button (Start) -->
                        <div class="bg-100 share-btn-group">
                            <ul class="d-flex justify-content-center pl-0 py-2">
                                <li class="px-2">Share :
                                </li>
                                <li class="px-2"><a class="btn-lg share-facebook" href="#!"><i class="fab fa-facebook-square mr-1"></i>
                                    Facebook</a></li>
                                <li class="px-2"><a class="btn-lg share-instagram" href="#!">
                                    <i class="fab fa-instagram mr-1"></i>
                                    Instagram</a></li>
                                <li class="px-2"><a class="btn-lg share-google" href="#!">
                                    <i class="fab fa-google mr-1"></i>
                                    Google</a></li>
                            </ul>
                        </div>
                        <!-- Share Button (End) -->
                    </div>
                </div>
                <!-- 專欄標題主要圖片 (End) -->

                 <!-- Blog Article (Start) -->
                <div class="mb-3">
                    <div class="mb-3">
                        <p class="mb-2">
                            Wow tore his teeth white after 2 minutes! I believe many people drink coffee and milk tea
                like me☕🥤<br>
                            After a long time, the teeth<br>
                            become yellow, so I use Aliya✨<a
                                href="https://lihi.biz/ZhBX4" target="_blank">https://lihi.biz/ZhBX4</a>
                            <br>
                            Black bamboo charcoal and pearl ingredients make the teeth blink blink instantly!
                        </p>
                        <div class="mb-2">
                            <img class="img-fluid w-100" src="https://p8r7m4d5.stackpathcdn.com/images/pinfo/images/20200429/01(1).jpg"
                                alt="">
                        </div>
                    </div>
                    <div class="mb-3">
                        <p class="mb-2">
                            Wow tore his teeth white after 2 minutes! I believe many people drink coffee and milk tea
                like me☕🥤<br>
                            After a long time, the teeth<br>
                            become yellow, so I use Aliya✨<a
                                href="https://lihi.biz/ZhBX4" target="_blank">https://lihi.biz/ZhBX4</a>
                            <br>
                            Black bamboo charcoal and pearl ingredients make the teeth blink blink instantly!
                        </p>
                        <div class="mb-2">
                            <img class="img-fluid w-100" src="https://p8r7m4d5.stackpathcdn.com/images/pinfo/images/20200429/01(1).jpg"
                                alt="">
                        </div>
                    </div>
                    <div class="mb-3">
                        <h6 class="my-2">
                            <a href="#!">原文出處：Lizz Chloe </a>(經台灣官方同意授權委任發佈)
                        </h6>
                        <h6 class="my-2"><a href="#!" class="text-primary">Hawooo 推薦 → BHK's 紅萃蔓越莓益生菌瓶裝 一瓶/兩瓶組(一瓶60顆)</a></h6>
                    </div>
                </div>
                <!-- Blog Article (End) -->
                  <!-- 關鍵字 (Start) -->
                <div class="mb-4 keywords-bar">
                    <ul class="nav align-items-center">
                        <li class="nav-item text-900">
                            <b>關鍵字：</b>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link btn" href="#">關鍵字1</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link btn" href="#">關鍵字2</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link btn" href="#">關鍵字3</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link btn" href="#">關鍵字4</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link btn" href="#">關鍵字5</a>
                        </li>
                    </ul>
                </div>
                <!-- 關鍵字 (End) -->
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
</asp:Content>

