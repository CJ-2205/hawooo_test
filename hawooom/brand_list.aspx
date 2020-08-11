<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="brand_list.aspx.cs" Inherits="mobile_static_brand_list" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/brand_search.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%-- 2019小改版新增頁面 品牌館著陸頁 Start--%>
    <style>
        .menu-list {
            display: none;
        }
    </style>

    <header class="am-header-fixed">
        <!-- 上方固定搜尋列 search nav start -->
        <nav class="search-brands search-nav">
            <div class="search-field am-fl">
                <div id="up_serach_bar">
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="lnk_search">
                        <asp:TextBox ID="txt_search" runat="server" placeholder="Find Brand" CssClass="search-input ui-autocomplete-input"></asp:TextBox>
                        <asp:LinkButton ID="lnk_search" runat="server" CssClass="search-submit" OnClick="lnk_search_Click"><i class="am-icon-search"></i></asp:LinkButton>
                    </asp:Panel>
                </div>
            </div>

            <div class="am-fr">
                <a href="brand_search.aspx">
                    <span>
                        <asp:Literal ID="litAll" runat="server" Text="全部品牌"> </asp:Literal>
                    </span>
                    <i class="am-icon-angle-right am-icon-sm"></i>
                </a>
            </div>
        </nav>
    </header>
    <!-- 上方固定搜尋列 search nav end -->

    <section class="menu-slider-contain">
        <ul>
            <li class="am-fl">
                <a href="#" onclick="anchorPoint('s1')">
                    <div class="menu-slider-icon">
                        <img src="images/icon/icon_flagship.svg">
                    </div>
                    <span style="color: #EE5984;">
                        <asp:Literal ID="litFlagTitle" runat="server" Text="旗艦店"> </asp:Literal></span>
                </a>
            </li>
            <li class="am-fl" onclick="anchorPoint('s2')">
                <a href="#">
                    <div class="menu-slider-icon">
                        <img src="https://www.hawooo.com/images/icon/m1/03.svg" />
                    </div>
                    <span class="txtRsc" data-id="cs013">彩妝</span>
                </a>
            </li>
            <li class="am-fl" onclick="anchorPoint('s3')">
                <a href="#">
                    <div class="menu-slider-icon">
                        <img src="https://www.hawooo.com/images/icon/m1/02.svg" />
                    </div>
                    <span class="txtRsc" data-id="idx003">保養</span>
                </a>
            </li>
            <li class="am-fl" onclick="anchorPoint('s4')">
                <a href="#">
                    <div class="menu-slider-icon">
                        <img src="https://www.hawooo.com/images/icon/m1/06.svg" />
                    </div>
                    <span class="txtRsc" data-id="idx004">保健</span>
                </a>
            </li>
            <li class="am-fl" onclick="anchorPoint('s5')">
                <a href="#">
                    <div class="menu-slider-icon">
                        <img src="https://www.hawooo.com/images/icon/m1/07.svg" />
                    </div>
                    <span class="txtRsc" data-id="idx009">生活</span>
                </a>
            </li>

            <li class="am-fl" onclick="anchorPoint('s8')">
                <a href="#">
                    <div class="menu-slider-icon">
                        <img src="https://www.hawooo.com/images/icon/m1/08.svg" />
                    </div>
                    <span class="txtRsc" data-id="idx008">美食</span>
                </a>
            </li>
            <li class="am-fl" onclick="anchorPoint('s9')">
                <a href="#">
                    <div class="menu-slider-icon">
                        <img src="https://www.hawooo.com/images/icon/m1/g媽咪寶貝.svg" />
                    </div>
                    <span class="txtRsc" data-id="idx010">母嬰</span>
                </a>
            </li>


        </ul>
    </section>

    <section class="am-u-sm-12  flagship-store-content">

        <div class="theme-wrapper" id="s1">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs">
                    <asp:Literal ID="litFlag" runat="server" Text="旗艦店"> </asp:Literal>
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx">more      
                <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">

                    <asp:Repeater ID="RpFlagship" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>

        <%-- 彩妝區塊Start--%>
        <div class="theme-wrapper" id="s2">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs txtRsc" data-id="cs013">彩妝 
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx?bcid=1">more
                    <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">

                    <asp:Repeater ID="RpMakeUp" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>
        <%-- 彩妝區塊End--%>

        <%-- 保養區塊Start--%>
        <div class="theme-wrapper" id="s3">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs txtRsc" data-id="idx003">保養 
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx?bcid=6">more
                    <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="RpSkincare" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <%-- 保養區塊End--%>

        <%-- 保健區塊Start--%>
        <div class="theme-wrapper" id="s4">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs txtRsc" data-id="idx004">保健 
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx?bcid=7">more
                    <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">


                    <asp:Repeater ID="RpSupplements" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>
        <%-- 保健區塊End--%>

        <%-- 生活區塊Start--%>
        <div class="theme-wrapper" id="s5">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs txtRsc" data-id="idx009">生活 
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx?bcid=4">more
                    <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="RpLiving" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <%-- 生活區塊End--%>



        <%-- 美食區塊Start--%>
        <div class="theme-wrapper" id="s8">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs txtRsc" data-id="idx008">美食 
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx?bcid=3">more
                    <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="RpFood" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <%-- 美食區塊End--%>

        <%-- 母嬰區塊Start--%>
        <div class="theme-wrapper" id="s9">
            <div class="theme-title">
                <span class="am-fl am-padding-left-xs txtRsc" data-id="idx010">母嬰 
                </span>
                <span class="am-fr more-tag">
                    <a href="brand.aspx?bcid=5">more
                    <i class="am-icon-angle-right"></i>
                    </a>
                </span>
            </div>

            <div class="brands-catalog-block">
                <ul class="am-avg-sm-3">
                    <asp:Repeater ID="RpBaby" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%#"brand_1.aspx?bid="+Eval("BID") %>'>
                                    <img src='<%#"https://p8r7m4d5.stackpathcdn.com/images/brandimgs/"+ Eval("LOGO") %>'>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <%-- 母嬰區塊End--%>
    </section>

    <%--brands-menu-slider --%>
    <script type="text/javascript">
        $(window).load(function () {
            detectLength($("#brands-menu-slider li"), 0);
        });

        //類別錨點
        function anchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };
    </script>

    <%--   2019小改版新增頁面 品牌館著陸頁  End--%>
</asp:Content>

