<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="product - 複製.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <asp:HiddenField ID="hf_WP01" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP06" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP28" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP29" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP31" runat="server" EnableViewState="false" />
        <asp:HiddenField ID="hf_WP32" runat="server" EnableViewState="false" />
        <div class="page-main">
            <style>
                .pagelink a {
                    color: #fd6b73;
                }
            </style>
            <div class="page-menu-Box">
                <p class="pagelink">
                    <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                </p>
            </div>
            <div class="product-img-box">
                <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{&quot;directionNav&quot;:false}'>
                    <ul class="am-slides">
                        <asp:HiddenField ID="hf_WP08_1" runat="server" EnableViewState="false" />
                        <asp:Literal ID="lit_WP08_LIST" runat="server"></asp:Literal>
                        <%--<li>
                            <img src="http://www.mydesign.idv.tw/hawooo/images/p1-1.jpg">
                        </li>
                        <li>
                            <img src="http://www.mydesign.idv.tw/hawooo/images/p1-2.jpg">
                        </li>--%>
                    </ul>
                </div>
            </div>
            <asp:UpdatePanel ID="up_type" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="product-inofor-box">
                        <asp:Panel ID="panel_brand" runat="server">
                            <div class="am-u-sm-12">
                                <p style="padding-left: 5px; padding-top: 10px; font-size: 16px; font-weight: 600">
                                    <asp:Literal ID="lit_B01" runat="server"></asp:Literal>
                                </p>
                                <hr style="float: none" />
                            </div>
                        </asp:Panel>
                        <div class="am-u-sm-12">
                            <p class="product-title" style="text-align: left; padding-left: 5px">
                                <asp:Literal ID="lit_WP02" runat="server"></asp:Literal>
                            </p>
                        </div>


                        <div class="am-u-sm-12">
                            <p style="padding-left: 5px">
                                <asp:Literal ID="lit_WP21" runat="server"></asp:Literal>
                                <asp:Literal ID="lit_WP33_WP34" runat="server"></asp:Literal>
                            </p>
                        </div>
                        <p class="product-page-price">
                            <span style="text-decoration: line-through; color: #808080; font-size: 14px">
                                <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                            RM<asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                        </p>
                        <!--<p class="product-page-share"><a id="ContentPlaceHolder1_lnk_add_track" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lnk_add_track','')" style="font-size: 100%;"><i class="am-icon-heart"></i> 加入追蹤</a> | <a id="ContentPlaceHolder1_lnk_push" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lnk_push','')" style="font-size: 100%;"><i class="am-icon-share"></i> 我要推薦</a> | <a href=""><img src="images/share.png"></a></p>-->
                        <ul class="product-spec-box">
                            <li>
                                <asp:HiddenField ID="hf_WPA04" runat="server" />
                                <asp:DropDownList ID="ddl_WPA02" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_WPA02_SelectedIndexChanged">
                                </asp:DropDownList>
                            </li>
                            <li>
                                <asp:DropDownList ID="ddl_D10" runat="server">
                                </asp:DropDownList>
                            </li>
                        </ul>
                        <div class="am-u-sm-12" style="color: #C00; padding: 2%">
                            <asp:Literal ID="lit_booking_info" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <!-- 贈品區 開始-->
                    <div class="am-u-sm-12">
                        <asp:Repeater ID="rp_gift_event" runat="server">
                            <HeaderTemplate>
                                <div class="premiumsTitle">
                                    <p><span class="bold">滿額活動如下：</span></p>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="premiumsBox">
                                    <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                    <asp:HiddenField ID="hf_GE05" runat="server" Value='<%# Eval("GE05") %>' EnableViewState="false" />
                                    <asp:HiddenField ID="hf_GP01" runat="server" Value='<%# Eval("GP01") %>' EnableViewState="false" />
                                    <p style="margin-top: 20px; margin-left: 10px; font-size: 16px; font-weight: 600;">
                                        活動名稱:
                                            <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal>
                                    </p>
                                    <hr style="padding-bottom: 0px; margin-bottom: 0px" />
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 90px">
                                                <img src='<%# "../images/giftimgs/" + Eval("GP10") %>' style="width: 80px; height: 80px; padding: 10px" />
                                            </td>
                                            <td style="float: left">
                                                <table>
                                                    <tr>
                                                        <td>贈品名稱：
                                                        </td>
                                                        <td>
                                                            <asp:Literal ID="lit_GP02" runat="server" Text='<%# Eval("GP02") %>'></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>滿額金額：</td>
                                                        <td><span>RM<asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal></span>
                                                            <span style="color: #ff0000">
                                                                <asp:Literal ID="lit_non_price" runat="server"></asp:Literal></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>贈送方式：</td>
                                                        <td>
                                                            <asp:Literal ID="lit_GE05" runat="server" Text='<%# Eval("GE05").ToString().Equals("0") ? "滿額贈送" : "累加贈送" %>'></asp:Literal>
                                                        </td>
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                    </table>
                                    <div class="am-panel am-panel-default" style="margin-bottom: 0px">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#<%# Eval("GE01") %>'}">活動說明：
                                            </h4>
                                        </div>
                                        <div id="<%# Eval("GE01") %>" class="am-panel-collapse am-collapse">
                                            <div class="am-panel-bd">
                                                <asp:Literal ID="lit_GE11" runat="server" Text='<%# Eval("GE11") %>'></asp:Literal>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddl_WPA02" EventName="SelectedIndexChanged" />
                    <%-- <asp:AsyncPostBackTrigger ControlID="lnk_BUY" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="lnk_ADD" EventName="Click" />--%>
                </Triggers>
            </asp:UpdatePanel>
            <section data-am-widget="accordion" class="am-accordion am-accordion-default" data-am-accordion='{ "multiple": true }'>
                <%-- <dl class="am-accordion-item">
                    <dt class="am-accordion-title">英文商品資訊   English Product Infor
                    </dt>
                    <dd class="am-accordion-bd am-collapse">
                        <div class="am-accordion-content">
                            <p>尚無資訊</p>
                        </div>
                    </dd>
                </dl>--%>
                <dl class="am-accordion-item am-active">
                    <dt class="am-accordion-title">商品資訊   Product Infor
                    </dt>
                    <dd class="am-accordion-bd am-collapse am-in ">
                        <asp:Literal ID="lit_WP03" runat="server"></asp:Literal>
                    </dd>
                </dl>
                <dl class="am-accordion-item">
                    <dt class="am-accordion-title">運送／保固／退換貨(After sales)
                    </dt>
                    <dd class="am-accordion-bd am-collapse">
                        <div class="am-accordion-content">
                            <table style="line-height: 30px">
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">送貨範圍：
                                    </td>
                                </tr>
                                <tr>
                                    <td>HaWooo.com 商品配送區域限馬來西亞。</td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">到貨天數：
                                    </td>
                                </tr>
                                <tr>
                                    <td>跨國快送：訂單成立後 3-5 個工作天送達。
                                        <br />
                                        好物市集：商品訂單成立後 5-10 個工作天送達。
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 16px; font-weight: 600">換貨說明：
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
                        </div>
                    </dd>
                </dl>
            </section>
        </div>
        <div class="page-main" style="margin: 0px">
            <div class="am-tabs" data-am-tabs style="margin: 10px 0 0 0; padding: 10px;">
                <ul class="am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active tabs-box-like">你可能也會喜歡</li>
                </ul>
                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <div class="am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 125, itemMargin: 5, slideshow: false}">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_recommend1" runat="server" EnableViewState="false">
                                    <ItemTemplate>
                                        <li>
                                            <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-thumbnail" />
                                                <p class="product-name"><%# Eval("WP02") %></p>
                                            </a>
                                            <p class="product-price">RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></p>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 商品推薦區 開始-->
            <div class="am-tabs" data-am-tabs style="margin: 10px 0 0 0; padding: 10px;">
                <ul class="am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active tabs-box-look">最多人瀏覽的商品</li>
                </ul>
                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <div class="am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 125, itemMargin: 5, slideshow: false}">
                            <ul class="am-slides">
                                <asp:Repeater ID="rp_recommend2" runat="server" EnableViewState="false">
                                    <ItemTemplate>
                                        <li>
                                            <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                                                <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-thumbnail" />
                                                <p class="product-name"><%# Eval("WP02") %></p>
                                            </a>
                                            <p class="product-price">RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></p>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 商品推薦區 結束-->
        </div>
    </div>
    <!-- 商品頁下方固定bar 開始-->
    <div class="am-footer-fixed">
        <div class="product-but-box">
            <asp:UpdatePanel ID="up_footer_fixed" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="am-cart-icon">
                        <a href="cartlist.aspx" style="position: relative;">
                            <span class="cart-number-box">
                                <asp:Literal ID="lit_cart_count" runat="server"></asp:Literal></span>
                            <img src="images/top-icon-cart.png" data-pin-nopin="true">
                        </a>
                        &nbsp;&nbsp;
                    </div>
                    <p class="buyBut">
                        <asp:LinkButton ID="lnk_BUY_2" runat="server" OnClick="lnk_BUY_Click"><i class="am-icon-flash"></i>&nbsp;&nbsp;BUY</asp:LinkButton>
                    </p>
                    <p class="cartBut">
                        <asp:LinkButton ID="lnk_ADD_2" runat="server" OnClick="lnk_ADD_Click"><i class="am-icon-shopping-cart"></i>&nbsp;&nbsp;ADD</asp:LinkButton>
                    </p>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="lnk_BUY_2" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="lnk_ADD_2" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
    <!-- 商品頁下方固定bar 結束-->
    <script>
        ga('ec:setAction', 'checkout', { 'step': 1 });
    </script>
</asp:Content>

