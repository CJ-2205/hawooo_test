<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="YesTaiwanSale.aspx.cs" Inherits="mobile_static_YesTaiwanSale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/YesTaiwanSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <%--=====================Top Banner Start==========================--%>
    <div class="banner-box">

        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bn_01m.png" %>' alt="" style="width: 100%;" />

                <div class="copy-coupon" id="coupon1" data-clipboard-text="MIT20" onclick="Clip('coupon1');"></div>


        <span class="mb-mit-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bd_00m.png" %>' alt="Banner" style="width: 100%;" />
        </span>
    </div>
    <%--=====================Top Banner End==========================--%>


    <div class="am-g mit-sale">

        <section class="am-padding-top-xs am-container mb-circle-banner-group">
            <div class="mb-circle-banner">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=194">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bd_01m.png" %>' alt="circle_banner1" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-circle-banner">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=251">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bd_02m.png" %>' alt="circle_banner1" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-circle-banner">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=32">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bd_03m.png" %>' alt="circle_banner1" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-circle-banner">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=329">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bd_04m.png" %>' alt="circle_banner1" style="width: 100%;" />
                </a>
            </div>
        </section>


        <%--==============================Editor Chioce mb-shop-block1 Star===============================--%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="EditorChoice.aspx" target="_blank">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bn_02m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block1 mb-product-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="EditorChoice.aspx">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/more_01m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==============================Editor Chioce mb-shop-block1 End===============================--%>
        <%--==============================BeautyChoice  mb-shop-block2  Star===============================--%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="BeautyChoice.aspx" target="_blank">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bn_03m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block2 mb-product-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products2" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="BeautyChoice.aspx">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/more_02m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==========================BeautyChoice  mb-shop-block2  End===============================--%>
        <%--==============================LifeChoice  mb-shop-block3  Star===============================--%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="LifeChoice.aspx" target="_blank">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bn_04m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block mb-shop-block3 mb-product-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" ID="products3" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="LifeChoice.aspx">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/more_03m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--==========================LifeChoice  mb-shop-block3  End===============================--%>
        <%--============================== BRANDS Start=====================================--%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="#" target="_blank">
                    <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190717/bn_05m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-brand-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("_src") %>'>
                                    <div class="brand-item-pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/"+Eval("_image")+".png" %>' style="width: 100%;">
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <%--============================== BRANDS End=====================================--%>
    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0">
            Terms & Conditions<br />
            Yes! Taiwan Sale：<br />
            1. Promotion date：17 Jul 2019 - 31 Jul 2019<br />
            2. Coupon：spend RM160 and get RM20 off - use promo code “MIT20”<br />
            3. Coupon is APPLICABLE on ALL Mild's, Vivipam, Snug, Feebees, Sky Spring, Orangelady, supercut, Dawoko, Chef Clean, Loving Family, FreshO2, Vincents World, TTM, Dayla & Solis products, and applicable on selected products shown on this Yes! Taiwan Sale page.
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

