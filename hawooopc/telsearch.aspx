<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="telsearch.aspx.cs" Inherits="user_telsearch" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 140px; display: block;">

        <style>
            .hr2 {
                height: 3px;
                border: none;
                border-top: 3px double red;
            }

            .tbstyle1 {
            }

                .tbstyle1 td {
                    padding-left: 5px
                }
        </style>
        <section class="am-container">

            <asp:UpdatePanel ID="up_product_coupon" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="btn_search">
                        <div class="coupon-section brand-coupon" style="width: 100%">
                            <table class="tbstyle1">
                                <tr>
                                    <td>商品ID:</td>
                                    <td>
                                        <asp:TextBox ID="txt_pid" runat="server" Style="padding: 8px"></asp:TextBox></td>
                                    <td>
                                        <asp:Button ID="btn_search" runat="server" Text="搜尋" CssClass="am-btn am-btn-success" OnClick="btn_search_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:Panel>

                </ContentTemplate>
            </asp:UpdatePanel>
            <hr class="hr2" />
            <div>
                <span style="font-weight: bold; font-size: 14px">查詢商品</span>
                <ul class="am-avg-md-4 am-gallery-bordered product" style="padding: 2px">
                    <asp:Repeater ID="rp_product_list" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </a>

                                    </div>
                                    <div class="p-style-text">
                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <span class="p-style-line"></span>
                                            <div class="am-cf price-discount">
                                                <h5 class="am-fl">
                                                    <p>
                                                        RM 
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <hr class="hr2" />
            <div>
                <span style="font-weight: bold; font-size: 14px">同品牌推薦TOP10</span>
                <asp:Literal ID="lit_brand" runat="server"></asp:Literal>
                <ul class="am-avg-md-5 am-gallery-bordered product" style="padding: 2px">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </a>

                                    </div>
                                    <div class="p-style-text">
                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <span class="p-style-line"></span>
                                            <div class="am-cf price-discount">
                                                <h5 class="am-fl">
                                                    <p>
                                                        RM 
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <hr class="hr2" />
            <div>
                <span style="font-weight: bold; font-size: 14px">同類別推薦TOP10</span>
                <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                <ul class="am-avg-md-5 am-gallery-bordered product" style="padding: 2px">
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </a>

                                    </div>
                                    <div class="p-style-text">
                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <span class="p-style-line"></span>
                                            <div class="am-cf price-discount">
                                                <h5 class="am-fl">
                                                    <p>
                                                        RM 
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <hr class="hr2" />
            <div>
                <span style="font-weight: bold; font-size: 14px">訂單同購前10名</span>
                <asp:Literal ID="lit_other_msg" runat="server"></asp:Literal>
                <ul class="am-avg-md-5 am-gallery-bordered product" style="padding: 2px">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </a>

                                    </div>
                                    <div class="p-style-text">
                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>' target="_blank">
                                            <h4>
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <span class="p-style-line"></span>
                                            <div class="am-cf price-discount">
                                                <h5 class="am-fl">
                                                    <p>
                                                        RM 
                                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                    </p>
                                                </h5>
                                                <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
    </div>
</asp:Content>

