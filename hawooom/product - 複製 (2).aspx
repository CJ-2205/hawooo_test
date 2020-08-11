<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="product - 複製 (2).aspx.cs" Inherits="product" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--   <script src="assets/js/amazeui.min.js"></script>--%>
    <script src="assets/js/animatedModal.min.js"></script>
    <script src="assets/js/jquery.spinner.min.js"></script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            hiddenFooterMenu();
        })
    </script>
    <div class="am-container">
        <asp:HiddenField ID="hf_WP01" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP06" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP28" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP29" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP31" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP32" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_select_type" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <asp:HiddenField ID="hf_select_wpa01" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <asp:HiddenField ID="hf_select_count" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP36" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP37" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP38" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <asp:HiddenField ID="hf_Qty" runat="server" ClientIDMode="Static" EnableViewState="false" />
        <!-- 麵包屑 Start-->
        <style>
            .ul_class {
                padding: 5px;
                font-size: 14px;
                margin-bottom: 0px
            }

                .ul_class a {
                    color: #565656;
                }
        </style>
        <section>
            <ul class="ul_class">
                <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                <%--  <li><a href="#" class="productpage-uptitle">線上購物</a></li>
                    <li class="am-active">Supplement</li>--%>
            </ul>
        </section>

        <section class="container-lp-product">
            <%--  <div class="am-g am-g-collapse">
                    <div class="wrapper-lp-product-img">
                        <img src="images/n20170512101043367.jpg" alt="" class="am-img-thumbnail">
                    </div>
                </div>--%>

            <div class="am-g product-img-box" style="margin: 0%; padding: 0%; width: 100%;">
                <asp:HiddenField ID="hf_WP08_1" runat="server" EnableViewState="false" />

                <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{&quot;directionNav&quot;:false}'>
                    <ul class="am-slides">
                        <asp:Literal ID="lit_WP08_LIST" runat="server"></asp:Literal>
                    </ul>
                </div>
            </div>

            <div class="am-g am-g-collapse wrapper-brand" style="display: inline-block">

                <asp:Literal ID="lit_B01" runat="server"></asp:Literal>

                <h5 class="title-lp-product" style="margin-top: 5px">
                    <asp:Literal ID="lit_WP02" runat="server"></asp:Literal>
                </h5>
                <!-- 免運、哈幣、原價標籤 開始 -->
                <div class="am-u-sm-12 product-tag-wrapper" style="background-color: white">

                    <span class="products-tag" id="tag1" runat="server">
                        <img src="images/habi_icon.png" />Ha coin<p>
                            x
                            <asp:Literal ID="lit_ha_coin" runat="server"></asp:Literal><a href="https://www.hawooo.com/mobile/hacoin.aspx" target="_blank"><i class="am-icon-question-circle"></i></a>
                        </p>
                    </span>
                    <span class="products-tag" id="tag2" runat="server">
                        <img src="images/free_shipping_icon.png" />
                        <span class="txtRsc" data-id="pd001">跨國免郵</span>
                    </span>
                    <span class="products-tag" id="tag3" runat="server">
                        <img src="images/taiwanprice.png" />
                        <span class="txtRsc" data-id="pd002">與台灣同價</span>
                    </span>
                    <span class="products-tag" id="tag4" runat="server">
                        <img src="../user/icon/p_discount.jpg" />3件20%off<a href="#"></a>
                    </span>

                </div>
                <!-- 免運、哈幣、原價標籤 結束 -->
                <div class="am-g" style="background-color: #F9F3F7; padding: 0px 10px">
                    <div style="display: table;">
                        <div style="display: table-row;">
                            <div style="display: table-cell; vertical-align: middle;">
                                <strong class="actual-price" style="padding-left: 5px; font-size: 20px">RM <span style="font-size: 30px;">
                                    <asp:Label ID="lab_price" runat="server" Text="0" ClientIDMode="Static" EnableViewState="false"></asp:Label>
                                </span></strong>
                            </div>
                            <div style="display: table-cell; vertical-align: middle; line-height: 17px; padding-left: 5px" id="discount_info" runat="server">
                                <div style="display: table-row">
                                    <span class="original-price" style="color: #FF005B; font-size: 14px">
                                        <asp:Label ID="lab_discount_note" runat="server" ClientIDMode="Static" EnableViewState="false" Style="text-decoration: none"></asp:Label>
                                    </span>
                                </div>
                                <div style="display: table-row">
                                    <span class="original-price" style="text-decoration: line-through">
                                        <asp:Label ID="lab_origianl_price" runat="server" ClientIDMode="Static" EnableViewState="false"></asp:Label>
                                    </span>
                                </div>
                            </div>
                            <div class="discount time-countdown" id="time" style="position: absolute; right: 40px;">
                                <div class="countdown-text" style="color: #000000; font-weight: 900;">
                                    <div id="showTime" runat="server">
                                        <span id="d">1</span>d:<span id="h">23</span>:<span id="m">59</span>:<span id="s">59</span>
                                    </div>
                                </div>
                                <div class="view-text" style="">
                                    <i class="far am-icon-eye"></i>viewed 
                                    <asp:Literal ID="lit_view" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <script>
                                function setTime(spantime) {

                                    $("#time").everyTime('1s', function (i) {
                                        spantime--;
                                        var d = Math.floor(spantime / (24 * 3600));
                                        var h = Math.floor((spantime % (24 * 3600)) / 3600);
                                        var m = Math.floor((spantime % 3600) / (60));
                                        var s = Math.floor(spantime % 60);
                                        if (spantime > 0) {
                                            $("#d").text(d);
                                            $("#h").text(h);
                                            $("#m").text(m);
                                            $("#s").text(s);
                                        } else { // 避免倒數變成負的
                                            $("#d").text(0);
                                            $("#h").text(0);
                                            $("#m").text(0);
                                            $("#s").text(0);
                                        }
                                    })
                                }
                            </script>
                        </div>
                    </div>
                </div>
                <asp:Repeater ID="rp_dis" runat="server">
                    <ItemTemplate>
                        <div class="am-u-sm-12 product-tag-wrapper product_set am-cf" onclick="openBuyModal('<%# Eval("WPA01").ToString() %>');">
                            <div>
                                <div class="am-fl" style="padding-left: 10px">

                                    <span class="product-items-tag">
                                        <%# WPAFactory.GetTagName(int.Parse(Eval("WPA15").ToString()),(this.Master as mobile).LgType) %>
                                    </span>
                                    <div style="padding-top: 5px">
                                        <%# ((mobile)this.Master).LgType.Equals(LangType.zh) ? Eval("WPA13").ToString().Split('#')[0] : ReTagName((Eval("WPA13").ToString().Split('#')[0]))  %>
                                        <%# ((Eval("WPA10").ToString().Equals(Eval("WPA06").ToString())) ? "" : (( new string[] { "省", "降" }).Any(s=> Eval("WPA13").ToString().Split('#')[0][Eval("WPA13").ToString().Split('#')[0].Length -1].ToString().Contains(s)) ? (PbClass.CashRate((int.Parse(Eval("WPA10").ToString()) - int.Parse(Eval("WPA06").ToString())).ToString(),"7.6")).ToString() : "")) %>
                                    </div>
                                </div>
                                <div class="am-fr" style="display: inline-flex">
                                    <div class="price-s">
                                        RM<strong class="actual-price-s" style="font-size: 18px">
                                            <%# PbClass.CashRate((int.Parse(Eval("WPA06").ToString()) / 
    (Eval("WPA13").ToString().Split('#').Length > 1 ?  int.Parse(Eval("WPA13").ToString().Split('#')[1].ToString()) : int.Parse(Eval("ICOUNT").ToString()))).ToString(),"7.6") %></strong>/pc
                                    </div>
                                    <div class="arrow-p-more">
                                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <script>
                    function hiddenSamePrice() {
                        $("#p-sameprice").css("display", "none");
                    }
                </script>
                <!--領券 現領現用開始-->
                <asp:Panel ID="panel_coupon" runat="server">
                    <div class="am-u-sm-12 product-tag-wrapper-d product_set_white marginl">
                        <a onclick="couponModal();">
                            <div class="am-u-sm-2 product_set_l">
                                <div class="wrapper-lp-features" style="color: #9a9a9a; padding-left: 15px">
                                    領券
                                </div>
                            </div>
                            <div class="am-u-sm-6 product_set_l">
                                <asp:Literal ID="lit_coupon_name" runat="server"></asp:Literal>
                            </div>

                            <div class="am-u-sm-4">
                                <div class="p-stars">
                                    <ul class="am-cf" style="padding-left: 15px; float: right; margin: 0">
                                        <li class="am-fr">
                                            <span class="product-items-tag">現領現用</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </a>
                    </div>
                </asp:Panel>
                <script>
                    function couponModal() {
                        $("#coupon-modal").modal('open');
                    }
                    function closeCouponModal() {
                        $("#coupon-modal").modal('close');
                    }
                </script>
                <!--領券 現領現用結束-->
                <!-- coupon -->
                <style>
                    .coupon_discount {
                        color: #FB5450;
                        font-size: 24px;
                        font-weight: bold;
                        text-align: center;
                    }

                    .coupun_row {
                        border-bottom-style: solid;
                        border-bottom-width: 1px;
                        /* border-style: solid; */
                        border-color: #eaeaea;
                        padding: 5px;
                    }
                </style>
                <div class="am-modal am-modal-no-btn coupon-modal" tabindex="-1" id="coupon-modal">
                    <div class="am-modal-dialog">
                        <div class="coupon-title">
                            <span class="txtRsc" data-id="pd012">領取折扣券</span>
                            <a href="javascript: void(0)" class="am-close am-close-spin am-fr" data-am-modal-close>&times;</a>
                        </div>

                        <div class="am-modal-bd">
                            <div class="coupon-table-wrapper">
                                <!-- 固定table head start-->
                                <div class="c-table-head"></div>
                                <!-- 固定table head end-->
                                <div class="c-table-body">
                                    <asp:Repeater ID="rp_product_coupon" runat="server">
                                        <ItemTemplate>
                                            <div class="am-g coupun_row">
                                                <div class="am-u-sm-7" style="text-align: left; padding-left: 5px">
                                                    <span class="coupon_discount">
                                                        <%# Eval("PC08").ToString().Equals("0") ? Eval("PC09").ToString() + "% off" : "-RM" + Eval("PC09").ToString() %>      
                                                    </span>
                                                    <br />
                                                    <span><%# Eval("PC02").ToString() %></span>
                                                </div>
                                                <div class="am-u-sm-5" style="vertical-align: bottom;">
                                                    <span><span class="txtRsc" data-id="pd007">有效日</span>:<%# Eval("PC03").ToString() %>days</span><br />
                                                    <span><span class="txtRsc" data-id="pd008">活動期間</span>~<%# Convert.ToDateTime(Eval("PC05").ToString()).ToString("dd/MM") %></span>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <!-- 折扣券按鈕 coupon btn start-->
                            <div class="coupon-table-btn">
                                <asp:UpdatePanel ID="up_get_coupon" runat="server">
                                    <ContentTemplate>
                                        <asp:Button ID="btn_get" runat="server" Text="GET NOW" CssClass="am-btn product-pink-btn" OnClick="btn_get_Click" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <!-- 折扣券按鈕 coupon btn end-->
                        </div>
                    </div>
                </div>
                <hr />
                <div class="am-u-sm-12">

                    <asp:Literal ID="lit_WP21" runat="server"></asp:Literal>
                    <asp:Literal ID="lit_WP33_WP34" runat="server"></asp:Literal>
                </div>
                <%--   <div class="am-u-sm-12 wrapper-lp-slogans">
                        <ul>
                            <li>Made in Taiwan, 100% Authentic</li>
                            <li class="strong-fuchsia">Truly improve bust size + Boosts collagen production</li>
                        </ul>
                    </div>

                    <div class="am-u-sm-12 wrapper-lp-features">
                        <ul>
                            <li>Firms breasts in sagging</li>
                            <li>Naturally increases bust size in as short as 1 to 2 months</li>
                            <li>pueraria mirifica, fenugreek, vitamin A, collagen, green papaya and vitamin C</li>
                        </ul>
                    </div>--%>
            </div>
        </section>
        <!-- product premium 滿額贈 start -->
        <section class="am-container product-info-wrapper" id="full_gift_event" runat="server">
            <div class="premium-title">
                <h4>滿額贈品</h4>
            </div>
            <div class="premium-wrapper">
                <!-- 一筆滿贈品（符合贈送條件） -->
                <div class="promotion-table">
                    <asp:Repeater ID="rp_gift_event" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td class="promotion-img">
                                        <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_GE05" runat="server" Value='<%# Eval("GE05") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_GP01" runat="server" Value='<%# Eval("GP01") %>' EnableViewState="false" />
                                        <img src='<%# "../images/giftimgs/" + Eval("GP10") %>' />
                                    </td>
                                    <td rowspan="2" class="promotion-content">
                                        <h4><span class="txtRsc" data-id="cart023">活動名稱</span>： 
                                                <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal></h4>
                                        <p><span class="txtRsc" data-id="cart024">贈品名稱</span>：<asp:Literal ID="lit_GP02" runat="server" Text='<%# Eval("GP02").ToString() %>'></asp:Literal></p>
                                        <p><span class="txtRsc" data-id="cart025">滿額金額</span>：<asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal>(<asp:Literal ID="lit_GE05" runat="server" Text='<%# Eval("GE05").ToString().Equals("0") ? "滿額贈送" : "累加贈送" %>'></asp:Literal>)</p>
                                        <p><span class="txtRsc" data-id="cart050">活動說明</span>：<asp:Literal ID="lit_GE11" runat="server" Text='<%# Eval("GE11").ToString() %>'></asp:Literal></p>
                                    </td>
                                </tr>
                                <%-- <tr>
                                        <td class="promotion-tag">
                                            <span class="span-ok">已符合</span>
                                        </td>
                                    </tr>--%>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <!-- product premium 滿額贈 end -->
        <!-- 產品折疊選單 product info collapse start -->
        <section class="am-container product-info-wrapper">
            <!-- collase 開始 -->
            <div class="am-panel-group">
                <div class="am-panel am-panel-default">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#product-details'}">
                            <i class="am-icon-info-circle"></i>
                            <span class="txtRsc" data-id="pd013">商品資訊</span>
                            <i class="am-icon-caret-down info-right-i"></i>
                        </h4>
                    </div>
                    <div id="product-details" class="am-panel-collapse am-collapse am-in">
                        <div class="am-panel-bd">
                            <asp:Literal ID="lit_WP03" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
                <div class="am-panel am-panel-default">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#after-sales'}">
                            <i class="am-icon-truck"></i>
                            <span class="txtRsc" data-id="pd014">運送/保固/退換貨</span>
                            <i class="am-icon-caret-down info-right-i"></i>
                        </h4>
                    </div>
                    <div id="after-sales" class="am-panel-collapse am-collapse">
                        <div class="am-accordion-content">
                            <table style="line-height: 30px" id="zhnote" runat="server">
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">送貨範圍:
                                    </td>
                                </tr>
                                <tr>
                                    <td>HaWooo.com 商品配送區域限馬來西亞。</td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">到貨天數:
                                    </td>
                                </tr>
                                <tr>
                                    <td>好物市集:商品訂單成立後 3-10 個工作天送達。
                                    </td>
                                </tr>
                                <tr>
                                    <td>限時團購:商品訂單成立後 5-15 個工作天送達。
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">換貨說明:
                                    </td>
                                </tr>
                                <tr>
                                    <td>若您收到的商品有瑕疵、破損等問題，請於收到貨後7天內，至「會員中心 > 訂單管理 > 退換貨申請」填寫表單，或們會盡快幫您處理。換貨標準請參照 退貨條款。
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">退貨說明:
                                    </td>
                                </tr>
                                <tr>
                                    <td>至「會員中心 > 訂單管理 > 退換貨申請」填寫表單，退貨標準請參照 退貨條款。當我們收到您退回的商品時，退款將存入您HaWooo.com的帳戶(如運費需買方負責，將直接於退款扣除)，您可於下次消費使用。
                                    </td>
                                </tr>
                            </table>
                            <table style="line-height: 30px" id="ennote" runat="server">
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">elivery Area:
                                    </td>
                                </tr>
                                <tr>
                                    <td>HaWooo.com Malaysia goods distribution area.</td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">Arrival Time:
                                    </td>
                                </tr>
                                <tr>
                                    <td>Hawooo Market：Estimate 3 to 10 working days delivery after order confirmation.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Time-limited Group buying：Estimate 5 to 15 working days delivery after order confirmation.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">Good exchange policy:
                                    </td>
                                </tr>
                                <tr>
                                    <td>If you receive defective, damaged goods, please in within 7 days after receipt of the goods.Please Log in, go into「Order manage > fill out for “Exchang and Return application form」. We will help you with it as soon as possible.Please refer replacement standard.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">Good return instructions:
                                    </td>
                                </tr>
                                <tr>
                                    <td>Go into「Order manage > fill out for “Exchang and Return application form」Please refer replacement standard<a href="#"> Return Policy</a>。When we received your return of goods, a refund will be deposited into your HaWooo.com account (such as responsible for freight need to buyer, will be deducted directly from a refund), you can be used in next time consumption.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <%-- <div class="am-panel am-panel-default">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#product-comments'}">
                            <i class="am-icon-comment"></i>商品評價
                            <i class="am-icon-caret-down info-right-i"></i>
                        </h4>
                    </div>
                    <div id="product-comments" class="am-panel-collapse am-collapse">
                        <!-- 評論 一筆li是一筆評論 -->
                       
                    </div>
                </div>--%>
            </div>
        </section>


        <!-- copied accordion start -->
        <%--<section data-am-widget="accordion" class="am-accordion am-accordion-default container-lp-accordion product-info" data-am-accordion='{ "multiple": true }'>

            <dl class="am-accordion-item am-active">
                <dt class="am-accordion-title product-info-accordion-title"><i class="fa fa-info-circle" aria-hidden="true"></i>商品資訊</dt>
                <dd class="am-accordion-bd am-collapse am-in ">
                    <div class="am-g am-g-collapse">
                        <div class="am-g" style="margin: 10px 0 10px 0; text-align: left; line-height: 23px;">
                        </div>
                    </div>

                </dd>
            </dl>
            <dl class="am-accordion-item">
                <dt class="am-accordion-title after-sales-accordion-title"><i class="fa fa-truck" aria-hidden="true"></i>More Info
                </dt>
                <dd class="am-accordion-bd am-collapse"></dd>
            </dl>

        </section>--%>

        <!-- copied accordion end -->
        <!-- 你可能會喜歡 you might like start -->
        <section class="am-container product-info-wrapper container-suggested-slider" id="guess_you_like" runat="server">
            <!-- u might like title -->
            <div class="product-slider-title">
                <h4><i class="am-icon-heart-o"></i><span class="txtRsc" data-id="pd011">猜你喜歡</span></h4>
            </div>
            <!-- u might like slider -->
            <div class="am-slider am-slider-default am-slider-carousel"
                data-am-flexslider="{itemWidth: 200, itemMargin: 5, slideshow: false}">
                <ul class="am-slides">
                    <asp:Repeater ID="rp_recommend1" runat="server" EnableViewState="false">
                        <ItemTemplate>
                            <li>
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
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
                                                <%# ((mobile) this.Master).LgType.Equals(LangType.en) ? "<img src='../images/icon/" + Eval("WP30") + "'/>" : "<span class='product-items-tag'>" + Eval("WP30") + "</span>" %>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <%--   <div class="product-slider-content product-slider-like">
                <ul class="am-cf">
                    <asp:Repeater ID="rp_recommend1" runat="server" EnableViewState="false">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-thumbnail" />
                                   
                                    <div class="product-slider-text">
                                        <h3><%# Eval("WP02").ToString() %></h3>
                                        <h4>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        <p class="am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(), Eval("WPA06").ToString(), "7.6").Replace("RM", "")%></p>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>--%>
        </section>
        <!-- 你可能會喜歡 you might like end -->
        <!-- 最多人觀看 most views start -->
        <section class="am-container product-info-wrapper container-suggested-slider" id="s_guess_you_like" runat="server">
            <!-- title -->
            <div class="product-slider-title">
                <h4><i class="am-icon-heart-o"></i><span class="txtRsc" data-id="pd012">最多人觀看</span></h4>
            </div>
            <!-- slider -->
            <div class="product-slider-content product-slider-like">
                <ul class="am-cf">
                    <asp:Repeater ID="rp_recommend2" runat="server" EnableViewState="false">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-thumbnail" />
                                    <%--   <span class="index-items-tag">新品</span>--%>
                                    <div class="product-slider-text">
                                        <h3><%# Eval("WP02").ToString() %></h3>
                                        <h4>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        <p class="am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),"7.6").Replace("RM","") %></p>
                                        <%--<%# WPFactory.DisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString())%>--%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
    </div>
    <!--buyModal-->

    <div id="buyModal">
        <!--THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID  class="close-animatedModal" -->
        <div class="modal-content">
            <div class="modal-content-itemWrapper">
                <div class="modal-content-row">
                    <div class="modal-content-col modal-content-col-img">
                        <asp:Image ID="img_md_product_img" runat="server" EnableViewState="false" CssClass="modal-content-img" />
                        <%-- <img src="../images/n20170512101043367.jpg" alt="" class="modal-content-img">--%>
                    </div>
                    <div class="modal-content-col modal-content-col-specs">
                        <div class="modal-content-title">
                            <asp:Literal ID="lit_md_BrandName_ProductName" runat="server"></asp:Literal>
                            <%-- <span class=""><span class="modal-content-productBrand">BHK</span>BHK's Bust Up Mirifica Complex (10 capsules/pack)</span>--%>
                        </div>
                        <div class="modal-content-price">
                            <span class="modal-content-price-special">RM 
                                <asp:Label ID="lab_md_price" runat="server" Text="0" ClientIDMode="Static"></asp:Label>
                            </span>
                            <%-- <del class="modal-content-price-original">
                                 RM
                                <asp:Label ID="lab_md_origianl_price" runat="server" Text="0" ClientIDMode="Static"></asp:Label>
                            </del>--%>
                        </div>
                    </div>
                    <div class="modal-content-col modal-content-col-close close-buyModal">
                        <span class="modal-content-close modal-content-rounded"></span>
                    </div>
                </div>
            </div>
            <div class="modal-content-wrapper">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="modal-content-optionsTitle-wrapper">
                            <span class="modal-content-optionsTitle txtRsc" data-id="pb015">選擇規格
                            </span>
                            <ul class="modal-content-productOptions" id="modal_ul">

                                <asp:Repeater ID="rp_md_product_item" runat="server">
                                    <ItemTemplate>
                                        <li class="modal-content-productOption-li" runat="server" id="li_option" onclick='<%# "javascript:selectOption(\"" + Eval("WPA01").ToString() + "\");" %>'>
                                            <label class="modal-content-productOption-label">
                                                <%--   <asp:RadioButton ID="rb_md_productOption" runat="server" CssClass="modal-content-input" name="productOption" Text='<%# Eval("WPA01") %>' OnCheckedChanged="rb_md_productOption_CheckedChanged" AutoPostBack="true" />--%>
                                                <div class="modal-content-optionText-wrapper" id='<%# Eval("WPA01") %>'>
                                                    <span class="modal-content-optionText">
                                                        <asp:Literal ID="lit_md_productItem_name" runat="server" Text='<%# Eval("WPA02") %>'></asp:Literal>
                                                        <asp:HiddenField ID="hf_WPA04" runat="server" Value='<%# Eval("WPA04") %>' EnableViewState="false" />
                                                        <asp:HiddenField ID="hf_TYPE" runat="server" EnableViewState="false" />
                                                        <asp:HiddenField ID="hf_WPA01" runat="server" Value='<%# Eval("WPA01") %>' EnableViewState="false" />
                                                        <asp:HiddenField ID="hf_SCOUNT" runat="server" Value='<%# Eval("SCOUNT") %>' EnableViewState="false" />
                                                        <asp:HiddenField ID="hf_WPA10" runat="server" Value='<%# hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()) %>' EnableViewState="false" />
                                                        <asp:HiddenField ID="hf_WPA06" runat="server" Value='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>' EnableViewState="false" />
                                                    </span>
                                                </div>
                                            </label>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
            <script type="text/javascript">
                function saveStr(price, sprice, rate) {
                    price = Number(price);
                    sprice = Number(sprice);
                    rate = Number(rate);
                    if (price - sprice > 0) {
                        return "-RM " + ((price - sprice)).toFixed(2);
                    } else {
                        return "";
                    }
                }
                function selectOption(id) {
                    $("#hf_select_wpa01").val(id);
                    var _scount = 0;
                    var maxbuy = 0;
                    $("#modal_ul").find('li').each(function () {
                        $(this).removeClass('modal-content-productOption-active');
                        var _id = $(this).find($('[id*=hf_WPA01]')).val();

                        if (_id == id) {

                            _scount = $(this).find($('[id*=hf_SCOUNT]')).val();
                            maxbuy = $(this).find($('[id*=hf_WPA04]')).val();
                            $("#lab_md_price").html($(this).find($('[id*=hf_WPA06]')).val());

                            var WPA06 = $(this).find($('[id*=hf_WPA06]')).val();
                            var WPA10 = $(this).find($('[id*=hf_WPA10]')).val();
                            $("#lab_price").html(WPA06);
                            $("#lab_md_origianl_price").html($(this).find($('[id*=hf_WPA10]')).val());

                            var discount = parseFloat(WPA10) - parseFloat(WPA06);
                            console.log("WPA06:" + WPA06);
                            console.log("WPA10:" + WPA10);
                            console.log("DIS:" + discount);
                            if (discount > 0) {
                                //$("#lab_discount_note").html("save " + discount.toFixed(2));
                                $("#lab_discount_note").html(saveStr(WPA10, WPA06, "7.6"));
                                $("#lab_origianl_price").html(WPA10);
                            }
                            else {
                                $("#lab_discount_note").html("");
                                $("#lab_origianl_price").html("");
                            }
                            $("#hf_select_type").val($(this).find($('[id*=hf_TYPE]')).val());
                            $(this).addClass('modal-content-productOption-active');
                        }
                    })
                    if (parseInt(_scount) > 0) {
                        $("#qty").attr("data-min", 1);
                        if (parseInt(_scount) <= parseInt(maxbuy))
                            $("#qty").attr("data-max", _scount);
                        else
                            $("#qty").attr("data-max", maxbuy);
                        $("#qty").val(1);
                        $("#hf_select_count").val("1");
                    }
                    else {
                        $("#qty").attr("data-min", 0);
                        $("#qty").attr("data-max", 0);
                        $("#qty").val(0);
                        $("#hf_select_count").val("0");
                    }
                }

                function qtyDown() {
                    var now = parseInt($("#qty").val()) - 1;
                    var min = parseInt($("#qty").attr("data-min"));
                    var max = parseInt($("#qty").attr("data-max"));
                    if (parseInt(now) < parseInt(min))
                        now = min;
                    $("#qty").val(now);
                    $("#hf_select_count").val(now);
                }
                function qtyUp() {
                    var min = parseInt($("#qty").attr("data-min"));
                    var max = parseInt($("#qty").attr("data-max"));
                    var now = parseInt($("#qty").val()) + 1;
                    if (parseInt(now) >= parseInt(max))
                        now = max;
                    $("#qty").val(now);
                    $("#hf_select_count").val(now);
                }


            </script>
            <div class="modal-content-wrapper">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-6">
                        <span class="modal-content-sectionTitle txtRsc" data-id="pd005">數量
                        </span>
                    </div>
                    <div class="am-u-sm-6 modal-content-select-wrapper">
                        <div class="modal-content-spinner" data-trigger="spinner">
                            <div class="spinner-controls modal-content-spinner-controls spinner-element" style="cursor: pointer" onclick="qtyDown();">
                                <div class="modal-content-spinner-sign">-</div>
                            </div>
                            <div class="modal-content-spinner-input spinner-element">

                                <input id="qty" type="text" value="0" data-rule="quantity" data-min="0" data-max="0" readonly="true" />
                            </div>
                            <div class="spinner-controls modal-content-spinner-controls spinner-element" style="cursor: pointer" onclick="qtyUp();">
                                <div class="modal-content-spinner-sign">+</div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal-content-buy-footer" id="modal-content-buy-footer" style="text-align: center; padding-top: 10px">
                <div class="am-u-sm-12 am-u-sm-centered buy-footer-btn-container">
                    <asp:UpdatePanel ID="up_cart" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:LinkButton ID="lnk_buy" CssClass="am-btn am-btn-default modal-content-buy-btn" runat="server" OnClick="lnk_buy_Click"><i class="fa fa-bolt" aria-hidden="true"></i>&nbsp; Buy</asp:LinkButton>
                            <asp:LinkButton ID="lnk_add" CssClass="am-btn am-btn-default modal-content-buy-btn" runat="server" OnClick="lnk_add_Click"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp; Add</asp:LinkButton>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

        </div>
    </div>




    <div class="am-footer-fixed buy-footer" style="height: auto;">
        <style>
            .cart_num {
                right: 0px;
                position: absolute;
                background-color: #FF0068;
                border-radius: 10px;
                color: white;
                width: 15px;
                height: 15px;
                font-size: 10px;
                margin-right: 8px;
                margin-top: 2px;
                vertical-align: top;
            }
        </style>
        <div class="am-u-sm-12 am-u-sm-centered buy-footer-btn-container">
            <div style="width: 62px; float: left; cursor: pointer;">
                <a onclick="go2Cart();">
                    <div class="am-g am-g-collapse" style="border-right: 1px solid #d7d9da;">
                        <div class="am-u-sm-12 title-footer-text">
                            <span class="cart_num" id="cartnum">0</span>
                            <img src="https://www.hawooo.com/images/ftp/test/m_cart.png" alt="" class="img-footer-icon">
                        </div>
                        <div class="am-u-sm-12 title-footer-text">
                            <span class="footer-icon-text txtRsc" data-id="foot003">購物車</span><br />
                        </div>
                    </div>
                </a>
            </div>

            <div style="width: 62px; float: left; cursor: pointer;">
                <a href="http://m.me/hawooohawooo" target="_blank">
                    <div class="am-g am-g-collapse" style="border-right: 1px solid #d7d9da;">
                        <div class="am-u-sm-12 title-footer-text">
                            <img src="https://www.hawooo.com/images/ftp/test/m_contact.png" alt="" class="img-footer-icon">
                        </div>
                        <div class="am-u-sm-12 title-footer-text">
                            <span class="footer-icon-text txtRsc" data-id="foot004">客服</span><br />
                        </div>
                    </div>
                </a>
            </div>

            <div style="width: 62px; float: left; cursor: pointer;">

                <div class="am-g am-g-collapse" onclick="postTrack();">
                    <div class="am-u-sm-12 title-footer-text">
                        <img src="https://www.hawooo.com/images/ftp/test/m_loveit.png" alt="" class="img-footer-icon">
                    </div>
                    <div class="am-u-sm-12 title-footer-text">
                        <span class="footer-icon-text txtRsc" data-id="foot005">收藏</span><br />
                    </div>
                </div>

            </div>

            <div style="width: calc(100% - 200px); float: left">
                <a href="#buyModal" class="am-btn am-btn-default am-fl fuchsia-btn buy-footer-buy" id="buy-btn" style="width: 100%; color: white"><i class="am-icon-bolt"></i>Buy</a>
            </div>

        </div>
    </div>
    <script>
        function postTrack() {
            var u = <%= Session["A01"] != null ? Session["A01"].ToString() : "null" %>;
            if (u == null) {
                confirm2url('<%= LangClass.GetMsgInfo("M042", (this.Master as mobile).LgType) %>', "login.aspx?rurl=product.aspx" + location.search + "");
            }
            else {
                $("#<%= btn_track_product.ClientID %>").click();
            }
        }
        function go2Cart() {
            var ccount = $("#cartnum").text();
            if (ccount == "0") {
                alert('<%= LangClass.GetMsgInfo("M024", (this.Master as mobile).LgType) %>');
                return;
            }
            var u = <%= Session["A01"] != null ? Session["A01"].ToString() : "null" %>;
            if (u == null) {
                location.href = "login.aspx?rurl=cart1.aspx";
            }
            else {
                location.href = "cart1.aspx";
            }
        }

    </script>
    <asp:UpdatePanel ID="up_edit" runat="server">
        <ContentTemplate>
            <asp:Button ID="btn_track_product" runat="server" Style="display: none;" OnClick="btn_track_product_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>

    <script type="text/javascript">
        function openBuyModal(wpa01) {
            $("#buy-btn").click();
            selectOption(wpa01);
        }
        $("#buy-btn").animatedModal({
            animatedIn: 'bounceInUp',
            animatedOut: 'bounceOutDown',
            modalTarget: 'buyModal',
            zIndexIn: '1088',
            color: '#fff'
        });

    </script>
    <script>
        $(function () {
            $(".f-shopping-cart").attr("style", "display:none");
            // 猜你喜歡
            detectLength($(".product-slider-like li"), 0);
            // 最多人觀看
            detectLength($(".product-slider-view li"), 0);
        })
    </script>

</asp:Content>

