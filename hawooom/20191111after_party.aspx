<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191111after_party.aspx.cs" Inherits="mobile_static_20191111after_party" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191111after_party.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_01m.png" %>' alt="main-banner" />
        </div>

        <%--========================Coupon Start===============================--%>

        <div class="copy-coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="APS20" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon_01m.png" %>' alt="coupon_01m" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="APS30" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon_02m.png" %>' alt="coupon_02m" />
                    </a>
                </li>
                <li>
                    <a id="coupon3" data-clipboard-text="APS40" onclick="Clip('coupon3');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon_03m.png" %>' alt="coupon_03m" />
                    </a>
                </li>
            </ul>
        </div>

        <%--========================Coupon End===============================--%>

        <%--=====================Catch up Sale  Start===============================--%>

        <section class="am-padding-top-xs  mb-shop-block-wrap" id="s1">
            <div class="banner-box am-padding-vertical-xs">
                <a href="20191111catch_up_sale.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_02m.png" %>' alt="bn_02m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block shop-block-bg goods-items3" id="product-make1">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptCatch" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="20191111catch_up_sale.aspx" target="_blank">
                                    <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                    <div class="goods-img">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-neme">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>

                                        <div class="goods-price">
                                            <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <%--<ul class="am-avg-sm-3">
                    <li class="am-fl ">
                        <a href="#!">
                            <div class="discount-tag">-50%</div>
                            <div class="goods-img">
                                <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                            </div>
                            <div class="goods-info">
                                <div class="goods-neme">
                                    <h3>福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅嶺梅子醋 250ml</h3>
                                </div>

                                <div class="goods-price">
                                    <h2>RM 1998.00</h2>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>--%>
            </div>
            <div class="see-more shop-block-bg am-padding-bottom-sm">
                <a href="20191111catch_up_sale.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/more.png" %>' alt="see more btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--====================Catch up Sale  End============================--%>

        <%--==================Buy 1 Free 1  Start==========================--%>

        <section class="am-padding-top-xs  mb-shop-block-wrap" id="s2">
            <div class="banner-box am-padding-vertical-xs">
                <a href="20191111buy1free1.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_03m.png" %>' alt="bn_03m" style="width: 100%;" />
                </a>
            </div>
            <div class="mb-shop-block shop-block-bg goods-items3" id="product-make2">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBuy1Free1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl ">
                                <a href="20191111buy1free1.aspx" target="_blank">
                                    <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                    <div class="goods-img">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-neme">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>

                                        <div class="goods-price">
                                            <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="see-more shop-block-bg  am-padding-bottom-sm">
                <a href="20191111buy1free1.aspx">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/more.png" %>' alt="see more btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <%--=======================Buy 1 Free 1  End============================--%>



        <%--=======================Highlighted Brands1 Start===========================--%>



        <section class="mb-shop-block-wrap  am-padding-top-xs">
            <div class="banner-box am-padding-vertical-xs" id="s3">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
            </div>
            <div class="banner-box bd-bn">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=208">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_01.png" %>' alt="bd_01" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block  shop-block-bg goods-3items-mb" id="product-make7">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=208" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands1  End============================--%>

        <%--=======================Highlighted Brands2 Start===========================--%>

        <section class="mb-shop-block-wrap am-padding-top-xs">

            <div class="banner-box bd-bn">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=269" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_02.png" %>' alt="bd_02" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=269" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands2   End============================--%>
        <%--=======================Highlighted Brands3 Start===========================--%>

        <section class="mb-shop-block-wrap am-padding-top-xs">

            <div class="banner-box bd-bn">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=312" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_03.png" %>' alt="bd_03" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=312" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands3   End============================--%>
        <%--=======================Highlighted Brands4 Start===========================--%>

        <section class="am-padding-top-sm">

            <div class="banner-box bd-bn">
                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=283" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_04.png" %>' alt="bd_04" style="width: 100%;" />
                </a>
            </div>

            <div class="mb-shop-block mb-shop-bg goods-3items-mb">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="rptBrand4" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=283" target="_blank">
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1").ToString() %>'>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block">
                                            <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        </div>
                                        <div class="product_item_block">
                                            <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--=======================Highlighted Brands4   End============================--%>
        <%--====================Highlighted Brands 5~12=== Start============================--%>
        <section class="am-padding-top-xs  mb-shop-block-wrap">
            <div class="mb-shop-block mb-shop-block3  shop-block-bg">
                <ul class="am-avg-sm-2">
                    <asp:Repeater ID="rpBrand" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#Eval("url") %>' target="_blank">
                                    <img src='<%#Eval("img") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

        <%--====================Highlighted Brands 5~12=== End============================--%>

        <%--=====================錨點連結區1  Start===============================--%>

        <section class="am-padding-top-sm" id="s4">
            <div class="banner-box am-padding-vertical-xs">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_05m.png" %>' alt="bn_05m" />
            </div>

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li class="is-active" id="tab1"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_01m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container3 link-block" id="product-make4">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區1  End ==========================--%>


        <%--=====================錨點連結區2  Start===============================--%>

        <section class="am-padding-top" id="cc">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li class="is-active" id="tab2"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_02m.png" %>' alt="c_02m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container4  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區2  End ==========================--%>

        <%--=====================錨點連結區3  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li class="is-active" id="tab3"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_03m.png" %>' alt="c_03m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container5  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區3  End ==========================--%>

        <%--=====================錨點連結區4  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li class="is-active" id="tab4"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_04m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container6  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
            </div>
        </section>

        <%--===================== 錨點連結區4  End ==========================--%>


        <%--=====================錨點連結區5  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li class="is-active" id="tab5"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_05m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container7  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products5" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區5  End ==========================--%>


        <%--=====================錨點連結區6  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li class="is-active" id="tab6"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>

            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=266" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_06m.png" %>' alt="c_06m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container8  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products6" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區6  End ==========================--%>

        <%--=====================錨點連結區7  Start===============================--%>

        <section class="am-padding-top">

            <div class="mb-shop-block-wrap  float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li class="is-active" id="tab7"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li onclick="AnchorPoint('tab8')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_07m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container9  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products7" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區7  End ==========================--%>

        <%--=====================錨點連結區8  Start===============================--%>

        <section class="am-padding-top">

            <div class="float-menu">
                <ul class="am-nav">
                    <li onclick="AnchorPoint('tab1')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_01.png" %>' alt="bg_01" /></a></li>
                    <li onclick="AnchorPoint('tab2')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_02.png" %>' alt="bg_02" /></a></li>
                    <li onclick="AnchorPoint('tab3')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_03.png" %>' alt="bg_03" /></a></li>
                    <li onclick="AnchorPoint('tab4')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_04.png" %>' alt="bg_04" /></a></li>
                    <li onclick="AnchorPoint('tab5')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_05.png" %>' alt="bg_05" /></a></li>
                    <li onclick="AnchorPoint('tab6')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_06.png" %>' alt="bg_06" /></a></li>
                    <li onclick="AnchorPoint('tab7')"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_07.png" %>' alt="bg_07" /></a></li>
                    <li class="is-active" id="tab8"><a>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bg_08.png" %>' alt="bg_08" /></a></li>
                </ul>
            </div>
            <div class="mb-slider-product shop-block-bg">
                <div class="banner-box">
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_08m.png" %>' alt="b_01m" style="width: 100%;" />
                    </a>
                </div>
                <div class="swiper-container swiper-container10  link-block">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products8" />
                    </ul>
                </div>
            </div>

        </section>

        <%--===================== 錨點連結區8  End ==========================--%>

        <%--=====================You May Also Like...  Start========================--%>

        <section class="am-padding-top-sm am-padding-bottom-lg">
            <h3 class="am-margin-bottom-0 also-like">You May Also Like...</h3>
            <div class="mb-slider-product shop-block-bg">
                <div class="swiper-container swiper-container11" id="product-make9">
                    <ul class="swiper-wrapper am-margin-0 am-padding-0">
                        <uc1:products runat="server" id="products9" />
                    </ul>
                </div>
            </div>
        </section>
        <%--=====================You May Also Like...  End =====================--%>
        <%--======================= Footer=== Start ========================--%>
        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions<br />
                1111 After Party Sale<br />
                1. Promotion date : 12th November 2019 - 21st November 2019<br />
                2. Promotion Coupon:<br />
                * RM20 OFF (min spend 180), use code [ APS20 ]<br />
                * RM30 OFF (min spend 280), use code [ APS30 ]<br />
                * RM40 OFF (min spend 380), use code [ APS40 ]<br />
                3. Coupon are NOT applicable on Catch Up Sale Items<br />
                4. Coupon is APPLICABLE on selected Flagship Stores , including Dr.Cink, DV, Dr.Lady, Hsu's, Laler, Choyer, Nature Food Cover, Hallmark, Loving Family, Bao Mommy, Anriea, Rootfocus, Mooimom, Naturero, Enjoy The Life , Newart, Paradiso<br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 1111 After Party Sale Terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-4">
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">

        $(window).load(function () {
            $(".swiper-container li").attr("class", "am-fl swiper-slide");
            setThem();
        });

        function setThem() {
            var i;
            var cnt = 11; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
                        //autoplay: {
                        //    delay: 5000,
                        //},
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },
                        breakpoints: {
                            640: {
                                slidesPerView: 2.2,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };


        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };

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

