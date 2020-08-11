<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200409super_Items.aspx.cs" Inherits="mobile_static_200409super_Items" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/js/swiper.min.js"></script>
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200409hw_staraward.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bbn_02m.png" %>' alt="main-banner" />
        </div>

        <div id="nn">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_00m.png" %>' alt="nn_00mm" style="width: 100%;" />
        </div>


        <%--======================= Slider1  Start =========================--%>
        <section class="am-margin-top-sm" id="s1">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_01m.png" %>' alt="nn_01m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper super-brand-slider">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider1  End============================--%>


        <%--==================== Slider2  Start ===========================--%>
        <section class="am-margin-top-sm" id="s2">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_02m.png" %>' alt="nn_02m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container2">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider2   End============================--%>

        <%--==================== Slider3  Start ===========================--%>
        <section class="am-margin-top-sm" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_03m.png" %>' alt="nn_03m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider3   End============================--%>

        <%--==================== Slider4  Start ===========================--%>
        <section class="am-margin-top-sm" id="s4">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_04m.png" %>' alt="nn_04m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container4">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp4" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider4   End============================--%>

        <%--==================== Slider5  Start ===========================--%>
        <section class="am-margin-top-sm" id="s5">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_05m.png" %>' alt="nn_05m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp5" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider5   End============================--%>


        <%--==================== Slider6  Start ============================--%>
        <section class="am-margin-top-sm" id="s6">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_06m.png" %>' alt="nn_06m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp6" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider6   End============================--%>

        <%--==================== Slider7  Start ===========================--%>
        <section class="am-margin-top-sm" id="s7">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_07m.png" %>' alt="nn_07m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container7">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp7" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider7   End============================--%>

        <%--==================== Slider8  Start ============================--%>
        <section class="am-margin-top-sm" id="s8">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_08m.png" %>' alt="nn_08m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container8">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp8" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider8   End============================--%>

        <%--==================== Slider9  Start ===========================--%>
        <section class="am-margin-top-sm" id="s9">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_09m.png" %>' alt="nn_09m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp9" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider9  End============================--%>


        <%--==================== Slider10  Start ===========================--%>
        <section class="am-margin-top-sm" id="s10">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_10m.png" %>' alt="nn_10m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container10">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp10" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider10  End============================--%>

        <%--==================== Slider11  Start ===========================--%>
        <section class="am-margin-top-sm" id="s11">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_11m.png" %>' alt="nn_11m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper super-brand-slider">
                         <asp:Repeater ID="rp11" runat="server">
                            <ItemTemplate>

                                <li class="am-fl swiper-slide swiper-slide-next">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="super-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%# Eval("BrandInfo").ToString() %></h6>
                                            </div>
                                            <div class="product-item" style="text-align: initial">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <div class="product_item_pic">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <span class="product-items-tag">
                                                                <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %>
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider11  End============================--%>

    

        <%--=================== Footer=== Start ==========================--%>
        <footer class="am-padding-xl activity-method">
            <div class="am-container">
                <p>
                    Terms & Conditions<br />
                    HaWooo Star Award<br />
                    1. Sales period: 9th April 2020 12:00 - 21st April 2020 23:59<br />
                    2. Super brands & Super Items : Top 5 Brands & Items voted by HA fans from 1st April 2020 - 8th April 2020<br />
                    3. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>
            </div>
        </footer>
        <%--=======================Footer===End==========================--%>
    </div>

    <script type="text/javascript">

        $(function () {
            setThem();
        });

        function setThem() {
            var i;
            var cnt = 13; //swiper個數
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
                        lazy: true,
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

    </script>
</asp:Content>

