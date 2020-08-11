<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="blog_detail.aspx.cs" Inherits="user_blog_detail" %>


<%@ Register Src="~/user/control/blogright.ascx" TagPrefix="uc1" TagName="blogright" %>
<%@ Register Src="~/user/control/blogtop.ascx" TagPrefix="uc1" TagName="blogtop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js" type="text/javascript" async></script>
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/v2/blogs.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <main class="container blog">
        <div class="row bg-white">
            <div class="col-12 am-margin-top">
                <uc1:blogtop runat="server" ID="blogtop" />
            </div>

            <div class="col-8">
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

                <!-- 商品資訊  若文章帶超過一個商品，則往下增加 (Start) -->
                <div class="d-flex bg-50">
                    <div class="w-50 mr-2 text-center py-3">
                        <img class="w-75 img-fluid"
                            src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200611121342719.jpg"
                            alt="">
                    </div>
                    <div class="w-50 p-3">
                        <div class="d-flex flex-column justify-content-around h-100">
                            <h2>愛上新鮮 花蓮綠皮山苦瓜片 100g愛上新鮮 花蓮綠皮山苦瓜片 100g</h2>
                            <div>
                                <h1 class="text-primary d-inline-block mr-3">RM <span>100.00</span></h1>
                                <span class="text-600"><s>RM 150.00</s></span>
                            </div>
                            <a class="btn btn-lg btn-outline-primary w-50 mx-auto" href="#">Buy Now</a>
                        </div>
                    </div>
                </div>
                <!-- 商品資訊 若文章帶超過一個商品，則往下增加 (End) -->

                <div>
                    <h3 class="text-center text-secondary">商品推薦</h3>
                    <div class="row">
                        <div class="col">
                        </div>
                        <div class="col">
                        </div>
                        <%--<ul class="">
                            <li>
                                <!-- 後端帶入商品塊 -->
                            </li>
                            <li>
                                <!-- 後端帶入商品塊 -->
                            </li>
                        </ul>--%>
                    </div>
                </div>
                <div>
                    <h3 class="text-center text-secondary">留言</h3>
                    <div>
                        <ul class="am-avg-sm-5">
                            <li>
                                <!-- 後端帶入商品塊 -->
                            </li>
                            <li>
                                <!-- 後端帶入商品塊 -->
                            </li>
                        </ul>
                    </div>
                </div>

                <div>
                    <h3 class="text-center text-secondary">You may also like</h3>
                    <div>
                        <ul class="am-avg-sm-2">
                            <li>
                                <div>
                                    <img class="w-50" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200611121342719.jpg" alt="" />
                                </div>
                                <h6>標題</h6>
                            </li>
                            <li>
                                <div>
                                    <img class="w-50" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200611121342719.jpg" alt="" />
                                </div>
                                <h6>標題</h6>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- pages (Start) -->
                <div class="text-right mb-4">
                    <nav class="d-inline-block" aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span
                                aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span
                                aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
                        </ul>
                    </nav>
                </div>
                <!-- pages (End) -->
            </div>

            <div class="col-4">
                <uc1:blogright runat="server" ID="blogright" />

            </div>
        </div>
    </main>
</asp:Content>

