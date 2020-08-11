<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="membercoupon.aspx.cs" Inherits="membercoupon" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <uc1:member_class runat="server" ID="member_class" />

    <section class="member-order-tab-section ">
        <div id="member-order-tab-wrapper" class="am-tabs member-order-tab-wrapper">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <li class="am-active"><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m027">商品折扣券</span>
                </a></li>
                <li><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m028">全站折扣券</span>
                </a></li>
                <li><a href="javascript:void(0)">
                    <span class="txtRsc" data-id="m029">使用/過期</span>
                </a></li>
            </ul>
            <div class="am-tabs-bd">
                <!-- 商品折扣券 開始-->
                <div class="am-tab-panel am-active member-coupon-tab">
                    <div class="am-u-sm-12 am-u-md-centered  am-cf member-coupon">

                        <ul class="coupon-record-wrapper">
                            <asp:Repeater ID="rp_product_coupon_list" runat="server">
                                <ItemTemplate>
                                    <li class="am-cf">
                                        <div class="am-fl voucher-record-text">
                                            <h4>
                                                <span class="txtRsc" data-id="m030">折扣券號</span>：<span><asp:Literal ID="lit_PCUG02" runat="server" Text='<%# Eval("PCUG02") %>'></asp:Literal></span>
                                            </h4>
                                            <p>
                                                <span class="txtRsc" data-id="m033">名稱</span>：
                                                <%#Eval("PCUG13").ToString() %>
                                            </p>
                                            <p>
                                                <span class="txtRsc" data-id="m032">期限</span>：
                                                <%#Convert.ToDateTime(Eval("PCUG05")).ToString("yyyy-MM-dd HH:mm") %>
                                            </p>
                                        </div>
                                        <div class="am-fr coupon-record-plus">
                                            <asp:Literal ID="lit_PCUG11" runat="server" Text='<%# Eval("PCUG11").ToString().Equals("0") ? Decimal.Round(Convert.ToDecimal(Eval("PCUG12")),0) + "% off" : "RM" + Eval("PCUG12").ToString() %>'></asp:Literal>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <p class="voucher-none">
                            <asp:Literal ID="lit_product_coupon" runat="server"></asp:Literal>
                        </p>
                    </div>
                </div>
                <!-- 獲取折扣卷 開始-->
                <div class="am-tab-panel am-active member-coupon-tab">
                    <div class="am-u-sm-12 am-u-md-centered  am-cf member-coupon">

                        <ul class="coupon-record-wrapper">
                            <asp:Repeater ID="rp_coupon_list" runat="server">
                                <ItemTemplate>
                                    <li class="am-cf">
                                        <div class="am-fl voucher-record-text">
                                            <h4>
                                                <span class="txtRsc" data-id="m030">折扣券號</span>：
                                                <span>
                                                    <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal></span>
                                            </h4>
                                            <p>
                                                <span class="txtRsc" data-id="m031">低消</span>：
                                                <%#Eval("GA07").ToString() %>
                                            </p>
                                            <p>
                                                <span class="txtRsc" data-id="m032">期限</span>：
                                                <%# Convert.ToDateTime(Eval("GA12")).ToString("yy.MM.dd") %>
                                            </p>
                                            <%-- <p>狀態：<%#Eval("GA03").ToString().Equals("0") ? "已使用" : Eval("GA03").ToString().Equals("1") ? "尚未使用":"" %></p>--%>
                                        </div>
                                        <div class="am-fr coupon-record-plus">
                                            RM&nbsp<%#Eval("GA02").ToString() %>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <p class="voucher-none">
                            <asp:Literal ID="lit_get_coupon" runat="server"></asp:Literal>
                        </p>
                    </div>
                </div>
                <!-- 獲取折扣卷 結束-->
                <!-- 使用折扣卷紀錄 開始 -->
                <div class="am-tab-panel member-password-tab">
                    <%--  <div class="am-u-sm-12 am-u-md-8 am-u-md-centered member-voucher">--%>
                    <div class="am-u-sm-12 am-u-md-centered  am-cf member-coupon">
                        <!-- 一筆是一張優惠卷 -->


                        <ul class="coupon-record-wrapper">
                            <asp:Repeater ID="rp_use_product_coupon" runat="server">
                                <ItemTemplate>
                                    <li class="am-cf">
                                        <div class="am-fl voucher-record-text">
                                            <h4>
                                                <span class="txtRsc" data-id="m030">折扣券號</span>：
                                                <span>
                                                    <asp:Literal ID="lit_PCUG02" runat="server" Text='<%# Eval("PCUG02") %>'></asp:Literal></span>
                                            </h4>
                                            <p>
                                                <span class="txtRsc" data-id="m033">名稱</span>：
                                                <%#Eval("PCUG13").ToString() %>
                                            </p>
                                            <p>
                                                <span class="txtRsc" data-id="m032">期限</span> ：
                                                <%#Convert.ToDateTime(Eval("PCUG05")).ToString("yyyy-MM-dd HH:mm") %>
                                            </p>
                                            <p>
                                                <span class="txtRsc" data-id="m034">使用訂單</span>：
                                                <%# Eval("PCUG08").ToString() %>
                                            </p>
                                        </div>
                                        <div class="am-fr coupon-record-plus">
                                            <asp:Literal ID="lit_PCUG11" runat="server" Text='<%# Eval("PCUG11").ToString().Equals("0") ? Decimal.Round(Convert.ToDecimal(Eval("PCUG12")),0) + "% off" : "RM" + Eval("PCUG12").ToString() %>'></asp:Literal>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <ul class="coupon-record-wrapper">
                            <asp:Repeater ID="rp_list" runat="server">
                                <ItemTemplate>
                                    <li class="am-cf">
                                        <div class="am-fl voucher-record-text">
                                            <h4>
                                                <span class="txtRsc" data-id="m030">折扣券號</span>：
                                                <span>
                                                    <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal></span>
                                            </h4>
                                            <%--  <li>金額：<span style="font-size: 12px; color: #888888;"><asp:Literal ID="lit_GA02" runat="server" Text='<%# Eval("GA02") %>'></asp:Literal></span></li>--%>
                                            <p>
                                                <span class="txtRsc" data-id="m031">低消</span>：
                                                <%#Eval("GA07").ToString() %>
                                            </p>
                                            <p>
                                                <span class="txtRsc" data-id="m032">期限</span>：
                                                <%#Convert.ToDateTime(Eval("GA11")).ToString("yyyy/MM/dd") %>~<%#Convert.ToDateTime(Eval("GA12")).ToString("yyyy/MM/dd")%>
                                            </p>
                                            <p>
                                                <span class="txtRsc" data-id="m034">使用訂單</span>：
                                                <span>
                                                    <asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal></span>
                                            </p>
                                            <%-- <p>狀態：<%#strGAstate(Convert.ToInt32(Eval("GA03"))) %></p>--%>
                                        </div>
                                        <div class="am-fr coupon-record-plus">
                                            RM&nbsp<%#Eval("GA02").ToString() %>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <p class="voucher-none">
                            <asp:Literal ID="lit_no_coupon" runat="server"></asp:Literal>
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <uc1:member_center_class runat="server" ID="member_center_class" />


    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
        })

        function msg1() {
            $("#msg1").remove();
        }


        function msg2() {
            $("#msg2").remove();
        }

        function msg() {
            $("#msg1").remove();
            $("#msg2").remove();
        }
    </script>
    <style>
        .voucher-none {
            padding: 50px 0;
            text-align: center;
        }
    </style>
</asp:Content>

