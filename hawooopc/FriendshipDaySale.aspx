<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="FriendshipDaySale.aspx.cs" Inherits="user_static_NewFolder1_FriendshipDaySale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/FriendshipDaySale.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="FriendshipDaySale">
        <%--=====================Top Banner Start==========================--%>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_01.png" %>' alt="" style="width: 100%;" />
            <%--<img src="https://www.hawooo.com/images/ftp/20190722/bn_01.png" alt="" style="width: 100%;" />--%>
        </div>
        <div>
            <ul class="copy-coupon am-avg-sm-2">
                <li>
                    <a id="coupon1" data-clipboard-text="FRIEND20" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/coupon_01.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="FRIEND30" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/coupon_02.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================Top Banner End==========================--%>
        <div class="am-container">

            <%------(第一區)買一送一專區 Star---------%>

            <section class="am-padding-top-lg">
                <div class="banner-box">
                    <a href="Buy1Free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block1">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="Buy1Free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_01.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%---------(第一區)買一送一專區 End---------%>

            <%------(第二區)BeautySpree Start---------%>

            <section class="am-padding-top-lg">
                <div class="banner-box">
                    <a href="BeautySpree.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_03.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="BeautySpree.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_02.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%------(第二區)BeautySpree  End---------%>


            <%------(第三區)BuildYourLifestyle Start---------%>

            <section class="am-padding-top-lg">
                <div class="banner-box">
                    <a href="BuildYourLifestyle.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="BuildYourLifestyle.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_03.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%------(第三區)BuildYourLifestyle End---------%>



            <%------(第四區)Fashionista's Wear Start---------%>

            <section class="am-padding-top-lg">
                <div class="banner-box">
                    <a href="FashionistaWear.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_04_1.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block4">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="FashionistaWear.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/more_04.png" %>' alt="SeeMoreBtn" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%------(第四區)Fashionista's Wear End---------%>

            <%------------Brand Store Star---------------%>

            <section class="am-padding-bottom">

                <div class="banner-box">
                    <a href="#" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="brand-store">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl  hvr-float am-padding-sm">
                                    <a href='<%# Eval("_url") %>'>
                                        <div class="brand-item-pic">
                                            <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/"+Eval("_img")+".png" %>' style="width: 100%;">
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--                        <li class="am-fl  hvr-float am-padding-sm">
                            <a href="#">
                                <div class="brand-item-pic">
                                    <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20190722/bd_01.png" style="width: 100%;">
                                </div>
                            </a>
                        </li>--%>
                    </ul>
                </div>
            </section>
            <%------------Brand Store End---------------%>

            <%------------Under-block Start---------------%>
            <div class="under-block  am-margin-bottom">
                <ul class="am-avg-sm-4">

                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="#">
                            <div class="under-block-img">
                                <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_06.png" %>' style="width: 100%;">
                            </div>
                        </a>
                    </li>
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="#">
                            <div class="under-block-img">
                                <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_07.png" %>' style="width: 100%;">
                            </div>
                        </a>
                    </li>
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="#">
                            <div class="under-block-img">
                                <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_08.png" %>' style="width: 100%;">
                            </div>
                        </a>
                    </li>
                    <li class="am-fl  hvr-float am-padding-sm">
                        <a href="#">
                            <div class="under-block-img">
                                <img data-sizes="auto" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_09.png" %>' style="width: 100%;">
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <%------------Under-block End---------------%>
        </div>

        <%--==============================活動辦法 Start =====================================--%>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                International Friendship Day Sale<br />
                1. Promotion date : 22nd July 2019 - 31st July 2019<br />
                2. Use Code 【FRIEND20】for EXTRA RM20 OFF (min spend 180); Use Code【FRIEND30】for EXTRA RM30 OFF (min spend 260)<br />
                3. Coupon is APPLICABLE on selected Flagship Stores , including CACO, WAVE SHINE, DV, Life 8, HSU’S, CHECK2CHECK, and LOVING FAMILY.
            </p>
        </footer>
    </div>
    <%--==============================活動辦法 End=====================================--%>
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

