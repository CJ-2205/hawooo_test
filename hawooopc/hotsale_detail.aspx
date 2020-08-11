<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="hotsale_detail.aspx.cs" Inherits="user_hotsale_detail" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/group_buying_catalog.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <!--  product breadcrumb（商品頁麵包屑） star-->
        <section class="product-breadcrumb-section">
            <div class="am-container product-breadcrumb-wrapper">
                <ul class="am-u-sm-12 am-cf">
                    <li class="am-fl product-breadcrumb">
                        <a href="index.aspx">HaWooo</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="hotsale.aspx">精選活動</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <asp:Literal ID="lit_SPM02_NAV" runat="server"></asp:Literal>
                        <%-- <a href="#">ＡＬＢＩＯＮ</a>--%>
                    </li>
                   
                </ul>
            </div>
        </section>
        <!--  products breadcrumb（商品頁麵包屑） end-->
        <div class="am-container p-0">
            <asp:Literal ID="lit_img" runat="server"></asp:Literal></div>
        <!-- 我是分隔線 -->
        <span class="am-container p-0 dotted-line"></span>
        <!-- 我是分隔線 -->
        <!-- products-items (產品項目) star -->
        <section class="products-catalog-items">
            <div class="am-container items-wrapper">
                <div class="am-u-sm-12 items-content">
                    <ul class="am-cf am-avg-sm-4">
                        <asp:Repeater ID="rp_product_list" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href="productdetail.aspx?id=<%# Eval("WP01").ToString() %>">
                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' />
                                        <div class="am-u-sm-12 items-content-text">
                                            <h4 class="am-u-sm-12"><%# Eval("WP02").ToString() %></h4>
                                            <div class="am-cf price-discount">
                                                <h5 class="am-fl">
                                                    <p>RM <%#  PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %><span class="price-end"></span></p>
                                                </h5>
                                                <%# WPFactory.DisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString())%>
                                                <%-- <span id="tag-chinese">新品</span>--%>
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
        <!-- products-items (產品項目) end -->
        <!-- footer-good-block 頁尾三大好處的icon star -->
        <section class="footer-good-block">
            <div class="am-g" style="background: white; margin: 20px 0px;">
                <div class="am-container footer-good-block-wrapper">
                    <ul class="am-avg-sm-3">
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_01.png" id="company-quality1">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>100％海外正品</h4>
                                    <p>100% Authentic</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_02.png" id="company-quality2">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>RM199 免運</h4>
                                    <p>RM199 Free Shipping</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/icon-company-quality_03.png">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>3-10天到貨</h4>
                                    <p>Fast Delivery</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- footer-good-block 頁尾三大好處的icon end -->
    </div>
</asp:Content>
