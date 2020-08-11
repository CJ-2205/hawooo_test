<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="user_blogs" %>

<%@ Register Src="~/user/control/blogright.ascx" TagPrefix="uc1" TagName="blogright" %>
<%@ Register Src="~/user/control/blogtop.ascx" TagPrefix="uc1" TagName="blogtop" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js" type="text/javascript" async></script>
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/v2/blogs.min.css" rel="stylesheet" />
    <script src="../jquery-plus/masonry-docs/js/masonry-docs.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Main Blog (Start) ===============================================-->
    <div class="container blog">
        <div class="row bg-white">

            <div class="col-12 am-margin-top">
        

                <uc1:blogtop runat="server" ID="blogtop" />


            </div>

            <div class="col-8">

                <!-- Banner Slider (Start) -->
                <div class="swiper-container">
                    <ul class="list-style-none pl-0 swiper-wrapper">
                        <asp:Repeater ID="rp_ad_list" runat="server" ViewStateMode="Disabled">
                            <ItemTemplate>
                                <li class="swiper-slide"><a href='<%# Eval("F04") %>'>
                                    <img src='<%# "../images/adimgs/" + Eval("F14") %>' class="am-img-thumbnail" /></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <div class="button-next"><i class="fas fa-chevron-circle-right"></i></div>
                    <div class="button-prev"><i class="fas fa-chevron-circle-left"></i></div>
                    <div class="swiper-pagination"></div>
                </div>
                <!-- Banner Slider (End) -->

                <!-- Blog Article Cards (Start) -->
                <div class="row text-900" id="grid">

                    <asp:Repeater ID="rp_List" runat="server" ViewStateMode="Disabled">
                        <ItemTemplate>
                            <div class="col-6 grid-item">
                                <div class="card">
                                    <a href='<%# "blog_detail.aspx?id=" + Eval("ATCB01") %>'>

                                        <div class="card-img-top">
                                            <img class="w-100 img-fluid"
                                                src="https://www.hawooo.com/anoimg.png" data-src='<%# "../images/atcimgs/" + Eval("ATCB17") %>' alt="">
                                        </div>
                                        <div class="card-body">
                                            <h6 class="mt-0 mb-2 article-category">
                                                <asp:Literal ID="lit_ATCA03" runat="server" Text="美白類"></asp:Literal></h6>
                                            <h4 class="mt-0 card-title text-black-50 article-title">
                                                <asp:Literal ID="lit_ATCB03" runat="server" Text='<%# Eval("ATCB03") %>'></asp:Literal></h4>
                                            <div>
                                                <ul class="d-flex pl-0">
                                                    <li class="border-right pr-2">作者:<span>Stephy鄭意文</span></li>
                                                    <li class="border-right px-2"><i class="far fa-thumbs-up"></i><span>999</span></li>
                                                    <li class="pl-2">瀏覽數:<span>999</span></li>
                                                </ul>
                                            </div>
                                            <p class="card-text text-600 article-content">
                                                <asp:Literal ID="lit_ATCB18" runat="server" Text='<%# Eval("ATCB18") %>'></asp:Literal>
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <!-- Blog Article Cards (End) -->


                <div>
                    <asp:Literal ID="lit_no_msg" runat="server"></asp:Literal>
                </div>

                <!-- pages (Start) -->
                <div class="text-right mb-4">
                    <nav class="d-inline-block" aria-label="Page navigation example">
                        <ul class="am-pagination am-pagination-centered">
                            <asp:Literal ID="lit_page" runat="server"></asp:Literal>
                        </ul>
                    </nav>
                </div>
                <!-- pages (End) -->
            </div>

            <div class="col-4">
                <uc1:blogright runat="server" ID="blogright" />
            </div>


        </div>
    </div>

    <!-- Main Blog (End) ================================================-->
    <script src="assets/js/swiper.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
    <%--    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v7.0&appId=552091928548521&autoLogAppEvents=1" nonce="mYJ38XSm"></script>
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
        $(function () {
            $('#grid').imagesLoaded(function () {
                $('#grid').masonry({
                    itemSelector: '.grid-item',
                    columnWidth: 420,
                    singleMode: false,
                    animate: true
                });
            });
        });
    </script>
</asp:Content>

