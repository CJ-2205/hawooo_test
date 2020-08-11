<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search2.aspx.cs" Inherits="mobile_search2" %>

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
    <title>商品搜尋</title>

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

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
  <link rel="canonical" href="http://www.example.com/">
  -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">

    <!-- 固定區通用css -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!-- 首頁用 -->
    <link rel="stylesheet" href="assets/css/homepage.css">
    <!-- 搜尋用 -->
    <link rel="stylesheet" type="text/css" href="assets/css/search.css">


    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
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
                <a href="javascript:history.go(-1)" class="am-fl"><i class="am-icon-chevron-left search-back"></i></a>
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
                    <i class="am-icon-th-large active" onclick="changeViewStyle(this)"></i>
                    <i class="am-icon-th-list" onclick="changeViewStyle(this)"></i>
                </div>
            </nav>
            <!-- 上方固定搜尋列 search nav end -->

            <section class="filter-bar">
                <ul class="am-cf am-avg-sm-4">
                    <li class="am-fl active" onclick="searchNavColor(this)"><a onclick="searchTagEvent('ALL')">綜合</a></li>
                    <li class="am-fl" onclick="searchNavColor(this)"><a onclick="searchTagEvent('NEW')">最新</a></li>
                    <li class="am-fl" onclick="searchNavColor(this)"><a onclick="searchTagEvent('HOT')">熱銷</a></li>
                    <li class="am-fl" onclick="searchNavColor(this);sortSearch(this)"><a onclick="searchTagEvent('PRICE')">價格<i class="am-icon-sort"></i></a></a></li>
                </ul>
            </section>
            <script>
                function searchTagEvent(type) {
                    $("#hf_type").val(type);
                    document.getElementById('<%= btn_search.ClientID %>').click();
                }
            </script>

            <!-- 上方選單結束 -->


        </header>
        <!-- 固定區 END -->


        <!-- 內容區 START -->

        <main class="page-main">

            <!-- 麵包屑 Start-->

            <section class="am-container search-tab">
                <ul class="am-cf">
                    <asp:Repeater ID="rp_key_list" runat="server">
                        <ItemTemplate>
                            <li class="am-fl"><a href="search.aspx?key=<%# Eval("WORD").ToString() %>"><%# Eval("WORD").ToString() %></a></li>
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
                                            <div class="index-items-pic">
                                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                                    <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<span class=\"index-items-tag\" id=\"tag-chinese\">" + Eval("WP30").ToString() + "</span>" : "" %>'></asp:Literal>
                                                    <img src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                                </a>
                                                <%--   <span class="guess-you-like-button" onclick="guessClick(this)">
                                                    <span class="am-icon-heart-o white-o"></span>
                                                    <span class="am-icon-heart-o pink-o"></span>
                                                </span>--%>
                                            </div>
                                            <a href="#">
                                                <div class="index-items-text">
                                                    <h3><%# Eval("WP02").ToString() %></h3>
                                                    <h4>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                    <%# WPFactory.DisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString())%>
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
                            <div class="am-u-sm-12 am-text-center"><i class="am-icon-hand-o-right"></i>熱門項目</div>
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
                                        <span class="title-popular-section">時尚彩妝</span><br>
                                        <span class="subtitle-popular-section">臉部彩妝 卸妝</span>
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
                                        <span class="title-popular-section">服裝內衣</span><br>
                                        <span class="subtitle-popular-section">機能內衣 泳裝</span>
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
                                        <span class="title-popular-section">美體保養</span><br>
                                        <span class="subtitle-popular-section">去角質 護髮</span>
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
                                        <span class="title-popular-section">流行美鞋</span><br>
                                        <span class="subtitle-popular-section">高跟鞋 運動鞋</span>
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
                                        <span class="title-popular-section">保健食品</span><br>
                                        <span class="subtitle-popular-section">奢光錠 維他命C</span>
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
                                        <span class="title-popular-section">包包配件</span><br>
                                        <span class="subtitle-popular-section">後背包 戒指</span>
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
                            <span class="title-company-promises">100%海外正品</span><br>
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
                            <span class="title-company-promises">RM 199免郵</span><br>
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
                            <span class="title-company-promises">3-10天到貨</span><br>
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
