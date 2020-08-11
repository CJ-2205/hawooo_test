<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200630pds.aspx.cs" Inherits="mobile_static_200630pds" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">

    <style>
        .mb-shop-block {
            padding: 3px;
        }

        /* Logo border style */
        #logo a {
            overflow: hidden;
            border: 2.5px solid #E5E5E5;
        }

        #logo .goods-brand-group a {
            overflow: hidden;
            border: 0 !important;
        }
    </style>

    <title>Pay Day Sale</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--MB  Contain (Start) ===================================================--%>
    <div class="am-g main-contain mb-contain" id="top" style="background: #F1E3CE;">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>

        <%--領取折扣券 (Start)====================================================--%>
        <div class="am-margin-top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="main-banner" />
        </div>
        <%-- <div class="include" data-file="coupon.html"></div>--%>
        <div class="am-margin-bottom">
            <div class="am-padding-horizontal-xs">
                <ul class="am-avg-sm-3">
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="PAY17">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="PAY37">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                        </a>
                    </li>
                    <li class="am-padding-xs">
                        <a class="btnn " data-clipboard-text="PAY57">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" />
                        </a>
                    </li>
                </ul>
                <ul class="am-avg-sm-2">
                    <li class="am-padding-xs">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_01" class="coupon-gift"/>
                    </li>
                    <li class="am-padding-xs">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="coupon_02" />
                    </li>
                </ul>
            </div>
        </div>
        <%--領取折扣券 (End) ====================================================--%>

        <%--Block1 HOT DEAL (Start) =====================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" id="s1" data-redirect="200630pds_hot_deal.aspx">
            <div class="am-margin-bottom-0">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" />
                </a>
            </div>
            <div class="am-padding-top-sm" style="background: #A4C3D2;">
                <div class="swiper-container swiper-container8 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <%-- <uc1:products runat="server" id="products1" />--%>
                        <asp:Repeater ID="rp_plist" runat="server" OnItemDataBound="rp_plist_ItemDataBound1">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-bottom">

                                            <div class="goods-block">
                                                <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                            </div>
                                            <div class="goods-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                <s class="goods-original-price">
                                                    <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                </s>
                                            </div>
                                            <div class="goods-block">
                                                <p>
                                                    SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                        <li class="am-fl swiper-slide goods-more">
                            <a>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center" style="height: 109px">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-vertical-sm am-u-sm-5 am-u-md-4 am-u-sm-centered">
                    <a class="am-u-sm-centered am-block">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200630/more_01.png" alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block1 HOT DEAL (End) ======================================================--%>

        <%--Block2 VALUE BUY(Start) =====================================================--%>
        <section class="am-margin-bottom all-anchor-href-redirect" data-redirect="200630pds_value_buy.aspx" id="s2">
            <div class="am-padding-bottom-0">
                <a>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_04m" />
                </a>
            </div>
            <div class="am-padding-top-sm" style="background: #A4C3D2;">
                <div class="swiper-container swiper-container8 mb-shop-block">
                    <ul class="swiper-wrapper">
                        <%--<uc1:products runat="server" id="products2" />--%>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="rp_plist_ItemDataBound2">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-bottom">

                                            <div class="goods-block">
                                                <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                            </div>
                                            <div class="goods-block">
                                                <h1 class="goods-price">
                                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                <s class="goods-original-price">
                                                    <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                </s>
                                            </div>
                                            <div class="goods-block">
                                                <p>
                                                    SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>



                        <li class="am-fl swiper-slide goods-more">
                            <a>
                                <div class="goods-top">
                                    <div class="goods-img">
                                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                    </div>
                                </div>
                                <div class="goods-bottom am-text-center" style="height: 109px">
                                    <h4 class="am-padding-vertical-lg">See More</h4>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="am-padding-vertical-sm am-u-sm-5 am-u-md-4 am-u-sm-centered">
                    <a class="am-u-sm-centered am-block">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200630/more_02.png" alt="more" />
                    </a>
                </div>
            </div>
        </section>
        <%--Block2 VALUE BUY(End) ======================================================--%>

        <%--Block3 Highlighted Brands(Start)==========================================--%>
        <section class="am-margin-bottom" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_09m" />
            </div>
            <div class="am-margin-bottom-sm" style="background: #A4C3D2;">
                <div id="logo1">
                    <%-- 品牌帶3小塊商品組合-1 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class=" mb-shop-block">
                            <ul class="am-avg-sm-3">
                                <%--am-avg-sm-3--%>
                                <%-- <uc1:products runat="server" id="products3" />--%>
                                <asp:Repeater ID="rp3" runat="server" OnItemDataBound="rp3_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                                <div class="goods-top">
                                                    <div class="goods-img">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                        <div class="goods-discount goods-discount3">
                                                            <span class="ribbon">
                                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">

                                                    <div class="goods-block">
                                                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                                    </div>
                                                    <div class="goods-block">
                                                        <h1 class="goods-price">
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                        <s class="goods-original-price">
                                                            <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                        </s>
                                                    </div>
                                                    <div class="goods-block">
                                                        <p>
                                                            SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-1 (End)--%>
                    <%-- 品牌帶3小塊商品組合-2 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <ul class="am-avg-sm-3">
                                <%--<uc1:products runat="server" id="products4" />--%>
                                 <asp:Repeater ID="rp4" runat="server" OnItemDataBound="rp3_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                                <div class="goods-top">
                                                    <div class="goods-img">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                        <div class="goods-discount goods-discount3">
                                                            <span class="ribbon">
                                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">

                                                    <div class="goods-block">
                                                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                                    </div>
                                                    <div class="goods-block">
                                                        <h1 class="goods-price">
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                        <s class="goods-original-price">
                                                            <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                        </s>
                                                    </div>
                                                    <div class="goods-block">
                                                        <p>
                                                            SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-2 (End)--%>
                    <%-- 品牌帶3小塊商品組合-3 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <ul class="am-avg-sm-3">
                                <%--<uc1:products runat="server" id="products5" />--%>
                                <asp:Repeater ID="rp5" runat="server" OnItemDataBound="rp3_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                                <div class="goods-top">
                                                    <div class="goods-img">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                        <div class="goods-discount goods-discount3">
                                                            <span class="ribbon">
                                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">

                                                    <div class="goods-block">
                                                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                                    </div>
                                                    <div class="goods-block">
                                                        <h1 class="goods-price">
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                        <s class="goods-original-price">
                                                            <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                        </s>
                                                    </div>
                                                    <div class="goods-block">
                                                        <p>
                                                            SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </ul>
                        </div>
                    </div>
                    <%-- 品牌帶3小塊商品組合-3 (End)--%>
                    <%-- 品牌帶3小塊商品組合-4 (Start)--%>
                    <div class="brand goods-brand-group">
                        <div class="mb-shop-block">
                            <ul class="am-avg-sm-3">
                                <%--<uc1:products runat="server" id="products6" />--%>
                                <asp:Repeater ID="rp6" runat="server" OnItemDataBound="rp3_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                                <div class="goods-top">
                                                    <div class="goods-img">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                        <div class="goods-discount goods-discount3">
                                                            <span class="ribbon">
                                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">

                                                    <div class="goods-block">
                                                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                                    </div>
                                                    <div class="goods-block">
                                                        <h1 class="goods-price">
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                        <s class="goods-original-price">
                                                            <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                        </s>
                                                    </div>
                                                    <div class="goods-block">
                                                        <p>
                                                            SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </ul>
                        </div>
                    </div>
                </div>
                <%-- 品牌帶3小塊商品組合-4 (End)--%>
                <div id="logo">
                    <div class="mb-shop-block">
                        <ul class="am-avg-sm-2 am-avg-md-3">
                           <%-- <uc1:products runat="server" id="products7" />--%>
                              <asp:Repeater ID="rp7" runat="server" OnItemDataBound="rp3_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                                        <li class="am-fl goods goods-flashsale">
                                            <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>

                                                <div class="goods-top">
                                                    <div class="goods-img">
                                                        <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                        <div class="goods-discount goods-discount3">
                                                            <span class="ribbon">
                                                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="goods-bottom">

                                                    <div class="goods-block">
                                                        <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                                    </div>
                                                    <div class="goods-block">
                                                        <h1 class="goods-price">
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                        <s class="goods-original-price">
                                                            <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                                        </s>
                                                    </div>
                                                    <div class="goods-block">
                                                        <p>
                                                            SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>



                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <%--Block3 Highlighted Brands(End) ==========================================--%>

        <%--Block4 Shop By Category (Start) ==========================================--%>
        <div id="s4">
            <style>
                .category-slider {
                    background: #F1E3CE;
                }
            </style>

            <%--Category1 (Start) --%>
            <section style="position: relative;">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/bn_06m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_10m" />
                </div>

                <div class="am-margin-vertical-xs">
                    <ul class="am-avg-sm-3">
                        <li class="am-padding-xs" id="point1"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/v_01.png" + "?cacheVersion=" + cacheVersion %>' alt="v_01" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point2',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/v_02.png" + "?cacheVersion=" + cacheVersion %>' alt="v_02" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point3',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/v_03.png" + "?cacheVersion=" + cacheVersion %>' alt="v_03" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point4',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/v_04.png" + "?cacheVersion=" + cacheVersion %>' alt="v_04" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point5',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/v_05.png" + "?cacheVersion=" + cacheVersion %>' alt="v_05" /></a></li>
                        <li class="am-padding-xs" onclick="goto('point6',100,'swing')"><a>
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/v_06.png" + "?cacheVersion=" + cacheVersion %>' alt="v_06" /></a></li>
                    </ul>
                </div>
                <%--Category1 (start) --%>
                <div>
                    <div>
                        <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                            <img class="am-padding-top-sm" style="background: #A4C3D2;"
                                src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/h_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ca_01m" />
                        </a>
                    </div>
                    <div class="am-padding-bottom-sm category-slider" style="background: #A4C3D2;">
                        <div class="swiper-container swiper-container1 mb-shop-block">
                            <ul class="swiper-wrapper">
                                <uc1:products runat="server" id="products8" />
                                <li class="am-fl swiper-slide goods-more">
                                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                            </div>
                                        </div>
                                        <div class="goods-bottom am-text-center">
                                            <h4 class="am-padding-vertical-lg">See More</h4>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <%--Category1 (End) --%>

            <%--Category2 (Start) --%>
            <section class="am-margin-top-sm" id="point2">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                        <img class="am-padding-top-sm" style="background: #A4C3D2;"
                            src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/h_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="h_02m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider" style="background: #A4C3D2;">
                    <div class="swiper-container swiper-container2 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products9" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <%--Category2 (End) --%>

            <%--Category3 (Start) --%>
            <section class="am-margin-top-sm" id="point3">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                        <img class="am-padding-top-sm" style="background: #A4C3D2;"
                            src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/h_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="h_03m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider" style="background: #A4C3D2;">
                    <div class="swiper-container swiper-container3 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products10" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <%--Category3 (End) --%>

            <%--Category4 (Start) --%>
            <section class="am-margin-top-sm" id="point4">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                        <img class="am-padding-top-sm" style="background: #A4C3D2;"
                            src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/h_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="h_04m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider" style="background: #A4C3D2;">
                    <div class="swiper-container swiper-container4 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products11" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <%--Category4 (End) --%>

            <%--Category5 (Start) --%>
            <section class="am-margin-top-sm" id="point5">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                        <img class="am-padding-top-sm" style="background: #A4C3D2;"
                            src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/h_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="h_05m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider" style="background: #A4C3D2;">
                    <div class="swiper-container swiper-container5 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products12" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <%--Category5 (End) --%>

            <%--Category6 (Start) --%>
            <section class="am-margin-top-sm" id="point6">
                <div>
                    <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                        <img class="am-padding-top-sm" style="background: #A4C3D2;"
                            src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/h_06m.png" alt="h_06m" />
                    </a>
                </div>
                <div class="am-padding-bottom-sm category-slider" style="background: #A4C3D2;">
                    <div class="swiper-container swiper-container6 mb-shop-block">
                        <ul class="swiper-wrapper">
                            <uc1:products runat="server" id="products13" />
                            <li class="am-fl swiper-slide goods-more">
                                <a href="https://www.hawooo.com/mobile/shop.aspx?cid=49" target="_blank">
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/more.png" alt="more" />
                                        </div>
                                    </div>
                                    <div class="goods-bottom am-text-center">
                                        <h4 class="am-padding-vertical-lg">See More</h4>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <%--Category6 (End) --%>
        </div>
        <%--Block4 Shop By Category (End) ==========================================--%>

        <%--Block5  You May Also Like... (Start)========================================--%>
        <section class="am-margin-vertical-sm">
            <h6 class="am-margin-bottom-0 am-padding-left am-text-center" style="color: #000;">You May Also Like...</h6>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products14" />
                </ul>
            </div>
        </section>
        <%--Block5  You May Also Like... (End)=========================================--%>
        <%--Terms & Conditions (Start) =============================================--%>
        <div id="s5">
            <footer class="am-padding activity-method" style="background: #000;">
                <div class="am-container">
                    <p>
                        Terms & Conditions<br>
                        1. Promotion Date : 30th June 2020 12:00 - 9th July 2020 23:59<br>
                        2. Sitewide Promo Code:
                    </p>
                    <p class="am-margin-top-0 am-padding-left">
                        - RM17 OFF (min.spend 220), use code [ PAY17 ]<br>
                        - RM37 OFF (min.spend 420), use code [ PAY37 ]<br>
                        - RM57 OFF (min.spend 600), use code [ PAY57 ]
                    </p>
                    <p class="am-margin-top-0">
                        3. Promo Codes are applicable on selected flaghip stores, including Double Doctor, Zephyrine, HH, Paradiso Garden, Dr.Morita, Pandababy, DV, Laler, Choyer, Hsu's, DV Tokyo, Eurocares 1838, Enjoy The Life, Sofei, Unipapa, & Anriea
                    <br>
                        4. Free Gift (min.spend RM500, amount after using promo code)
                    </p>
                    <p class="am-margin-top-0 am-padding-left">
                        - Alkmene Antibacterial Toothpaste (Worth RM45, limited 200 sets)
                    </p>

                    5. Free Order:<br>

                    <p class="am-margin-top-0 am-padding-left">
                        - 3 lucky winners who purchased by using promo code will be selected randomly, the winners will be rewarded by the amount spent (amount after using promo code) in shopping cash, the shopping cash can be used on her/his next order
                        <br>
                        - The winners will be announced on 20th July 2020 on Hawooo 好物飛行 Facebook Page, the shopping cash will be transferred to the account before 24th July 2020
                    </p>

                    6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Pay Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
                    
                </div>
            </footer>
        </div>
        <%--Terms & Conditions (End) ==============================================--%>
        <%-- flash期間顯示 6/18-6/20 23:59 (Start) --%>
        <div class="footer-bar">
            <div>
                <ul class="am-avg-sm-3">
                    <li onclick="goto('top',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_00m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_00m" />
                    </li>
                    <li onclick="goto('s1',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_01m" />
                    </li>
                    <li onclick="goto('s2',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_02m" />
                    </li>
                    <li onclick="goto('s3',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_03m" />
                    </li>
                    <li onclick="goto('s4',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_04m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_04m" />
                    </li>
                    <li onclick="goto('s5',800,'swing')">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/ss_05m.png" + "?cacheVersion=" + cacheVersion %>' alt="ss_05m" />
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <%--MB  Contain (End) ====================================================--%>

    <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script> --%>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/events.js"></script>
    <script type="text/javascript">

        /*Load HTML*/
        $(document).ready(function () {
            $(".swiper-container li").addClass("am-fl swiper-slide");
            // load 網頁共用結構
            let totalLoad = $('.include').length;
            let loadIndex = 0;
            if (totalLoad == 0) {
                initScript();
            }
            $('.include').each(function () {
                $(this).load($(this).data('file'), function () {
                    $(this).children().first().unwrap(); // remove the ha-include div
                    loadIndex++;
                    if (loadIndex == totalLoad) {
                        //共用結構載入完，開始執行頁面自己的初始化
                        initScript();
                    }
                });
            });
        });

        // 執行頁面的script
        function initScript() {

            // for (i = 0; i < 7; i++) {
            //   duplicate('logo');
            // }
            setSwiper();
            putBrandImg1('20200630', [309, 235, 334, 283]);
            putBrandImg('20200630', [72, 180, 345, 450, 407, 307, 349, 29]);
            couponGiftAlterImgSrc('2020-07-05T12:00:00');
            hiddenFooterMenu();
            allAnchorHrefRedirect();
        }

        function couponGiftAlterImgSrc(dateStr = '2020-07-05T12:00:00') {
            let dateFSEndTime = new Date(dateStr);
            let dateNow = new Date();
            if (dateNow > dateFSEndTime) {
                $('.coupon-gift').eq(0).attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200630/coupon_06m.png" + "?cacheVersion=" + cacheVersion %>');

            }
        }


        function putBrandImg1(eventName = '', brandNo = []) {
            // For testing purpose only:
            //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
            // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
            let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
            let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

            for (i = 0; i < brandNo.length; i++) {
                let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
                 <div class="brand-logo">
        <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1) + "", 2)}.png">
      </div>
            </a>`;
                // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png":

                $('#logo1 ul').eq(i).prepend(prependDOMStr);
                $('#logo1 ul a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
                    "href": `${brandLinkPfx}${brandNo[i]}`,
                    "target": "_blank"
                });
            }
        }


        // Example usage: putBrandImg('20200618', [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316])
        function putBrandImg(eventName = '', brandNo = []) {
            // For testing purpose only:
            //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
            // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
            let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
            let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

            for (i = 0; i < brandNo.length; i++) {
                let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
                 <div class="brand-logo">
        <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 5) + "", 2)}.png">
      </div>
            </a>`;
                // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png":

                $('#logo li').eq(i).prepend(prependDOMStr);
                $('#logo li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
                    "href": `${brandLinkPfx}${brandNo[i]}`,
                    "target": "_blank"
                });
            }
        }




        /* Used by putBrandImg() */
        function paddingLeft(str, lenght) {
            //debugger;
            if (str.length >= lenght)
                return str;
            else
                return paddingLeft("0" + str, lenght);
        };

        /* 設定Slider*/
        function setSwiper() {
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
                        spaceBetween: 0,
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
                                spaceBetween: 0,
                                slidesPerGroup: 2
                            }
                        }
                    });
                });
            };
        };
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("Yo Leng Lui! You've copied the code liao, paste it when you get ready to pay!");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
</asp:Content>
