<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20200325beauty_madness.aspx.cs" Inherits="mobile_static_20200325beauty_madness" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200325beauty_madness.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="am-u-sm-8 am-u-sm-centered am-margin-vertical">
            <a id="coupon1" data-clipboard-text="BEAUTY25" onclick="Clip('coupon1');">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/coupon.png" %>' alt="coupon" style="width: 100%;" />
            </a>
        </div>

        <%--========================Coupon End===============================--%>

        <%--======================== Block1 Start ==============================--%>
        <section class="am-margin-vertical goods-mb" id="s1">
            <div class="am-padding-sm">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_02.png" %>' alt="bn_02" style="width: 100%;" />
            </div>
            <div>
                <div class="mb-shop-block bg1 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
            </div>
            <div>
                <a href="20200325skin_care_flash_deals.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/more_01m.png" %>' alt="more_01m" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--======================== Block1 End ==============================--%>

        <%--======================== Block1 Start ==============================--%>
        <section class="am-margin-vertical goods-mb" id="s2">
            <div class="am-padding-sm">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_03.png" %>' alt="bn_03" style="width: 100%;" />
            </div>
            <div>
                <div class="mb-shop-block bg1 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
            </div>
            <div>
                <a href="20200325cosmetic_flash_deals.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/more_02m.png" %>' alt="more_02m" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--======================== Block1 End ==============================--%>


        <%--=======================Super Brands Start ===========================--%>

        <section class="am-margin-vertical goods-mb" id="s3">
            <div class="am-padding-sm">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_04.png" %>' alt="bn_04" style="width: 100%;" />
            </div>
            <div class="goods-3items-mb bg1" id="logo">
                <ul class="am-avg-sm-2">

                    <uc1:products runat="server" id="brands" />
                    <%-- <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='https://www.hawooo.com/mobile/brand_1.aspx?bid=<%# Eval("B01").ToString() %>' target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis">-<%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("-","") %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>--%>
                </ul>
            </div>
        </section>

        <div class="am-g am-margin-bottom">
            <a href="200325supplement_mega.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/salem.png" %>' alt="more_02" style="width: 100%;" />
            </a>
        </div>
        <%--=======================Super Brands  End=========================--%>

        <%--======================= 活動辦法 Start ==========================--%>
        <footer class="activity-method">
            <div class="am-container">
                <p class="am-margin-0">
                    Terms & Conditions<br />
                    Beauty Madness<br />
                    1. Promotion Date : 25th Mar 2020 12:00 - 31th Mar 2020 23:59<br />
                    2. Promo Code: Extra RM25 OFF, use code [BEAUTY25]  (min spend 250)<br />
                    3. Promo Codes are ONLY applicable on brands on this page,including C'est Vrai, Dayla, Catiss, Dr.Morita, Paradiso Garden, Double Doctor, Zephyrine, Dore Dore, HH, DV Tokyo, Vincent's World, NAF<br />
                    4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Beauty Madness Sale terms from time to time, and in such manner as Hawooo deems appropriate.
            </div>
        </footer>
        <%--============================活動辦法 End=========================--%>
    </div>

    <div class="footer-bar am-g am-g-collapse">
        <div class="am-u-sm-12">
            <ul class="am-avg-sm-4">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>


    <script type="text/javascript">

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        $(function () {
            $('#s1 a').attr({
                "href": "20200325skin_care_flash_deals.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "20200325cosmetic_flash_deals.aspx",
                "target": "_blank"
            });
        });

        var brandNo = [307, 283, 72, 450, 297, 287, 309, 432];
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#logo li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200325/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#logo li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
            }
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>

