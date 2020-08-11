<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="cartlist.aspx.cs" Inherits="mobile_cartlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .order-title a {
            color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-main">
        <!-- 麵包屑 Start-->
        <div class="page-menu-Box">
            <p class="pagelink">購物車</p>
        </div>
        <!-- 麵包屑 End-->
        <asp:Panel ID="p1" runat="server">
            <div class="newCart-title">
                <img src="images/cart/cart-icon-1.png" style="width: 30px;">
                <span>跨國快送[3-5天到貨、2件免運]</span>
            </div>
            <!-- 跨國快送購物清單 Start-->
            <div class="cart-infor-box">
                <ul class="cart-infor-list-box">
                    <asp:Repeater ID="rp_cart1" runat="server">
                        <ItemTemplate>
                            <li>
                                <asp:HiddenField ID="hf_CTD01" runat="server" Value='<%# Eval("CTD01") %>' />
                                <asp:HiddenField ID="hf_CTD03" runat="server" Value='<%# Eval("CTD03") %>' />
                                <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("CTD09") %>' />
                                <div class="order-right">
                                    <p class="order-title">
                                        <a href='<%# "product.aspx?id=" +  Eval("CTD01") %>'>
                                            <%# Eval("CTD02") %>-<%# Eval("CTD04") %>
                                        </a>
                                    </p>
                                    <p class="selectBox">
                                        <asp:Literal ID="lit_CTD06" runat="server" Text='<%# Eval("CTD06") %>'></asp:Literal>
                                    </p>
                                    <%--  <p class="orderSpec">
                                        RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                      
                                    </p>--%>
                                    <p class="orderPrice">RM<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) * Convert.ToInt32(Eval("CTD06").ToString()) %></p>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div style="text-align: center">
                    <a href="cart1.aspx?ctype=2" class="am-btn am-btn-default am-radius newCart-but">前往結帳</a>
                </div>
            </div>
            <!-- 跨國快送購物清單 End-->
        </asp:Panel>

        <asp:Panel ID="p2" runat="server">
            <div class="newCart-title" style="background: #b5e0ed;">
                <img src="images/cart/cart-icon-2.png" style="width: 30px;">
                <span>好物市集[5-10天到貨、3件免運]</span>
            </div>
            <!-- 好物市集購物清單 Start-->
            <div class="cart-infor-box">
                <a href="cart1.aspx?ctype=2">
                    <ul class="cart-infor-list-box">
                        <asp:Repeater ID="rp_cart2" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:HiddenField ID="hf_CTD01" runat="server" Value='<%# Eval("CTD01") %>' />
                                    <asp:HiddenField ID="hf_CTD03" runat="server" Value='<%# Eval("CTD03") %>' />
                                    <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("CTD09") %>' />
                                    <div class="order-right">
                                        <p class="order-title">
                                            <a href='<%# "product.aspx?id=" +  Eval("CTD01") %>'>
                                                <%# Eval("CTD02") %>-<%# Eval("CTD04") %>
                                            </a>
                                        </p>
                                        <p class="selectBox">
                                            <asp:Literal ID="lit_CTD06" runat="server" Text='<%# Eval("CTD06") %>'></asp:Literal>
                                        </p>
                                        <%--   <p class="orderSpec">
                                        RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                       
                                    </p>--%>
                                        <p class="orderPrice">RM<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) * Convert.ToInt32(Eval("CTD06").ToString()) %></p>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </a>
                <div style="text-align: center">
                    <a href="cart1.aspx?ctype=1" class="am-btn am-btn-default am-radius newCart-but">前往結帳</a>
                </div>
            </div>
            <!-- 購物車資訊區域 End-->
        </asp:Panel>

    </div>
</asp:Content>

