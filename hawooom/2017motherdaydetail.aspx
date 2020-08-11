<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2017motherdaydetail.aspx.cs" Inherits="mobile_2017motherdaydetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 120px">
        <div class="am-g">
            <div class="page-menu-Box" data-am-sticky="{top:122}">
                <style>
                    .pagelink a {
                        color: #fd6b73;
                    }
                </style>
                <p class="pagelink">
                    <a href="2017motherdaydetail.aspx" style="font-size: 16px;">< 2017 母親節活動第二波</a>
                </p>
            </div>
        </div>
        <div class="am-show-md-up">
            <div class="fullBanner">
                <a href="#" target="_blank">
                    <asp:Literal ID="lit_img1" runat="server"></asp:Literal>
                </a>
            </div>
        </div>
        <div class="am-show-sm">
            <div class="fullBanner">
                <asp:Literal ID="lit_img2" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="am-show-md-up" style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 2000px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;">
                    <img alt="折價卷專區" src="http://edm.hawooo.com/20170502/03.png" style="float: left; display: block; width: 30%;" /></li>
                <li style="margin: 0;">
                    <img alt="點我領Rm15" src="http://edm.hawooo.com/20170502/04.gif" style="float: left; display: block; width: 15%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','f5758d68-54c3-4210-9354-de345e47fa75');" />
                </li>
                <li style="margin: 0;">
                    <img alt="點我領Rm30" src="http://edm.hawooo.com/20170502/05.gif" style="float: left; display: block; width: 15%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','a4f6eda9-3c03-47e1-9766-eaea195c1cdb');" />
                </li>
                <li style="margin: 0;">
                    <img alt="折價卷專區" src="http://edm.hawooo.com/20170502/06.png" style="float: left; display: block; width: 40%;" /></li>

            </ul>
        </div>
        <div class="am-show-sm">
            <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                    <li style="margin: 0;">
                        <img alt="點我領RM15" src="http://edm.hawooo.com/20170502/03m.gif" style="float: left; display: block; width: 50%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','f5758d68-54c3-4210-9354-de345e47fa75');" /></li>
                    <li style="margin: 0;">
                        <img alt="點我領RM30" src="http://edm.hawooo.com/20170502/04m.gif" style="float: left; display: block; width: 50%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','a4f6eda9-3c03-47e1-9766-eaea195c1cdb');" /></li>
                </ul>
            </div>
        </div>
        <div class="pageBox">
            <div class="am-container" style="padding: 2px;">
                <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px;">
                            <div class="am-panel am-panel-default pitem">
                                <div class="imgContain">
                                    <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                        <img data-sizes="auto"
                                            src="http://img1.hawooo.com/noimg.png"
                                            data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    </a>
                                </div>
                                <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                    <div class="gallery-title" style="padding: 2px;">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a>
                                    </div>
                                    <div class="gallery-detail" style="padding: 5px;">
                                        <span class="money_txt_style">RM&nbsp; 
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
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
            <img src="http://edm.hawooo.com/20170417/pc/footerpc.png" alt="Supermama Day折扣拿不完">
        </footer>
        <footer class="fullBanner am-show-sm">
            <img src="http://edm.hawooo.com/20170417/pc/footerm.png" alt="Supermama Day折扣拿不完">
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
    </div>
</asp:Content>

