<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171213VIP.aspx.cs" Inherits="_17_VIP_user_20171213VIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171213VIP.aspx";
                }
            }
        }
         )
    </script>
    <link href="assets/css/newyearmom.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-show-md-up">
        <div class="fullBanner">
            <img style="" src="https://www.hawooo.com/images/ftp/20171214/vip100_pc.png" alt="VIP Zone">
        </div>
    </div>



    <div class="pageBox">
        <div class="am-container" style="padding: 2px;">
            <!--複製吧-->

            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                    RM<span style="font-size: 22px; letter-spacing: -2px;">
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </div>
                        </a>
                    </li>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <!--商品結束-->

    <!--Footer!-->
    <footer class="fullBanner am-show-md-up">
        <img src="http://edm.hawooo.com/20170502/07.png" alt="HaWooo.com">
    </footer>

    <script type="text/javascript" src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var url = $.url;


            if ($.url.param("tid") != "") {

                var tagid = $.url.param("tid");
                if (tagid != '') {
                    GoID(tagid);
                }
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        //$(function () {
        //    var tagid = $.url.param("tid");
        //    if (tagid != '') {
        //        GoID(tagid);
        //    }
        //})
        //function GoID(id) {
        //    $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        //}


    </script>

    <%--<script>
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
    </style>--%>
</asp:Content>
