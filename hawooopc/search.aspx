<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="user_search" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/search.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 140px; display: block;">

        <!-- 關鍵字方格 search results recommend start -->
        <section class="am-container am-cf search-related">
            <div class="am-fl related-title txtRsc" data-id="search005">
                搜尋結果
            </di>v
            <div class="am-fl related-content">
                <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{&quot;controlNav&quot;:false,slideshow: false }'>
                    <ul class="am-slides">
                        <asp:Repeater ID="rp_key_list" runat="server" OnItemDataBound="rp_key_list_ItemDataBound">
                            <ItemTemplate>
                                <asp:Literal ID="lit_ul_start" runat="server"></asp:Literal>
                                <li class="am-fl related-single">
                                    <a href="search.aspx?stxt=<%# Eval("WORD").ToString() %>">
                                        <div class="related-text">
                                            <%# Eval("WORD").ToString() %>
                                        </div>
                                    </a>
                                </li>
                                <asp:Literal ID="lit_ul_end" runat="server"></asp:Literal>

                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>
        <!-- 關鍵字方格 search results recommend end -->
        <style>
            .ul1 > li {
                height: 25px;
            }
        </style>
        <section class="am-container am-cf search-body">
            <!-- 搜尋側邊導覽列 search-sidenav  start-->
            <div class="search-nav am-fl">
                <div class="nav-title">
                    <i class="am-icon-filter"></i>
                    <span class="txtRsc" data-id="search006">條件篩選</span>
                </div>
                <hr>
                <div class="nav-group">
                    <div class="nav-subtitle txtRsc" data-id="mkt002">商品分類</div>
                    <ul class="ul1">
                        <asp:Repeater ID="rp_class_list" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:HiddenField ID="hf_C01" runat="server" Value='<%# Eval("C01") %>' />
                                    <asp:CheckBox ID="chk_class" runat="server" Text='<%# Eval("C06") %>' onclick="searchTagEvent('ALL')" />
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <%--<div class="nav-group" id="mgroup">
                    <div class="nav-subtitle">賣場</div>
                    <ul>
                        <li>
                            <input type="checkbox" name="" id="m1" runat="server" clientidmode="static" onclick="searchTagEvent('ALL')"><label for="m1">好物市集</label>
                        </li>
                        <li>
                            <input type="checkbox" name="" id="m2" runat="server" clientidmode="static" onclick="searchTagEvent('ALL')"><label for="m2">限時團購</label>
                        </li>
                    </ul>
                </div>--%>
                <div class="nav-group" id="sgroup">
                    <div class="nav-subtitle txtRsc" data-id="search007">促銷</div>
                    <ul class="ul1">
                        <li>
                            <input type="checkbox" name="" id="s1" runat="server" clientidmode="static" onclick="searchTagEvent('ALL')"><label for="s1" class="txtRsc" data-id="mkt005">本週熱銷</label>
                        </li>
                        <li>
                            <input type="checkbox" name="" id="s2" runat="server" clientidmode="static" onclick="searchTagEvent('ALL')"><label for="s2" class="txtRsc" data-id="mkt006">免運商品</label>
                        </li>
                        <li>
                            <input type="checkbox" name="" id="s3" runat="server" clientidmode="static" onclick="searchTagEvent('ALL')"><label for="s3" class="txtRsc" data-id="mkt007">限時優惠</label>
                        </li>
                    </ul>
                </div>
                <div class="nav-group" id="pgroup">
                    <div class="nav-subtitle txtRsc" data-id="search004">價格</div>
                    <ul class="ul1">
                        <li>
                            <input type="checkbox" name="" id="p1" runat="server" clientidmode="static" onclick="searchTagEvent('ALL');" /><label for="p1">LESS THAN RM50</label>
                        </li>
                        <li>
                            <input type="checkbox" name="" id="p2" runat="server" clientidmode="static" onclick="searchTagEvent('ALL');" /><label for="p2">RM50~RM100</label>
                        </li>
                        <li>
                            <input type="checkbox" name="" id="p3" runat="server" clientidmode="static" onclick="searchTagEvent('ALL');" /><label for="p3">RM100~RM150</label>
                        </li>
                        <li>
                            <input type="checkbox" name="" id="p4" runat="server" clientidmode="static" onclick="searchTagEvent('ALL');" /><label for="p4">MORE THAN RM150</label>
                        </li>
                    </ul>
                </div>
                <%--<div class="nav-group">
                    <button class="am-btn header-pink-btn">清除條件</button>
                </div>--%>
            </div>
            <script>
                $("#pgroup li input").click(function () {
                    if ($(this).prop('checked')) {
                        $("#pgroup li input:checkbox").prop('checked', false);
                        $(this).prop('checked', true);
                    }
                })
            </script>
            <!-- 搜尋側邊導覽列 search-sidenav  end-->
            <!-- 搜尋篩選＆商品 search-filter & products start-->
            <div class="search-main am-fl">
                <div class="search-filter">
                    <ul class="am-avg-sm-4" id="STYPE">
                        <li id="ALL" class="active">
                            <a onclick="searchTagEvent('ALL');">
                                <span class="txtRsc" data-id="search001">綜合</span>
                            </a></li>
                        <li id="NEW">
                            <a onclick="searchTagEvent('NEW');">
                                <span class="txtRsc" data-id="search002">最新</span>
                            </a></li>
                        <li id="HOT">
                            <a onclick="searchTagEvent('HOT');">
                                <span class="txtRsc" data-id="search003">熱銷</span>
                            </a></li>
                        <li id="PRICE" onmouseenter="priceFilterShow(this)" onmouseleave="priceFilterFade(this);">
                            <a onclick="searchTagEvent('PRICE');" class="priceRange">
                                <span class="txtRsc" data-id="search004">價格</span>
                                <i class="am-icon-angle-down"></i>
                            </a>
                            <div class="price-filter">
                                <a href="#" class="filter-high" onclick="priceFilterRage(this);">HIGH TO LOW</a>
                                <a href="#" class="filter-low" onclick="priceFilterRage(this);">LOW TO HIGH</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <script>
                    function searchTagEvent(type) {
                        $("#STYPE li").removeClass("active");
                        $("#" + type).addClass("active");
                        $("#hf_type").val(type);
                        document.getElementById('<%= btn_search.ClientID %>').click();
                    }
                </script>
                <div class="search-products">
                    <asp:UpdatePanel ID="up_product_list" runat="server">
                        <ContentTemplate>
                            <asp:HiddenField ID="hf_type" runat="server" ClientIDMode="Static" />
                            <asp:Button ID="btn_search" runat="server" Text="" OnClick="btn_search_Click" Style="display: none" />
                            <asp:Repeater ID="rp_product_list" runat="server">
                                <ItemTemplate>
                                    <!-- 一隻商品樣式 開始-->
                                    <div class="p-style">
                                        <div class="p-style-pic">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                                <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? " <span class=\"tag-chinese\">" + Eval("WP30").ToString() + "</span>" : "" %>'></asp:Literal>
                                            </a>
                                            <%-- <span class="guess-you-like-button">
                                        <span class="am-icon-heart-o white-o"></span>
                                        <span class="am-icon-heart-o pink-o"></span>
                                    </span>--%>
                                        </div>
                                        <div class="p-style-text">
                                            <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                                <h4><%# Eval("WP02").ToString() %></h4>
                                                <span class="p-style-line"></span>
                                                <div class="am-cf price-discount">
                                                    <h5 class="am-fl">
                                                        <p>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></p>
                                                    </h5>
                                                     <p class="am-fr">
                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),"7.6").Replace("RM","") %>
                                                    </p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- 商品樣式 -->
                                </ItemTemplate>
                            </asp:Repeater>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="up_product_list">
                        <ProgressTemplate>
                            <!-- loading box start-->
                            <div class="loading-box">
                                <div class="loading-circle">
                                    <svg class="loading-svg" x="0px" y="0px" viewBox="0 0 150 150">
                                        <circle class="loading-inner" cx="75" cy="75" r="60" />
                                    </svg>
                                </div>
                            </div>
                            <!-- loading box end-->
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
            </div>
            <!-- 搜尋篩選＆商品 search-filter & products start-->
        </section>
    </div>
</asp:Content>

