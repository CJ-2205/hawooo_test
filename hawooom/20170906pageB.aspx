<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20170906pageB.aspx.cs" Inherits="mobile_20170906pageB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; float: center; display: block; max-width: 650px;">

        <!-- 页面内容 -->
        <div class="am-show-md-up">
            <div class="fullBanner">
                <a href="" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20170901/Ha3.png" alt="A Buy1free1"></a>
            </div>
        </div>
        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20170901/Ha3_mb.png" alt="A Buy1free1">
            </div>
        </div>



        <!--系統開始帶商品-->

        <%--  <div class="pageBox">
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

        <div class="pageBox">
            <%--    <div class="am-container" style="width: 1180px">--%>
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
                                    <%--<div class="gallery-title" style="padding: 2px;">--%>
                                    <div class="gallery-title" style="padding: 2px; height: 50px; overflow: hidden">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
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



        <!--下方logo牆-->
        <div class="am-show-md-up" style="width: 100%; margin-bottom: -2px; float: left; display: block; max-width: 1920px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=La-boos" target="_blank">
                    <img alt="La Boose：竹製創意生活用品" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_01.png" style="float: left; display: block; width: 25%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%B8%85%E6%AA%9C" target="_blank">
                    <img alt="清檜：天然防蟑螂螞蟻" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_02.png" style="float: left; display: block; width: 25%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%AA%9C%E8%88%9E" target="_blank">
                    <img alt="檜舞：檜木清潔用品首選" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_03.png" style="float: left; display: block; width: 25%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%9E%9C%E4%B9%BE" target="_blank">
                    <img alt="陽光果果：我沒騙你超好吃" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_04.png" style="float: left; display: block; width: 25%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/search.aspx?stxt=COZY" target="_blank">
                    <img alt="COZY：狂賣萬瓶的水乳液" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_05.png" style="float: left; display: block; width: 40%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=121" target="_blank">
                    <img alt="風車：給小孩的有聲書" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_06.png" style="float: left; display: block; width: 20%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com" target="_blank">
                    <img alt="HaWooo：找到台灣的好東西" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logo_07.png" style="float: left; display: block; width: 40%;" /></a></li>

            </ul>
        </div>


        <div class="am-show-sm">
            <tr>
                <td>
                    <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
                        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=la-boos" target="_blank">
                                <img alt="La Boos：竹製創意生活用品" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logom_01.png" style="float: left; display: block; width: 50%;" /></a></li>

                            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%B8%85%E6%AA%9C" target="_blank">
                                <img alt="清檜：天然防蟑螂螞蟻" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logom_02.png" style="float: left; display: block; width: 50%;" /></a></li>

                            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%AA%9C%E8%88%9E" target="_blank">
                                <img alt="檜舞：檜木清潔用品首選" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logom_03.png" style="float: left; display: block; width: 50%;" /></a></li>

                            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%9E%9C%E4%B9%BE" target="_blank">
                                <img alt="陽光果果：我沒騙你超好吃" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logom_04.png" style="float: left; display: block; width: 50%;" /></a></li>

                            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=COZY" target="_blank">
                                <img alt="COZY：狂賣萬瓶的水乳液" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logom_05.png" style="float: left; display: block; width: 50%;" /></a></li>

                            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E9%A2%A8%E8%BB%8A" target="_blank">
                                <img alt="風車：給小孩的有聲書" src="https://www.hawooo.com/images/ftp/20170901/Ha3_logom_06.png" style="float: left; display: block; width: 50%;" /></a></li>
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
    </div>

    <style>
        .money_txt_style {
            color: #f54954;
            font-size: 15px;
            font-weight: bold;
        }
    </style>

</asp:Content>
