<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="brand_search.aspx.cs" Inherits="mobile_static_brand_search" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/brand_search.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%-- 2019小改版新增頁面 品牌搜尋 Start--%>
    <style>
        .menu-list {
            display: none;
        }

        .brands-all-white {
            background-color: white;
        }
    </style>

    <!-- 上方固定搜尋列 search nav start -->
    <header class="am-header-fixed">
        <nav class="search-nav search-brands">
            <div class="search-brands-bar">
                <span class="am-fl">
                    <a href="flagship_store.aspx"><i class="am-icon-angle-left am-icon-sm"></i>
                    </a>
                </span>
                <div class="search-field am-center">
                    <div id="up_serach_bar">
                        <asp:Panel ID="Panel1" runat="server" DefaultButton="lnk_search">
                            <asp:TextBox ID="txt_search" runat="server" placeholder="Find Brand" CssClass="search-input ui-autocomplete-input"></asp:TextBox>
                            <asp:LinkButton ID="lnk_search" runat="server" CssClass="search-submit" OnClick="lnk_search_Click"><i class="am-icon-search"></i></asp:LinkButton>
                        </asp:Panel>
                    </div>
                </div>
                <span class="serach-home am-fr">
                    <a href="index.aspx">
                        <img src="images/icon/icon_home.png" style="width: 100%;">
                    </a>
                </span>
            </div>
        </nav>
    </header>
    <!-- 上方固定搜尋列 search nav end -->

    <section class="brands-search-contain am-g">

        <asp:Repeater ID="RpArea" runat="server" OnItemDataBound="RpArea_ItemDataBound">
            <ItemTemplate>
                <div class="brands-alphabet">
                    <asp:Literal ID="litArea" runat="server" Text='<%#Eval("Area") %>'> </asp:Literal>
                </div>
                <div class="am-u-sm-12 brands-all brands-all-white">
                    <ul>
                        <asp:Repeater ID="RpBrand" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                        <div class="brand-logo">
                                            <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                        </div>
                                        <span class="brand-name"><%#Eval("NAME") %></span>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </section>

    <%--   2019小改版新增頁面 品牌搜尋  End--%>


</asp:Content>

