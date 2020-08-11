<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="malaysia_day_sale.aspx.cs" Inherits="user_static_malaysia_day_sale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/malaysia_day_sale.min.css" rel="stylesheet" />
    <link href="assets/css/animate.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g  main-contain">

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_01.png" %>' alt="主banner" style="width: 100%;" />

        </div>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container" id="maincId">
            <%--=====================領取折扣券 Start==========================--%>
            <section class="coupon-box wow bounceInUp">

                <div class="coupon">
                    <ul class="am-avg-sm-2">
                        <li class="am-padding-horizontal-sm hvr-float">
                            <a id="coupon1" data-clipboard-text="MD30" onclick="Clip('coupon1');">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/COUPON_01.png" %>' alt="coupon1" style="width: 100%;" />
                            </a>
                        </li>
                        <li class="am-padding-horizontal-sm hvr-float">

                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/register.png" %>' alt="coupon2" style="width: 100%;" />

                        </li>
                    </ul>

                    <div class="register am-center  am-text-justify">
                        <p style="text-align:center">
                            Spend RM350*, GET 3 Dr. Morita mask!<br />
                            First 100 customer only！<br />
                            1. *Amount AFTER using code .<br />
                            2. Free gift limited 100 units.<br />
                            3. Terms and conditions apply.
                        </p>
                    </div>
                </div>
            </section>
            <%--=====================領取折扣券 End==========================--%>

            <%--=====================shop-block-wrap1===Best offer Start===============================--%>
            <section class="shop-block-wrap  shop-block-wrap1 am-padding-top-lg am-margin-top-lg wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="best_offers.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block1 am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="best_offers.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/1.png" %>' alt="Banner" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>


            <%--=======================shop-block-wrap1===24Hrs Hot Deal  End============================--%>

            <%--=======================shop-block-wrap2===品牌Logo Start===============================--%>

            <section class="am-padding-top-lg am-margin-top-lg  shop-block-wrap shop-block-wrap2 wow bounceInUp">
                <div class="banner-box  banner-box2">
                    <div class="banner-box-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_03.png" %>' alt="Selected brands" style="width: 100%;" />
                    </div>
                </div>
                <div class="shop-block shop-block2">
                    <ul class="am-padding-0 am-margin-0 am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl hvr-float">
                                    <div class="hot-brand-item">
                                        <a href='<%#Eval("url")%>' target="_blank">
                                            <div class="brand-pic">
                                                <img data-sizes="auto" src='<%#Eval("img")%>'>
                                            </div>
                                            <div class="brand-logo">
                                                <img class=" am-center" data-sizes="auto" src='<%#Eval("logo")%>'>
                                            </div>
                                            <div class="brand-info">
                                                <h5>'<%#Eval("name")%>'</h5>
                                                <span>'<%#Eval("title")%>'</span>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--============================== shop-block-wrap2=== 品牌Logo   End ===============================--%>


            <%--=========================shop-block-wrap3====Beauty  Start ===============================--%>
            <section class="am-padding-top-lg am-margin-top-lg shop-block-wrap  shop-block-wrap3  wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_08.png" %>' alt="Banner" style="width: 100%; margin-bottom: 40px" />
                    </a>
                    <a href="beauty.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block3 am-padding" id="product-make3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="beauty.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/2.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>

            <%--==============================shop-block-wrap3==== Beauty  End ===============================--%>


            <%--==========================shop-block-wrap4===Supplement Start====================================--%>
            <section class=" shop-block-wrap  shop-block-wrap4  am-padding-top-lg am-margin-top-lg wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="supplement.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block4 am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="supplement.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/3.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap4===Supplement End====================================--%>

            <%--==========================shop-block-wrap5===Life Start====================================--%>
            <section class=" shop-block-wrap  shop-block-wrap5  am-padding-top-lg am-margin-top-lg  wow bounceInUp">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="life.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_06.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block5 am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="life.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/4.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap5===Life End====================================--%>

            <%--==========================shop-block-wrap6===Fashion Start====================================--%>
            <section class="shop-block-wrap  shop-block-wrap6  wow bounceInUp am-padding-vertical-lg am-margin-vertical-lg">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="fashion.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_07.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="shop-block shop-block6 am-padding" id="product-make5">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products5" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="fashion.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/5.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap6==Fashion End====================================--%>

            <%--==============================活動辦法 Start =====================================--%>
        </div>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions  
                <br />
                Malaysia Day Sale<br />
                1. Promotion date : 13rd September 2019 - 17th September 2019<br />
                2. Use Code【MD30】for EXTRA RM30 OFF (min spend 270).<br />
                3. Coupon is APPLICABLE on selected Flagship Stores , including CHOYER, DR. MORITA,  HH, LALER, DV, MOOIMOM, Life 8, PARADISO GARDEN, ZEPHYRINE, DR. CINK, HSU’S, DR. Lady, BHK’s, LOVING FAMILY, Nature Food Cover and Anriea.<br />
                4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Merdeka Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </footer>
        <%--==============================活動辦法 End=====================================--%>
    </div>
    <script src="../js/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script type="text/javascript">

        var wow = new WOW(
            {
                boxClass: 'wow',      // 要套用WOW.js縮需要的動畫class(預設是wow)
                animateClass: 'animated', // 要"動起來"的動畫(預設是animated, 因此如果你有其他動畫library要使用也可以在這裡調整)
                offset: 0,          // 距離顯示多遠開始顯示動畫 (預設是0, 因此捲動到顯示時才出現動畫)
                mobile: true,       // 手機上是否要套用動畫 (預設是true)
                live: true,       // 非同步產生的內容是否也要套用 (預設是true, 非常適合搭配SPA)
                callback: function (box) {
                    // 當每個要開始時, 呼叫這裡面的內容, 參數是要開始進行動畫特效的element DOM
                },
                scrollContainer: null // 可以設定成只套用在某個container中捲動才呈現, 不設定就是整個視窗
            }
        );
        wow.init();
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
    <script>
        $(function () {
            $("#maincId li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>


</asp:Content>

