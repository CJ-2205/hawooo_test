<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20200325beauty_madness.aspx.cs" Inherits="user_static_20200325beauty_madness" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200325beauty_madness.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <%--===================== 側邊選單 Start ============================--%>
        <div class="side-bar am-center">
            <ul class="am-padding-0">
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_00.png" %>' alt="ss_00" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_03.png" %>' alt="ss_03" />
                </li>
            </ul>
        </div>
        <%--====================== 側邊選單 End ===========================--%>
        <div class="banner" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_01.png" %>' alt="主banner" />
            <%--====================== 領取折扣券 Start =========================--%>
            <div>
                <a id="coupon1" data-clipboard-text="BEAUTY25" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/coupon_01.png" %>' alt="主banner" />
                </a>
            </div>
            <%--======================領取折扣券 End==========================--%>
        </div>
        <div class="am-container">
            <%--======================  block1  Start ==========================--%>
            <section class="am-g am-margin-top-lg" id="s1">
                <div class="am-u-sm-7 am-u-sm-centered am-padding">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_02.png" %>' alt="bn_02" style="width: 100%;" />
                </div>
                <div class="am-padding-sm shop-block bg1">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div class="see-more">
                    <a href="20200325skin_care_flash_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/more_01.png" %>' alt="more_01" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%--======================== block1   End ========================--%>

            <%--======================== block2   Start  =======================--%>

            <section class="am-g am-margin-top-lg" id="s2">
                <div class="am-u-sm-7 am-u-sm-centered am-padding">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_03.png" %>' alt="bn_03" />
                </div>
                <div class="shop-block am-padding-sm bg1" id="div2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />

                    </ul>
                </div>
                <div class="see-more">
                    <a href="20200325cosmetic_flash_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/more_02.png" %>' alt="more_02" style="width: 100%;" />
                    </a>
                </div>
            </section>

            <%--======================= block2 End==========================--%>

            <%--======================= block3   Start  =======================--%>
            <section class="am-g am-margin-top-lg am-margin-bottom" id="s3">
                <div class="am-u-sm-7 am-u-sm-centered am-padding">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bn_04.png" %>' alt="bn_04" />
                </div>
                <div class="shop-block am-padding-sm bg1" id="div3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="brands" />

                    </ul>
                </div>
            </section>
            <%--======================= block3 End=========================--%>
            <div class="am-g am-margin-bottom">
                <a href="200325supplement_mega.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/sale.png" %>' alt="more_02" style="width: 100%;" />
                </a>
            </div>
            <%--======================= 活動辦法 Start ==========================--%>
        </div>


    </div>



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

    <script type="text/javascript">

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

        $(function () {
            $("#s1 li").attr("class", "am-fl hvr-float");
            $("#s2 li").attr("class", "am-fl hvr-float");


            $('#s1 a').attr({
                "href": "20200325skin_care_flash_deals.aspx",
                "target": "_blank"
            });

            $('#s2 a').attr({
                "href": "20200325cosmetic_flash_deals.aspx",
                "target": "_blank"
            });

        })



        var brandNo = [307, 283, 72, 450, 297, 287, 309, 432];
        $(function putimg() {
            for (i = 0; i < 8; i++) {
                $('#s3 li').eq(i).prepend('<div class="brand-logo">' + '<a class="b" href="https://www.hawooo.com/user/brands.aspx?bid=' + brandNo[i] + '"' + ' target="_blank">' +
                    '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200325/logo_0' + (i + 1) + '.png">' + '</a>' +
                    '</div>');
                $('#s3 li a:not(.b)').eq(i).attr({
                    "href": "https://www.hawooo.com/user/brands.aspx?bid=" + brandNo[i],
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

