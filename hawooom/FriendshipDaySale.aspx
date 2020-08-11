<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="FriendshipDaySale.aspx.cs" Inherits="mobile_static_FriendshipDaySale_FriendshipDaySale" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/FriendshipDaySale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--=====================Top Banner Start==========================--%>
    <div class="banner-box">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_01m.png" %>' alt="首頁banner" style="width: 100%;" />
    </div>
    <div>
        <ul class="copy-coupon am-avg-sm-3">
            <li>
                <a id="coupon1" data-clipboard-text="FRIEND20" onclick="Clip('coupon1');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/coupon_01m.png" %>' alt="coupon1" style="width: 100%;" />
                </a>
            </li>
            <li>
                <a id="coupon2" data-clipboard-text="FRIEND30" onclick="Clip('coupon2');">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/coupon_02m.png" %>' alt="coupon2" style="width: 100%;" />
                </a>
            </li>
        </ul>
    </div>
    <%--=====================Top Banner End==========================--%>

    <%------(第一區)買一送一專區 Star---------%>

    <div class="am-g" id="FriendshipDaySale">
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="Buy1Free1.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_02m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="shop-block1 mb-product-block" id="product-make80">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="Buy1Free1.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_01m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%---------(第一區)買一送一專區 End---------%>

        <%------(第二區)BeautySpree Start---------%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="BeautySpree.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_03m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="shop-block2 mb-product-block" id="product-make2">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products2" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="BeautySpree.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_02m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%------(第二區)BeautySpree  End---------%>


        <%------(第三區)BuildYourLifestyle Start---------%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="BuildYourLifestyle.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_04m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="shop-block3 mb-product-block" id="product-make3">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products3" />
                </ul>
            </div>
            <div class="see-more-btn">
                <a href="BuildYourLifestyle.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_03m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%------(第三區)BuildYourLifestyle End---------%>

        <%------(第四區)Fashionista's Wear Start---------%>
        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="FashionistaWear.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_04_1m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>
            <div class="shop-block4 mb-product-block">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products4" />
            </div>
            <div class="see-more-btn">
                <a href="FashionistaWear.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_04m.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                </a>
            </div>
        </section>
        <%------(第四區)Fashionista's Wear End---------%>

        <%------------Brand Store Star---------------%>

        <section class="am-padding-top-xs">
            <div class="banner-box">
                <a href="#" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_05m.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-brand-block ">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("_url") %>'>
                                    <div class="brand-item-pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/"+Eval("_img")+".png" %>' style="width: 100%;">
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>

        </section>
        <%--============================== BRANDS End=====================================--%>
        <%------------Under-block Start---------------%>
        <div class="mb-under-block  am-margin-bottom">
            <ul class="am-avg-sm-4">

                <li class="am-fl  hvr-float am-padding-sm">
                    <a href="#">
                        <div class="mb-under-block-img">
                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_06m.png" %>' style="width: 100%;">
                        </div>
                    </a>
                </li>
                <li class="am-fl  hvr-float am-padding-sm">
                    <a href="#">
                        <div class="mb-under-block-img">
                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_07m.png" %>' style="width: 100%;">
                        </div>
                    </a>
                </li>
                <li class="am-fl  hvr-float am-padding-sm">
                    <a href="#">
                        <div class="mb-under-block-img">
                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bu_08m.png" %>' style="width: 100%;">
                        </div>
                    </a>
                </li>
                <li class="am-fl  hvr-float am-padding-sm">
                    <a href="#">
                        <div class="mb-under-block-img">
                            <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_09m.png" %>' style="width: 100%;">
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <%------------Under-block End---------------%>
    </div>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0">
            Terms & Conditions 
            <br />
            International Friendship Day Sale
            <br />
            1. Promotion date : 22nd July 2019 - 31st July 2019
            <br />
            2. Use Code 【FRIEND20】for EXTRA RM20 OFF (min spend 180); Use Code【FRIEND30】for EXTRA RM30 OFF (min spend 260)
            <br />
            3. Coupon is APPLICABLE on selected Flagship Stores , including CACO, WAVE SHINE, DV, Life 8, HSU’S, CHECK2CHECK, and LOVING FAMILY.
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

