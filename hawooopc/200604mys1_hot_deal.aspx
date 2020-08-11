<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200604mys1_hot_deal.aspx.cs" Inherits="user_static_200604mys1_hot_deal" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <style>
        .side-bar {
            top: 28%;
            width: 120px;
        }

        /* coupon */
        .coupon {
            position: relative;
        }

        .coupon-code {
            position: absolute;
            bottom: 28%;
            left: 0;
            right: 0;
            text-align: center;
            font-weight: bold;
            font-size: 20px;
            padding-left: 4%;
            color: #000;
        }

        .font-style {
            text-align: center;
            background-color: #FFFFFF;
            width: 270px;
            height: 50px;
            line-height: 50px;
            color: #F43328;
            border-style: solid;
            border-color: #A0A0A0;
            font-weight: bold;
        }

        .coupon img {
            -webkit-filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 06));
            filter: drop-shadow(3px 3px 2px rgba(0, 0, 0, 0.6))
        }

        /* Category. */
        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            color: #fff;
            background: #FFB740;
        }

        .category-bg {
            background: #F39800
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <%--側邊選單 (Start) ======================================================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="200604mys1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="200604mys1_buy1free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="200604mys1.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a onclick="goto('s4')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
                <li onclick="goto('s5')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/ss_05.png" %>' alt="ss_05" />
                </li>
            </ul>
        </div>
        <%--側邊選單 (End) =======================================================--%>

        <div class="am-container">
            <div>
                <img class="am-margin-bottom-xl" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/bbn_01.png" %>'
                    alt="bbn_02" />
            </div>

            <%-- Todo: Finish the reset logic of coupon. --%>
            <%--領取折扣券 (Start)====================================================--%>
            <div style="position: relative;">
                <div class="am-margin-bottom-sm am-padding-bottom-sm">
                    <div class="am-margin-bottom_xl">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/bn_02.png" %>' alt="bn_02" />
                    </div>
                    <ul class="am-avg-sm-4">
                        <li class="am-padding-sm coupon">
                            <a onclick="getMysCoupon('1');" href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_01.png" %>' alt="coupon_01" />
                            </a>
                            <h3 class="am-margin-top-sm font-style"><span>
                                <asp:Literal runat="server" ID="litCoupon1"></asp:Literal></span> have claimed it</h3>
                        </li>
                        <li class="am-padding-sm coupon">
                            <a onclick="getMysCoupon('2');" href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_02.png" %>' alt="coupon_02" />
                            </a>
                            <h3 class="am-margin-top-sm font-style"><span>
                                <asp:Literal runat="server" ID="litCoupon2"></asp:Literal></span> have claimed it</h3>
                        </li>
                        <li class="am-padding-sm coupon">
                            <a onclick="getMysCoupon('3');" href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_03.png" %>' alt="coupon_03" />
                            </a>
                            <h3 class="am-margin-top-sm font-style"><span>
                                <asp:Literal runat="server" ID="litCoupon3"></asp:Literal></span> have claimed it</h3>
                        </li>
                        <li class="am-padding-sm coupon">
                            <a href="#!">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/coupon_04.png" %>' alt="coupon_04" />
                            </a>
                            <h3 class="am-margin-top-sm font-style">minspend 450, 150 sets</h3>
                        </li>
                    </ul>
                </div>
            </div>
            <%--領取折扣券 (End) ====================================================--%>

            <%--Block2 (Start) ======================================================--%>
            <div style="background: #FF004F;">
                <div class="am-margin-bottom-xl am-padding-sm shop-block">
                    <ul class="am-avg-sm-4">
                        <%--後端帶入商品 (Start) --%>
                        <uc1:products runat="server" id="productHotDeal" />
                        <%--後端帶入商品 (End) --%>
                    </ul>
                </div>
            </div>
            <%--Block2 (End) =======================================================--%>

            <%--Block4 Shop By Category (Start) ==========================================--%>
            <div class="am-margin-bottom-lg">
                <%--Category1 (Start) --%>
                <div>
                    <div class="banner banner3">
                        <img class="am-margin-bottom-sm" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/bn_06.png" %>' alt="bn_06" />
                    </div>
                    <section class="category-bg am-margin-bottom-0 am-padding" id="s4">
                        <%--類別錨點 (Start)--%>
                        <div class="am-padding-bottom-0">
                            <ul class="am-avg-sm-6">
                                <li class="am-padding-xs" id="point1"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/v_01.png" %>' alt="h_01" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/v_02.png" %>' alt="h_02" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/v_03.png" %>' alt="h_03" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/v_04.png" %>' alt="h_04" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/v_05.png" %>' alt="h_05" /></a></li>
                                <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a href="#!">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200604/v_06.png" %>' alt="h_06" /></a></li>
                            </ul>
                        </div>
                        <%--類別錨點 (Start)--%>
                        <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                            <div class="am-margin-right-sm category-bn">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_01.png" %>' style="width: 100%;">
                                </a>
                            </div>
                            <div class="category-slider">
                                <div class="swiper-container swiper-container1">
                                    <ul class="swiper-wrapper">
                                        <uc1:products runat="server" id="productsCategory1" />
                                        <li class="am-fl swiper-slide goods-more">
                                            <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                    </div>
                                                </div>
                                                <div class="goods-bottom am-text-center">
                                                    <h3 class="am-padding-top-xl">See More</h3>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <a href="#!" class="prev-btn prev-btn1">
                                        <span class="am-icon-chevron-left"></span>
                                    </a>
                                    <a href="#!" class="next-btn next-btn1">
                                        <span class="am-icon-chevron-right"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <%--Category1 (End) --%>

                <%--Category2 (Start) --%>
                <section class="category-bg am-margin-bottom-0 am-padding" id="point2">
                    <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container2">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productsCategory2" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
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
                    </div>
                </section>
                <%--Category2 (End) --%>

                <%--Category3 (Start) --%>
                <section class="category-bg am-margin-bottom-0 am-padding" id="point3">
                    <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container3">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productsCategory3" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
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
                    </div>
                </section>

                <%--Category3 (End) --%>

                <%--Category4 (Start) --%>
                <section class="category-bg am-margin-bottom-0 am-padding" id="point4">
                    <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container4">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productsCategory4" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
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
                    </div>
                </section>
                <%--Category4 (End) --%>

                <%--Category5 (Start) --%>
                <section class="category-bg am-margin-bottom-0 am-padding" id="point5">
                    <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container5">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productsCategory5" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
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
                </section>
                <%--Category5 (End) --%>

                <%--Category6 (Start) --%>
                <section class="category-bg am-margin-bottom-0 am-padding" id="point6">
                    <div class="am-margin-bottom-0 am-padding-xs  pc-category-block">
                        <div class="am-margin-right-sm category-bn">
                            <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06.png" %>' style="width: 100%;">
                            </a>
                        </div>
                        <div class="category-slider">
                            <div class="swiper-container swiper-container6">
                                <ul class="swiper-wrapper">
                                    <uc1:products runat="server" id="productsCategory6" />
                                    <li class="am-fl swiper-slide goods-more">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                                </div>
                                            </div>
                                            <div class="goods-bottom am-text-center">
                                                <h3 class="am-padding-top-xl">See More</h3>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <a href="#!" class="prev-btn prev-btn6">
                                    <span class="am-icon-chevron-left"></span>
                                </a>
                                <a href="#!" class="next-btn next-btn6">
                                    <span class="am-icon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
                <%--Category6 (End) --%>
            </div>
            <%--Block4 Shop By Category (End) ===========================================--%>
        </div>
        <%--Terms & Conditions (Start) =====================================================--%>
        <footer class="am-padding-vertical-lg activity-method" id="s5" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    Mid Year Sale Pre Sale<br>
                    1. Promotion Date : 4th June 2020 12:00 PM - 18th June 2020 11:59 AM<br>
                    2. Limited Sitewide Voucher:
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - RM20 OFF (min spend 240)<br>
                    - RM35 OFF (min spend 380)<br>
                    - RM60 OFF (min spend 600)
                </p>
                <p class="am-margin-top-0">
                    3. Vouchers are LIMITED, each account can only redeem ONCE for each voucher, first come first serve
          <br>
                    4. Vouchers are applicable on selected Flagship Stores, including Dore Dore, Zephyrine, Cest V'rai, Dr Morita, Paradiso Garden, Naturero, Double Doctor, HH(except items on this page), DV, Laler, Choyer, Hsu's, DV Tokyo, 1838 Eurocares, Unipapa, Enjoy the Life, Sofei, Check2check
          <br>
                    5. Free Gift:
                </p>
                <p class="am-margin-top-0 am-padding-left">
                    - TTM Hydrate Black Charcol Mask, 5pcs/box (min spend RM450, limited 150 sets, worth RM45)
                </p>
                <p class="am-margin-top-0">
                    6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mid Year Sale terms from time
          to
          time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--Terms & Conditions (End) ======================================================--%>
    </div>


    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');
        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("The voucher code have been copied,please enter it when you get ready to pay.");
            e.clearSelection();
        });
        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
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
            setThem();
            putImg(8, '20200604');
            $(".shop-block li").addClass("hvr-float");
        }

        // 放置logo.
        function putImg(count = 0, eventDateString) {
            for (i = 0; i < count; i++) {
                $('#logo li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ` src="https://p8r7m4d5.stackpathcdn.com/images/ftp/${eventDateString}/logo_` + paddingLeft(`${i + 1}`, 2) + '.png">' +
                    '</div>');
            }
        };
        // 放置logo (vip 頁面會需要指定 brand id?)
        function putImgSelectedBrand() {
            let brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
            for (i = 0; i < brandNo.length; i++) {
                $('#logo li').eq(i).prepend('<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank"><div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200604/logo_' + paddingLeft("" + (i + 1) + "", 2) + '.png">' +
                    '</div>' + '</a>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }
        };
        // Used by putImg()
        function paddingLeft(str, lenght) {
            debugger;
            if (str.length >= lenght)
                return str;
            else
                return paddingLeft("0" + str, lenght);
        };

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
                        slidesPerView: 4.25,
                        slidesPerGroup: 4,
                        spaceBetween: 10,
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

        function getMysCoupon(type) {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                console.log('null');
                $(".main-contain a").attr("href", "#!")
                $(".main-contain").click(function () {
                    location.href = 'login.aspx?rurl=200604mys1_hot_deal.aspx';
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
