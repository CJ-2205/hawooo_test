<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="mit_mega_sale.aspx.cs" Inherits="user_static_mit_mega_sale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mit_mega_sale.min.css" rel="stylesheet" />
    <%--    <link href="../scss/css/animate.css" rel="stylesheet" />--%>
    <style>
        .shop-slider-box .product-items-tag {
            display: inline-flex;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_01.png" %>' alt="主banner" style="width: 100%;" />
        </div>
        <%--=====================Top Banner End==========================--%>
        <%--=====================領取折扣券 Start==========================--%>
        <div class="coupon">
            <a id="coupon1" data-clipboard-text="MIT30" onclick="Clip('coupon1');">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/coupon_01.png" %>' alt="coupon2" style="width: 100%;" />
            </a>
        </div>
        <%--=====================領取折扣券 End==========================--%>
        <div class="am-container">

            <%--=====================shop-block-wrap1===Best  Quality start===============================--%>
            <section class="shop-block-wrap   am-padding-top-lg am-margin-top-lg ">
                <div class="banner-box banner-box1 am-text-center am-g">
                    <a href="best_quality.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_2.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div>
                    <div class="shop-block shop-block1 am-padding " id="product-make1">
                        <ul class="am-avg-sm-4">
                            <uc1:products runat="server" ID="products" />
                        </ul>
                    </div>
                    <div class="see-more-btn">
                        <a href="best_quality.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/more.png" %>' alt="Banner" style="width: 100%;" />
                        </a>
                    </div>
                </div>
            </section>


            <%--=======================shop-block-wrap1===Best  Quality End============================--%>

            <%--=======================shop-block-wrap2=== shop-slider1 Start===============================--%>

            <section class="am-padding-top-lg am-margin-top-lg  shop-block-wrap  wow fadeIn">
                <div class="banner-box  banner-box2 am-g">
                    <div class="banner-box-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_3.png" %>' alt="Selected brands" style="width: 100%;" />
                    </div>
                </div>

                <div class="shop-slider-box">
                    <div class="shop-slider am-g">

                        <div class="am-fl hvr-float am-u-sm-3 shop-block2">
                            <div class="hot-brand-item">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=251">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_4.png" %>' style="width: 100%;">
                                </a>
                            </div>
                            <%--     <div class="hot-brand-item">
                            <a href="#">
                                <div class="brand-pic">
                                    <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/BD_14.png">
                                </div>
                                <div class="brand-logo">
                                    <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/LOGO_14.png">
                                </div>
                                <div class="brand-info">
                                    <h5>mooimom</h5>
                                    <span>20% OFF rebate for every item on MOOIMOM</span>
                                </div>
                            </a>
                        </div>--%>
                        </div>

                        <div class="am-u-sm-9">
                            <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 255, itemMargin: 5, slideshow: false}">
                                <ul class="am-slides">
                                    <uc1:products runat="server" ID="products2" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--============================== shop-block-wrap2=== shop-slider1  End ===============================--%>
            <%--=======================shop-block-wrap2=== shop-slider2 Start===============================--%>

            <section class="am-padding-top-lg am-margin-top-lg  shop-block-wrap  wow fadeIn">

                <div class="shop-slider-box">
                    <div class="shop-slider am-g">

                        <div class="am-fl hvr-float am-u-sm-3 shop-block2">
                            <div class="hot-brand-item">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=32">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_5.png" %>' style="width: 100%;">
                                </a>
                            </div>
                            <%--             <div class="hot-brand-item">
                            <a href="#">
                                <div class="brand-pic">
                                    <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/BD_14.png">
                                </div>
                                <div class="brand-logo">
                                    <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/LOGO_14.png">
                                </div>
                                <div class="brand-info">
                                    <h5>mooimom</h5>
                                    <span>20% OFF rebate for every item on MOOIMOM</span>
                                </div>
                            </a>
                        </div>--%>
                        </div>

                        <div class="am-u-sm-9">
                            <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 255, itemMargin: 5, slideshow: false}">
                                <ul class="am-slides">
                                    <uc1:products runat="server" ID="products3" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--============================== shop-block-wrap2=== shop-slider2  End ===============================--%>

            <%--========================= shop-slider3 Start===============================--%>

            <section class="am-padding-top-lg am-margin-top-lg  shop-block-wrap  wow fadeIn">
                <div class="shop-slider-box">
                    <div class="shop-slider am-g">

                        <div class="am-fl hvr-float am-u-sm-3 shop-block2">
                            <div class="hot-brand-item">
                                <a href="https://www.hawooo.com/user/brands.aspx?bid=329">
                                    <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_6.png" %>' style="width: 100%;">
                                </a>
                            </div>
                            <%--    <div class="hot-brand-item">
                            <a href="#">
                                <div class="brand-pic">
                                    <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/BD_14.png">
                                </div>
                                <div class="brand-logo">
                                    <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/LOGO_14.png">
                                </div>
                                <div class="brand-info">
                                    <h5>mooimom</h5>
                                    <span>20% OFF rebate for every item on MOOIMOM</span>
                                </div>
                            </a>
                        </div>--%>
                        </div>

                        <div class="am-u-sm-9">
                            <div class=" am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 255, itemMargin: 5, slideshow: false}">
                                <ul class="am-slides">
                                    <uc1:products runat="server" ID="products4" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--================================= shop-slider3  End ===============================--%>

            <%--=========================shop-block-wrap3====  Start ===============================--%>
            <section class="shop-block-wrap  shop-block-wrap3  wow fadeIn am-padding-vertical-lg am-margin-vertical-lg">
                <div class="">
                    <div class="shop-block shop-block3 am-padding" id="product-make3">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rpBrand" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  hvr-float">
                                        <div class="hot-brand-item">
                                            <a href='<%# Eval("url") %>'>
                                                <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/"+Eval("img")+".png" %>' style="width: 100%;">
                                            </a>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="banner-box am-text-center">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bg.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </div>
            </section>

            <%--==============================shop-block-wrap3====  End ===============================--%>




            <%--==============================活動辦法 Start =====================================--%>
        </div>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                MIT Sale<br />
                1. Promotion date : 6th September 2019 - 30th November 2019<br />
                2. Use Code【MIT30】for EXTRA RM30 OFF (min spend 250).<br />
                3. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these MIT Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </footer>
        <%--==============================活動辦法 End=====================================--%>
    </div>
    <%--<script src="assets/js/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>--%>
    <%--<script type="text/javascript">

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


    </script>--%>
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
    <script>
        $(function () {
            $("#product-make1 li").attr("class", "am-fl  hvr-float");
        });
    </script>
</asp:Content>

