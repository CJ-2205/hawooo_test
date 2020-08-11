<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200529supplement_flash_sale.aspx.cs" Inherits="mobile_static_200529supplement_flash_sale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link rel="stylesheet" href="assets/css/events_style.min.css">

    <style>
        .mb-shop-block {
            padding: 3px;
        }


        .coupon-block .coupon-ul li:not(:last-child) {
            cursor: pointer;
        }

        .coupon {
            position: relative;
        }

        .coupon-code {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 25%;
            text-align: center;
            padding-left: 20%;
            font-weight: bold;
            font-size: 12px;
            margin: 0;
        }


        @media screen and (min-width: 650px) {
            .coupon-code {
                font-size: 14px;
            }
        }

        @media screen and (max-width: 375px) {
            .coupon-code {
                font-size: 12px;
                bottom: 22%;
                left: 23%;
                -webkit-box-orient: vertical;
                -webkit-text-size-adjust: none;
                -webkit-transform: scale(.8);
                transform: scale(.8);
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain Max-width:650px(Start) ==========================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #70CBFE;">
        <div>
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200529/bn_01m.png" alt="main-banner" />
        </div>


        <%--領取折扣券 (Start)====================================================--%>
        <div class="coupon-block am-margin-bottom-0 am-padding-top-sm" style="position:relative;">
            <div class="banner">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200529/bn_02m.png" alt="bn_02m" />
            </div>
            <div class="" style="background:white;">
                <ul class="coupon-ul am-avg-sm-3">
                    <li class="am-padding-xs am-padding-vertical-sm am-padding-left-0">
                        <a class="btnn " data-clipboard-text="SUPP15">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li class="am-padding-xs am-padding-vertical-sm">
                        <a class="btnn " data-clipboard-text="SUPP25">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <%-- Todo_treegb: margin-right not working. --%>
                    <li class="am-padding-xs am-padding-vertical-sm am-padding-right-0">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_03.png" %>' alt="gift" />
                    </li
                ></ul>
            </div>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%-- Useless --%>
        <%-- <!-- <div class="am-margin-bottom">
            <div class="am-padding-bottom-sm am-padding-horizontal-xs">
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs coupon">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_01.png" %>' alt="coupon_01" />
                        <h6 class="coupon-code" id="user-code-1">Please login</h6>
                    </li>
                    <li class="am-padding-xs  coupon">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_02.png" %>' alt="coupon_02" />
                        <h6 class="coupon-code" id="user-code-2">Please login</h6>
                    </li>
                </ul>
            </div>
        </div> --> --%>

        <%--Block1 (Start) =====================================================--%>
        <section class="am-margin-bottom" id="s1">
            <div style="background: #70CBFE;">
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div>
                    <a href="200527_vip_super_deals.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200529/bn_03.png" alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block1 (End) ======================================================--%>

<%-- Todo_treegb: Terms ,, including what? --%>
        <%--Terms & Conditions (Start) =============================================--%>
        <footer class="am-padding activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                Terms &amp; Conditions<br>
                Supplement Flash Sale<br>
                1. Promotion Date : 29th May 2020 12:00 - 3rd June 2020 23:59<br>
                2. Promo Code:<br>
                </p>
                <p class="am-padding-left">
                    - RM15 OFF, use code 'SUPP15' (minspend 250)<br>
                    - RM25 OFF, use code 'SUPP25' (minspend 350)<br>
                    - Promo Code can ONLY be applied on items and brands on this page, including DV, Laler, Choyer, Miss Seesaw, UDR, Angel lala, Beezin, Hsu's, Bertie Biotech (only applicable for items on this page), &amp; Pandababy<br>
                </p>
                <p>
                3. Free Gift (minspend 350, *amount after using promo code, only applicable on items & brands on this page)<br>
                </p>
                <p class="am-padding-left">
                    - DV Perfume 8ml (worth RM98, LIMITED 100 sets)<br>
                </p>
                <p class="am-padding-left">
                4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these  Supplement Flash Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--Terms & Conditions (End) ==============================================--%>
    </div>

    <%--MB  Contain Max-width:650px(End) ==========================================--%>

    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
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
            $(".swiper-container li").attr("class", "am-fl swiper-slide");

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
            // duplicateLogo();
            console.log('Inside InitScript');
            setThem();
            // putimg(12);
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

        /* 放置logo */
        // function putimg(count) {
        //     // Todo_treegb: Might lost some logic?
        //     for (i = 1; i <= count; i++) {
        //         $('#logo li a').eq(i - 1).prepend('<div class="brand-logo">' +
        //             '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200529/logo_' + paddingLeft("" + i + "", 2) + '.png">' +
        //             '</div>');
        //     }
        // };

        /* Used by putimg() */
        // function paddingLeft(str, lenght) {
        //     debugger;
        //     if (str.length >= lenght)
        //         return str;
        //     else
        //         return paddingLeft("0" + str, lenght);
        // };

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

        /* 設定Slider*/
        function PutUrl() {
            $('#s1 a').attr({
                "href": "200527_vip_super_deals.aspx",
                "target": "_blank"
            });
        };
        //var brandNo = [307, 429, 235, 432, 312, 203, 287, 334];
        //function PutImg() {
        //    for (i = 0; i < 8; i++) {
        //        $('#s2 li').eq(i).prepend('<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank"><div class="brand-logo">' +
        //            '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/logo_0' + (i + 1) + '.png">' +
        //            '</div>' + '</a>');
        //        $('#s2 li a:not(.b)').eq(i).attr({
        //            "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
        //            "target": "_blank"
        //        });
        //    }
        //};

        // 類別錨點
        // function AnchorPoint(id) {
        //     $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        // };

    </script>
</asp:Content>
