<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="MidYearSale.aspx.cs" Inherits="mobile_static_MidYearSale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="assets/css/MidYearSale.min.css" rel="stylesheet" />

    <div class="banner-box">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bn_01m.png" %>' alt="首頁banner" style="width: 100%;" />
    </div>
    <div>
        <ul class="copy-coupon am-avg-sm-3">
            <li>
                <a id="coupon1" data-clipboard-text="MID20" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/cp_01m.png" %>' style="width: 100%" />
                    <!--<img src="https://www.hawooo.com/images/ftp/20190618/cp_01m.png" alt="coupon1" style="width: 100%;" />-->
                </a></li>
            <li>

                <a id="coupon2" data-clipboard-text="MID35" onclick="Clip('coupon2');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/cp_02m.png" %>' style="width: 100%" />
                    <!--<img src="https://www.hawooo.com/images/ftp/20190618/cp_02m.png" alt="coupon2" style="width: 100%;" />-->
                </a></li>
            <li>
                <a href="#">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/cp_03m.png" %>' style="width: 100%" />
                    <!--<img src="https://www.hawooo.com/images/ftp/20190618/cp_03m.png" alt="coupon2" style="width: 100%;" />-->
                </a>
            </li>
        </ul>
    </div>

    <div class="am-g" style="background-color: #AC3638;">
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="BeautySkincare.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bn_02m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="product-block product-block1 container" id="product-make">
                <ul class="am-avg-sm-2 am-avg-md-3" style="background-color: #F5BBB0">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="BeautySkincare.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bn_03m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=============================Flagship Store Star====================================--%>
        <section>
            <div class="banner-box">
                <a href="#" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bn_04m.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="product-block product-block2">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <div class="product-item">
                                    <a href='<%#Eval("_src") %>'>
                                        <div class="product_item_pic">
                                            <img data-sizes="auto" src='<%#Eval("_image") %>' data-src="">
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


        <%--============================== BRANDS =====================================--%>
        <section>
            <div class="banner ">
                <a href="#" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bn_05m.png" %>' alt="BRANS Banner" style="width: 100%;" />
                </a>
            </div>
            <%--    ========商品滑滑區塊========--%>
            <div class=" slider-block">
                <div class="product-slider-content" id="slider-bar">
                    <ul class="am-padding-0 am-margin-0" id="slider1">

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
        </section>

        <section class="gift-boxes-contain">
            <div class="banner-box">
                <a href="#" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190618/bn_06m.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="product-block product-block2" id="product-make19">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products2" />
                </ul>
            </div>
        </section>

    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0">
            1. Mid Year Sale : 18th June 2019 - 24th June 2019<br />
            2. Use Code 【MID20】for EXTRA RM20 OFF (min spend 220); Use Code 【MID30】for EXTRA RM30 OFF (min spend 350)<br />
            3. Free Dr Morita Mask*1 with min spend RM399<br />
            4. Coupon is APPLICABLE on Flagship Stores ( EXCLUDING BHK's, Qmomo, Dr Morita, UNIQMAN, BeautyMaker, Hallmark & Health Beauty Wo)
            <br />
            5. Limited time, limited items, spot it, shop it!
        </p>
    </footer>
    <%--==============================Market Block End=====================================--%>

    <%--商品方塊li製造器--%>
    <script type="text/javascript">
        //$(document).ready(function () {
        //    for (i = 0; i < 5; i++) {
        //        duplicate('product-make');
        //    }
        //    for (i = 0; i < 11; i++) {
        //        duplicate('product-make12');
        //    }
        //      for (i = 0; i < 19; i++) {
        //        duplicate('product-make19');
        //    }
        //    for (i = 0; i < 155; i++) {
        //        duplicate("slider-bar");
        //    }
        //    $(function () {
        //      //console.log('begin');
        //     detectLength($('#slider1 li'), 0);
        //     detectLength($('#slider2 li'), 0);
        //     detectLength($('#slider3 li'), 0);
        //     //console.log('end');
        //    });
        //});
        $(function () {
            //console.log('begin');
            detectLength($('#slider1 li'), 0);
            //detectLength($('#slider2 li'), 0);
            //detectLength($('#slider3 li'), 0);
            //console.log('end');
        });


        //function duplicate(id) {
        //    var ul = $("#" + id + " ul");
        //    ul.find("li:last")
        //        .clone(true)
        //        .appendTo(ul);
        //}

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

