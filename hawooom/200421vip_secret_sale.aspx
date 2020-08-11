<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200421vip_secret_sale.aspx.cs" Inherits="mobile_static_200421vip_secret_sale" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200421vip_secret_sale.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div>
            <ul class="am-avg-sm-2">
                <li class="coupon">
                    <span class="code" id="UserCode1">Please login</span>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_01.png" %>' alt="coupon_01" />
                </li>
                <li class="coupon">
                    <span class="code" id="UserCode2">Please login</span>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_02.png" %>' alt="coupon_02" />
                </li>
            </ul>
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_03.png" %>' alt="coupon_03" style="width: 100%;" />
            </div>
        </div>

        <%--========================Coupon End===============================--%>

        <%--======================== Block1 Start ==============================--%>
        <section id="s1">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
            </div>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products1" />

                </ul>
            </div>
            <div class="more am-padding-vertical">
                <a href="200421vip_super_deals.aspx" target="_blank">
                    <div class="am-u-sm-5 am-u-sm-centered">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/more.png" %>' alt="more" />
                    </div>
                </a>
            </div>
        </section>
        <%--======================== Block1 End =============================--%>

        <%--========================Highlighted Brands Start =====================--%>

        <section class="am-margin-top-sm">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
            </div>
            <div class="mb-shop-block" id="logo">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="brands" />

                </ul>
            </div>
        </section>

        <%--=====================Highlighted Brands End ============================--%>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

        <section class="am-margin-top-sm">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_04m.png" %>' alt="bn_07m" />
            </div>

            <div class="float-menu">
                <ul class="am-nav">
                    <li class="is-active" id="point1"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_01.png" %>' alt="v_01" /></a></li>
                    <li onclick="AnchorPoint('point2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_02.png" %>' alt="v_02" /></a></li>
                    <li onclick="AnchorPoint('point3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_03.png" %>' alt="v_03" /></a></li>
                    <li onclick="AnchorPoint('point4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_04.png" %>' alt="v_04" /></a></li>
                    <li onclick="AnchorPoint('point5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_05.png" %>' alt="v_05" /></a></li>
                    <li onclick="AnchorPoint('point6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_06.png" %>' alt="v_06" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_01m.png" %>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container1 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products2" />

                    </ul>
                </div>
            </div>
        </section>

        <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


        <%--=====================錨點連結區2   Start  ==============================--%>

        <section class="am-margin-top-sm" id="point2">
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_02m.png" %>' alt="h_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />

                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區2  End ============================--%>

        <%--=====================錨點連結區3  Start============================--%>

        <section class="am-margin-top-sm" id="point3">
            <div class="mb-slider-product category-slider">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_03m.png" %>' alt="h_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />

                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start ==========================--%>

        <section class="am-margin-top-sm" id="point4">
            <div class="mb-slider-product category-slider">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_04m.png" %>' alt="h_04m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />

                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Start==========================--%>

        <section class="am-margin-top-sm" id="point5">
            <div class="mb-slider-product category-slider">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_05m.png" %>' alt="h_05m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />

                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區5  End ==========================--%>
        <%--=====================錨點連結區6  Start==========================--%>

        <section class="am-margin-top-sm" id="point6">
            <div class="mb-slider-product category-slider">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_06m.png" %>' alt="h_06m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />

                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區6  End ==========================--%>

        <%--===================== You May Also Like...  Start====================--%>

        <section class="am-margin-vertical-sm am-padding-bottom-lg">
            <h6 class="am-margin-bottom-0 am-padding-left also-like">You May Also Like...</h6>
            <div class="mb-shop-block bg-none">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <uc1:products runat="server" id="products8" />
                </ul>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="am-padding-xl activity-method">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                    VIP Secret Sale<br>
                    1.Promotion Date : 21st Apr 2020 12:00 - 23rd Apr 2020 23:59<br>
                    2.Promo Code:<br>
                </p>
                <p class="am-padding-left-lg">
                    - RM30 OFF (min spend 300); RM60 OFF (min spend 500)<br>
                    - each member has their exclusive code, it's saved in you account, select it when you are checking out your shopping cart<br>
                    - each member will only get 2 code (RM30 OFF & RM60 OFF), both code can only be used once,  CANNOT be used repeatedly<br>
                    - the code are applicable SITEWIDE<br>
                </p>
                <p>
                    3.Free Gift With Any Purchase: DV Tokyo Soft Cream 5ml (Worth RM45, limited 450 sets)
                </p>
                <p>
                    4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these VIP Secret Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>



    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            SetThem();

            PutImg();

            if (u == null) {
                $(".main-contain a").attr("href", "#!")
                $(".main-contain").click(function () {
                    location.href = 'login.aspx?rurl=200421vip_secret_sale.aspx';

                });
            }
            else {
                var val = "{'userID':'" + u + "'}";

                $.ajax({
                    type: "POST",
                    url: "200421vip_secret_sale.aspx/GetUserInfo",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        PutUrl();
                        var rmsg = JSON.parse(msg.d)[0].rmsg;
                        var code1 = JSON.parse(msg.d)[0].code1;
                        var code2 = JSON.parse(msg.d)[0].code2;

                        if (rmsg === "VIP") {

                            $("#UserCode1").text(code1);
                            $("#UserCode2").text(code2);

                        }
                        else {

                            alert2url('Oops, the is the secret sale for Top500 VIPs!', 'index.aspx');
                            //alert('Oops, the is the secret sale for Top500 VIPs!');
                            //location.href = 'index.aspx';
                        }

                    },
                    error: function () {
                        alert('Ajax ERROR');
                    }
                });

            };
        });




        function SetThem() {
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
                        spaceBetween: 10,
                        //autoplay: {
                        //    delay: 5000,
                        //},
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
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };

        function PutUrl() {
            $('#s1 a').attr({
                "href": "200421vip_super_deals.aspx",
                "target": "_blank"
            });

        };

        var brandNo = [307, 429, 235, 432, 312, 203, 287, 334];
        function PutImg() {
            for (i = 0; i < 8; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });

            }

        };


        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };




    </script>
</asp:Content>

