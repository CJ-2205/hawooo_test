<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020momsday1.aspx.cs" Inherits="user_static_2020momsday1" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020momsday1.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <%--========================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/ss_01.png" %>' alt="ss_01" />

                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/ss_02.png" %>' alt="ss_02" />

                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/ss_03.png" %>' alt="ss_03" />

                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/ss_04.png" %>' alt="ss_04" />
                </li>
            </ul>
        </div>
        <%--======================== 側邊選單 End ==========================--%>
        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_01.png" %>' alt="主banner" />

        </div>


        <div class="am-container">
            <%--=====================領取折扣券 Start ==========================--%>
            <div>
                <ul class="am-avg-sm-4">
                    <li style="cursor: pointer">
                        <a class="btnn" data-clipboard-text="MOM25">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li style="cursor: pointer">
                        <a class="btnn" data-clipboard-text="MOM35">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_02.png" %>' alt="coupon_02" />

                        </a>
                    </li>
                    <li style="cursor: pointer">
                        <a class="btnn" data-clipboard-text="MOM55">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_03.png" %>' alt="coupon_03" />
                        </a>
                    </li>
                    <li style="cursor: pointer">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/coupon_04.png" %>' alt="coupon_04" />
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End ===========================--%>
            <%--===================== block1 Start ======================--%>
            <section class="am-margin-top-xl" id="s1">
                <div>
                    <a href="2020momsday1_hotdeal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_02.png" %>' alt="bn_02" />

                    </a>
                </div>
                <div class="shop-block  am-padding-sm">
                    <ul class="am-avg-sm-4 extra-hvr-float">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div class="more am-padding-vertical-lg">
                    <a href="2020momsday1_hotdeal.aspx" target="_blank">-
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_03.png" %>' alt="more" />
                    </a>
                </div>
            </section>
            <%--===================== block1 End =============================--%>


            <%--===================== Highlighted Brands Start =====================--%>
            <section class="am-margin-top-xl" id="s2">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_04.png" %>' alt="bn_04" />
                </div>
                <div class="shop-block  am-padding-sm">
                    <ul class="am-avg-sm-4 extra-hvr-float brand-href">
                        <uc1:products runat="server" id="products2" />

                    </ul>
                </div>
            </section>
            <%--=====================Highlighted Brands ===End===================--%>

            <%--=====================錨點連結區1 Shop By Category Start ===============--%>
            <section class="am-padding-top-lg am-margin-top-lg" id="s3">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/bn_05.png" %>' alt="bn_07" />
                </div>

                <div class="am-margin-vertical pc-float-menu">
                    <ul class="am-avg-sm-6">
                        <li class="is-active" id="point1" style="cursor: pointer"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_01.png" %>' alt="v_01" />
                        </a></li>
                        <li onclick="AnchorPoint('point2')" style="cursor: pointer"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_02.png" %>' alt="v_02" />
                        </a></li>
                        <li onclick="AnchorPoint('point3')" style="cursor: pointer"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_03.png" %>' alt="v_03" />
                        </a></li>
                        <li onclick="AnchorPoint('point4')" style="cursor: pointer"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_04.png" %>' alt="v_04" />
                        </a></li>
                        <li onclick="AnchorPoint('point5')" style="cursor: pointer"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_05.png" %>' alt="v_05" />
                        </a></li>
                        <li onclick="AnchorPoint('point6')" style="cursor: pointer"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/v_06.png" %>' alt="v_06" /></a></li>
                    </ul>
                </div>


                <div class="am-margin-bottom am-padding-sm  category-block">
                    <div class="am-margin-right-sm category-bn">
                        <a href="https://www.hawooo.com/user/market.aspx?cid=16">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_01.png" %>' style="width: 100%;" />
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container1">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products3" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_02.png" %>' style="width: 100%;" />
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container2">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products4" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_03.png" %>' style="width: 100%;" />
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container3">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products5" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_04.png" %>' style="width: 100%;" />
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container4">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products6" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_05.png" %>' style="width: 100%;" />
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container5">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products7" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200422/h_06.png" %>' style="width: 100%;" />
                        </a>
                    </div>
                    <div class="slider-block">
                        <div class="swiper-container swiper-container6">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products8" />
                                <li class="am-fl swiper-slide">
                                    <div class="see-more-item">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more.png" %>' alt="more" style="width: 100%;" />
                                                </div>
                                            </div>
                                            <div>
                                                <h1>See More</h1>
                                            </div>
                                        </a>
                                    </div>
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
                <h1 class="am-margin-bottom-xs am-padding-left-xs am-text-center also-like">You May Also Like...</h1>
                <div>
                    <div class="shop-block" id="product-make0">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products9" />
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
                Mother's Day Sale 1<br>
                1. Promotion Date : 22nd Apr 2020 12:00 - 30th Apr 2020 11:59<br>
                2. Promo Code:<br>
            </p>
            <p class="am-padding-left-lg">
                - RM25 OFF (min spend 280), use code [ MOM25 ]<br>
                - RM35 OFF (min spend 380), use code [ MOM35 ]<br>
                - RM55 OFF (min spend 600), use code [ MOM55 ]<br>
            </p>
            <p>
                3. Free DV Tokyo Redness Relief Soft Cream 5ml with any purchase (Worth RM45, limited 450 sets, only available when the sale has started)<br>
                4. Promo Codes are applicable on selected Flagship Stores, including Dr Cink, Dr. Morita, DV, Laler, Choyer, Dr.Lady, Hsu's, Ivita, Supercut, Paradiso Garden, Naturero, Eurocares 1838, Enjoy The Life, Unipapa, Check2Check, Sofei, Cest V'rai, Pandababy, Zephyrine, Dore Dore, DV Tokyo, Double Doctor, & HH (selected HH items).
                <br>
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Mother's Day Sale 1 from time to time, and in such manner as Hawooo deems appropriate.<br>
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>

    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">

        function PutUrl() {
            $('#s1 a').attr({
                "href": "2020momsday1_hotdeal.aspx",
                "target": "_blank"
            });
        };

        function PutBrandUrl() {
            var url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
            var index = 0;
            $(".brand-href li").each(function () {
                url = "https://www.hawooo.com/mobile/brand_1.aspx?bid=";
                switch (index) {
                    case 0:
                        {
                            url = url + '208';
                            break;
                        }
                    case 1:
                        {
                            url = url + '304';
                            break;
                        }
                    case 2:
                        {
                            url = url + '235';
                            break;
                        }
                    case 3:
                        {
                            url = url + '283';
                            break;
                        }
                    case 4:
                        {
                            url = url + '334';
                            break;
                        }
                    case 5:
                        {
                            url = url + '450';
                            break;
                        }
                    case 6:
                        {
                            url = url + '222';
                            break;
                        }
                    case 7:
                        {
                            url = url + '131';
                            break;
                        }

                }
                $(this).find('a').attr("href", url);
                index++;
            });
        }

        $(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $(".extra-hvr-float li").addClass("hvr-float");
            setThem();
            PutUrl();
            PutBrandUrl();
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
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s2 li a').eq(i).prepend('<div class="brand-logo">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200422/logo_0' + (i + 1) + '.png">' +
                    '</div>');
            }
        });
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
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

