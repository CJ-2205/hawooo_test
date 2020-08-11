<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200401stay_home_shop.aspx.cs" Inherits="user_static_200401stay_home_shop" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200401stay_home_shop.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <!--========================側邊選單 Start ==========================-->
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                  <%--  <a href="200401stayhome_skincare.aspx" target="_blank">--%>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_02.png" %>' alt="ss_02" />
                    <%--</a>--%>
                </li>
                <li onclick="goto('s2')">
                  <%--  <a href="200401stayhome_supplement.aspx" target="_blank">--%>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_03.png" %>' alt="ss_03" />
                   <%-- </a>--%>
                </li>
                <li onclick="goto('s3')">
<%--                    <a href="200401stayhome_lifestyle.aspx" target="_blank">--%>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_04.png" %>' alt="ss_04" />
<%--                    </a>--%>
                </li>
            </ul>
        </div>
        <!--======================== 側邊選單 End ==========================-->
        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_01.png" %>' alt="主banner" />
        </div>
        <!--=====================領取折扣券 Start ==========================-->
        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="STAYHOME8" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/cp_01.png" %>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/cp_02.png" %>' alt="coupon_02" />
                    </a>
                </li>
            </ul>
        </div>
        <!----=====================領取折扣券 End ===========================-->
        <div class="am-container">
            <!----===================== block1 Start ======================-->
            <section class="am-margin-top-xl" id="s1">
                <div>
                    <a href="200401stayhome_skincare.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_02.png" %>' alt="bn_02" />
                    </a>
                </div>
                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container1" id="div1">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products1" />

                            <li class="am-fl swiper-slide see-more-item">
                                <a href="200401stayhome_skincare.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div>
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn1 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn1 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </section>
            <%--=====================  block1  End ======================--%>

            <%--===================== block2 Start ======================--%>
            <section class="am-margin-top-xl" id="s2">
                <div>
                    <a href="200401stayhome_supplement.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_03.png" %>' alt="bn_03" />
                    </a>
                </div>
                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container2" id="div2">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products2" />

                            <li class="am-fl swiper-slide see-more-item">
                                <a href="200401stayhome_supplement.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div>
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn2 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn2 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </section>
            <%--=====================  block2  End =======================--%>

            <%--===================== block3 Start ======================--%>
            <section class="am-margin-top-xl" id="s3">
                <div>
                    <a href="200401stayhome_lifestyle.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_04.png" %>' alt="bn_04" />
                    </a>
                </div>
                <div class="am-padding-sm slider-block">
                    <div class="swiper-container swiper-container3" id="div3">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products3" />

                            <li class="am-fl swiper-slide see-more-item">
                                <a href="200401stayhome_lifestyle.aspx" target="_blank">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                        </div>
                                    </div>
                                    <div>
                                        <h1>See More</h1>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a class="prev-btn3 prev-btn" href="#">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <a class="next-btn3 next-btn" href="#">
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </section>
            <%--=====================  block3  End =======================--%>

            <%--===================== block4  Start =====================--%>
            <section class="am-margin-top-xl" id="s4">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_05.png" %>' alt="bn_05" />
                </div>
                <div class="shop-block  am-padding-sm" id="div4">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />

                    </ul>
                </div>
            </section>
            <%--===================== block4  End===================--%>

            <%--=====================block5  Category Start ===============--%>
            <section class="am-padding-top-lg am-margin-top-lg" id="s5">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bn_06.png" %>' alt="bn_06" />
                </div>
                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_01.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products4" />

                        </ul>
                    </div>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_02.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products5" />

                        </ul>
                    </div>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_03.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products6" />

                        </ul>
                    </div>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_04.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products7" />

                        </ul>
                    </div>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_05.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products8" />

                        </ul>
                    </div>
                </div>

                <div class="am-padding-xs shop-block-bg">
                    <div class="category-bn shop-block">
                        <ul class="am-avg-sm-5">
                            <li class="am-fl  hvr-float">
                                <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ct_06.png" %>'>
                                </a>
                            </li>
                            <uc1:products runat="server" id="products9" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--===================== block5  Category  End ==========================--%>


            <%--=====================You May Also Like...  Start=====================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-lg also-like-block">
                <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center also-like">You May Also Like...</h1>
                <div>
                    <div class="am-padding-sm shop-block" id="div11">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products10" />

                        </ul>
                    </div>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
        <div class="am-container">
            <p>
                Stay Home & Shop Festival<br />
                1. Promotion Date : 1st Apr 2020 12:00 - 8th Mar 2020 23:59<br />
                2. Sitewide Promo Code:<br />
                <span class="am-padding-right">- Extra 8% OFF, use code [ STAYHOME8 ], minspend RM250</span>
                <br />
                3. Promo Codes are applicable on selected Flagship Stores, including<br />
                4. Free Mask with minspend RM350 (3pcs/pack, worth RM30, limited 130 sets)<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these  Stay Home & Shop Festival terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>
    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").not(".see-more-item").attr("class", "am-fl swiper-slide");
            $(".category-bn li,.also-like-block li").attr("class", "am-fl hvr-float");
            ChangeHref();
            setThem();
            putimg();
        });

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
                        slidesPerView: 4,
                        //slidesPerGroup: 3,
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

                    });
                });
            };
        };


        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };




        function ChangeHref() {
            $('#s1 a').attr({
                "href": "200401stayhome_skincare.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "200401stayhome_supplement.aspx",
                "target": "_blank"
            });

            $('#s3 a').attr({
                "href": "200401stayhome_lifestyle.aspx",
                "target": "_blank"
            });
        }

        var brandNo = [307, 235, 283, 72, 345, 334, 301, 309];
        function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s4 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200401/bd_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s4 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });

            }
        };

    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>

