<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="mobile_search" %>

<!DOCTYPE html>
<%@ Import Namespace="hawooo" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Hawooo Search</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="icon" type="image/png" href="images/logo.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">


    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">

    <!-- 固定區通用css -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!-- 首頁用 -->
    <link rel="stylesheet" href="assets/css/homepage.css">
    <!-- 搜尋用 -->
    <link rel="stylesheet" type="text/css" href="assets/css/search.css">
    <link href="assets/css/product.css" rel="stylesheet" />



    <!--Hawooo Facebook Pixel Code -->
    <script type="text/javascript">
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            }; if (!f._fbq) f._fbq = n;
            n.push = n; n.loaded = !0; n.version = '2.0'; n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t, s)
        }(window,
            document, 'script', '//connect.facebook.net/en_US/fbevents.js');
        fbq('init', '967509866640000');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=967509866640000&ev=PageView&noscript=1" /></noscript>
    <!--Hawooo End Facebook Pixel Code -->




    <!--Hawooo Facebook Pixel Code -->
    <script>
        fbq('track', 'Search', { search_string: '<%=txt_search.Text %>' });
    </script>
    <!--Hawooo End Facebook Pixel Code -->

    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script src="../jquery-plus/lazysizes-gh-pages/lazysizes.min.js"></script>
    <!-- Vendor Scripts -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            BindControls();
        });
        function BindControls() {
            $("#txt_search").autocomplete({
                source:
                    function (request, response) {
                        var val = request.term;
                        $.ajax({
                            url: "../WebService/Search.asmx/ShowSerchKey",
                            data: JSON.stringify({ sLookUP: val }),
                            dataType: "json",
                            type: "POST",
                            contentType: "application/json; charset=utf-8",
                            dataFilter: function (data) { return data; },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                alert(textStatus);
                            },
                            success: function (data) {

                                if (data != null) {
                                    var total = data.d.length;
                                    if (total > 0) {
                                        response($.map(data.d, function (item) {
                                            return { value: item };
                                        }));
                                    }
                                }
                            }
                        });
                    },
                select:
                    function (e, ui) {
                        location.href = 'search.aspx?stxt=' + ui.item.value;
                    },
                minLength: 1
            });
        }
    </script>
    <style>
        .ui-menu {
            z-index: 9999;
        }

        .ui-autocomplete {
            max-height: 300px;
            overflow-y: auto;
            overflow-x: hidden;
        }
    </style>
    <!-- Scripts -->
    <!-- <script type="text/javascript" src="assets/js/accordion.js"></script> -->
    <script src="../jquery-plus/translation/language.js"></script>




