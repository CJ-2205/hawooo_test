<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200421vip_secret_sale.aspx.cs" Inherits="user_static_200421vip_secret_sale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200421vip_secret_sale.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_01.png" %>' alt="主banner" />
        </div>
        <div class="am-container">
            <%--=====================領取折扣券 Start ==========================--%>
            <div class="am-padding-vertical-xl copy-coupon">
                <ul class="am-avg-sm-3">
                    <li class="coupon coupon1">
                        <span class="code" id="UserCode1">Please login</span>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_01.png" %>' alt="coupon_01" />
                    </li>
                    <li class="coupon coupon2">
                        <span class="code" id="UserCode2">Please login</span>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_02.png" %>' alt="coupon_02" />
                    </li>
                    <li class="coupon coupon3">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_03.png" %>' alt="coupon_02" />
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End ===========================--%>

            <%--===================== block1 Start ======================--%>
            <section class="am-margin-top-xl" id="s1">
                <div>
                    <a href="200421vip_super_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_02.png" %>' alt="bn_02" />
                    </a>
                </div>
                <div class="shop-block  am-padding-sm">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />

                    </ul>
                </div>
                <div class="more am-padding-vertical-lg">
                    <a href="200421vip_super_deals.aspx" target="_blank">
                        <div class="am-u-sm-3 am-u-sm-centered">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/more.png" %>' alt="more" />
                        </div>
                    </a>
                </div>
            </section>
            <%--===================== block1 End =============================--%>


            <%--===================== Highlighted Brands Start =====================--%>
            <section class="am-margin-top-xl" id="s2">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_03.png" %>' alt="bn_04" />
                </div>
                <div class="shop-block  am-padding-sm">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />
                    </ul>
                </div>
            </section>
            <%--=====================Highlighted Brands ===End===================--%>

            <%--=====================錨點連結區1 Shop By Category Start ===============--%>
            <section class="am-padding-top-lg am-margin-top-lg" id="s4">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bn_04.png" %>' alt="bn_07" />
                </div>

                <div class="pc-float-menu">
                    <ul>
                        <li class="is-active" id="point1"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_01.png" %>' alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('point2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_02.png" %>' alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('point3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_03.png" %>' alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('point4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_04.png" %>' alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('point5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_05.png" %>' alt="h_05" /></a></li>
                        <li onclick="AnchorPoint('point6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/v_06.png" %>' alt="h_06" /></a></li>
                    </ul>
                </div>


                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=16">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_01.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products2" />
                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="am-text-center">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <a class="prev-btn prev-btn1" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn next-btn1" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>
            <%--===================== 錨點連結區2  Start==========================--%>
            <section class="am-padding-top" id="point2">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=42">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_02.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products3" />
                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="am-text-center">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn prev-btn2" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn next-btn2" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
            <section class="am-padding-top" id="point3">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=43">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_03.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products4" />
                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="am-text-center">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn prev-btn3" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn next-btn3" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
            <section class="am-padding-top" id="point4">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=48">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_04.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products5" />
                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="am-text-center">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn prev-btn4" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn next-btn4" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>
            <%--===================== 錨點連結區5  Start==========================--%>
            <section class="am-padding-top" id="point5">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=47">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_05.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products6" />
                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="am-text-center">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn prev-btn5" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn next-btn5" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>

            <%--===================== 錨點連結區6  Start==========================--%>
            <section class="am-padding-top" id="point6">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=49">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/h_06.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products7" />
                                <li class="am-fl swiper-slide see-more-item">
                                    <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" alt="more" style="width: 100%;" />
                                            </div>
                                        </div>
                                        <div class="am-text-center">
                                            <h1>See More</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <a class="prev-btn prev-btn6" href="#">
                                <i class="fas fa-chevron-left"></i>
                            </a>
                            <a class="next-btn next-btn6" href="#">
                                <i class="fas fa-chevron-right"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區6  End ==========================--%>


            <%--=====================You May Also Like...  Start=====================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs  also-like">You May Also Like...</h1>
                <div>
                    <div class="shop-block" id="YMAL">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products8" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="am-padding-vertical-lg activity-method">
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
    <%--=======================活動辦法 End============================--%>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $("#YMAL li").attr("class", "am-fl hvr-float")
            SetThem();
            PutImg();

            if (u == null) {
                $(".main-contain a").attr("href", "#!")
                $(".main-contain").click(function () {
                    doLogin('200421vip_secret_sale.aspx');
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
                        slidesPerView: 4,
                        slidesPerGroup: 4,
                        loop: false,
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


        function PutUrl() {
            $('#s1 a').attr({
                "href": "200421vip_super_deals.aspx",
                "target": "_blank"
            });

        };

        var brandNo = [307, 429, 235, 432, 312, 203, 287, 334];
        function PutImg() {
            for (i = 0; i < 8; i++) {
                $('#s2 li').eq(i).prepend('<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank"><div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/logo_0' + (i + 1) + '.png">' +
                    '</div>' + '</a>');
                $('#s2 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
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

