<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191111after_party.aspx.cs" Inherits="user_static_20191111after_party" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191111after_party.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <%--=====================側邊選單 Start ==========================--%>

        <div class="side-bar am-center">

            <ul>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_01.png" %>' alt="ss_01" />
                </li>
                <li onclick="goto('s1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_02.png" %>' alt="ss_02" />
                </li>
                <li onclick="goto('s2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_03.png" %>' alt="ss_03" />
                </li>
                <li onclick="goto('s3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_04.png" %>' alt="ss_04" />
                </li>
                <li onclick="goto('s4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/ss_05.png" %>' alt="ss_05" />
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>

        <%--=====================Top Banner Start ==========================--%>
        <div class="top-bn banner-box" id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_01.png" %>' alt="主banner" />
            <div class="center-bn">
                <div class="center-bg">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/after_center_bg.png" %>' alt="after_center_bg.png" style="width: 100%;">
                </div>
                <div class="center-img">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/after_center.svg" %>' alt="after_center.svg" style="width: 100%;" />
                </div>
                <div class="hw-logo">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/shw_logo.png" %>' alt="shw_logo.svg" style="width: 100%;" />
                </div>
            </div>
        </div>
        <%--=====================Top Banner End==========================--%>

        <div class="am-container">

            <%--=====================領取折扣券 Start==========================--%>
            <div class="copy-coupon pc-copy-coupon am-padding-top-lg am-margin-top-lg">

                <ul class="am-avg-sm-3">
                    <li>
                        <a id="coupon1" data-clipboard-text="APS20" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon_02.pn1" %>' alt="coupon_01" class="btn1" />
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon1_1.png" %>' alt="coupon_01" class="btn2" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon2" data-clipboard-text="APS30" onclick="Clip('coupon2');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon_02.png" %>' alt="coupon_02" class="btn1" />
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon2_2.png" %>' alt="coupon_02" class="btn2" />
                        </a>
                    </li>
                    <li>
                        <a id="coupon3" data-clipboard-text="APS40" onclick="Clip('coupon3');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon_03.png" %>' alt="coupon_03" class="btn1" />
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/coupon3_3.png" %>' alt="coupon_03" class="btn2" />
                        </a>
                    </li>
                </ul>

            </div>
            <%--=====================領取折扣券 End==========================--%>


            <%--=====================Catch Up Sale Start===============================--%>
            <section class="am-padding-vertical-lg  am-margin-vertical-lg" id="s1">

                <div class="banner-box  am-text-center  am-margin-bottom-sm">
                    <a href="20191111catch_up_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_02.png" %>' alt="bn_02" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block-bg am-padding-sm shop-block " id="product-make2">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="CatchProducts" />

                        <%--<asp:Repeater ID="rptCatch" runat="server">
                            <ItemTemplate>
                                <li class="am-fl ">
                                    <a href="20191111catch_up_sale.aspx">
                                        <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                        <div class="goods-img">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload">
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
                        </asp:Repeater>--%>
                    </ul>
                </div>
                <div class="see-more  pc-see-more shop-block-bg am-padding-bottom">
                    <a href="20191111catch_up_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/more.png" %>' alt="see-more" style="width: 100%;" />
                    </a>
                </div>

            </section>

            <%--====================Catch Up Sale  End============================--%>


            <%--=============================buy 1 free 1 Start============================--%>

            <section class="am-padding-vertical-lg  am-margin-vertical-lg" id="s2">

                <div class="banner-box  am-text-center am-margin-bottom-sm">
                    <a href="20191111buy1free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_03.png" %>' alt="bn_03" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block-bg am-padding-sm shop-block " id="product-make3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="Buy1Free1Products" />

                        <%--<asp:Repeater ID="rptBuy1Free1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl ">
                                    <a href="20191111buy1free1.aspx">
                                        <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                        <div class="goods-img">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload">
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
                        </asp:Repeater>--%>
                    </ul>
                </div>
                <div class="see-more  pc-see-more  shop-block-bg  am-padding-bottom">
                    <a href="20191111buy1free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/more.png" %>' alt="see-more" style="width: 100%;" />
                    </a>
                </div>
            </section>

            <%--=====================buy 1 free 1  End===============================--%>

            <%--=======================Highlighted Brands1 Start===========================--%>

            <div class="banner-box  am-padding-top" id="s3">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_04.png" %>' alt="bn_04" />
                </a>
            </div>

            <section class=" am-padding-top-sm">

                <ul class="am-avg-sm-2">
                    <li class="am-padding-right-xs  shop-block-bg" id="b1">

                        <div class="banner-box">
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_01.png" %>' alt="bd_01" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items " id="product-make0000">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="Brand1" />

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
                    </li>
                    <li class="am-padding-left-xs" id="b2">
                        <div class="banner-box">
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_02.png" %>' alt="bd_02" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items" id="product-make000">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="Brand2" />
                            </ul>
                        </div>
                    </li>

                    <li class="am-padding-right-xs  am-padding-top-sm" id="b3">
                        <div class="banner-box">
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_03.png" %>' alt="bd_03" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items" id="product-make00">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="Brand3" />
                            </ul>
                        </div>
                    </li>

                    <li class="am-padding-left-xs am-padding-top-sm" id="b4">
                        <div class="banner-box">
                            <a href="#">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bd_04.png" %>' alt="bd_04" />
                            </a>
                        </div>

                        <div class="mb-shop-bg goods-3items" id="product-make0">
                            <ul class="am-avg-sm-3">
                                <uc1:products runat="server" id="Brand4" />
                            </ul>
                        </div>
                    </li>
                </ul>

            </section>

            <%--=======================Highlighted Brands1  End============================--%>

            <%--====================Highlighted Brands 5~12=== Start============================--%>
            <section class="am-padding-top-xs">
                <div class="mb-shop-block mb-shop-bg  goods-mb">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%#Eval("url") %>' target="_blank">
                                        <img src='<%#Eval("img") %>' />
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>

            <%--====================Highlighted Brands 5~12=== End============================--%>



            <%--=====================錨點連結區1  Start===============================--%>

            <section id="s4" class="am-padding-top-lg am-margin-top-lg">
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bn_05.png" %>' alt="bn_05" />
                </div>

                <div class="pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_01.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products1" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>

            <%--===================== 錨點連結區2  Start==========================--%>
            <section class="am-padding-top">

                <div class="pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_02.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products2" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--===================== 錨點連結區3  Start==========================--%>
            <section class="am-padding-top">

                <div class="mb-shop-block-wrap pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_03.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products3" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--===================== 錨點連結區4  Start==========================--%>
            <section class="am-padding-top">

                <div class="mb-shop-block-wrap  pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_04.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products4" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>
            <%--===================== 錨點連結區5  Start==========================--%>
            <section class="am-padding-top">

                <div class="mb-shop-block-wrap  pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=44" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_05.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products5" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區5  End ==========================--%>
            <%--===================== 錨點連結區6  Start==========================--%>
            <section class="am-padding-top">

                <div class="mb-shop-block-wrap  pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=266" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_06.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products6" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區6  End ==========================--%>
            <%--===================== 錨點連結區7  Start==========================--%>
            <section class="am-padding-top">

                <div class="mb-shop-block-wrap  pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_07.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products7" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--===================== 錨點連結區7  End ==========================--%>
            <%--===================== 錨點連結區8  Start==========================--%>
            <section class="am-padding-top">

                <div class="mb-shop-block-wrap  pc-float-menu">
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

                <div class="shop-block-bg am-padding-sm">
                    <div class="category-bn-group">

                        <div class="am-u-sm-12 category-bn">
                            <div class="shop-block shop-block3">
                                <ul class="am-avg-sm-5 shop-block-bg">
                                    <li class="am-fl  hvr-float">
                                        <a href="https://www.hawooo.com/user/market.aspx?cid=49" target="_blank">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/c_08.png" %>'>
                                        </a>
                                    </li>
                                    <uc1:products runat="server" id="products8" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <%--===================== 錨點連結區8  End ==========================--%>


            <%--=====================You May Also Like...  Start========================--%>
            <section class="am-padding-vertical-lg  am-margin-bottom-lg">
                <h1 class="am-margin-bottom-xs am-padding-left-xs  also-like">You May Also Like...</h1>
                <div>
                    <div class="shop-block-bg am-padding-sm shop-block  shop-block3" id="product-make6">
                        <ul class="am-avg-sm-5">
                            <uc1:products runat="server" id="products9" />
                        </ul>
                    </div>
                </div>
            </section>
            <%--=====================You May Also Like...  End =====================--%>
            <%--==============================活動辦法 Start =====================================--%>
        </div>
    </div>

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
    <%--==============================活動辦法 End=====================================--%>


    <%-- <script src="../js/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>--%>
    <script src="assets/js/swiper.min.js"></script>


    <script type="text/javascript">

        $(function () {
            $('#b1 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=208",
                "target": "_black"
            });

            $('#b2 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=269",
                "target": "_black"
            });

            $('#b3 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=312",
                "target": "_black"
            });

            $('#b4 a').attr({
                "href": "https://www.hawooo.com/user/brands.aspx?bid=283",
                "target": "_black"
            });

            $(".shop-block li").attr("class", "am-fl hvr-float");
            $(".goods-3items li").attr("class", "am-fl hvr-float");

        });


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

