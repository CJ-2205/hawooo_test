<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20170913.aspx.cs" Inherits="mobile_20170913" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            var b = true;

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    b = false;
                }
            }
            if (b == true) {
                window.location.href = "https://www.hawooo.com/user/shop.aspx?eid=209";
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; float: center; display: block; max-width: 650px;">
        <!-- 页面内容 -->
        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20170913/edmm_01.png" alt="中秋伴手禮 必buy手冊">
            </div>
        </div>

        <!--系統開始帶商品-->

        <div class="pageBox">
            <div class="am-container" style="padding: 2px;">
                <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                            <div class="am-panel am-panel-default pitem">
                                <div class="imgContain">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <img data-sizes="auto" src="http://img1.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                            class="lazyload am-img-responsive" />
                                    </a>
                                </div>
                                <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                    <div class="gallery-title" style="padding: 2px; height: 50px; overflow: hidden">
                                        <%--   <div class="gallery-title" style="padding: 2px">--%>
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a>
                                    </div>
                                    <div class="gallery-detail" style="padding: 5px; height: 50px">
                                        <span class="money_txt_style">RM&nbsp;
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                        <span class="money_txt_style_marketS">
                                            <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></span>
                                        <span class="moneybtn"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <footer class="fullBanner am-show-md-up">
            <img src="http://edm.hawooo.com/20170502/07.png" alt="HaWooo.com">
        </footer>
        <footer class="fullBanner am-show-sm">
            <img src="http://edm.hawooo.com/20170502/07m.png" alt="HaWooo.com">
        </footer>
    </div>

    <style>
        .money_txt_style {
            color: #f54954;
            font-size: 15px;
            font-weight: bold;
        }

        [class*="am-u-"] + [class*="am-u-"]:last-child {
            float: left;
        }
    </style>
</asp:Content>
