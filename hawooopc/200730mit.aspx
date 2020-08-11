<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200730mit.aspx.cs" Inherits="user_static_200730mit" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <title>MIT</title>
    <style>
        .side-bar {
            top: 40%;
            width: 120px;
        }

        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            color: #fff;
            background: #F6CE1E;
        }

        .event-title-bg {
            position: relative;
        }

        .event-title {
            font-weight: bold;
            font-size: 65px;
            letter-spacing: 1px;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            color: #0A0A0A;
            font-family: 'Bebas Neue', sans-serif;
            bottom: 0;
            top: -137px;
            transform: translateY(25%);
        }

        .mit-brands-group ul li {
            max-height: 400px;
            overflow: hidden;
        }

            .mit-brands-group ul li a {
                background: #fff;
            }
.shop-block li {
    padding:0 !important;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain " style="background: #00736D;">
        <div class="am-margin-bottom-xl" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_01.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" />
        </div>

        <div class="am-container am-margin-bottom-xl">
            <%--Block1 (Start) =====================================================--%>
            <div>
                <img class="am-margin-bottom-0 am-padding-bottom-xl"
                    src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
            </div>

            <section class="am-margin-bottom-xl all-anchor-href-redirect  am-panel-default"
                data-redirect="200730mit_editors_picks.aspx">
                <div class="event-title-bg">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_03.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03" />
                        <h2 class="event-title">EDITOR'S PICKS
                        </h2>
                    </a>
                </div>

                <div class="am-padding pc-slider" style="background: #FFEFBB;">
                    <div class=" swiper-container swiper-editors">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp1_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                    <li class="am-fl goods goods-flashsale">
                                        <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                            <div class="goods-top">
                                                <div class="goods-img">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                                                    <div class="goods-discount goods-discount3">
                                                        <span class="ribbon">
                                                            <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                            <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="goods-bottom">
                                                <div class="goods-block">
                                                    <p class="goods-name">
                                                        <%# Eval("WP02").ToString() %>
                                                    </p>
                                                </div>
                                                <div class="goods-block">
                                                    <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                    <s class="goods-original-price">
                                                        <span>RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </s>
                                                    <div class="goods-block">
                                                        <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <li class="am-fl swiper-slide goods">
                                <a class="goods-more">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                        <div class="imgContain" style="width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                        </div>
                                    </div>
                                    <div class="am-text-center goods-bottom">
                                        <h2 class="am-padding-top-lg" style="text-align: center;">See More</h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <div class="prev-btn prev-editors">
                            <span class="am-icon-chevron-left"></span>
                        </div>
                        <div class="next-btn next-editors">
                            <span class="am-icon-chevron-right"></span>
                        </div>
                    </div>
                </div>

                <div>
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/shop.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </section>
            <%--Block1 (end) =====================================================--%>

            <%--Block2 Highlighted Brands(Start)========================================--%>
            <div>
                <div class="event-title-bg">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_03.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02" />
                    <h2 class="event-title">HIGHLIGHTED BRANDS
                    </h2>
                </div>
                <div class="am-padding mit-brands-group shop-block" style="background: #FFF4CE">

                    <div class="am-margin-bottom" style="display: flex;">
                        <div class="am-margin-right hvr-float"style="width:321px">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=251" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_01.png" + "?cacheVersion=" + cacheVersion %>'>
                            </a>
                        </div>
                        <div class="swiper-container swiper-container2" style="width:100%;">
                            <ul class="am-avg-sm-4 swiper-wrapper">
                                <uc1:products runat="server" id="products1" />
                                <li class="am-fl swiper-slide goods-more">
                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=251" style="height: 100%;" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom am-text-center">
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a href="#!" class="prev-btn prev-btn2">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn2">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>


                    <div class="am-margin-bottom"style="display: flex;">
                        <div  class="am-margin-right hvr-float"style="width:321px">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=32" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_02.png" + "?cacheVersion=" + cacheVersion %>'>
                            </a>
                        </div>

                        <div class="swiper-container swiper-container3" style="width:100%;">
                            <ul class="am-avg-sm-4 swiper-wrapper">
                                <uc1:products runat="server" id="products2" />
                                <li class="am-fl swiper-slide goods-more">
                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=32" style="height: 100%;" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom am-text-center">
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a href="#!" class="prev-btn prev-btn3">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn3">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                    <div class="am-margin-bottom" style="display: flex;">
                            <div class="am-margin-right  hvr-float"style="width:321px">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=329" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_03.png" + "?cacheVersion=" + cacheVersion %>'>
                                </a>
                            </div>
                        <div class="swiper-container swiper-container4" style="width:100%;">
                            <ul class="am-avg-sm-4 swiper-wrapper">
                                <uc1:products runat="server" id="products3" />
                                <li class="am-fl swiper-slide goods-more">
                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=329" style="height: 100%;" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom am-text-center">
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a href="#!" class="prev-btn prev-btn4">
                                <span class="am-icon-chevron-left"></span>
                            </a>
                            <a href="#!" class="next-btn next-btn4">
                                <span class="am-icon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                    <div class="am-margin-bottom" style="display: flex;">
                        <div class="am-margin-right hvr-float"style="width:321px">
                            <a href="https://www.hawooo.com/user/brands.aspx?bid=347" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_04.png" + "?cacheVersion=" + cacheVersion %>'>
                            </a>
                        </div>
                        <div class=" swiper-container swiper-container5" style="width:100%;">
                            <ul class="am-avg-sm-4 swiper-wrapper">
                                <uc1:products runat="server" id="products4" />
                                <li class="am-fl swiper-slide goods-more">
                                    <a href="https://www.hawooo.com/user/brands.aspx?bid=347" style="height: 100%;" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom am-text-center">
                                            <h3 class="am-padding-top-xl">See More</h3>
                                        </div>
                                    </a>
                                </li>
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
            </div>
            <%--Block2 Highlighted Brands(End) ========================================--%>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        /*Load HTML*/
        $(document).ready(function () {
            // load 網頁共用結構
            let totalLoad = $('.include').length;
            let loadIndex = 0;
            if (totalLoad == 0) {
                initScript();
            }
            $('.include').each(function () {
                $(this).load($(this).data('file'), function () {
                    $(this).children().first().unwrap(); // remove the ha-include div
                    loadIndex++;
                    if (loadIndex == totalLoad) {
                        //共用結構載入完，開始執行頁面自己的初始化
                        initScript();
                    }
                });
            });
        });

        // 執行頁面的script
        function initScript() {
            setSwiper();
            setSwiper2();
            allAnchorHrefRedirect();
            $(".shop-block li").addClass("hvr-float");
        }

        function setSwiper2() {
            new Swiper('.swiper-editors', {
                slidesPerView: 4.25,
                spaceBetween: 10,
                navigation: {
                    nextEl: '.next-editors',
                    prevEl: '.prev-editors',
                },
            });
        }
       
     

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
                            slidesPerGroup: 3.5,
                        spaceBetween: 8,
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
    </script>
</asp:Content>
