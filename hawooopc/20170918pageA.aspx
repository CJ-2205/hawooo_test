<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170918pageA.aspx.cs" Inherits="user_20170918pageA" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170918pageA.aspx";
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
            <%--<a href="" target="_blank">--%>
            <img src="https://www.hawooo.com/images/ftp/20170918/Ha2.png" alt="A Buy1free1"></a>
        </div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20170918/Ha2_mb.png" alt="A Buy1free1">
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


    <%-- <div class="pageBox">
        <div class="am-container" style="padding: 2px;">
            <div class="am-u-md-3 am-u-sm-6 product" style="margin: 20px 0 0 0;">
                <div class="am-panel am-panel-default pitem">
                    <div class="imgContain">
                        <a href="productdetail.aspx?id=5076">
                            <img data-sizes="auto" src="http://www.hawooo.com/images/webimgs/n20160902035737967.jpg" class="am-img-responsive lazyautosizes lazyloaded" sizes="185px"></a>
                    </div>
                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                        <div class="gallery-title" style="padding: 2px;">
                            <a href="productdetail.aspx?id=5076">
                                <input type="hidden">愛麗姿 Elize】Propolinse 蜂膠漱口水 60...</a>
                        </div>
                        <div class="gallery-detail" style="padding: 5px;">
                            <span class="money_txt_style">RM&nbsp; 69.90</span> <span style="font-size: small; color: #595959"><del>RM 100.00</del></span>
                            <span class="moneybtn"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                <div class="am-panel am-panel-default pitem">
                    <div class="imgContain">
                        <a href="productdetail.aspx?id=5076">
                            <img data-sizes="auto" src="http://www.hawooo.com/images/webimgs/n20160902035737967.jpg" class="am-img-responsive lazyautosizes lazyloaded" sizes="185px"></a>
                    </div>
                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                        <div class="gallery-title" style="padding: 2px;">
                            <a href="productdetail.aspx?id=5076">
                                <input type="hidden">愛麗姿 Elize】Propolinse 蜂膠漱口水 60...</a>
                        </div>
                        <div class="gallery-detail" style="padding: 5px;">
                            <span class="money_txt_style">RM&nbsp; 69.90</span> <span style="font-size: small; color: #595959"><del>RM 100.00</del></span>
                            <span class="moneybtn"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                <div class="am-panel am-panel-default pitem">
                    <div class="imgContain">
                        <a href="productdetail.aspx?id=5076">
                            <img data-sizes="auto" src="http://www.hawooo.com/images/webimgs/n20160902035737967.jpg" class="am-img-responsive lazyautosizes lazyloaded" sizes="185px"></a>
                    </div>
                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                        <div class="gallery-title" style="padding: 2px;">
                            <a href="productdetail.aspx?id=5076">
                                <input type="hidden">愛麗姿 Elize】Propolinse 蜂膠漱口水 60...</a>
                        </div>
                        <div class="gallery-detail" style="padding: 5px;">
                            <span class="money_txt_style">RM&nbsp; 69.90</span> <span style="font-size: small; color: #595959"><del>RM 100.00</del></span>
                            <span class="moneybtn"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                <div class="am-panel am-panel-default pitem">
                    <div class="imgContain">
                        <a href="productdetail.aspx?id=5076">
                            <img data-sizes="auto" src="http://www.hawooo.com/images/webimgs/n20160902035737967.jpg" class="am-img-responsive lazyautosizes lazyloaded" sizes="185px"></a>
                    </div>
                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                        <div class="gallery-title" style="padding: 2px;">
                            <a href="productdetail.aspx?id=5076">
                                <input type="hidden">愛麗姿 Elize】Propolinse 蜂膠漱口水 60...</a>
                        </div>
                        <div class="gallery-detail" style="padding: 5px;">
                            <span class="money_txt_style">RM&nbsp; 69.90</span> <span style="font-size: small; color: #595959"><del>RM 100.00</del></span>
                            <span class="moneybtn"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>





    <!--下方logo牆-->
    <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=63" target="_blank">
                <img alt="Kafen" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_01.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=29" target="_blank">
                <img alt="歐可茶葉" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_02.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
                <img alt="BHK's" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_03.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%BB%BF%E9%8D%8B%E9%A6%99" target="_blank">
                <img alt="滿鍋香" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_04.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E4%BA%AC%E4%B9%8B%E5%AF%A2" target="_blank">
                <img alt="京之寢" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_05.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=38" target="_blank">
                <img alt="蘭山麵" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_06.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=68" target="_blank">
                <img alt="婕洛尼絲" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_07.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=103" target="_blank">
                <img alt="小拌麵" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_08.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=101" target="_blank">
                <img alt="婦潔" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_09.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E9%BB%83%E9%87%91%E7%9B%BE" target="_blank">
                <img alt="黃金盾" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logo_10.png" style="float: left; display: block; width: 20%;" /></a></li>

        </ul>
    </div>


    <div class="am-show-sm">
        <tr>
            <td>
                <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=kafen" target="_blank">
                            <img alt="Kafen" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_01.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%AD%90%E5%8F%AF%E8%8C%B6%E8%91%89" target="_blank">
                            <img alt="歐可茶葉" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_02.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=BHK" target="_blank">
                            <img alt="BHK's" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_03.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%BB%BF%E9%8D%8B%E9%A6%99" target="_blank">
                            <img alt="滿鍋香" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_04.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E8%98%AD%E5%B1%B1%E9%BA%B5" target="_blank">
                            <img alt="蘭山麵" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_05.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E5%A9%95%E6%B4%9B%E5%A6%AE%E7%B5%B2" target="_blank">
                            <img alt="婕洛尼絲" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_06.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E5%B0%8F%E6%8B%8C%E9%BA%B5" target="_blank">
                            <img alt="小拌麵" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_07.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E5%A9%A6%E6%BD%94" target="_blank">
                            <img alt="婦潔" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_08.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E4%BA%AC%E4%B9%8B%E5%AF%A2" target="_blank">
                            <img alt="京之寢" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_09.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E9%BB%83%E9%87%91%E7%9B%BE" target="_blank">
                            <img alt="黃金盾" src="https://www.hawooo.com/images/ftp/20170918/Ha2_logom_10.png" style="float: left; display: block; width: 50%;" /></a></li>
                    </ul>
                </div>
            </td>
        </tr>
    </div>



    <footer class="fullBanner am-show-md-up">
        <img src="http://edm.hawooo.com/20170502/07.png" alt="HaWooo.com">
    </footer>
    <footer class="fullBanner am-show-sm">
        <img src="http://edm.hawooo.com/20170502/07m.png" alt="HaWooo.com">
    </footer>


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

