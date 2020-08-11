<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20200317life_style_festival.aspx.cs" Inherits="user_static_20200317life_style_festival" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200317life_style_festival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <%--===================== 側邊選單 Start ============================--%>
        <div class="side-bar am-center">
            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_04.png" %>' alt="ss_04" />
            </ul>
        </div>
        <%--===================== 側邊選單 End =============================--%>

        <div class="banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_01.png" %>' alt="主banner" />
        </div>
        <%--====================== 領取折扣券 Start ==========================--%>
        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="HOME5" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/coupon_01.png" %>' alt="coupon_01" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="HOME8" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/coupon_02.png" %>' alt="coupon_02" />
                    </a>
                </li>
                <li>
                    <a id="coupon3" data-clipboard-text="HOME12" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/coupon_03.png" %>' alt="coupon_03" />
                    </a>
                </li>
            </ul>
        </div>
        <%--======================領取折扣券 End===========================--%>

        <div class="am-container">
            <%--===================  Best Picks For Houseshold Items Start =======================--%>
            <section class="am-container" id="s1">
                <div class="banner-box  am-text-center">
                    <a href="20200317household_items.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_02.png" %>' alt="bn_02" style="width: 100%;" />
                    </a>
                </div>

                <div class="am-padding-sm shop-block bg1">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />

                    </ul>
                </div>
                <div class="see-more">
                    <a href="20200317household_items.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_03.png" %>' alt="bn_03" style="width: 100%;" />
                    </a>
                </div>

            </section>
            <%--==================== Best Picks For Houseshold Items End ======================--%>

            <%--===================  Best Picks For Daily Essentials  Start =======================--%>
            <section class="am-container" id="s2">
                <div class="banner-box  am-text-center">
                    <a href="20200317daily_essentials.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_04.png" %>' alt="bn_04" style="width: 100%;" />
                    </a>
                </div>

                <div class="am-padding-sm shop-block  bg2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />

                    </ul>
                </div>
                <div class="see-more">
                    <a href="20200317daily_essentials.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_05.png" %>' alt="bn_05" style="width: 100%;" />
                    </a>
                </div>

            </section>
            <%--==================== Best Picks For Daily Essentials End ======================--%>


            <%--===================== Super Brands Start  =====================--%>

            <section class="am-margin-vertical-xl" id="s3">

                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_06.png" %>' alt="bn_06" />
                </div>
                <div class="shop-block am-padding-sm">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />

                    </ul>
                </div>
            </section>

            <%--=====================Super Brands ===End====================--%>

            <%--======================= 活動辦法 Start ==========================--%>
        </div>
    </div>

    <footer class="activity-method">
        <div class="am-container">
            <p class="am-margin-0">
                Terms & Conditions<br />
                Lifestyle Festival<br />
                1. Promotion Date : 17th Mar 2020 12:00 - 24th Mar 2020 23:59<br />
                2. Promo Code:
            <br />
            </p>
            <p class="am-margin-left-lg">
                - 5% OFF (min spend 188), use code [ HOME5 ]<br />
                - 8% OFF (min spend 288), use code [ HOME8 ]<br />
                - 12% OFF (min spend 388), use code [ HOME12 ]<br />
            </p>
            <p class="am-margin-0">
                3. Promo Codes are ONLY applicable on brands on this page,including 1838 Eurorecares, Dawako, Bao Mommy, Chef Clean, Enjoy The Life, Hibis, Loving Family, Sofei, Neverslip, Anriea, SHCJ, Your Smart Home
                4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Lifestyle Festival Sale terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--==============================活動辦法 End=====================================--%>



    <script type="text/javascript">

        $(function () {
            var url = location.search;
            if (url.indexOf('?') >= 0 && url.indexOf('tid') >= 0) {
                var v = url.split('?')[1];
                v = v.split('=')[1];
                goto(v);
            }
        });

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        $(function () {
            $("#s1 li").attr("class", "am-fl hvr-float");
            $("#s2 li").attr("class", "am-fl hvr-float");


            $('#s1 a').attr({
                "href": "20200317household_items.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "20200317daily_essentials.aspx",
                "target": "_blank"
            });

        })


        var brandNo = [334, 11, 373, 64, 407, 328, 102, 180, 332, 156, 366, 115];
        $(function putimg() {
            for (i = 0; i < 12; i++) {
                $('#s3 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200317/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s3 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
                    "target": "_blank"
                });
               
            }
            $('#s3 li:eq(3) a').attr({
                "href": "https://www.hawooo.com/user/search.aspx?stxt=%e6%b7%a8%e6%af%92%e4%ba%94%e9%83%8e",
                "target": "_blank"
            });
            $('#s3 li:eq(8) a').attr({
                "href": "https://www.hawooo.com/user/search.aspx?stxt=Never-Slip",
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

