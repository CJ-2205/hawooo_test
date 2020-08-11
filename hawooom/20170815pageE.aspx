<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20170815pageE.aspx.cs" Inherits="mobile_20170815pageE" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">--%>

<%--</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
    <div style="margin-top: 120px">

        <!-- 页面内容 -->
        <div class="am-show-md-up">
            <div class="fullBanner">
                <a href="" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20170815/0815E_01.png" alt="fashion全部免運"></a>
            </div>
        </div>
        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20170815/em_01.png" alt="fashion全部免運">
            </div>
        </div>



        <div class="am-show-md-up">
            <div class="fullBanner">
                <a href="" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20170815/0815A_02.png" alt="折價卷"></a>
            </div>
        </div>
        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20170815/edmm_02.png" alt="折價卷">
            </div>
        </div>


        <!--下方4商品-->
        <div class="am-show-sm">
            <tr>
                <td>
                    <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
                        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=2382" target="_blank">
                                <img alt="FM Shoes 交叉腳踝繞帶楔型休閒涼鞋 36-40" src="https://www.hawooo.com/images/ftp/20170815/em_03.png" style="float: left; display: block; width: 100%;" /></a></li>

                            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E3%80%90Bonbons%E3%80%91%E9%87%91%E5%B1%AC%E9%A2%A8%E9%8F%A1%E9%9D%A2%E9%8F%A4%E7%A9%BA%E7%B9%9E%E5%B8%B6%E9%AB%98%E8%B7%9F%E9%9E%8B" target="_blank">
                                <img alt="【Bonbons】金屬風鏡面鏤空繞帶高跟鞋35-40" src="https://www.hawooo.com/images/ftp/20170815/em_04.png" style="float: left; display: block; width: 100%;" /></a></li>

                            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E5%81%B4%E6%8E%A8%E9%9B%86%E4%B8%AD%20%E5%A4%9A%E7%A9%BF%E6%B3%95" target="_blank">
                                <img alt="My Bra AINIA 側推集中 多穿法側扣內衣褲組" src="https://www.hawooo.com/images/ftp/20170815/em_05.png" style="float: left; display: block; width: 100%;" /></a></li>

                            <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E7%BE%8E%E8%87%80%E6%9B%B2%E7%B7%9A%E4%BF%AE%E9%A3%BE%E8%A4%B2" target="_blank">
                                <img alt="玉如阿姨 美臀曲線修飾褲" src="https://www.hawooo.com/images/ftp/20170815/em_06.png" style="float: left; display: block; width: 100%;" /></a></li>
                        </ul>
                    </div>
                </td>
            </tr>
        </div>



        <!--下方商品-->
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
