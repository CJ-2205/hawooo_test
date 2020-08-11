<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="YesTaiwanSale.aspx.cs" Inherits="user_static_YesTaiwanSale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/YesTaiwanSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="background-color: #D1AD84;" id="maincId">
        <%--=====================Top Banner Start==========================--%>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_01.png" %>' alt="" style="width: 100%;" />
            <a id="coupon1" data-clipboard-text="MIT20" onclick="Clip('coupon1');">
                <div class="copy-coupon "></div>
            </a>
            <span class="mit-banner">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bd_00.png" %>' alt="Banner" style="width: 100%;" /></span>
        </div>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container">
            <div class="am-padding-top-xs">
                <ul class="am-avg-sm-2 circle-block">
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=194">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bd_01.png" %>' alt="circle_banner1" style="width: 100%;" />
                        </a>
                    </li>
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=251">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bd_02.png" %>' alt="circle_banner2" style="width: 100%;" />
                        </a>
                    </li>
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=32">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bd_03.png" %>' alt="circle_banner3" style="width: 100%;" />
                        </a>
                    </li>
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="https://www.hawooo.com/user/brands.aspx?bid=329">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bd_04.png" %>' alt="circle_banner4" style="width: 100%;" />
                        </a>
                    </li>
                </ul>
            </div>

            <%--==============================Editor Chioce Star===============================--%>

            <section class="am-padding-top-sm">
                <div class="banner-box">
                    <a href="EditorChoice.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="shop-block shop-block1" id="product-make">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="EditorChoice.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/more_01.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%--============================== Editor Choice  End ===============================--%>

            <%--============================== BeautyChoice  shop-block2 Star===============================--%>

            <section class="am-padding-top-sm">
                <div class="banner-box">
                    <a href="BeautyChoice.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_03.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="shop-block shop-block2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="BeautyChoice.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/more_02.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%--============================== BeautyChoice  shop-block2 End ===============================--%>


            <%--==============================LifeChoice  shop-block3  Star===============================--%>

            <section class="am-padding-top-sm">
                <div class="banner-box">
                    <a href="LifeChoice.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="shop-block shop-block3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="LifeChoice.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/more_03.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%--============================== LifeChoice  shop-block3  End ===============================--%>


            <%--=============================Brand Store Star====================================--%>
            <section class="am-padding-bottom">
                <div class="banner-box">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="brand-store">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl   hvr-float brand-item am-padding-sm">
                                    <a href='<%# Eval("url") %>'>
                                        <div class="brand-item-pic">
                                            <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/"+Eval("img")+".png" %>' style="width: 100%;">
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>


            <%--==============================活動辦法 Start =====================================--%>
        </div>
        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                Yes! Taiwan Sale：<br />
                1. Promotion date：17 Jul 2019 - 31 Jul 2019<br />
                2. Coupon：spend RM160 and get RM20 off - use promo code “MIT20”<br />
                3. Coupon is APPLICABLE on ALL Mild's, Vivipam, Snug, Feebees, Sky Spring, Orangelady, supercut, Dawoko, Chef Clean, Loving Family, FreshO2, Vincents World, TTM, Dayla & Solis products, and applicable on selected products shown on this Yes! Taiwan Sale page.
            </p>
        </footer>
    </div>

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
    <%--==============================活動辦法 End=====================================--%>
</asp:Content>

