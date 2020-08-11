<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20170920empFavorit.aspx.cs" Inherits="mobile_20170920empFavorit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            var b = false;

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    b = true;
                }
            }

            if (b == false) {
                window.location.href = "https://www.hawooo.com/user/shop.aspx?eid=222"
            }

        }
         )
    </script>

    <!-- 页面内容 -->

    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20170921/edmm_01.png" alt="員購排行榜 現折Rm20">
        </div>
    </div>

    <!--系統開始帶商品-->
    <div class="pageBox">
        <div class="am-container" style="padding: 2px;">
            <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <div class="am-u-md-3 am-u-sm-6-self " style="margin-top: 20px; float: left">
                        <div class="am-panel am-panel-default pitem">
                            <div class="imgContain">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                </a>
                            </div>
                            <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                <div class="gallery-title" style="padding: 2px; line-height: 1.3">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                    </a>
                                </div>
                                <%-- &nbsp;--%>
                                <div class="gallery-detail" style="padding: 5px;">
                                    <span class="money_txt_style" style="font-size: 11.5px">RM
                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                    <span class="money_txt_style_marketS">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></span>
                                    <span class="moneybtn"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <footer class="fullBanner am-show-sm">
        <img src="http://edm.hawooo.com/20170502/07m.png" alt="HaWooo.com">
    </footer>

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
        .am-u-sm-6-self {
            width: 49%;
        }

        .money_txt_style {
            color: #f54954;
            font-size: 15px;
            font-weight: bold;
        }

        .gallery-title {
            font-size: 14px;
            margin-left: 5px;
            height: 40px;
            overflow: hidden;
        }

            .gallery-title a {
                color: #6F6957;
                font-size: 14px;
                line-height: 12px;
            }

        .gallery-detail {
            /*padding-top: 4px;*/
            height: 34px;
            border-top: 1px solid #E9E9E9;
        }

        .money_txt_style_marketS {
            color: #a1a1a1;
            font-size: 13px;
            text-decoration: line-through;
            line-height: 25px;
            text-align: center;
        }

        .pitem {
            margin: 0px;
            padding: 2px;
            border-color: #FFF;
            /* border-color: rgb(212,212,212); */
            -webkit-transform: translateZ(0);
        }

            .pitem:hover {
                padding: 0px;
                border: 5px solid #cbcbcb;
                transition: border 0.2s linear 0s, color 0.2s linear 0s, background-color 0.2s linear 0s;
                -webkit-transform: translateZ(0);
            }
    </style>


</asp:Content>
