<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020momsday2_hot_deal.aspx.cs" Inherits="mobile_static_2020momsday2_hot_deal" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/scss/events_style.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #hotdeal li {
            border: 1px dashed #f2f2f2;
        }

        .mb-coupon li {
            padding: 2.5px;
        }
    </style>
    <div class="am-g main-contain" style="background: #FFE8E9;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bbn_01m.png"%>' alt="main-banner" />
        </div>
        <div class="am-margin-top-lg">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_07m.png"%>' alt="main-banner" />
        </div>
        <!--領取折扣券 (Start)====================================================-->

        <%--       <div class="am-padding-xs">--%>
        <div style="background: #fff; padding: 2.5px;">
            <ul class="am-avg-sm-2 mb-coupon">
                <li class="am-padding-xs">
                    <a class="btnn " data-clipboard-text="MOM25">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_01.png"%>' alt="coupon_01" />
                    </a>
                </li>
                <li class="am-padding-xs">
                    <a class="btnn " data-clipboard-text="MOM35">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_02.png"%>' alt="coupon_02" />
                    </a>
                </li>
                <li class="am-padding-xs">
                    <a class="btnn " data-clipboard-text="MOM55">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_03.png"%>' alt="coupon_03" />
                    </a>
                </li>
                <li class="am-padding-xs">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/coupon_04.png"%>' alt="coupon_04" />
                </li>
            </ul>
        </div>

    <!--領取折扣券 (End) ====================================================-->
    <div>
        <section class="am-margin-bottom">
            <div class="mb-shop-block" id="hotdeal" style="background-color: white">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products1" />
                </ul>
            </div>
        </section>

        <!--Block4 Shop By Category (Start) ==========================================-->
        <!--Category1 (Start) -->

        <section class="am-margin-bottom" id="s4">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/bn_06m.png"%>' alt="bn_06m" />
            </div>

            <div>
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs" id="point1" onclick="AnchorPoint('point1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_01.png"%>' alt="v_01" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_02.png"%>' alt="v_02" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_03.png"%>' alt="v_03" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_04.png"%>' alt="v_04" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_05.png"%>' alt="v_05" /></a></li>
                    <li class="am-padding-xs" onclick="AnchorPoint('point6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/v_06.png"%>' alt="v_06" /></a></li>
                </ul>
            </div>

            <div>
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_01m.png"%>' alt="ca_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="mb-slider-product category-slider">
                    <div class="swiper-container swiper-container1 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products2" />
                            <li class="am-fl swiper-slide">
                                <div class="see-more-item">
                                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                                        <div class="product_item_pic">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                        </div>
                                        <div class="product_item_text am-text-center">
                                            <h6>See More</h6>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!--Category1 (End) -->

        <!--Category2 (Start) -->

        <section class="am-margin-top-sm" id="point2">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_02m.png"%>' alt="h_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container2 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products3" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category2 (End) -->

        <!--Category3 (Start) -->

        <section class="am-margin-top-sm" id="point3">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_03m.png"%>' alt="h_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container3 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products4" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category3 (End) -->

        <!--Category4 (Start) -->

        <section class="am-margin-top-sm" id="point4">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_04m.png"%>' alt="h_04m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container4 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products5" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category4 (End) -->

        <!--Category5 (Start) -->

        <section class="am-margin-top-sm" id="point5">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_05m.png"%>' alt="h_05m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container5 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products6" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category5 (End) -->

        <!--Category6 (Start) -->

        <section class="am-margin-top-sm" id="point6">
            <div>
                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/hw_event/h_06m.png"%>' alt="h_06m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-slider-product category-slider">
                <div class="swiper-container swiper-container6 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <uc1:products runat="server" id="products7" />
                        <li class="am-fl swiper-slide">
                            <div class="see-more-item">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                                    <div class="product_item_pic">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" />
                                    </div>
                                    <div class="product_item_text am-text-center">
                                        <h6>See More</h6>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!--Category6 (End) -->

        <!--Block3 Shop By Category (End) ==========================================-->
    </div>
    </div>

    <div class="am-g am-g-collapse footer-bar">
        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a href="2020momsday2.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_00m.png"%>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_01m.png"%>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <div>
            <ul class="am-avg-sm-3">
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_02m.png"%>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday2.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_03m.png"%>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday2.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"]+"ftp/20200501/ss_04m.png"%>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">
        $(function () {
            setThem();
            hiddenFooterMenu();
            $(".swiper-container li").attr("class", "am-fl swiper-slide");

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


        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        };

    </script>
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
</asp:Content>

