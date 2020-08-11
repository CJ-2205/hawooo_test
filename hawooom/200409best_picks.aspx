<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200409best_picks.aspx.cs" Inherits="mobile_static_200409best_picks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200409hw_staraward.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain best-picks-wrapper">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bbn_05m.png" %>' alt="Alternate Text" />
        </div>
        <div class="am-margin-vertical-lg">
            <div class="am-container">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="am-padding picks-item">
                            <a href='<%# Eval("_url") %>' target="_blank">
                                <img src='<%# Eval("_image") %>' alt="" />
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <%--=====================錨點連結區1  Shop By Category Start  ===================--%>

                <section class="am-margin-top-sm" id="s4">
                    <div class="float-menu">
                        <ul class="am-nav">
                            <li class="is-active" id="point1"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_01.png" alt="v_01" /></a></li>
                            <li onclick="AnchorPoint('point2')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_02.png" alt="v_02" /></a></li>
                            <li onclick="AnchorPoint('point3')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_03.png" alt="v_03" /></a></li>
                            <li onclick="AnchorPoint('point3')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_04.png" alt="v_04" /></a></li>
                            <li onclick="AnchorPoint('point4')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_05.png" alt="v_05" /></a></li>
                            <li onclick="AnchorPoint('point5')"><a>
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/v_06.png" alt="v_06" /></a></li>
                        </ul>
                    </div>
                    <div class="mb-slider-product category-slider">
                        <div>
                            <a href="#!" target="_blank">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_01m.png" alt="ca_01m" style="width: 100%;" />
                            </a>
                        </div>
                        <div class="swiper-container swiper-container4" id="product-make4">
                            <ul class="swiper-wrapper">
                                <li class="am-fl swiper-slide">
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
                                </li>
                                <li class="am-fl swiper-slide">
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
                                </li>
                                <li class="am-fl swiper-slide">
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
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>

                <%--=====================錨點連結區1  Shop By Category Start  ===================--%>


                <%--=====================錨點連結區2   Start  ==============================--%>

                <section class="am-margin-top-sm" id="point2">
                    <div class="mb-slider-product category-slider">
                        <div>
                            <a href="#!" target="_blank">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_02m.png" alt="h_02m" style="width: 100%;" />
                            </a>
                        </div>
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                            </ul>
                        </div>
                    </div>
                </section>

                <%--===================== 錨點連結區2  End ============================--%>

                <%--=====================錨點連結區3  Start============================--%>

                <section class="am-margin-top-sm" id="point3">
                    <div class="mb-slider-product category-slider">
                        <div>
                            <a href="#!" target="_blank">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_03m.png" alt="h_03m" style="width: 100%;" />
                            </a>
                        </div>
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                            </ul>
                        </div>
                    </div>
                </section>

                <%--===================== 錨點連結區3  End ==========================--%>

                <%--=====================錨點連結區4  Start ==========================--%>

                <section class="am-margin-top-sm" id="point4">
                    <div class="mb-slider-product category-slider">
                        <div class="banner-box">
                            <a href="#!" target="_blank">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_04m.png" alt="h_04m" style="width: 100%;" />
                            </a>
                        </div>
                        <div class="swiper-container swiper-container7">
                            <ul class="swiper-wrapper">
                            </ul>
                        </div>
                    </div>
                </section>

                <%--===================== 錨點連結區4  End ==========================--%>


                <%--=====================錨點連結區5  Start==========================--%>

                <section class="am-margin-top-sm" id="point5">
                    <div class="mb-slider-product category-slider">
                        <div class="banner-box">
                            <a href="#!" target="_blank">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_05m.png" alt="h_05m" style="width: 100%;" />
                            </a>
                        </div>
                        <div class="swiper-container swiper-container8">
                            <ul class="swiper-wrapper">
                            </ul>
                        </div>
                    </div>
                </section>

                <%--===================== 錨點連結區5  End ==========================--%>
                <%--=====================錨點連結區6  Start==========================--%>

                <section class="am-margin-top-sm" id="point6">

                    <div class="mb-slider-product category-slider">
                        <div class="banner-box">
                            <a href="#!" target="_blank">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200421/h_06m.png" alt="h_06m" style="width: 100%;" />
                            </a>
                        </div>
                        <div class="swiper-container swiper-container8">
                            <ul class="swiper-wrapper">
                            </ul>
                        </div>
                    </div>
                </section>

                <%--===================== 錨點連結區6  End ==========================--%>
            </div>
        </div>
    </div>

     <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding">
        <div class="am-container">
            <p>
                Terms & Conditions<br />
                HaWooo Star Award<br />
                1. Sales period: 9th April 2020 12:00 - 21st April 2020 23:59<br />
                2. Super brands & Super Items : Top 5 Brands & Items voted by HA fans from 1st April 2020 - 8th April 2020<br />
                3. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>
    
    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(function () {
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
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
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
                                slidesPerView: 2.15,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };


        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        }

    </script>
</asp:Content>

