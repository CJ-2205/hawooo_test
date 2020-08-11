<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="taiwan_food_festival.aspx.cs" Inherits="mobile_static_taiwan_food_festival" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/taiwan_food_festival.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
            <ul class="copy-coupon am-avg-sm-3">
                <li id="coupon1" data-clipboard-text="FOOD20" onclick="Clip('coupon1');">
                    <a href="#"></a>
                </li>
                <li>
                    <a href="#"></a>
                </li>
                <li>
                    <a href="#"></a>
                </li>
            </ul>
        </div>
        <%--=====================shop-block-wrap1===Best  Quality Start===============================--%>

        <section class="am-padding-top-lg  mb-shop-block-wrap">
            <div class="banner-box  am-text-center">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_01m.png" %>' alt="bn_01m" style="width: 100%;" />
                </div>
            </div>
            <div class="mb-shop-block mb-shop-block1 mb-shop-bg goods-mb super fillet">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products1" />
                    <%--<asp:Repeater ID="rp_plist" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl">><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>
                                        <div class="product_item_block am-cf">
                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                                            <p class="am-fr" style="">
                                                <span class="product-items-tag">
                                                    <img src="../image/熱品.svg" draggable="false">買就送
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>--%>
                </ul>
            </div>
        </section>

        <%--=======================shop-block-wrap1===Best  Quality  End============================--%>
        <div class="banner-box">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
            </a>
        </div>
        <%--===============KOL Selections =========Slider1   Start===============================--%>

        <section class="am-padding-top-xs slider-block-wrapper mb-shop-block-wrap goods-mb">
            <div class="mb-slider-product mb-shop-bg fillet">
                <div class="banner-box">
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/kol_02m.png" %>' alt="kol_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container1" id="product-make1">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products2" />
                    </ul>

                    <%--<li class="am-fl swiper-slide">
                            <a href="#">
                                <div class="product_item_pic">
                                    <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM 31.840</h4>
                                        <span class="product_item_dis">-RM20.040</span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                                        <p class="am-fr" style="">
                                            <span class="product-items-tag">
                                                <img src="../image/熱品.svg" draggable="false">買就送
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>--%>
                    <a class="prev-btn1 prev-btn" href="#">
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <a class="next-btn1 next-btn" href="#">
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>

        </section>

        <%--=======================Slider1  End============================--%>

        <%--========================Slider2  Start===============================--%>
        <section class="am-padding-top-lg slider-block-wrapper mb-shop-block-wrap goods-mb">
            <div class="mb-slider-product mb-shop-bg fillet">
                <div class="banner-box">
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/kol_03m.png" %>' alt="kol_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container2" id="product-make2">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products3" />
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

        <%--=======================Slider2  End============================--%>
        <%--========================Slider3   Start===============================--%>

        <section class="am-padding-top-lg slider-block-wrapper mb-shop-block-wrap goods-mb">
            <div class="mb-slider-product mb-shop-bg fillet">
                <div class="banner-box">
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/kol_01m.png" %>' alt="kol_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3" id="product-make3">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products4" />
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

        <%--=======================Slider3  End============================--%>

        <%--========================Gourmet Brands   Start===============================--%>

        <section class="am-padding-top-lg slider-block-wrapper mb-shop-block-wrap goods-mb">
            <div class="banner-box">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product mb-shop-bg am-margin-top-sm fillet">
                <div class="swiper-container swiper-container4" id="product-make6">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <a href='<%#Eval("url") %>' target="_blank">
                                        <div class="product_item_pic">
                                            <img data-sizes="auto" src='<%#Eval("img") %>'>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li class="am-fl swiper-slide">
                            <a href="#">
                                <div class="product_item_pic">
                                    <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                                </div>
                            </a>
                        </li>--%>
                    </ul>
                    <a class="prev-btn4 prev-btn" href="#">
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <a class="next-btn4 next-btn" href="#">
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
        </section>

        <%--=======================Gourmet Brands End============================--%>
        <%--=======================Instent Noodles Start============================--%>
        <section class="am-padding-top-lg  mb-shop-block-wrap  goods-mb">
            <div class="banner-box  am-text-center">
                <a href="Instant_noodles.aspx" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
                    </div>
                </a>
            </div>
            <div class="mb-shop-block  mb-shop-bg goods-mb am-margin-top-sm fillet">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products5" />
                </ul>
                <div class="see-more am-padding-top-xs am-padding-bottom-sm">
                    <a href="Instant_noodles.aspx" target="_blank">
                        <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/morem.png" %>' alt="morem" style="width: 100%;">
                    </a>
                </div>
            </div>
        </section>

        <%--=====================Instent Noodles   Start===============================--%>

        <%--=======================Variety  Snacks Start============================--%>
        <section class="am-padding-top-lg  mb-shop-block-wrap  goods-mb">
            <div class="banner-box  am-text-center">
                <a href="variety_snacks.aspx" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_05m.png" %>' alt="bn_05m" style="width: 100%;" />
                    </div>
                </a>
            </div>
            <div class="mb-shop-block  mb-shop-bg goods-mb  am-margin-top-sm fillet">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products6" />
                </ul>
                <div class="see-more am-padding-top-xs am-padding-bottom-sm">
                    <a href="variety_snacks.aspx" target="_blank">
                        <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/morem.png" %>' alt="morem" style="width: 100%;">
                    </a>
                </div>
            </div>
        </section>

        <%--=====================Variety  Snacks  Start===============================--%>
        <%--=======================Tasty Beverages Start============================--%>
        <section class="am-padding-top-lg  mb-shop-block-wrap  goods-mb">
            <div class="banner-box  am-text-center">
                <a href="tasty_beverages.aspx" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_06m.png" %>' alt="bn_06m" style="width: 100%;" />
                    </div>
                </a>
            </div>
            <div class="mb-shop-block  mb-shop-bg goods-mb  am-margin-top-sm fillet">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products7" />
                </ul>
                <div class="see-more am-padding-top-xs am-padding-bottom-sm">
                    <a href="tasty_beverages.aspx" target="_blank">
                        <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/morem.png" %>' alt="morem" style="width: 100%;">
                    </a>
                </div>
            </div>
        </section>

        <%--=====================Tasty Beverages   End===============================--%>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                Taiwan Food Festivals<br />
                1. Promotion date : 4th October 2019 - 4th November 2019s<br />
                2. Use Code【FOOD20】for EXTRA RM20 OFF (min spend RM169)s<br />
                3. Gift with any purchase is limited for first 50 customer.s<br />
                4. Two lucky winners for free order will be announced on 12th November , the amount will be transfer to your account on 14th November.s<br />
                5. Daily Deal each item LIMITED 1 UNIT per pax.s<br />
                6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Taiwan Food Festival Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </footer>
        <%--=======================shop-block-wrap1===Best offer  End============================--%>
    </div>


    <script src="assets/js/swiper.min.js"></script>

    <script>
        $(function () {
            $(".goods-mb:not(.super) li").attr("class", "am-fl swiper-slide");
            //$(".goods-mb").not('.super').find('li').attr("class", "am-fl swiper-slide");
            setThem();
        });

        function setThem() {
            var i;
            var cnt = 4; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                            slidesPerView: 3,
                            slidesPerGroup: 3,
                            spaceBetween: 10,
                            autoplay: {
                                delay: 5000,
                            },
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
                                    slidesPerView: 2,
                                    spaceBetween: 5,
                                    slidesPerGroup: 2
                                }
                            }
                        });
                });
            };
        };
        $(function () {

            var date = new Date("2019-10-04T00:00:00"),
                dateNow = new Date(),
                totalSecond = (dateNow - date),
                day = Math.ceil(totalSecond / 1000 / 60 / 60 / 24),
                count = $('.mb-shop-block1 ul li').length;
            if (day > count) {
                day = count;
            }
            //for (i = 0; i < day; i++) {
            $('.mb-shop-block1 ul li').eq(day - 1).addClass('noafter');
            //$('.mb-shop-block1 ul li').not('.noafter').find('a').attr("href", "#!");

            //}

        });

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

