<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="hallmark1.aspx.cs" Inherits="mobile_hallmark1" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>


<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200401stay_home_shop.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />

    <style>
        .product-block li {
            padding: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--edm開始-->
    <div class="am-cf" style="background-color: #FEF0C1">
        <div class="am-padding-sm">
            <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=318">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/200409hm_event/Hallmark03m.jpg" %>' style="margin: 0 auto; width: 100%" />
            </a>
        </div>
        <div class="am-padding-sm">
            <a href="https://www.hawooo.com/mobile/product.aspx?id=27203">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/200409hm_event/Hallmark01m.jpg" %>' style="margin: 0 auto; width: 100%" />
            </a>
        </div>
    </div>

    <!--品牌區塊-->
    <div class="mb-slider-product bg1" style="background-color: #FEF0C1">
        <div class="swiper-container swiper-container1" >
            <ul class="swiper-wrapper">
                <uc1:products runat="server" id="products" />
            </ul>
        </div>
    </div>

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(function () {
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




      

    </script>

</asp:Content>

