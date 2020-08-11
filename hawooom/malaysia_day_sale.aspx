<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="malaysia_day_sale.aspx.cs" Inherits="mobile_static_malaysia_day_sale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/malaysia_day_sale.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <%--=====================領取折扣券 Start==========================--%>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_01.png" %>' alt="首頁banner" style="width: 100%;" />
        </div>
        <div class="coupon am-center">
            <ul class="am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="MD30" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/COUPON_M01.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/M_REGISTER.png" %>' alt="register" style="width: 100%;" />
                </li>

            </ul>

            <div class="register am-center am-text-justify">
                <p style="text-align:center">
                    Spend RM350*, GET 3 Dr. Morita mask!<br />
                    First 100 customer only！<br />
                    1. *Amount AFTER using code .<br />
                    2. Free gift limited 100 units.<br />
                    3. Terms and conditions apply.
                </p>
            </div>
        </div>
        <%--=====================領取折扣券 End==========================--%>

        <%--=====================shop-block-wrap1===Best offer Start===============================--%>

        <section class="am-padding-top-lg">
            <div class="banner-box  am-text-center">
                <a href="best_offer.aspx" target="_blank">
                    <div class="banner-box-img ">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_02.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block1" id="product-make1">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="best_offer.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/M1.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=======================shop-block-wrap1===Best offer  End============================--%>
        <%--=======================shop-block-wrap2===品牌Logo Start===============================--%>
        <section class="am-padding-top-xl">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_03.png" %>' alt="Flagship Store Banner" style="width: 100%;" />
            </div>

            <div class="mb-shop-block mb-shop-block2">
                <ul class="am-margin-0 am-avg-sm-2">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("url")%>' target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%#Eval("img")%>'>
                                    </div>
                                    <div class="brand-logo">
                                        <img class=" am-center" data-sizes="auto" src='<%#Eval("logo")%>'>
                                    </div>
                                    <div class="brand-info">
                                        <h6>'<%#Eval("name")%>'</h6>
                                        <span>'<%#Eval("title")%>'</span>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%--<li class="am-fl">
                        <a href="#">
                            <div class="product_item_pic">
                                <img data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/BD_01.png">
                            </div>
                            <div class="brand-logo">
                                <img class=" am-center" data-sizes="auto" src="https://www.hawooo.com/images/ftp/20190913/LOGO_01.png">
                            </div>
                            <div class="brand-info">
                                <h6>Crisstar</h6>
                                <span>全館買一件折10</span>
                            </div>
                        </a>
                    </li>--%>
                </ul>
            </div>
        </section>
        <%--============================== shop-block-wrap2=== 品牌Logo   End ===============================--%>


        <%--=========================shop-block-wrap3====Beauty  Start ===============================--%>
        <section class="shop-block-wrap am-padding-top-xl">
            <div class="banner-box">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_08.png" %>' alt="Banner" style="width: 100%;" />
                </a>
                <a href="beauty.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_04.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block4" id="product-make2">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products2" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="beauty.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/M2.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap3==== Beauty  End ===============================--%>

        <%--=========================shop-block-wrap4===Supplement  Start ===============================--%>
        <section class=" shop-block-wrap am-padding-top-xl">
            <div class="banner-box">
                <a href="supplement.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_05.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block5" id="product-make3">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="supplement.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/M3.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap4===Supplement  End ===============================--%>
        <%--=========================shop-block-wrap5===Life Start ===============================--%>
        <section class=" shop-block-wrap am-padding-top-xl">
            <div class="banner-box">
                <a href="beauty.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_06.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block6" id="product-make5">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products4" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="beauty.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/M4.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap5===Life  End ===============================--%>

        <%--=========================shop-block-wrap6===Fashion Start ===============================--%>
        <section class="shop-block-wrap   am-padding-vertical-xl">
            <div class="banner-box">
                <a href="fashion.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/MBN_07.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block7" id="product-make6">
                <ul class="am-avg-sm-2">
                    <uc1:products runat="server" id="products5" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="fashion.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/M5.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================shop-block-wrap6===Fashion  End ===============================--%>
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

