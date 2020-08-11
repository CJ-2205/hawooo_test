<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="webevent.aspx.cs" Inherits="user_webevent" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 140px; display: block;">
        <!-- 優惠券活動主要圖片 coupon main pic start-->
        <section class="am-container coupon-b-pic">
            <asp:literal id="lit_event_msg" runat="server"></asp:literal>
            <!-- <div class="coupon-check"></div> -->
        </section>
        <section class="am-container">
            <div>
                <ul class="am-avg-md-4 am-gallery-bordered product" style="padding: 2px">
                    <asp:repeater id="rp_product_list" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </a>

                                    </div>
                                    <div class="p-style-text">
                                        <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
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
                    </asp:repeater>
                </ul>
            </div>
        </section>
    </div>
</asp:Content>

