<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="brand.aspx.cs" Inherits="mobile_brand" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/brand2.css" rel="stylesheet" />
    <script src="assets/js/phone_menulist.js"></script>
    <style>
        .hot-sale li {
            width: calc(50% - 10px) !important;
            margin: 10px 5px 0 5px;
            border: 1px solid #aaa;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <section class="am-g brand-catalog-title-w">
            <div class="brand-catalog-title  am-cf">
                <div class="am-btn am-btn-primary b-collapse-title" data-am-collapse="{target: '#brands-nav'}">
                    <h3 class="am-fl txtRsc" data-id="brand001">品牌旗艦館</h3>
                    <i class="am-icon-caret-down am-fr"></i>
                </div>
            </div>
             <nav class="brand-catalog-nav" style="top: auto">
                <ul id="brands-nav" class="am-nav am-collapse">
                    <li><a href="brand.aspx">
                        <span class="txtRsc" data-id="brand002">全館品牌</span>
                    </a></li>
                    <asp:Repeater ID="rp_brand_class" runat="server">
                        <ItemTemplate>
                            <li><a href="brand.aspx?bcid=<%# Eval("BE01").ToString() %>"><%# Eval("BE02").ToString() %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%-- <li class="am-active"><a href="brand_1.aspx">流行時尚</a></li>--%>
                </ul>
            </nav>

        </section>

        <!-- 品牌館輪播 開始 -->
        <section class="am-g brands-catalog-wrapper">
            <div>
                <ul class="am-cf">
                    <asp:Repeater ID="rp_logo_loop" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href="brand_1.aspx?bid=<%# Eval("B01") %>">
                                    <img src="../images/brandimgs/<%# Eval("BA08").ToString() %>">
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <!-- 品牌館輪播 結束 -->
        <asp:UpdatePanel ID="up_brand" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="am-container brand-body" onclick="closeBrandsNav(this)">
                    <!--當body onclick關閉nav-->
                    <ul>
                        <asp:Repeater ID="rp_brand_list" runat="server">
                            <ItemTemplate>
                                <!-- 一個品牌 -->
                                <li class="brand-single">
                                    <asp:HiddenField ID="hf_B01" runat="server" Value='<%# Eval("B01") %>' />
                                    <div class="brand-img">
                                        <a href="brand_1.aspx?bid=<%# Eval("B01") %>">
                                            <img src="../images/brandimgs/<%# Eval("BA20").ToString() %>"></a>
                                        <p>
                                            <asp:Literal ID="lit_BA06" runat="server" Text='<%# Eval("BA18").ToString() %>'></asp:Literal>
                                        </p>
                                    </div>
                                    <section class="am-container">
                                        <div class="am-u-sm-12 index-section-wrapper hot-sale am-padding-0">

                                            <ul class="am-cf">
                                                <asp:Repeater ID="rp_product" runat="server">
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
                                                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </section>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </section>
                <div style="background-color: white; display: block; margin: 0px 10px;">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
                        <ProgressTemplate>
                            <div style="margin-left: auto; margin-right: auto; width: 100%; text-align: center">
                                <img src="ajax-loader.gif" alt="wait image" />
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:LinkButton ID="lnk_more" runat="server" CssClass="index-seemore" OnClick="lnk_more_Click" Style="margin-top: 0px; margin-bottom: 10px"><i class="am-icon-heart-o"></i>More..</asp:LinkButton>
                </div>


            </ContentTemplate>
        </asp:UpdatePanel>

        <section class="am-g am-g-collapse" id="section-company-promises">
            <div class="am-u-sm-4 container-company-promises">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-12 img-container-company-promises">
                        <img src="images/icon-company-quality_01.png" alt="" class="img-company-promises">
                    </div>
                    <div class="am-u-sm-12 title-container-company-promises">
                        <span class="title-company-promises txtRsc" data-id="idx018">100%海外正品</span><br>
                        <!-- <span class="subtitle-company-promises">100% Authentic</span> -->
                    </div>
                </div>
            </div>
            <div class="am-u-sm-4 container-company-promises">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-12 img-container-company-promises">
                        <img src="images/icon-company-quality_02.png" alt="" class="img-company-promises">
                    </div>
                    <div class="am-u-sm-12 title-container-company-promises">
                        <span class="title-company-promises txtRsc" data-id="idx019">RM 199免郵</span><br>
                        <!-- <span class="subtitle-company-promises">RM 249 Free Shipping</span> -->
                    </div>
                </div>
            </div>
            <div class="am-u-sm-4 container-company-promises">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-12 img-container-company-promises">
                        <img src="images/icon-company-quality_03.png" alt="" class="img-company-promises">
                    </div>
                    <div class="am-u-sm-12 title-container-company-promises">
                        <span class="title-company-promises txtRsc" data-id="idx020">3-10天到貨</span><br>
                        <!-- <span class="subtitle-company-promises">Fast Delivery</span> -->
                    </div>
                </div>
            </div>

        </section>

    </div>
    <script src="assets/js/brands.js"></script>
</asp:Content>

