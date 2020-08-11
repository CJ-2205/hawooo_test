<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="membergold.aspx.cs" Inherits="membergold" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- 購物金管理標題 title star-->

    <uc1:member_class runat="server" ID="member_class" />

    <section class="am-container member-left-title" style="margin-top: 0px">
        <h3 class="voucher-title">
            <!-- <i class="am-icon-gift"></i> -->
            <span class="txtRsc" data-id="m025">可用購物金</span>
        </h3>
        <p class="voucher-left">
            RM 
            <asp:Literal ID="lit_total" runat="server" Text="0"></asp:Literal>
        </p>


    </section>
    <!-- 購物金管理標題 title end-->

    <section class="member-order-tab-section">
        <div class="member-all-title">
            <span class="txtRsc" data-id="m026">購物金明細</span>
        </div>
        <div id="member-order-tab-wrapper" class="member-order-tab-wrapper">
            <div class="am-tabs-bd">
                <!-- 會員資料 開始-->
                <div class="am-tab-panel am-active member-voucher-tab">
                    <div class="am-u-sm-12 am-u-md-centered  am-cf member-voucher">
                        <p id="msg" class="voucher-none" runat="server">
                            <asp:Literal ID="lit_Record" runat="server"></asp:Literal>
                        </p>
                        <asp:Repeater ID="rp_list" runat="server" OnItemDataBound="rp_list_ItemDataBound">
                            <ItemTemplate>
                                <ul class="voucher-record-wrapper">
                                    <li class="am-cf">
                                        <div class="am-fl voucher-record-text">
                                            <p>
                                                <span class="txtRsc" data-id="m039">日期</span>：<span style="font-size: 12px; color: #888888;">
                                                    <asp:Literal ID="lit_AD02" runat="server" Text='<%# Eval("AD02") %>'></asp:Literal></span>
                                            </p>

                                            <p>
                                                <span class="txtRsc" data-id="cart049">備註</span>：<span style="font-size: 12px; color: #888888;">
                                                    <asp:Literal ID="lit_AD09" runat="server" Text='<%# Eval("AD09") %>'></asp:Literal></span>
                                            </p>
                                        </div>
                                        <div class="am-fr voucher-record-plus">
                                            <asp:Literal ID="lit_AD03" runat="server" Text='<%# Eval("AD03") %>'></asp:Literal>
                                            <asp:Literal ID="lit_AD06" runat="server" Text='<%# Eval("AD06") %>'></asp:Literal>
                                        </div>
                                    </li>
                                </ul>

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>
        <!-- 會員資料 結束-->

    </section>



    <uc1:member_center_class runat="server" ID="member_center_class" />





    <style>
        .member-all-title {
            padding: 7.5px 0;
            background: white;
            border-top: 1px solid #eaeaea;
            border-bottom: 2px solid red;
            font-size: .9em;
            text-align: center;
            color: #737373;
        }

        .voucher-none {
            padding: 50px 0;
            text-align: center;
        }
    </style>
</asp:Content>

