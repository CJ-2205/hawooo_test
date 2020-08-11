<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200604mys1_buy1free1.aspx.cs" Inherits="mobile_static_200604mys1_buy1free1" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <title>VIP buy1free1</title>
    <style>
        .mb-shop-block {
            padding: 3px;
        }

        .coupon {
            position: relative;
        }


            .coupon img {
                -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
                filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
            }

        .coupon-code {
            background: #fff;
            color: #F43328;
            font-weight: bold;
            text-align: center;
            font-size: 12px;
            padding: 3px 5px;
            border: 1px solid #aaa;
            margin-bottom:0;
        }

        @media screen and (min-width: 650px) {
            .coupon-code {
                font-size: 14px;
            }
        }

        .category-slider {
            background: #F39800;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-margin-buttom am-g main-contain mb-contain" id="top" style="background: #DCDDDD;">
        <div class="am-margin-bottom">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/bbn_02m.png" %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/bn_02m.png" %>' alt="main-banner" />
        </div>

        <div class="am-margin-bottom">
            <div class="am-padding-horizontal-xs">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs coupon">
                        <a onclick="getMysCoupon('1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                        <h6 class="am-margin-top-xs coupon-code"><span>
                            <asp:Literal runat="server" ID="litCoupon1"></asp:Literal>
                        </span>have claimed it</h6>
                    </li>
                    <li class="am-padding-xs  coupon">
                        <a onclick="getMysCoupon('2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                        <h6 class="am-margin-top-xs coupon-code"><span>
                            <asp:Literal runat="server" ID="litCoupon2"></asp:Literal>
                        </span>have claimed it</h6>
                    </li>
                    <li class="am-padding-xs coupon">
                        <a onclick="getMysCoupon('3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                        <h6 class="am-margin-top-xs coupon-code"><span>
                            <asp:Literal runat="server" ID="litCoupon3"></asp:Literal>
                        </span>have claimed it</h6>
                    </li>
                    <li class="am-padding-xs  coupon">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_04.png" %>' alt="coupon_04" />
                        <h6 class="am-margin-top-xs coupon-code">minspend <span>450</span>, <span>150</span> sets</h6>
                    </li>
                </ul>
            </div>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 (Start) =====================================================--%>
        <section class="am-margin-bottom" id="s1">
            <div style="background-color: #067C99">
                <div class="mb-shop-block" id="block1">
                    <ul class="am-avg-sm-2  am-avg-md-3">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
            </div>
        </section>
        <%--Block1 (End) ======================================================--%>

        <%--Block2 Shop By Category (Start) ==========================================--%>
        <%--Category1 (Start) --%>
        <section id="s4" style="position: relative;">
            <div>
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/bn_06m.png" alt="bn_06m" />
            </div>

            <div class="am-margin-vertical-xs">
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs" id="point1"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/v_01.png" alt="v_01" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/v_02.png" alt="v_02" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/v_03.png" alt="v_03" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/v_04.png" alt="v_04" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/v_05.png" alt="v_05" /></a></li>
                    <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a>
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/v_06.png" alt="v_06" /></a></li>
                </ul>
            </div>

            <div>
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_01m.png" alt="ca_01m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider">
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products4" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
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
        <%--Category1 (End) --%>

        <%--Category2 (Start) --%>
        <section class="am-margin-top-0" id="point2">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_02m.png" alt="h_02m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
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
        </section>
        <%--Category2 (End) --%>

        <%--Category3 (Start) --%>
        <section class="am-margin-top-0" id="point3">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_03m.png" alt="h_03m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
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
        </section>
        <%--Category3 (End) --%>

        <%--Category4 (Start) --%>
        <section class="am-margin-top-0" id="point4">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_04m.png" alt="h_04m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
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
        </section>
        <%--Category4 (End) --%>

        <%--Category5 (Start) --%>
        <section class="am-margin-top-0" id="point5">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_05m.png" alt="h_05m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products8" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
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
        </section>
        <%--Category5 (End) --%>

        <%--Category6 (Start) --%>
        <section class="am-margin-top-0" id="point6">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_06m.png" alt="h_06m" />
                </a>
            </div>
            <div class="am-padding-bottom-sm category-slider">
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products9" />
                        <li class="am-fl swiper-slide goods-more">
                            <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
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
        </section>
        <%--Category6 (End) --%>
        <%--Block2 Shop By Category (End) ==========================================--%>
        <%--Terms & Conditions (Start) =============================================--%>
        <div id="s5">
            <footer class="am-padding activity-method" style="background: #000;">
                <div class="am-container">
                    <p class="am-margin-vertical-0">
                        Terms & Conditions<br>
                        Mid Year Sale Pre Sale<br>
                        1. Promotion Date : 4th June 2020 12:00 PM - 18th June 2020 11:59 AM<br>
                        2. Limited Sitewide Voucher:
                   
                    </p>
                    <p class="am-margin-vertical-0  am-padding-left">
                        - RM20 OFF (min spend 240)<br>
                        - RM35 OFF (min spend 380)<br>
                        - RM60 OFF (min spend 600)
                   
                    </p>
                    <p class="am-margin-vertical-0">
                        3. Vouchers are LIMITED, each account can only redeem ONCE for each voucher, first come first serve
                        <br>
                        4. Vouchers are applicable on selected Flagship Stores, including Dore Dore, Zephyrine, Cest V'rai, 
                        Dr Morita, Paradiso Garden, Naturero, Double Doctor, HH(except items on this page), DV, Laler, Choyer, 
                        Hsu's, DV Tokyo, 1838 Eurocares, Unipapa, Enjoy the Life, Sofei, Check2check 
         
                        <br>
                        5. Free Gift:<br>
                    </p>
                    <p class="am-margin-vertical-0 am-padding-left">
                        - TTM Hydrate Black Charcol Mask, 5pcs/box (min spend RM450, limited 150 sets, worth RM45)
                    </p>
                    <p class="am-margin-vertical-0">
                        6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mid Year Sale 
                        terms from time to time, and in such manner as Hawooo deems appropriate.
                    </p>
                </div>
            </footer>
        </div>
        <%--Terms & Conditions (End) ==============================================--%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-3">
                    <li>
                        <a href="200604mys1.aspx" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/ss_00m.png" alt="ss_00m" />
                        </a>
                    </li>
                    <li>
                        <a href="200604mys1_hot_deal.aspx" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/ss_01m.png" alt="ss_01m" />
                        </a>
                    </li>
                    <li>
                        <a href="#!">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/ss_02m.png" alt="ss_02m" />
                        </a>
                    </li>
                    <li>
                        <a href="200604mys1.aspx?#s3" target="_blank">
                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/ss_03m.png" alt="ss_03m" />
                        </a>
                    </li>
                    <li onclick="goto('s4',800,'swing')">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/ss_04m.png" alt="ss_04m" />
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/ss_05m.png" alt="ss_04m" />
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <%--MB  Contain Max-width:650px(End) ==========================================--%>
    <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script type="text/javascript">

        /*Load HTML*/
        $(document).ready(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide goods-more");
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

        function initScript() {
            // duplicateLogo();
            console.log('Inside InitScript');
            setThem();
            putimg(12);

            hiddenFooterMenu();
            $("#s5 li,#s3 li").addClass("hvr-float");

            function duplicateLogo() {
                for (i = 0; i < 11; i++) {
                    duplicate('logo');
                }
            };
            function duplicate(id) {
                var ul = $("#" + id + " ul");
                ul.find("li:last")
                    .clone(true)
                    .appendTo(ul);
            }
        }


        var brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];

        /*放置logo*/
        function putimg(count) {
            // Todo_treegb: Might lost some logic?
            for (i = 1; i <= count; i++) {
                $('#logo li a').eq(i - 1).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/logo_' + paddingLeft("" + i + "", 2) + '.png">' +
                    '</div>');
            }
        };
        /* Used by putimg() */
        function paddingLeft(str, lenght) {
            debugger;
            if (str.length >= lenght)
                return str;
            else
                return paddingLeft("0" + str, lenght);
        };


        /*隱藏手機FotterBar*/
        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

        /* 設定Slider*/
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

        function getMysCoupon(type) {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                console.log('null');
                $(".main-contain a").attr("href", "#!")
                $(".main-contain").click(function () {
                    location.href = 'login.aspx?rurl=200604mys1_buy1free1.aspx';
                });
            } else {
                console.log('not null');
                var val = "{'userID':'" + u + "','type':'" + type + "'}";

                $.ajax({
                    type: "POST",
                    url: "200604mys1.aspx/GetCouponInfo",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var rmsg = JSON.parse(msg.d)[0].rmsg;
                        var status = JSON.parse(msg.d)[0].status
                        console.log(status);
                        if (status == "True")
                            alert2url(rmsg, '200604mys1.aspx');
                        else
                            alert(rmsg);

                    },
                    error: function () {
                        alert('Ajax ERROR');
                    }
                });

            };
        };
    </script>
</asp:Content>
