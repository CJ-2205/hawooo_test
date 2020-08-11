<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="membercoin.aspx.cs" Inherits="mobile_membercoin" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <uc1:member_class runat="server" ID="member_class" />


    <!-- 購物金管理標題 title star-->
    <section class="am-container am-cf member-left-title m-habi-left-title" style="margin: 0">

        <img class="am-fl" src="images/habi_icon.png">
        <ul class="am-fl">
            <li class="habi-can-use">
                <p>
                    <asp:Literal ID="lit_total" runat="server"></asp:Literal>
                </p>
                <h3 class="txtRsc" data-id="m023">可用Ha幣</h3>
            </li>
            <li class="habi-almost" id="haTimeOut">
                <p>
                    <asp:Literal ID="lit_timeout_coupon" runat="server"></asp:Literal>
                </p>
                <h3>
                    <asp:Literal ID="lit_timeout_day" runat="server"></asp:Literal></h3>
            </li>
        </ul>
    </section>

    <!-- 購物金管理標題 title end-->

    <section class="member-order-tab-section">
        <div class="am-tabs" id="member-order-tab-wrapper" class="member-order-tab-wrapper">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <li class="am-active"><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m035">賺取的Ha幣</span>
                </a></li>
                <li><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m036">使用紀錄</span>
                </a></li>
            </ul>
            <div class="am-tabs-bd">
                <!-- 哈幣取得 開始-->
                <div class="am-tab-panel am-active member-habi-tab">
                    <div class="am-u-sm-12 am-u-md-centered  am-cf member-left-tab">
                        <div id="msg1" runat="server">
                            <p class="voucher-none">
                                <span class="txtRsc" data-id="m037">無獲得Ha幣紀錄</span>
                            </p>
                        </div>
                        <!-- 一筆tr是一筆哈幣 -->
                        <table class="member-table habi-table">
                            <asp:Repeater ID="rp_list" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="habiget-pic">
                                            <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("ORD07") %>' />
                                        </td>
                                        <td class="habiget-content">
                                            <h4><%# Eval("ORD02").ToString().Equals("")?Eval("CN07").ToString(): Eval("ORD02").ToString()+Eval("ORD04").ToString() %></h4>
                                            <p><%#Convert.ToDateTime(Eval("CN05")).ToString("yyyy/MM/dd") %>~<%#Convert.ToDateTime(Eval("CN10")).ToString("yyyy/MM/dd") %></p>
                                        </td>
                                        <td class="habiget-price">＋<%#Convert.ToInt32(Eval("CN03")).ToString("D") %>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
                <!-- 哈幣取得 結束 -->
                <!-- 哈幣使用 開始 -->
                <div class="am-tab-panel member-habi-tab">
                    <div class="am-u-sm-12 am-u-md-centered  am-cf member-left-tab">
                        <div id="msg2" runat="server">
                            <p class="voucher-none">
                                <span class="txtRsc" data-id="m038">無使用Ha幣紀錄</span>
                            </p>
                        </div>
                        <!-- 一筆tr是一筆使用哈幣 -->
                        <table class="member-table habi-table">
                            <asp:Repeater ID="rp_list_use" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="habiuse-content">
                                            <h4>Use way：<span><%#Eval("CN07") %></span></h4>
                                            <p>Date：<%#Convert.ToDateTime(Eval("CN10")).ToString("yyyy/MM/dd") %></p>
                                        </td>
                                        <td class="habiuse-price">－<%#Convert.ToInt32(Eval("CN03")).ToString("D") %>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
                <!-- 哈幣使用 結束 -->
            </div>
        </div>
    </section>

    <uc1:member_center_class runat="server" ID="member_center_class" />

    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
        })

        function removeTimeoutPanel() {
            $("#haTimeOut").remove();

        }
    </script>

    <style>
        .voucher-none {
            padding: 50px 0;
            text-align: center;
        }
    </style>
</asp:Content>

