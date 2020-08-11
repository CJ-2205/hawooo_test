﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170815pageB.aspx.cs" Inherits="user_20170815pageB" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170815pageB.aspx";
                }
            }
        }
         )
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- 页面内容 -->
    <div class="am-show-md-up">
        <div class="fullBanner"><a href="" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20170815/0815B_01.png" alt="A Buy1free1"></a></div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20170815/bm_01.png" alt="A Buy1free1"></div>
    </div>



    <div class="am-show-md-up">
        <div class="fullBanner"><a href="" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20170815/0815A_02.png" alt="折價卷"></a></div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20170815/edmm_02.png" alt="折價卷"></div>
    </div>


    <!--下方4商品-->
    <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8909&cid=42" target="_blank">
                <img alt="【婦潔VIGILL】私密沐浴露(日常潔淨) 220ml" src="https://www.hawooo.com/images/ftp/20170815/0815B_03.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8847" target="_blank">
                <img alt="【Miss Hana花娜小姐】柔潤無暇BC精華棒(防曬款) SPF50 PA++ 12g (2色可選)" src="https://www.hawooo.com/images/ftp/20170815/0815B_04.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8834" target="_blank">
                <img alt="BHK's 人氣美白凍齡組" src="https://www.hawooo.com/images/ftp/20170815/0815B_05.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9141" target="_blank">
                <img alt="【Merdeka Sale國慶限定】Laler菈楽 日日輕控＆夜夜爆燃(30顆/盒)" src="https://www.hawooo.com/images/ftp/20170815/0815B_06.png" style="float: left; display: block; width: 50%;" /></a></li>
        </ul>
    </div>

    <!--下方商品-->
    <div class="pageBox">
        <div class="am-container" style="width: 1180px">
            <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                        <div class="am-panel am-panel-default pitem">
                            <div class="imgContain">
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="http://img1.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
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
    <%-- <footer class="fullBanner am-show-md-up">
        <img src="http://edm.hawooo.com/20170417/pc/footerpc.png" alt="Supermama Day折扣拿不完">
    </footer>
    <footer class="fullBanner am-show-sm">
        <img src="http://edm.hawooo.com/20170417/pc/footerm.png" alt="Supermama Day折扣拿不完">
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

