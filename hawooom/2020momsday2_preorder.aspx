<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020momsday2_preorder.aspx.cs" Inherits="mobile_2020momsday2_preorder" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="assets/scss/events_style.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <style>
        .pname {
            height: 40px !important;
            font-size: 12px;
        }


        .sale_price {
            font-size: 14px !important;
        }

        select {
            height: 23px;
        }

        .preorder-items-wrapper ul li {
            border: 1px dashed #F2F2F2;
        }

        .add-list {
            border-right: 1px dashed #F2F2F2;
        }

        .close {
            display: none;
        }

        .close-check {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $("#footermenu").hide();
        });
    </script>
    <div class="am-g  main-contain" style="background: #FFE8E9;">
        <div style="display: none" id="temp">
            <li style="background: #fff; padding: 5px; width: 150px; float: left; display: block;" id="li_#WPA01#">
                <div>
                    <a href="product.aspx?id=#WP01#">
                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%= ConfigurationManager.AppSettings["imgUrl"] +"webimgs/#WP08_1#"%>'
                            class="lazyload am-img-responsive" />
                    </a>
                </div>
                <span class="pname">#WPA02# * <span class="qty">#POP07#</span></span>
                <div class="am-cf">
                    <span class="am-fl sale_price" style="font-size: medium;">RM <span
                        class="sprice">#PRICE#</span> <%--<span class="price">RM #WPA10#</span>--%></span>
                    <span class="am-fr"><i class="am-icon-trash" style="font-size: 16px; display: flex; display: flex; padding-top: 2px;" onclick="DoDel('#DELID#');"></i></span>
                </div>
            </li>
        </div>
        <section>
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/bbn_02m.png"%>' style="width: 100%" />
            </div>

        </section>

        <div>
            <%--#dfdfdf--%>
            <section class="am-margin-top-lg am-padding addPanel" style="background: #fff;">
                <h3 class="am-padding-xs am-margin-bottom-xs"
                    style="background: #FFA700; color: #000; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
                    <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>

                <header>
                    <span id="add-msg1" style="font-size: 12px"></span>
                </header>
                <hr class="am-margin-xs" />

                <div id="top_add_panel" class="am-g">

                    <div class="am-slider am-slider-a1 am-slider-carousel am-slider-b3 clean_shadow" style="margin: 0;"
                        data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false,&quot;directionNav&quot;:false}" id="top_slider">
                        <ul class="am-slides add-list" id="add-list">
                        </ul>
                    </div>
                </div>
                <div class="am-u-sm-12 am-u-md-7 am-u-sm-centered check-banner close-check">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/check.png" style="width: 100%">
                </div>
            </section>




            <section class="am-margin-top-lg" id="s1">
                <div style="background: #fff;">
                    <div>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/fs_01m.png"%>' style="width: 100%" />
                    </div>
                    <div class="preorder-items-wrapper">
                        <ul class="am-avg-sm-2 am-avg-md-3" id="rp1_1">
                            <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <div class="resize-sm">

                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>
                                                <div style="position: relative;">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <div class="tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                        Added
                                                    </div>
                                                </div>
                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>
                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp1_2">
                            <asp:Repeater ID="rp1all" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <div class="resize-sm">

                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>

                                                <div style="position: relative;">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <div class="tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                    </div>
                                                    Added
                                                </div>

                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>

                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="am-padding-vertical see-more" id="more1">
                        <a class="am-u-sm-5 am-block am-u-sm-centered" href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/more.png"%>' style="width: 100%" />
                        </a>
                    </div>
                </div>
            </section>


            <section class="am-margin-top-lg" id="s2">
                <div style="background: #fff;">
                    <div>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/fs_02m.png"%>' style="width: 100%" />
                    </div>
                    <div class="preorder-items-wrapper">
                        <ul class="am-avg-sm-2 am-avg-md-3" id="rp2_1">
                            <asp:Repeater ID="rp2" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl">

                                        <div class="resize-sm">
                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>
                                                <div style="position: relative;">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <div class="tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                        Added
                                                    </div>
                                                </div>

                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>
                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp2_2">
                            <asp:Repeater ID="rp2all" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl">

                                        <div class="resize-sm">

                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>
                                                <div style="position: relative;">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <div class="tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                        Added
                                                    </div>
                                                </div>
                                                <%--<div>
                                                <span class="note">
                                                    <asp:Literal ID="lit_limit" runat="server" Text='<%# "Limit:" + Eval("SPD06") %>'></asp:Literal>
                                                </span>
                                            </div>--%>
                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>

                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="am-padding-vertical see-more" id="more2">
                        <a class="am-u-sm-5 am-block am-u-sm-centered" href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/more.png"%>' style="width: 100%" />
                        </a>
                    </div>
                </div>
            </section>

            <section class="am-margin-top-lg" id="s3">
                <div style="background: #fff;">
                    <div>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/fs_03m.png"%>' style="width: 100%" />
                    </div>
                    <div class="preorder-items-wrapper">
                        <ul class="am-avg-sm-2 am-avg-md-3" id="rp3_1">
                            <asp:Repeater ID="rp3" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl">

                                        <div class="resize-sm">
                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>
                                                <div style="position: relative;">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <div class="tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                        Added
                                                    </div>
                                                </div>
                                                <%--<div>
                                                <span class="note">
                                                    <asp:Literal ID="lit_limit" runat="server" Text='<%# "Limit:" + Eval("SPD06") %>'></asp:Literal>
                                                </span>
                                            </div>--%>
                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>
                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp3_2">
                            <asp:Repeater ID="rp3all" runat="server" OnItemDataBound="rpPreProducts_OnItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl">

                                        <div class="resize-sm">
                                            <div class="product-img" id="item_<%# Eval("WP01") %>">
                                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                                <%--                                                <a href="product.aspx?id=<%# Eval("WP01") %>">--%>
                                                <div style="position: relative;">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"]+"webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />

                                                    <div class="tag">
                                                        <span class="viewed">
                                                            <asp:Literal ID="lit_Info" runat="server"></asp:Literal></span>
                                                        Added
                                                    </div>
                                                </div>
                                                <%--<div>
                                                <span class="note">
                                                    <asp:Literal ID="lit_limit" runat="server" Text='<%# "Limit:" + Eval("SPD06") %>'></asp:Literal>
                                                </span>
                                            </div>--%>
                                                <div class="product-text-box">
                                                    <div class="product-item-block">
                                                        <h3 class="product-name">
                                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <h4>
                                                            <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal>
                                                        </h4>
                                                        <span>
                                                            <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <div class="product-price-block">
                                                        <div class="am-fl" style="width: 68%">
                                                            <asp:DropDownList ID="ddl_Option" runat="server" Width="100%" onchange="GetQty(this);"></asp:DropDownList>
                                                        </div>
                                                        <div class="am-fr" style="width: 31%">
                                                            <asp:DropDownList ID="ddl_Qty" runat="server" Width="100%" class="itemQty"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="button" value="Add to Wishlist" class="buy-btn am-btn am-btn-block" onclick="BookingEvent('item_<%# Eval("WP01") %>');" />
                                                    </div>
                                                </div>
                                                <%--                                                </a>--%>
                                            </div>
                                        </div>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="am-padding-vertical see-more" id="more3">
                        <a class="am-u-sm-5 am-block am-u-sm-centered" href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"ftp/20200501/more.png"%>' style="width: 100%" />
                        </a>
                    </div>
                </div>
            </section>


            <section class="am-margin-top-lg am-padding  addPanel" style="background: #fff;">
                <h3 class="am-padding-xs am-margin-bottom-xs"
                    style="background: #FFA700; color: #000; text-shadow: 0px 0 1px #fff, 0 0 9px #fff;">
                    <i class="am-icon-bolt" style="font-size: 20px; width: 20px;"></i>Your Wishlist</h3>
                <header>
                    <span id="add-msg2" style="font-size: 12px"></span>
                </header>
                <hr class="am-margin-xs" />

                <div id="bottom_add_panel" class="am-g">
                    <div class="am-slider am-slider-a1 am-slider-carousel am-slider-b3 clean_shadow" style="margin: 0;"
                        data-am-flexslider="{itemWidth: 150, itemMargin: 15, slideshow: false,&quot;directionNav&quot;:false}" id="bottom_slider">
                        <ul class="am-slides add-list">
                        </ul>
                    </div>
                </div>
                <div class="am-u-sm-12 am-u-md-7 am-u-sm-centered check-banner close-check">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/check.png" style="width: 100%">
                </div>
            </section>

        </div>
        <!--Block5 活動辦法 (Start)================================================-->
        <footer class="am-padding-vertical-lg activity-method" style="background: #000;">
            <div class="am-container">
                <p>
                    Terms & Conditions<br />
                    1. Flash Sale :
                    <br />
                    Add to wishlist: 5/5/2020 00:00 -  9/5/2020 23:59<br />
                    Check out Shopping Cart: 10/5/2020 00:00 - 11/5/2020 23:59<br />
                </p>
                <p>2. Flash sale items are at their lowest prices, promo code are NOT applicable on falsh sale items</p>
                <p>
                    3. Flash sale items are limited, add to wishlist and check out ASAP when the sale starts.
                </p>
            </div>
        </footer>
        <!--Block5 活動辦法 (End)================================================-->
    </div>

    <%--<div class="flash-sale-footer-bar footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-4">
                <li onclick="goto('p1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/fss_00m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('p2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/fss_01m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('p3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/fss_02m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
                <li onclick="goto('p4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200501/fss_03m.png" %>' alt="ss_05m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>--%>

    <div class="am-g am-g-collapse footer-bar">

        <div>
            <ul class="am-avg-sm-4">
                <li>
                    <a href="2020momsday2.aspx" target="_blank">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_00m.png" alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li onclick="goto('s1')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_01m.png" alt="fss_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('s2')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_02m.png" alt="fss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('s3')">
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200501/fss_03m.png" alt="fss_03m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        $("#more1").click(function () {
            $("#rp1_1").remove();
            $("#rp1_2").removeClass('close');
        });
        $("#more2").click(function () {
            $("#rp2_1").remove();
            $("#rp2_2").removeClass('close');
        });
        $("#more3").click(function () {
            $("#rp3_1").remove();
            $("#rp3_2").removeClass('close');
        });

    </script>
    <script>
        function DoDel(ItemID) {
            var memberID = '<%= Session["A01"] %>';
            if (memberID !== '') {
                var val = JSON.stringify({
                    obj: {
                        POP02: ItemID
                    }
                });
                $.ajax({
                    type: "post",
                    url: "../user/2020momsday2_preorder.aspx/DoDel",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var rs = msg.d;
                        if (rs === "TRUE") {

                            var item = GetItemNum(ItemID);
                            var sprice = $("#add-list li").eq(item).find('.sprice').text();
                            var price = $("#add-list li").eq(item).find('.price').text();
                            SubTotal(price, sprice);

                            RemoveItem(item);

                            SetInfo();
                            //ReSetInfo();
                            //$("#li_" + ItemID).remove();
                        } else if (rs === "FALSE") {
                            alert("Delete failed");
                        } else {
                            alert(rs);
                        }
                    },
                    error: function () {
                        alert("ERROR!");
                    }
                });
            } else {
                location.href = 'login.aspx?rurl=2020momsday2_preorder.aspx';

            }
        };

        function AddEvent(iid, pid, qty) {

            if (iid !== "") {
                var val = JSON.stringify({
                    obj: {
                        POP02: iid,
                        POP03: pid,
                        POP07: qty
                    }
                });
                $.ajax({
                    type: "post",
                    url: "../user/2020momsday2_preorder.aspx/DoAdd",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var rs = msg.d;
                        if (rs === "TRUE") {
                            alert("Joined successfully");
                            //GetList();
                            var num = GetItemNum(iid);
                            if (num !== -1)
                                RemoveItem(num);
                            AddOneItem(iid);
                            SetInfo();

                            //ReSetInfo();
                        } else if (rs === "FALSE") {
                            alert("Join failed");
                        } else {
                            alert(rs);
                        } //成功執行     
                    },
                    error: function () {
                        alert("ERROR!");
                    }

                });
            }
        };

        function BookingEvent(selectProduct) {
            var memberID = '<%= Session["A01"] %>';
            if (memberID !== '') {
                var optionID = $("#" + selectProduct).find('select')[0].value;
                var qty = $("#" + selectProduct).find('select')[1].value;
                if (optionID === "")
                    alert('Please select option.');
                else {
                    var iid = optionID.split("#")[0];
                    var pid = selectProduct.split("_")[1];

                    AddEvent(iid, pid, qty);

                }
            } else {
                location.href = 'login.aspx?rurl=2020momsday2_preorder.aspx';
                //location.href = 'login.aspx?rurl=2019cybersalepreorder.aspx';

            }
        };

        function GetQty(selectItem) {

            var itemID = selectItem.value;
            var qty = itemID.split("#")[1];
            var ddlQty = selectItem.parentNode.parentNode.children[1].children[0];
            $(ddlQty).empty();
            for (var i = 1; i <= qty; i++) {
                var o = new Option(i, i);
                $(ddlQty).append(o);
            }
        };


        function AddOneItem(itemID) {
            debugger;
            var val = "{'LG':'<%= (this.Master as mobile).LgType %>','itemID': '" + itemID + "'}";
            $.ajax({
                type: "post",
                url: "../user/2020momsday2_preorder.aspx/GetItem",
                data: val,
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                async: false,
                success: function (msg) {
                    var obj = jQuery.parseJSON(msg.d)[0];
                    var item = ReplaceItem(obj);
                    AddItem(item);
                },
                error: function () {
                    alert("ERROR!");
                }

            });
        };


        function SetSlider() {
            $('#top_slider').flexslider({
                itemWidth: 150,
                itemMargin: 15,
                slideshow: false
            });
            $('#bottom_slider').flexslider({
                itemWidth: 150,
                itemMargin: 15,
                slideshow: false
            });
        };
        function GetList() {
            var LG = "{'LG':'<%= (Master as mobile).LgType %>'}";
            $.ajax({
                type: "post",
                url: "../user/2020momsday2_preorder.aspx/GetAddList",
                data: LG,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (msg) {
                    var obj = jQuery.parseJSON(msg.d);
                    var count = 0;
                    $.each(obj, function (i, val) {
                        count += 1;
                        var item = ReplaceItem(val);
                        AddItem(item);
                    });
                    SetInfo();
                },
                error: function () {
                    alert("ERROR!");
                }

            });

        };

        function AddItem(item) {
            var slider = $('#top_slider').data('flexslider');
            if (slider !== undefined) {
                $('#top_slider').data('flexslider').addSlide(item);
                $('#bottom_slider').data('flexslider').addSlide(item);
            }
            else {
                $('.am-slider ul').append(item);
                SetSlider();
            }
        };
        function RemoveItem(item) {

            $('#top_slider').data('flexslider').removeSlide(item);
            $('#bottom_slider').data('flexslider').removeSlide(item);
        };

        function GetItemNum(itemID) {
            itemID = "li_" + itemID;
            var num = -1;
            $("#top_slider li").each(function (index) {
                if (this.id === itemID)
                    num = index;
            });
            return num;
        };

        var tprice = 0;
        var tqty = 0;
        var tsprice = 0;
        function ReplaceItem(item) {
            var tp = $("#temp").html();
            tp = tp.replace("#WP01#", item.WP01);
            tp = tp.replace("#WPA02#", item.WPA02);
            tp = tp.replace("#POP07#", item.POP07);
            tp = tp.replace("#WPA01#", item.WPA01);
            tp = tp.replace("#DELID#", item.WPA01);
            var WPA06 = SetPrice(item.WPA06, item.POP07);
            tp = tp.replace("#PRICE#", WPA06);
            tp = tp.replace("#WP08_1#", item.WP08_1);
            var WPA10 = SetPrice(item.WPA10, item.POP07);
            //tp = tp.replace("#WPA10#", WPA10);
            AddTotal(item.POP07, WPA10, WPA06);
            return tp;
        };
        function AddTotal(pop07, price, sprice) {
            tprice = parseFloat(tprice) + parseFloat(price);
            tsprice = parseFloat(tsprice) + parseFloat(sprice);

            tqty = parseFloat(tqty) + parseFloat(pop07);
        };
        function SubTotal(price, sprice) {

            tprice = parseFloat(tprice) - parseFloat(price);
            tsprice = parseFloat(tsprice) - parseFloat(sprice);
            tqty = parseFloat(tqty) - parseFloat(1);
        };
        function SetPrice(price, qty) {
            return FormatFloat(((parseFloat(price) * parseFloat(qty)) / 7.6), 1);
        };
        function FormatFloat(num, pos) {
            var size = Math.pow(10, pos);
            return Math.round(num * size) / size;
        };
        function SetInfo() {
            var msg = "You have selected #QTY# items, original price: RM #PRICE# ,price after discount: RM #SPRICE# .<br/> 10/5 00:00 the items in your wishlist will be automatically added into your shopping cart, hurry checkout before 11/5 23:59！<br/> Attention: Coupon is NOT applicable on flash sale items, all items are limited, check out ASAP!";
      <%--      if ('<%= (Master as mobile).LgType %>' === "en") {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# .Attention: Flash sale items are limited, 12/12 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 12/12 23:59！";
            } else {
                msg = "You have selected #QTY# items, original price: RM #PRICE# , discount price: RM #SPRICE# .Attention: Flash sale items are limited, 12/12 00:00 the items in your wishlist will be automatically added into your shopping cart，hurry checkout before 12/12 23:59！";
            }--%>
            msg = msg.replace("#QTY#", tqty);
            msg = msg.replace("#SPRICE#", tsprice.toFixed(2));
            msg = msg.replace("#PRICE#", tprice.toFixed(2));
            $("#add-msg1").html(msg);
            $("#add-msg2").html(msg);

            debugger;
            if ($('#add-list li').length > 0) {
                $('.check-banner').removeClass("close-check");
            }
            else {
                $('.check-banner').addClass("close-check");
            }

        };

        $(function () {
            SetInfo();
        });
    </script>
</asp:Content>

