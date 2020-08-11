<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020momsday2_hot_deal.aspx.cs" Inherits="user_static_2020momsday2_hot_deal" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        /* Todo: Maybe move these style to sass file. */
        #hotdeal li {
            border: 1px dashed #f2f2f2;
            min-height: 400px;
        }

        .coupon {
            --coupon-li-gap: 7px;
            margin-right: calc(var(--coupon-li-gap) * -1);
        }

            .coupon li {
                padding-right: var(--coupon-li-gap);
            }
    </style>
    <div class="am-g main-contain" id="top" style="background: #FFE6DB;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bbn_01.png" %>' alt="bbn_01" style="width: 100%;" />
        </div>

        <div class="am-container">
            <!--領取折扣券 (Start)====================================================-->
            <div class="am-margin-vertical-xl coupon">
                <ul class="am-avg-sm-4">
                    <li>
                        <a class="btnn " data-clipboard-text="MOM25">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="MOM35">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="MOM55">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                    <li>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/coupon_04.png" %>' alt="coupon_04" />
                    </li>
                </ul>
            </div>
            <!--領取折扣券 (End) ====================================================-->
            <div class="am-margin-bottom-xl am-padding-sm shop-block" style="background: white" id="hotdeal">
                <ul class="am-avg-sm-4 hvr-float-main">
                    <uc1:products runat="server" id="products1" />
                </ul>
            </div>


            <!--Block4 Shop By Category (Start) ==========================================-->
            <!--Category1 (Start) -->
            <div class="am-margin-bottom-xl" id="s4">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/bn_06.png" %>' alt="bn_06" />
                </div>

                <div class="am-margin-vertical ">
                    <ul class="am-avg-sm-6">
                        <li class="is-active" id="point1" onclick="AnchorPoint('point1')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_01.png" %>' alt="h_01" /></a></li>
                        <li onclick="AnchorPoint('point2')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_02.png" %>' alt="h_02" /></a></li>
                        <li onclick="AnchorPoint('point3')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_03.png" %>' alt="h_03" /></a></li>
                        <li onclick="AnchorPoint('point4')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_04.png" %>' alt="h_04" /></a></li>
                        <li onclick="AnchorPoint('point5')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_05.png" %>' alt="h_05" /></a></li>
                        <li onclick="AnchorPoint('point6')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/v_06.png" %>' alt="h_06" /></a></li>
                    </ul>
                </div>


                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=16">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_01.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container1" id="block4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products2" />
                                <li class="am-fl swiper-slide">
                                    <div class="am-text-center see-more-item">
                                        <a href="#!" target="_blank">
                                            <div class="am-panel am-panel-default pitem"
                                                style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h3>See More</h3>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <span class="prev-btn prev-btn1">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn1">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Category1 (End) -->

            <!--Category2 (Start) -->
            <div class="am-margin-bottom-xl" id="point2">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=42">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_02.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products3" />
                            </ul>
                            <span class="prev-btn prev-btn2">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn2">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Category2 (End) -->

            <!--Category3 (Start) -->
            <div class="am-margin-bottom-xl" id="point3">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=43">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_03.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products4" />
                            </ul>
                            <span class="prev-btn prev-btn3">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn3">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <!--Category3 (End) -->

            <!--Category4 (Start) -->
            <div class="am-margin-bottom-xl" id="point4">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=48">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_04.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products5" />
                            </ul>
                            <span class="prev-btn prev-btn4">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn4">
                                <span class="am-icon-chevron-right"></span>
                            </span>

                        </div>
                    </div>
                </div>
            </div>
            <!--Category4 (End) -->

            <!--Category5 (Start) -->
            <div class="am-margin-bottom-xl" id="point5">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=47">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_05.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products6" />
                            </ul>
                            <span class="prev-btn prev-btn5">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn5">
                                <span class="am-icon-chevron-right"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Category5 (End) -->

            <!--Category6 (Start) -->
            <div class="am-margin-bottom-xl" id="point6">
                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=49">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/hw_event/h_06.png" %>' style="width: 100%;">
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products7" />
                            </ul>
                            <span class="prev-btn prev-btn6">
                                <span class="am-icon-chevron-left"></span>
                            </span>
                            <span class="next-btn next-btn6">
                                <span class="am-icon-chevron-right"></span>
                            </span>

                        </div>
                    </div>
                </div>
            </div>
            <!--Category6 (End) -->

            <!--Block3 Shop By Category (End) ==========================================-->
        </div>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="2020momsday2.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday2_preorder.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday2.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="2020momsday2.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $(".hvr-float-main li").addClass("hvr-float");
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            setThem();
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


        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
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

