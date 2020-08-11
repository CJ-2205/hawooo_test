<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200409super_Items.aspx.cs" Inherits="user_static_200409super_Items" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200409hw_staraward.min.css" rel="stylesheet" />
    <style>
        .product-items-tag {
            padding: 2px 6px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: bottom;
            border-radius: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/bbn_02.png" %>' alt="主banner" />
        </div>

        <div class="am-container">
            <div class="am-margin-vertical-lg" id="nn">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_00.png" %>' alt="" />
            </div>

            <%--===================== Best Toner Start ====================--%>
            <section class="block1 am-margin-vertical-lg">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_01.png" %>' alt="nn_01" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems1">
                    <ul class="am-avg-sm-5">

                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--===================== Best Toner End =====================--%>

            <%--===================== Best Essence Start ===================--%>
            <section class="block1 am-margin-vertical-lg">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_01.png" %>' alt="nn_02" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems2">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--===================== Best Essence End ====================--%>

            <%--===================== Best Mask Start  =====================--%>
            <section class="block1 am-margin-vertical-lg" id="b3">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_03.png" %>' alt="nn_03" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems3">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--======================Best Mask End =====================--%>

            <%--======================Best Cleanser Start ==================--%>
            <section class="block1 am-margin-vertical-lg" id="b4">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_04.png" %>' alt="nn_04" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems4">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp4" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--======================Best Cleanser End ===================--%>

            <%--===================Best Home&Living&Mum Start ===============--%>
            <section class="block1 am-margin-vertical-lg" id="b5">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_05.png" %>' alt="nn_05" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems5">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp5" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--================== Best Home&Living&Mum End ================--%>

            <%--================== Best Daily Essential Start ==================--%>
            <section class="block1 am-margin-vertical-lg" id="b6">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_06.png" %>' alt="nn_06" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems6">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp6" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--================== Best Daily Essential End ===================--%>

            <%--================== Best Beauty Care Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b7">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_07.png" %>' alt="nn_07" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems7">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp7" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--================== Best Beauty Care End ====================--%>

            <%--================== Best Health Care Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b8">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_08.png" %>' alt="nn_08" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems8">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp8" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--================== Best Health Care End ====================--%>

            <%--================== Best Foundation Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b9">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_09.png" %>' alt="nn_09" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems9">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp9" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--================== Best Foundation End ====================--%>

            <%--================== Best Cosmetic Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="b10">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_10.png" %>' alt="nn_010" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems10">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp10" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--===================== Best Cosmetic End ====================--%>

            <%--===================== Best Food Start ======================--%>
            <section class="block1 am-margin-vertical-lg" id="b11">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200409/nn_11.png" %>' alt="nn_011" />
                    </a>
                </div>
                <div class="am-padding-xs goods-item" id="puItems11">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp11" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>'>
                                        <div class="am-padding am-margin-bottom-xs item-text">
                                            <h6><%# Eval("BrandInfo").ToString() %></h6>
                                        </div>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <div class="award">
                                                    <img data-sizes="auto" src='<%# Eval("RankImage") %>'>
                                                </div>
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>
                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="color: #EE5984; font-size: 18px; font-weight: bold;"><%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span style="vertical-align: bottom; font-size: 12px;"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span style="font-size: 13px;">
                                                            <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                        </span>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                        <span class="product-items-tag">
                                                            <%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
            </section>
            <%--===================== Best Food End ==========================--%>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
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
    <%--=======================活動辦法 End============================--%>
    <script type="text/javascript">
        //$(window).load(function () {
        //    putimg();
        //});

        //function putimg() {
        //    for (i = 0; i < 5; i++) {
        //        $('.goods-item li').eq(i).prepend(
        //            '<div class="am-padding am-margin-bottom-xs item-text">' + '<h6>' + '品牌館優惠' + ' </h6>' + '</div>'
        //        );
        //        $('.goods-item li .imgContain').eq(i).prepend(
        //            '<div class="award">' +
        //            '<img data-sizes="auto"' + ' src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191127/aw_0' + (i + 1) + '.png">' +
        //            '</div>');
        //    }
        //};


    </script>
</asp:Content>

