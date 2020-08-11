<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170906pageA.aspx.cs" Inherits="user_20170906pageA" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170906pageA.aspx";
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
            <a href="" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20170901/Ha2.png" alt="A Buy1free1"></a>
        </div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20170901/Ha2_mb.png" alt="A Buy1free1">
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
            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=51" target="_blank">
                <img alt="Beauty小舖：專賣美妝保養品" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_01.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=102" target="_blank">
                <img alt="戀家小舖：台灣第一寢具" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_02.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=117" target="_blank">
                <img alt="Nature Tree：美白保濕國民品牌" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_03.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=104" target="_blank">
                <img alt="Laler：瘦身選他就對了" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_04.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%B7%A8%E6%AF%92%E4%BA%94%E9%83%8E" target="_blank">
                <img alt="淨毒五郎：無毒清潔才安心" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_05.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E8%B1%AC%E9%A0%AD%E5%A6%B9" target="_blank">
                <img alt="豬頭妹：台灣面膜知名品牌" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_06.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=Juliart" target="_blank">
                <img alt="Juliart：小編最愛 洗髮品牌" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_07.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E8%88%92%E5%85%8B%E6%B8%85" target="_blank">
                <img alt="舒克清：小孩安心首選" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logo_08.png" style="float: left; display: block; width: 25%;" /></a></li>

        </ul>
    </div>


    <div class="am-show-sm">
        <tr>
            <td>
                <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=Beauty%E5%B0%8F%E8%88%96" target="_blank">
                            <img alt="Beauty小舖：專賣美妝保養品" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_01.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%88%80%E5%AE%B6%E5%B0%8F%E8%88%96" target="_blank">
                            <img alt="戀家小舖：台灣第一寢具" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_02.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=Nature%20Tree" target="_blank">
                            <img alt="Nature Tree：美白保濕國民品牌" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_03.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=Laler" target="_blank">
                            <img alt="Laler：瘦身選他就對了" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_04.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%B7%A8%E6%AF%92%E4%BA%94%E9%83%8E" target="_blank">
                            <img alt="淨毒五郎：無毒清潔才安心" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_05.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E8%B1%AC%E9%A0%AD%E5%A6%B9" target="_blank">
                            <img alt="豬頭妹：台灣面膜知名品牌" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_06.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=Juliart" target="_blank">
                            <img alt="Juliart：小編最愛 洗髮品牌" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_07.png" style="float: left; display: block; width: 50%;" /></a></li>

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E8%88%92%E5%85%8B%E6%B8%85" target="_blank">
                            <img alt="舒克清：小孩安心首選" src="https://www.hawooo.com/images/ftp/20170901/Ha2_logom_08.png" style="float: left; display: block; width: 50%;" /></a></li>
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

