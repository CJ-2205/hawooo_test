<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="brand_1.aspx.cs" Inherits="brand_1" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/brand.css" rel="stylesheet" />
    <script src="assets/js/phone_menulist.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <section class="am-g brand-catalog-title-w">
                <div class="brand-catalog-title am-cf" data-am-sticky="{top:80}">
                    <!-- 回上一頁 -->
                    <a href="brand.aspx">
                        <span class="am-fl brand-inside-back"><i class="am-icon-angle-left"></i>
                            <p class="txtRsc" data-id="brand003">回品牌列表</p>
                        </span>
                    </a>
                    <!-- 開品牌分類 -->
                    <a class="am-btn am-btn-primary b-collapse-title brand-inside-btn" data-am-collapse="{target: '#collapase-nav-1'}"><i class="am-icon-caret-down am-fr"></i>
                        <span class="txtRsc" data-id="bdl002">品牌分類</span> </a>
                </div>
                <!-- 裡面有active的 外面的admin-sidebar-sub 要加am-in -->
                <nav class="brand-catalog-title-w brand-inside-nav" style="top: 50px">
                    <ul class="am-list admin-sidebar-list" id="collapase-nav-1">
                        <asp:Repeater ID="rp_m_class" runat="server">
                            <ItemTemplate>
                                <li class="am-panel">
                                    <asp:HiddenField ID="hf_BB01" runat="server" Value='<%# Eval("BB01") %>' />
                                    <a data-am-collapse="{parent: '#collapase-nav-1', target: '<%# "#" + Eval("BB01") %>'}"><%# Eval("BB07") %>
                                        <i class="am-icon-angle-right am-fr am-margin-right"></i>
                                    </a>
                                    <ul class="am-list am-collapse admin-sidebar-sub" id='<%# Eval("BB01") %>'>
                                        <li><a href="brand_1.aspx?bcid=<%# Eval("BB01") %>&bid=<%# Eval("B01") %>">
                                            <span class="txtRsc" data-id="pb016">全部商品</span>
                                        </a></li>
                                        <asp:Repeater ID="rp_c_class" runat="server">
                                            <ItemTemplate>
                                                <li><a href="brand_1.aspx?bcid=<%# Eval("BB01") %>&bid=<%# Eval("B01") %>"><%# Eval("BB07")%> </a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </nav>
            </section>

            <div class="brand-top-Box">
                <div class="am-margin-top">
                    <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{&quot;directionNav&quot;:false}'>
                        <ul class="am-slides">
                            <asp:Repeater ID="rp_top_ad" runat="server" EnableViewState="false">
                                <ItemTemplate>
                                    <li>
                                        <a href='<%# Eval("BD11").ToString()  %>'>
                                            <img src='<%# "..//images/adimgs/" + Eval("BD02").ToString() %>' /></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>

            <section class="am-container" id="pnews" runat="server">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="am-u-sm-12 index-section-wrapper hot-sale">
                            <!--  一筆li一筆商品 star -->
                            <ul class="am-cf">
                                <asp:Repeater ID="p_list" runat="server">
                                    <ItemTemplate>
                                        <li class="am-fl">

                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <div class="product_item_pic">
                                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                                </div>
                                                <div class="product_item_text">
                                                    <div class="product_item_block am-cf">
                                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                                    </div>
                                                    <div class="product_item_block am-cf">

                                                        <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    </div>
                                                    <div class="product_item_block am-cf">
                                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                            <%# ((mobile) this.Master).LgType.Equals(LangType.en) ? "<img src='../images/icon/" + Eval("WP30") + "'/>" : "<span class='product-items-tag'>" + Eval("WP30") + "</span>" %>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
                                <ProgressTemplate>
                                    <div style="margin-left: auto; margin-right: auto; width: 100%; text-align: center">
                                        <img src="ajax-loader.gif" alt="wait image" />
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>

                            <asp:LinkButton ID="lnk_more" runat="server" CssClass="index-seemore" OnClick="lnk_more_Click"><i class="am-icon-heart-o"></i>More...</asp:LinkButton>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </section>
        </div>
    </div>
</asp:Content>

