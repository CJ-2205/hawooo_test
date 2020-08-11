<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="MoonFestivalSale.aspx.cs" Inherits="user_static_MoonFestivalSale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/MoonFestivalSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g  main-contain">

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_01.png" %>' alt="主banner" style="width: 100%;" />
        </div>
        <%--=====================領取折扣券 Start==========================--%>
        <div>
            <ul class="copy-coupon am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="MF15" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/coupon_01.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="MF25" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/coupon_02.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================領取折扣券 End==========================--%>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container" id="maincId">

            <%--=======================CELEBRITY SQUAD  Start===============================--%>
            <section class=" shop-block-wrap  shop-block-wrap1 am-padding-top-lg am-margin-top-lg">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="CelebritySquad.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_02.png" %>' alt="Banner" style="width: 100%;" />
                        </div>
                    </a>
                </div>

                <div class="shop-block shop-block1 am-padding" id="product-make8">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products" />

                        <%--<li class="am-fl  hvr-float">
                            <a href="#">
                                <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                    <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                        <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                    </div>
                                    <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                        <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                            Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                        </div>
                                        <div class="am-u-sm-12 " style="padding: 5px !important">
                                            <div class="am-fl">
                                                <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM 268.90
                                                </span>
                                            </div>
                                            <div class="am-fr">
                                                <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                                </span>
                                            </div>
                                        </div>
                                        <div class="am-u-sm-12 " style="padding: 5px !important">
                                            <div class="am-fl">
                                                <span style="font-size: 13px;">
                                                    <i class="far am-icon-eye"></i>Viewed 6.7K
                                                </span>
                                            </div>
                                            <div class="am-fr" style="">
                                                <span class="product-items-tag">
                                                    <img src="../images/icon/免運.svg" style="width: 20px">免運</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </li>--%>
                    </ul>
                </div>

                <div class="see-more-btn">
                    <a href="CelebritySquad.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/more.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>


            <%--==========================CELEBRITY SQUAD End============================--%>


            <%--========================Buy 2 items get 10 OFF  start===============================--%>
            <section class=" shop-block-wrap  shop-block-wrap1 am-padding-top-lg">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="Buy2itemsGet10OFF.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_03.png" %>' alt="Banner" style="width: 100%;" />
                        </div>
                    </a>
                </div>

                <div class="shop-block shop-block1 am-padding" id="product-make9">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="Buy2itemsGet10OFF.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/more.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>


            <%--==========================Buy 2 items get 10 OFF End============================--%>

            <%--=========================品牌Logo Start===============================--%>

            <section class="am-padding-top-lg shop-block-wrap shop-block-wrap2">
                <div class="banner-box  banner-box2">
                    <div class="banner-box-img">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_04.png" %>' alt="Selected brands" style="width: 100%;" />
                    </div>
                </div>

                <div class="shop-block shop-block2">

                    <ul class="am-padding-0 am-margin-0 am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl hvr-float">
                                    <div class="hot-brand-item">
                                        <a href='<%#Eval("url") %>' target="_blank">
                                            <div class="brand-pic">
                                                <img data-sizes="auto" src='<%#Eval("img") %>'>
                                            </div>
                                            <div class="brand-logo">
                                                <img class=" am-center" data-sizes="auto" src='<%#Eval("logo") %>'>
                                            </div>
                                            <div class="brand-info">
                                                <h5>'<%#Eval("name") %>'</h5>
                                                <span>'<%#Eval("title") %>'</span>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
            </section>
            <%--================================= 品牌Logo   End ===============================--%>


            <%--=============================Bundle Sale  Start ===============================--%>

            <section class=" shop-block-wrap shop-block-wrap3  am-padding-vertical-lg">
                <div class="banner-box  banner-box3">
                    <a href="bandle_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block3" id="product-make10">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>

            </section>
            <%--================================== Bundle Sale  End ===============================--%>

            <%--==============================活動辦法 Start =====================================--%>
        </div>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions
                <br />
                Moon Festival Sale<br />
                1. Promotion date : 3rd September 2019 - 13rd September 2019<br />
                2. Use Code 【MF15】for EXTRA RM15 OFF (min spend 150); Use Code【MF25】for EXTRA RM25 OFF (min spend 250)<br />
                3. Coupon is APPLICABLE on selected Flagship Stores , including Deseno, Newart, Mooimom, Anriea, Life 8, Zephyrine, DV,  Laler, Loving Family, Hsu's, Choyer, Paradiso Garden, Dr. Grandma and Dr. Morita.
            </p>
        </footer>
        <%--==============================活動辦法 End=====================================--%>
    </div>
    <script src="../../js/wow.min.js"></script>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>--%>
    <%--    <script type="text/javascript">


        $(document).ready(function () {
            for (i = 0; i < 7; i++) {
                duplicate('product-make8');
            }
            for (i = 0; i < 7; i++) {
                duplicate('product-make9');
            }
            for (i = 0; i < 39; i++) {
                duplicate("product-make10");
            }
            for (i = 0; i < 19; i++) {
                duplicate("product-make20");
            }
            for (i = 0; i < 6; i++) {
                duplicate("product-make48");
            }
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }
    </script>--%>
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