</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%--   <!-- 購物車快捷鈕 star -->
        <section class="f-shopping-cart fixed-s-btn" onclick="openShoppingCart()">
            <i class="am-icon-shopping-cart"></i>
            <!-- 小購物車視窗 star -->
            <section class="s-shopping-cart">
                <div class="mini-shopping-cart-tab">
                    <img src="images/hot_brands.png">好物市集<span class="mini-shopping-cart-hint"><p>99</p>
                    </span>
                </div>
                <div class="mini-shopping-cart-tab">
                    <img src="images/spot_shopping.png">限時團購<span class="mini-shopping-cart-hint"><p>3</p>
                    </span>
                </div>
            </section>
            <!-- 小購物車視窗 end -->
        </section>
        <!-- 購物車快捷鈕 end -->--%>



        <!-- 回到頂端快捷鈕 star -->
        <%-- <section class="f-go-top fixed-s-btn" onclick="sideGoTop()">
            <img src="images/BacktoTop.png">
        </section>--%>
        <!-- 回到頂端快捷鈕 end -->

        <!-- 固定區 START -->
        <header class="am-header-fixed">
            <!-- 上方固定搜尋列 search nav start -->
            <nav class="search-nav am-cf">
                <a href="index.aspx" class="am-fl"><i class="am-icon-chevron-left search-back"></i></a>
                <div class="search-field am-fl">
                    <asp:UpdatePanel ID="up_serach_bar" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" DefaultButton="lnk_search">
                                <asp:TextBox ID="txt_search" runat="server" CssClass="search-input" ClientIDMode="Static"></asp:TextBox>
                                <asp:LinkButton ID="lnk_search" runat="server" CssClass="search-submit" OnClick="lnk_search_Click"><i class="am-icon-search"></i></asp:LinkButton>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="view-style am-fr">
                    <i class="am-icon-th-large active" onclick="changeViewStyle(this);"></i>
                    <i class="am-icon-th-list" onclick="changeViewStyle(this);"></i>
                </div>
            </nav>
            <!-- 上方固定搜尋列 search nav end -->

            <section class="filter-bar">
                <ul class="am-cf am-avg-sm-4">
                    <li class="am-fl active" onclick="searchNavColor(this)">
                        <a onclick="searchTagEvent('ALL');">
                            <span class="txtRsc" data-id="search001">綜合</span>
                        </a>
                    </li>
                    <li class="am-fl" onclick="searchNavColor(this)">
                        <a onclick="searchTagEvent('NEW');">
                            <span class="txtRsc" data-id="search002">最新</span>
                        </a>
                    </li>
                    <li class="am-fl" onclick="searchNavColor(this)">
                        <a onclick="searchTagEvent('HOT');">
                            <span class="txtRsc" data-id="search003">熱銷</span>
                        </a>
                    </li>
                    <li class="am-fl" onclick="searchNavColor(this);sortSearch(this)">
                        <a onclick="searchTagEvent('PRICE');">
                            <span class="txtRsc" data-id="search004">價格</span>
                            <i class="am-icon-sort"></i></a>
                    </li>
                </ul>
            </section>

            <script>
                function searchTagEvent(type) {
                    $("#hf_type").val(type);
                    document.getElementById('<%= btn_search.ClientID %>').click();
                };
            </script>

            <!-- 上方選單結束 -->


        </header>
        <!-- 固定區 END -->


        <!-- 內容區 START -->

        <main class="page-main" style="padding-top: 25px">

            <!-- 麵包屑 Start-->

            <section class="am-container search-tab">
                <ul class="am-cf">
                    <asp:Repeater ID="rp_key_list" runat="server">
                        <ItemTemplate>
                            <li class="am-fl"><a href="search.aspx?stxt=<%# Eval("WORD").ToString() %>"><%# Eval("WORD").ToString() %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>

            <!-- 剩下的商品 star -->

            <section class="am-container">
                <div class="am-u-sm-12 index-section-wrapper hot-sale">
                    <asp:UpdatePanel ID="up_product_list" runat="server">
                        <ContentTemplate>
                            <asp:HiddenField ID="hf_type" runat="server" ClientIDMode="Static" />
                            <asp:Button ID="btn_search" runat="server" Text="" OnClick="btn_search_Click" Style="display: none" />
                            <!--  一筆li一筆商品 star -->
                            <ul class="am-cf">
                                <asp:Repeater ID="rp_product_list" runat="server">
                                    <ItemTemplate>

                                        <li class="am-fl">

                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto"
                                                        src="../noimg.png"
                                                        data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="up_product_list">
                        <ProgressTemplate>
                            <div class="loading-box">
                                <div class="loading-circle">
                                    <svg class="loading-svg" x="0px" y="0px" viewBox="0 0 150 150">
                                        <circle class="loading-inner" cx="75" cy="75" r="60" />
                                    </svg>
                                </div>
                            </div>
                            <!-- loading box end-->
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <!-- loading box start-->
                </div>
            </section>


            <!-- 精選活動商品 end -->



            <section class="am-container">
                <div class="am-panel am-panel-default middle-panel hot-item">
                    <header class="am-panel-hd">
                        <div class="am-g am-g-collapse">
                            <div class="am-u-sm-12 am-text-center">
                                <i class="am-icon-hand-o-right"></i>
                                <span class="txtRsc" data-id="idx017">熱門項目</span>
                            </div>
                        </div>
                    </header>
                    <ul class="am-avg-sm-2 ul-products-catalogue">
                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=16" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/icon-popular-section_01.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx002">時尚彩妝</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs013">臉部彩妝</span>&nbsp;
                                    <span class="txtRsc" data-id="cs014">卸妝</span>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=44" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/icon-popular-section_02.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx005">服裝內衣</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs011">機能內衣</span>  &nbsp; 
                                   <span class="txtRsc" data-id="cs012">泳裝</span>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=42" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/icon-popular-section_03.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx003">美體保養</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs009">去角質 </span>&nbsp;
                                    <span class="txtRsc" data-id="cs010">護髮</span>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=45" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/icon-popular-section_04.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx006">流行美鞋</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs008">高跟鞋</span>&nbsp;
                                    <span class="txtRsc" data-id="cs015">運動鞋</span>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=43" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/icon-popular-section_05.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx004">保健食品</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs006">奢光錠</span>&nbsp; 
                                   <span class="txtRsc" data-id="cs007">維他命C</span>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=46" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/icon-popular-section_06.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx007">包包配件</span><br>
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs004">後背包</span>&nbsp; 
                                    <span class="txtRsc" data-id="cs005">戒指</span></span>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=47" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/foodicon.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx008">品味美食</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs003">快煮麵</span>&nbsp; 
                                    <span class="txtRsc" data-id="cs016">飲品</span></span>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="list-item-catalogue-section">
                            <a href="shop.aspx?cid=49" class="link-popular-section">
                                <div class="am-g am-g-collapse container-popular-section">
                                    <div class="am-u-sm-4 img-container-popular-section">
                                        <img src="images/momicon.svg" alt="" class="img-popular-section">
                                    </div>
                                    <div class="am-u-sm-8 title-container-popular-section">
                                        <span class="title-popular-section txtRsc" data-id="idx010">媽咪寶貝</span><br />
                                        <span class="subtitle-popular-section">
                                            <span class="txtRsc" data-id="cs001">益生菌</span>&nbsp;
                                    <span class="txtRsc" data-id="cs002">繪本</span>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </section>



            <section class="am-g am-g-collapse" id="section-company-promises">
                <div class="am-u-sm-4 container-company-promises">
                    <div class="am-g am-g-collapse">
                        <div class="am-u-sm-12 img-container-company-promises">
                            <img src="images/icon-company-quality_01.png" alt="" class="img-company-promises">
                        </div>
                        <div class="am-u-sm-12 title-container-company-promises">
                            <span class="title-company-promises txtRsc" data-id="idx018">100%海外正品</span><br />
                            <!-- <span class="subtitle-company-promises">100% Authentic</span> -->
                        </div>
                    </div>
                </div>
                <div class="am-u-sm-4 container-company-promises">
                    <div class="am-g am-g-collapse">
                        <div class="am-u-sm-12 img-container-company-promises">
                            <img src="images/icon-company-quality_02.png" alt="" class="img-company-promises">
                        </div>
                        <div class="am-u-sm-12 title-container-company-promises">
                            <span class="title-company-promises txtRsc" data-id="idx019">RM199免郵</span><br />
                            <!-- <span class="subtitle-company-promises">RM 249 Free Shipping</span> -->
                        </div>
                    </div>
                </div>
                <div class="am-u-sm-4 container-company-promises">
                    <div class="am-g am-g-collapse">
                        <div class="am-u-sm-12 img-container-company-promises">
                            <img src="images/icon-company-quality_03.png" alt="" class="img-company-promises">
                        </div>
                        <div class="am-u-sm-12 title-container-company-promises">
                            <span class="title-company-promises txtRsc" data-id="idx020">3-10天到貨</span><br />
                            <!-- <span class="subtitle-company-promises">Fast Delivery</span> -->
                        </div>
                    </div>
                </div>
            </section>


        </main>


        <%--    <!-- 版本切換 -->
        <div class="releaseBox">

            <div class="releaseCol">
                <p class="release"><a href="about.html">登入/註冊</a></p>
                <p class="release"><a href="about.html">訂單管理</a></p>
                <p class="release"><a href="about.html">行事曆</a></p>
            </div>
            <div class="releaseCol">
                <p class="release"><a href="about.html">購物金查詢</a></p>
                <p class="release"><a href="about.html">折扣卷查詢</a></p>
                <p class="release"><a href="about.html">常見問題</a></p>
            </div>
            <div class="releaseCol">
                <p class="release"><a href="about.html">我的Ha幣</a></p>
                <p class="release"><a href="about.html">電話客服</a></p>
                <p class="release"><i class="fa fa-desktop" aria-hidden="true"></i><a href="about.html">電腦版</a></p>
            </div>
        </div>

        <!-- 頁尾 -->
        <footer class="am-footer">
            <div id="footerSignin">
                <a href="#"><u>Already a customer? Sign in</u></a>
            </div>
            <div id="company">
                <div class="company-col">
                    <a href="about.html">隱私權條款</a>
                </div>
                <div class="company-col">
                    <a href="about.html">貨運條款</a>
                </div>
                <div class="company-col">
                    <a href="about.html">退貨條款</a>
                </div>
            </div>
            <p id="reserved">
                © 2015-2017 Copyright by Hawooo
            </p>
        </footer>--%>




        <!--[if (gte IE 9)|!(IE)]><!-->
        <!--<![endif]-->

        <script src="assets/js/amazeui.min.js"></script>
        <script type="text/javascript" src="assets/js/index.js"></script>
        <script type="text/javascript" src="assets/js/phone_menulist.js"></script>
        <script type="text/javascript" src="assets/js/search.js"></script>
    </form>
</body>
</html>
