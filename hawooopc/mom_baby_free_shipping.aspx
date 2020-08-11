<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="mom_baby_free_shipping.aspx.cs" Inherits="user_static_mom_baby_free_shipping" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mom_baby_free_shipping.min.css" rel="stylesheet" />
    <link href="assets/css/animate.css" rel="stylesheet" />
    <link href="assets/css/hover-min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain" id="main">

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/b01.png" %>' alt="主banner" style="width: 100%;" />
        </div>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container">
            <%--=====================free gift  Start==========================--%>
            <section class="free-gift-block wow bounceInUp">

                <div class="free-gift am-padding-top">
                    <a href="#">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/free.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                    <div class="ob-7 hvr-rotate">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob7.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                    <div class="ob-8  hvr-grow">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob8.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </div>

            </section>
            <%--=====================free gift End==========================--%>

            <%--=====================shop-block-wrap1===Personal Care Start===============================--%>
            <section class="shop-block-wrap  shop-block-wrap1 wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="personal_care.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/b02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                    <div class="shop-obj  ob-1 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob1.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                    <div class="shop-obj ob-2 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob2.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </div>

                <div class="shop-block shop-block1 am-padding" id="product-make1">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="personal_care.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/more1.png" %>' alt="Banner" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>


            <%--=======================shop-block-wrap1===Personal Care  End============================--%>


            <%--=========================shop-block-wrap2====Household Items  Start ===============================--%>
            <section class="shop-block-wrap  shop-block-wrap2 wow bounceInUp">
                <div class="banner-box  banner-box2 am-text-center">
                    <a href="household_items.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/b03.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                    <div class="shop-obj ob-3 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob3.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                    <div class="shop-obj ob-4 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob4.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </div>

                <div class="shop-block shop-block2 am-padding" id="product-make2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="household_items.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/more2.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>

            <%--==============================shop-block-wrap2====Household Items  End ===============================--%>


            <%--==========================shop-block-wrap3===Mom&Bady Start====================================--%>
            <section class="shop-block-wrap  shop-block-wrap3  wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="mom_bady.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/b04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                    <div class="shop-obj ob-5 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob6.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                    <div class="shop-obj ob-6 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob5.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </div>

                <div class="shop-block shop-block3 am-padding" id="product-make3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="mom_bady.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/more3.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap3===Mom&Bady End====================================--%>
        </div>
    </div>
    <script src="../js/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script type="text/javascript">

        var wow = new WOW(
            {
                boxClass: 'wow',      // 要套用WOW.js縮需要的動畫class(預設是wow)
                animateClass: 'animated', // 要"動起來"的動畫(預設是animated, 因此如果你有其他動畫library要使用也可以在這裡調整)
                offset: 0,          // 距離顯示多遠開始顯示動畫 (預設是0, 因此捲動到顯示時才出現動畫)
                mobile: true,       // 手機上是否要套用動畫 (預設是true)
                live: true,       // 非同步產生的內容是否也要套用 (預設是true, 非常適合搭配SPA)
                callback: function (box) {
                    // 當每個要開始時, 呼叫這裡面的內容, 參數是要開始進行動畫特效的element DOM
                },
                scrollContainer: null // 可以設定成只套用在某個container中捲動才呈現, 不設定就是整個視窗
            }
        );
        wow.init();

        $(function () {
            var date3 = new Date("2019-10-11T00:00:00");
            var dateNow = new Date();
            if (dateNow > date3) {
                $('.free-gift').css("display", "none");
            };
        });

    </script>
</asp:Content>

