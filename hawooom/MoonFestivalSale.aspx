<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="MoonFestivalSale.aspx.cs" Inherits="mobile_static_MoonFestivalSale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/MoonFestivalSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  mb-main-contain">
        <%--=====================領取折扣券 Start==========================--%>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_01m.png" %>' alt="首頁banner" style="width: 100%;" />
        </div>
        <div class="coupon am-center">
            <ul class="am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="MF15" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/coupon_01m.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="MF25" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/coupon_02m.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================領取折扣券 End==========================--%>

        <%--========================CELEBRITY SQUAD   Start===============================--%>

        <section class="am-padding-top-lg">
            <div class="banner-box banner-box1">
                <a href="CelebritySquad.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_02m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

<%--            <div class=" slider-block">--%>
                <div class="mb-shop-block mb-shop-block5" id="product-make8">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products" />
                        
                    </ul>
                </div>
<%--            </div>--%>

            <div class="see-more-btn">
                <a href="CelebritySquad.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/morem.png" %>' alt="see-more-btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=======================CELEBRITY SQUAD  End============================--%>


        <%--========================Buy 2 items get 10 OFF    Start===============================--%>

        <section class="am-padding-top-lg">
            <div class="banner-box banner-box1">
                <a href="Buy2itemsGet10OFF.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_03m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
<%--            <div class=" slider-block">--%>
                <div class="mb-shop-block mb-shop-block5" id="product-make9">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
<%--            </div>--%>

            <div class="see-more-btn">
                <a href="Buy2itemsGet10OFF.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/morem.png" %>' alt="see-more-btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=======================Buy 2 items get 10 OFF   End============================--%>

        <%--==========================品牌Logo Start===============================--%>
        <section class="am-padding-top-lg">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_04m.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
            </div>

            <div class="mb-shop-block mb-shop-block2 am-padding-bottom">
                <ul class="am-margin-0 am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("url") %>' target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%#Eval("img") %>' />
                                    </div>
                                    <div class="brand-logo">
                                        <img class=" am-center" data-sizes="auto" src='<%#Eval("logo") %>'>
                                    </div>
                                    <div class="brand-info">
                                        <h6>'<%#Eval("name") %>'</h6>
                                        <span>'<%#Eval("title") %>'</span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%-- <li class="am-fl">
                        <a href="#">
                            <div class="product_item_pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_01.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_01.png">
                            </div>
                            <div class="brand-info">
                                <h6>mooimom</h6>
                                <span>Extra 20% OFF</span>
                            </div>
                        </a>
                    </li>--%>
                    <%-- <li class="am-fl">
                        <a href="#">
                            <div class="product_item_pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_02.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_02.png">
                            </div>
                            <div class="brand-info">
                                <h6>戀家小舖</h6>
                                <span>涼感專區 滿1件extra10%off</span>
                            </div>
                        </a>
                    </li>
                    <li class="am-fl">
                        <a href="#">
                            <div class="product_item_pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_03.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_03.png">
                            </div>
                            <div class="brand-info">
                                <h6>THECURVE</h6>
                                <span>RM99 送 黑色纖腿套1雙(M-Size)</span>
                            </div>
                        </a>
                    </li>
                    <li class="am-fl">
                        <a href="#">
                            <div class="brand-pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_04.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_04.png">
                            </div>
                            <div class="brand-info">
                                <h6>Life8</h6>
                                <span>滿180折20、滿330折35</span>
                            </div>
                        </a>
                    </li>
                    <li class="am-fl">
                        <a href="#">
                            <div class="brand-pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_05.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_05.png">
                            </div>
                            <div class="brand-info">
                                <h6>森田藥粧</h6>
                                <span>滿180折20、滿330折35</span>
                            </div>
                        </a>
                    </li>
                    <li class="am-fl">
                        <a href="#">
                            <div class="brand-pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_06.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_06.png">
                            </div>
                            <div class="brand-info">
                                <h6>Unicat</h6>
                                <span>全館30%Off，滿188贈新款面膜1片</span>
                            </div>
                        </a>
                    </li>
                    <li class="am-fl">
                        <a href="#">
                            <div class="brand-pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_07.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_07.png">
                            </div>
                            <div class="brand-info">
                                <h6>HH</h6>
                                <span>滿180折20、滿330折35</span>
                            </div>
                        </a>
                    </li>
                    <li class="am-fl">
                        <a href="#">
                            <div class="brand-pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/bd_08.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190903/logo_08.png">
                            </div>
                            <div class="brand-info">
                                <h6>初時肌</h6>
                                <span>滿180折20、滿330折35，滿額贈好禮</span>
                            </div>
                        </a>
                    </li>--%>
                </ul>
            </div>
        </section>
        <%--============================= 品牌Logo   End ===============================--%>


        <%--==========================More Deals  Start ===============================--%>
        <section class=" shop-block-wrap  mb-shop-block-wrap6 am-padding-bottom-lg">
            <div class="banner-box mb-banner-box6">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_05m.png" %>' alt="Banner" style="width: 100%;" />
            </div>

            <div class="mb-shop-block mb-shop-block6" id="product-make40">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
        </section>
        <%--=============================More Deals   End ===============================--%>
        <%--==============================shop-block-wrap3==== Bundle Sale  End ===============================--%>
    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0 am-container">
            Terms & Conditions
                <br />
            Moon Festival Sale<br />
            1. Promotion date : 3rd September 2019 - 13rd September 2019<br />
            2. Use Code 【MF15】for EXTRA RM15 OFF (min spend 150); Use Code【MF25】for EXTRA RM25 OFF (min spend 250)<br />
            3. Coupon is APPLICABLE on selected Flagship Stores , including Deseno, Newart, Mooimom, Anriea, Life 8, Zephyrine, DV,  Laler, Loving Family, Hsu's, Choyer, Paradiso Garden, Dr. Grandma and Dr. Morita.
        </p>
    </footer>
    <%--==============================Market Block End=====================================--%>

    <%--<script type="text/javascript">
        $(window).load(function () {
            for (i = 0; i < 7; i++) {
                duplicate('product-make8');
            }
            for (i = 0; i < 7; i++) {
                duplicate('product-make9');
            }
            for (i = 0; i < 39; i++) {
                duplicate("product-make40");
            }
            for (i = 0; i < 19; i++) {
                duplicate("product-make20");
            }
            for (i = 0; i < 6; i++) {
                duplicate("product-make48");
            }
            $(function () {
                //console.log('begain');
                detectLength($('#slider1 li'), 0);
                detectLength($('#slider2 li'), 0);
                detectLength($('#slider3 li'), 0);
                //console.log('end');
            });
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }

        //--------------------算出商品slider總長-----------------//
        function detectLength(thisli, i) {
            var licount = $(thisli).length;   /*li元件個數*/
            var liWidth = $(thisli).outerWidth() + i;       /*單個li物件+間距的寬度*/
            var litotalWidth = licount * liWidth;            /*總長*/
            console.log('litotalWidth: ' + litotalWidth);
            $(thisli).parent("ul").css("width", litotalWidth);
        };

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

</asp:Content>

