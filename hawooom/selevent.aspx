<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="selevent.aspx.cs" Inherits="mobile_selevent" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/coupon.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="am-container">
        <main class="page-main" style="margin: 0px 0px 0px 0px">
            <!-- 折扣券 coupon-main-wrapper start -->
            <div class="am-g">

                <!-- 大圖 -->
                <asp:UpdatePanel ID="up_header" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="coupon-main-pic">
                             <asp:Literal ID="lit_event_img" runat="server"></asp:Literal>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <!-- 折扣券 品牌折扣券 start-->
                <asp:UpdatePanel ID="up_product_coupon" runat="server">
                    <ContentTemplate>
                        <section class="am-container ">
                            <div class="coupon-section brand-coupon">
                                <h4 class="coupon-catalog-title">商品折扣券</h4>
                                <ul class="am-avg-sm-1 am-avg-md-2">
                                    <asp:Repeater ID="rp_product_coupon_list" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <asp:LinkButton ID="lnk_get_coupon" runat="server" OnClick="lnk_get_coupon_Click" ClientIDMode="AutoID">
                                                    <div class="am-u-sm-12 coupon-wrapper">
                                                        <h5 class="coupon-title">
                                                            <asp:HiddenField ID="hf_PC01" runat="server" Value='<%# Eval("PC01") %>' />
                                                            <asp:Literal ID="lit_PC02" runat="server" Text='<%# Eval("PC02") %>'></asp:Literal></h5>
                                                        <p class="coupon-price">
                                                            <asp:Literal ID="lit_PC09" runat="server" Text='<%# Eval("PC08").ToString().Equals("0") ?  Eval("PC09").ToString() + "% off" : "RM " + Eval("PC09").ToString() %>'></asp:Literal>
                                                        </p>
                                                        <div class="coupon-bottom">
                                                            <p class="coupon-time">
                                                                活動期間：
                                                        <asp:Literal ID="lit_PC04_PC05" runat="server" Text='<%# Convert.ToDateTime(Eval("PC04").ToString()).ToString("yyyy/MM/dd")+ "~" + Convert.ToDateTime(Eval("PC05").ToString()).ToString("yyyy/MM/dd") %>'></asp:Literal>
                                                            </p>
                                                            <asp:Literal ID="lit_PC19" runat="server" Text='<%# Eval("PC19") %>'></asp:Literal>
                                                        </div>
                                                        <span class="phone-take">領取</span>
                                                    </div>
                                                </asp:LinkButton>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </section>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <!-- 折扣券 品牌折扣券 end-->

                <section class="am-container" id="pnews" runat="server">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="am-u-sm-12 index-section-wrapper hot-sale">
                               
                                <!--  一筆li一筆商品 star -->
                                <ul class="am-cf">
                                    <asp:Repeater ID="p_list" runat="server">
                                        <ItemTemplate>
                                            <li class="am-fl">
                                                <div class="index-items-pic">
                                                    <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                                        <asp:Literal ID="lit_tag" runat="server" EnableViewState="false" Text='<%# !Eval("WP30").ToString().Equals("") ? "<span class=\"index-items-tag\" id=\"tag-chinese\">" + Eval("WP30").ToString() + "</span>" : "" %>'></asp:Literal>
                                                        <img src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                                    </a>
                                                </div>
                                                <a href="product.aspx?id=<%# Eval("WP01").ToString() %>">
                                                    <div class="index-items-text">
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
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </section>
            </div>
        </main>
    </section>
</asp:Content>

