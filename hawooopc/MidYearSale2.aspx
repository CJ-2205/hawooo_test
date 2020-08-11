<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="MidYearSale2.aspx.cs" Inherits="user_static_MidYearSale2" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="assets/css/MidYearSale.min.css" rel="stylesheet" />
    <style>
        .pitem {
            margin: 10px;
        }
    </style>
    <div style="background-color: #AC3538;">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bn_01.png" %>' alt="" style="width: 100%;" />
        </div>
        <div>
            <ul class="copy-coupon am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="MID20" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/cp_01.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="MID35" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/cp_02.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/cp_03.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>

        <%--==============================Beauty &S kincare Star===============================--%>
        <div class="am-container">
            <section class="am-padding-top-xs">
                <div class="banner-box">
                    <a href="BeautySkincare2.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bn_02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="product-block product-block1" id="product-make" style="background-color: #F5BBB0">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" ID="products" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="BeautySkincare2.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bn_03.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%--============================== Beauty &S kincare  End ===============================--%>
            <%--=============================Flagship Store Star====================================--%>
            <section>
                <div class="banner-box">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="product-block product-block2">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rpBrand1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <div class="product-item">
                                        <a href='<%#Eval("_src") %>'>
                                            <div class="product_item_pic">
                                                <img data-sizes="auto" src='<%#Eval("_image") %>' data-src="" style="width: 100%">
                                            </div>
                                            <h6 class="brand_logo_text  am-padding-bottom"><%#Eval("_title") %></h6>
                                            <%--       <h6 class="brand_logo_slogan">UP  30% OFF</h6>   --%>
                                            <div class="big_brand_logo  am-center">
                                                <img class=" am-center" data-sizes="auto" src='<%#Eval("_logo") %>'>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
            </section>

            <%--============================== 品牌腰帶 Start =====================================--%>

            <section class="shop-now-block">
                <div class="shop-now-banner ">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bn_05.png" %>' alt="" style="width: 100%;" />
                    </a>
                </div>
                <%--    ========商品滑滑區塊========--%>
                <div class="slider-block">
                    <div class="am-slider am-slider-default am-slider-carousel " data-am-flexslider="{itemWidth: 250, itemMargin: 5, slideshow: false}">
                        <div class="am-viewport" style="overflow: hidden; position: relative;" id="product-make">
                            <ul class="am-padding-0 am-margin-0 am-slides  slider-lg" style="width: 1600%; transition-duration: 0s; transform: translate3d(-615px, 0px, 0px);">
                                <asp:Repeater ID="rpBrand2" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl">
                                            <a href='<%#Eval("_src") %>'>
                                                <img src='<%#Eval("_image") %>' class="am-img-thumbnail" />
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <%--==============================品牌腰帶 end=================================--%>
            <%--============================== Recomended For You Start=================================--%>

            <section>
                <div class="banner">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/bn_06.png" %>' alt="Recomended For You Banner" style="width: 100%;" />
                    </a>
                </div>


                <div class="product-block" id="product-make20">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" ID="products2" />
                    </ul>
                </div>
            </section>
        </div>
        <%--==============================Recomended For You End=====================================--%>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
            1. Mid Year Sale 2 : 25th June 2019 - 3rd July 2019<br />
            2. Use Code 【MID20】for EXTRA RM20 OFF (min spend 220); Use Code 【MID35】for EXTRA RM35 OFF (min spend 350)<br />
            3. Coupon is APPLICABLE on selected Flagship Stores ( EXCLUDING BHK’s, Qmomo, Dr Morita, UNIQMAN, BeautyMaker, Hallmark & Health Beauty Wo)<br />
            4. Coupon is NOT applicable on Flash Sale items.
            </p>
        </footer>
    </div>


    <script type="text/javascript">

        $(function () {
            //console.log('begain');
            detectLength($('#slider1 li'), 0);

            //console.log('end');
        });


        //--------------------算出商品slider總長-----------------//
        function detectLength(thisli, i) {
            var licount = $(thisli).length;   /*li元件個數*/
            var liWidth = $(thisli).outerWidth() + i;       /*單個li物件+間距的寬度*/
            var litotalWidth = licount * liWidth;            /*總長*/
            console.log('litotalWidth: ' + litotalWidth);
            $(thisli).parent("ul").css("width", litotalWidth);
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

