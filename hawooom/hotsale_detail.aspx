<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="hotsale_detail.aspx.cs" Inherits="mobile_hotsale_detail" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/gruop_buying_category.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- 麵包屑 開始 -->
    <section class="breadcrumb-section">
        <ul class="am-u-sm-12 am-cf">
            <li class="am-fl product-breadcrumb">
                <a href="index.aspx">HaWooo</a>
            </li>
            <li class="am-fl product-breadcrumb">
                <a href="hotsale.aspx">精選活動</a>
            </li>
            <li class="am-fl product-breadcrumb">
                <asp:Literal ID="lit_SPM02_NAV" runat="server"></asp:Literal>
            </li>
        </ul>
    </section>
    <!-- 麵包屑 結束 -->

    <%-- <!-- products-story (產品說明) star -->
    <section class="am-container products-story-section">
        <div class="am-u-sm-12 products-story">
            <asp:Literal ID="lit_SPM08" runat="server"></asp:Literal>
        </div>
    </section>

    <!-- products-story (產品說明) end -->--%>


    <section class="am-container">
        <div class="am-u-sm-12 index-section-wrapper hot-sale">
            <div class="index-section-title" style="height: auto">
                <asp:Literal ID="lit_SPM02" runat="server"></asp:Literal>
            </div>
            <!--  一筆li一筆商品 star -->
            <ul class="am-cf">
                <asp:Repeater ID="rp_product_list" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">
                            <div class="index-items-pic">
                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                    <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<span class=\"index-items-tag\" id=\"tag-chinese\">" + Eval("WP30").ToString() + "</span>" : "" %>'></asp:Literal>
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                </a>
                                <%--  <span class="guess-you-like-button" onclick="guessClick(this)">
                                    <span class="am-icon-heart-o white-o"></span>
                                    <span class="am-icon-heart-o pink-o"></span>
                                </span>--%>
                            </div>
                            <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                <div class="index-items-text" style="height: 80px; overflow: hidden;">
                                    <h3><%# Eval("WP02").ToString() %></h3>
                                    <h4>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                    <%# WPFactory.DisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString())%>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </section>
</asp:Content>

