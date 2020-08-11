<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="newProduct.aspx.cs" Inherits="user_newProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />

    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>


    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/newProduct.aspx";
                }
            }
        }
         )

    </script>

    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/app.css" />
    <link rel="stylesheet" href="assets/css/newyearmom.css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- 页面内容 -->
    <div class="am-show-md-up">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20171012/newnew.png" alt="New Arrivals">
        </div>
    </div>



    <!--系統開始帶商品-->

    <div class="pageBox">
        <div class="am-container" style="width: 1180px">
            <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                        <div class="am-panel am-panel-default pitem">
                            <div class="imgContain">
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                        class="lazyload am-img-responsive" />
                                </a>
                            </div>
                            <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                <div class="gallery-title" style="padding: 2px;">
                                    <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                    </a>
                                </div>
                                <div class="gallery-detail" style="padding: 5px;">
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


  <%--  <footer class="fullBanner am-show-md-up">
        <img src="http://edm.hawooo.com/20170502/07.png" alt="HaWooo.com">
    </footer>--%>


    <!-- 以上页面内容 开发时删除 -->
    <!--[if lt IE 9]>
    <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
    <script src="assets/js/amazeui.ie8polyfill.min.js"></script>
    <![endif]-->
    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>
    <style>
        [class*=am-u-] + [class*=am-u-]:last-child {
            float: left;
        }
    </style>
</asp:Content>

