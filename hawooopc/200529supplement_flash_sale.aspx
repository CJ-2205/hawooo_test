<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200529supplement_flash_sale.aspx.cs" Inherits="user_static_200529supplement_flash_sale" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <title>Supplement Flash Sale</title>
    <style>
        /* Logo border style */

        /* Slider Prev & Next Btn style */
        .prev-btn,
        .next-btn {
            color: #fff;
            background: #FFB740;
        }

        .coupon {
            position: relative;
        }

        .coupon-code {
            position: absolute;
            bottom: 28%;
            left: 0;
            right: 0;
            text-align: center;
            font-weight: bold;
            font-size: 20px;
            padding-left: 13%;
            color: #000;
        }
        .float-menu-point{
            cursor: pointer;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain" style="background: #70CBFE;">

        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/bn_01.png" %>' alt="主banner" />
        </div>

        <div class="am-container">
            <%--=====================領取折扣券 Start ==========================--%>
            <div style="position: relative; margin-top: 4%;">
                <div class="banner ">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/bn_02.png" %>' alt="折扣banner">
                </div>

                <div class="am-margin-bottom-xl am-padding-bottom-sm" style="background: #FFFFFF; padding-top: 0.5rem;">
                    <ul class="am-avg-sm-3">
                        <li class="am-padding-sm ">
                            <a class="btnn float-menu-point" data-clipboard-text="SUPP15">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_01.png" %>' alt="coupon_01" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                            <a class="btnn float-menu-point" data-clipboard-text="SUPP25">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_02.png" %>' alt="coupon_02" />
                            </a>
                        </li>
                        <li class="am-padding-sm">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200529/coupon_03.png" %>' alt="coupon_03" />
                        </li>
                    </ul>
                </div>
            </div>
            
    


            <%--=====================領取折扣券 End ===========================--%>

            <%--===================== block1 Start ======================--%>
            <section class="am-margin-bottom-xl">
              
                <div class="shop-block ">
                    <ul class="am-avg-sm-4 hvr">
                        <%--後端帶入商品 (Start) --%>
                        <uc1:products runat="server" id="products1" />
                        <%--後端帶入商品 (Start) --%>
                    </ul>
                </div>
   
            </section>
            <%--Block (Start) =====================================================--%>

            <%--Block2 Highlighted Brands(Start)==========================================--%>
            
            <%--Block2 Block3 Highlighted Brands(End) ======================================--%>

            <%--Block3 Shop By Category (Start) ==========================================--%>
            <%--<div class="include" data-file="category.html"></div> --%>
            
            <%--Block3 Shop By Category (End) ===========================================--%>

            <%--Block4  You May Also Like... (Start)========================================--%>
       
            <%--Block4  You May Also Like... (End)=========================================--%>
        </div>
        <%--Terms & Conditions (Start) =====================================================--%>
        <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br />
                    Supplement Flash Sale<br />
                    1. Promotion Date : 29th May 2020 12:00 - 3rd June 2020 23:59<br>
                    2. Promo Code:<br>
                </p>
                <p class="am-padding-left-lg">
                    - RM15 OFF, use code 'SUPP15'(minspend 250)<br>
                    - RM25 OFF, use code 'SUPP25'(minspend 350)<br>
                    - Promo Code can ONLY be applied on items and brands on this page, including DV, Laler, Choyer, Miss Seesaw, UDR, Angel lala, Beezin, Hsu's, Bertie Biotech (only applicable for items on this page), & Pandababy<br>
                </p>
                <p>
                    3. Free Gift (minspend 350, *amount after using promo code, only apply on items & brands on this page)<br>
                </p>
                <p class="am-padding-left-lg">
                    - DV Perfume 8ml (worth RM98, LIMITED 100 sets)<br>
                </p>
                 <p>
                    4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these  Supplement 
                     Flash Sale terms from time to time, and in such manner as Hawooo deems appropriate.<br>
                </p>
            </div>
        </footer>
        <%--Terms & Conditions (End) ======================================================--%>
    </div>


    <script src="assets/js/events.js"></script>
    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;

        $(function () {

            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            $(".hvr li").attr("class", "am-fl hvr-float");

            SetThem();
            PutImg();

           
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



        /* Used by putimg() */
        function paddingLeft(str, lenght) {
            debugger;
            if (str.length >= lenght)
                return str;
            else
                return paddingLeft("0" + str, lenght);
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
