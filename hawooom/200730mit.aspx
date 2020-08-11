<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200730mit.aspx.cs" Inherits="mobile_static_200730mit" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <style>
        .radius {
            border-bottom-right-radius: 20px;
            border-bottom-left-radius: 20px;
        }

        .event-title-bg {
            position: relative;
        }

        .event-title {
            font-weight: bold;
            font-size: 43px; /*43px*/
            letter-spacing: 1px;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            color: #0A0A0A;
            font-family: 'Bebas Neue', sans-serif;
            bottom: 0;
            top: -77px;
            transform: translateY(25%);
        }

        @media screen and (max-width: 650px) {
            .event-title {
                font-size: 30px;
            }
        }

        #s1 .goods-bottom {
            height: 105px;
        }

        @media screen and (min-width: 650px) {
            #s1 .goods-bottom {
                height: 120px;
            }
        }
    </style>
    <title>MIT </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain (Start) ===================================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #00736D;">
        <div class="am-margin-bottom-sm">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>
        <div class="am-margin-bottom">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_02m" />
        </div>
        <%--Block1 (Start) =====================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" data-redirect="200730mit_editors_picks.aspx" id="s1">
            <div class="event-title-bg">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                    <h2 class="event-title">EDITOR'S PICKS </h2>
                </a>
            </div>
            <div class="radius" style="background: #F9DB7D;">
                <div class="swiper-container swiper-container8 mb-shop-block">
                    <ul class="swiper-wrapper am-avg-sm-2 am-avg-md-3">
                        <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp1_OnItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                        <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <%-- <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>--%>
                                            <div class="goods-block">
                                                <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                            </div>
                                            <div class="goods-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                <s class="goods-original-price">
                                                    <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                </s>
                                            </div>
                                            <div class="goods-block">
                                                <p>
                                                    SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li class="am-fl swiper-slide goods-more">
                            <a>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>--%>
                        <li class="am-fl swiper-slide goods goods-flashsale">
                            <a>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png">
                                        <div class="goods-discount goods-discount3">
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-bottom" style="display: flex; justify-content: center; align-items: center;">
                                    <div class="goods-block">
                                        <h2 class="am-text-center">See More
                                        </h2>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    <a class="am-block">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/shopm.png" + "?cacheVersion=" + cacheVersion %>' alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block1 (End) ======================================================--%>

        <%--Block2 (Start) =====================================================--%>
        <section class="am-margin-bottom">
            <div>
                <div class="event-title-bg">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                    <h2 class="event-title">HIGHLIGHTED BRANDS
                    </h2>
                </div>

                <div style="background: #FFEFBB">
                    <div class="am-padding-xs">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=251" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_01m.png" + "?cacheVersion=" + cacheVersion %>'>
                        </a>
                    </div>
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3 swiper-wrapper">
                            <uc1:products runat="server" id="products1" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=251" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="am-padding-top-sm" style="background: #FFEFBB">
                    <div class="am-padding-xs">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=32" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_02m.png" + "?cacheVersion=" + cacheVersion %>'>
                        </a>
                    </div>
                    <div class="swiper-container swiper-container2 mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3 swiper-wrapper">
                            <uc1:products runat="server" id="products2" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=32" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="am-padding-top-sm" style="background: #FFEFBB">
                    <div class="am-padding-xs">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=329" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_03m.png" + "?cacheVersion=" + cacheVersion %>'>
                        </a>
                    </div>
                    <div class="swiper-container swiper-container3 mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3 swiper-wrapper">
                            <uc1:products runat="server" id="products3" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=329" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="am-padding-top-sm" style="background: #FFEFBB">
                    <div class="am-padding-xs">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=347" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/h_04m.png" + "?cacheVersion=" + cacheVersion %>'>
                        </a>
                    </div>
                    <div class="swiper-container swiper-container4 mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3 swiper-wrapper">
                            <uc1:products runat="server" id="products4" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=347" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </section>
        <%--Block2 (End) ======================================================--%>
    </div>
    <%--MB  Contain (End) ====================================================--%>

    <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
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
            allAnchorHrefRedirect();
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
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 0,
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
                                spaceBetween: 0,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };

    </script>
</asp:Content>
