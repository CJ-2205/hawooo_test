<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200325supplement_mega.aspx.cs" Inherits="mobile_static_200325supplement_mega" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200325supplement_mega.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div class="banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_01m.png" %>' alt="main-banner" />
            <%--========================Coupon Start===============================--%>
            <div class="coupon coupon-mb" id="coupon1" data-clipboard-text="SUPP8" onclick="Clip('coupon1');">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/coupon.png" %>' alt="coupon" style="width: 100%;" />
                </a>
            </div>
            <%--========================Coupon End===============================--%>
        </div>

        <%--======================== Block1 Start ==============================--%>
        <section class="am-margin-vertical goods-mb" id="s1">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_02m.png" %>' alt="bn_02" style="width: 100%;" />
            </div>
            <div>
                <div class="mb-shop-block bg1 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products1" />

                    </ul>
                </div>
            </div>
            <div>
                <a href="200325beauty_care.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_03m.png" %>' alt="bn_02" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--======================== Block1 End ==============================--%>

        <%--======================== Block2 Start ==============================--%>
        <section class="am-margin-vertical goods-mb" id="s2">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_04m.png" %>' alt="bn_03" style="width: 100%;" />
            </div>
            <div>
                <div class="mb-shop-block bg2 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products2" />

                    </ul>
                </div>
            </div>
            <div>
                <a href="200325good_health.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_05m.png" %>' alt="more_02m" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--======================== Block2 End ==============================--%>

        <%--======================== Block3 Start ==============================--%>
        <section class="am-margin-vertical goods-mb" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_06m.png" %>' alt="bn_03" style="width: 100%;" />
            </div>
            <div>
                <div class="mb-shop-block bg3 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products3" />

                    </ul>
                </div>
            </div>
            <div>
                <a href="200325whats_new.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_07m.png" %>' alt="more_02m" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--======================== Block3 End ==============================--%>

        <%--======================== Block4 Start =============================--%>

        <section class="am-margin-vertical goods-mb" id="s4">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/bn_08m.png" %>' alt="bn_04" style="width: 100%;" />
            </div>
            <div class="goods-3items-mb" id="logo">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="brands" />

                </ul>
            </div>
        </section>
        <%--=======================Super Brands  End=========================--%>
        <div class="am-g am-margin-bottom">
            <a href="20200325beauty_madness.aspx" target="_blank">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/salem.png" %>' alt="more_02" style="width: 100%;" />
            </a>
        </div>
        <%--======================= 活動辦法 Start ==========================--%>
        <footer class="activity-method">
            <div class="am-container">
                <p class="am-margin-0">
                    Terms & Conditions<br />
                    Supplement Mega Sales<br />
                    1. Promotion Date : 25th Mar 2020 12:00 - 30th Mar 2020 23:59<br />
                    2. Promo Code:<br />
                    <span class="am-padding-left">- 8% OFF (min spend 399), use code [ SUPP8 ]</span><br />
                    3. Promo Codes are ONLY applicable on brands on this page,including DV, Laler, Angel Lala, Beezin, Hsu’s, Choyer, Ivita, Anyo, Miss Seesaw, UDR, Realwoman, Pandababy, 202drlab & C2C ( for C2C, only supplement products can apply promo code)<br />
                    4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Supplement Mega Sale terms from time to time, and in such manner as Hawooo deems appropriate.
            </div>
        </footer>
        <%--============================活動辦法 End=========================--%>
    </div>

    <div class="footer-bar am-g am-g-collapse">
        <div class="am-u-sm-12">
            <ul class="am-avg-sm-3">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200320/ss_06m.png" %>' alt="ss_06m" style="width: 100%;" />
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
                "href": "200325beauty_care.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "200325good_health.aspx",
                "target": "_blank"
            });

            $('#s3 a').attr({
                "href": "200325whats_new.aspx",
                "target": "_blank"
            });
        })

        var brandNo = [235, 345, 203, 312, 321, 349, 436, 320];
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s4 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/mobile/brand_1.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200320/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s4 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/mobile/brand_1.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });

            }

            $('#s4 li:eq(6) a').attr({
                "href": "https://www.hawooo.com/mobile/search.aspx?stxt=Angel%20Lala",
                "target": "_blank"
            });
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

