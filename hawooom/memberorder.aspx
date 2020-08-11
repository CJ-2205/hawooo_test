<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="memberorder.aspx.cs" Inherits="memberorder" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />
    <style>
        .am-tabs-bd {
            -moz-user-select: text !important;
            -webkit-user-select: text !important;
            -ms-user-select: text !important;
            user-select: text !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc1:member_class runat="server" ID="member_class" />
    <!-- 麵包屑 Start-->
    <%--    <section class="member-order-tab-section member-margin">--%>
    <section class="member-order-tab-section ">
        <div class="am-tabs" id="member-order-tab-wrapper" class="member-order-tab-wrapper">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <%--<li class="am-active"><a href="javascript:void(0)">待出貨</a></li>
                    <li><a href="javascript:void(0)">待付款</a></li>
                    <li><a href="javascript:void(0)">出貨中</a></li>
                    <li><a href="javascript:void(0)">已取消</a></li>--%>
                <%--<li><a href="javascript:void(0)">限時團購訂單</a></li>--%>
                <li class="am-active"><a href="javascript:void(0)">待出貨</a></li>
                <li><a href="javascript:void(0)">待付款</a></li>
                <li><a href="javascript:void(0)">出貨中</a></li>
                <li><a href="javascript:void(0)">待評價</a></li>
                <li><a href="javascript:void(0)">已評價</a></li>
                <li><a href="javascript:void(0)">已取消</a></li>
            </ul>
            <div class="am-tabs-bd">
                <div class="am-tab-panel am-active member-order-shop-tab">
                    <asp:Literal ID="lit_dt1" runat="server"></asp:Literal>
                    <ul class="member-order-shop-list">

                        <asp:Repeater ID="rp_order_list" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                            <ItemTemplate>
                                <li class="member-order-shop-li">
                                    <a href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>' class="member-order-list-link">
                                        <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                            <div class="am-u-sm-9 member-order-data-col">
                                                <ul class="member-order-data-list">
                                                    <li><span class="txtRsc" data-id="m001">訂單日期</span>：<span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span></li>
                                                    <li><span class="txtRsc" data-id="m002">訂單編號</span>：<span><%--<a style="color: #32b9ff;" href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>'><%# Eval("ORM02") %></a>--%><%# Eval("ORM02") %></span></li>

                                                    <li><span class="txtRsc" data-id="m005">出貨單號</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m003">付款方式</span>：<span><asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m006">付款狀態</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></span>
                                                    </li>
                                                    <%--                    <li>訂單狀態：
                                <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></li>--%>
                                                    <li><span class="txtRsc" data-id="m004">訂單金額</span><strong class="member-order-item-total">：<%# "RM" + Eval("ORM08") %></strong></li>
                                                </ul>
                                            </div>
                                            <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                                <span class="member-order-status">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="am-tab-panel  member-order-shop-tab">

                    <asp:Literal ID="lit_dt2" runat="server"></asp:Literal>
                    <ul class="member-order-shop-list">

                        <asp:Repeater ID="rp_order_list2" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                            <ItemTemplate>
                                <li class="member-order-shop-li">
                                    <a href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>' class="member-order-list-link">
                                        <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                            <div class="am-u-sm-9 member-order-data-col">
                                                <ul class="member-order-data-list">
                                                    <li><span class="txtRsc" data-id="m001">訂單日期</span>：<span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span></li>
                                                    <li><span class="txtRsc" data-id="m002">訂單編號</span>：<span><%--<a style="color: #32b9ff;" href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>'><%# Eval("ORM02") %></a>--%><%# Eval("ORM02") %></span></li>

                                                    <li><span class="txtRsc" data-id="m005">出貨單號</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m003">付款方式</span>：<span><asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m006">付款狀態</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></span>
                                                    </li>
                                                    <%--                    <li>訂單狀態：
                                <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></li>--%>
                                                    <li><span class="txtRsc" data-id="m004">訂單金額</span><strong class="member-order-item-total">：<%# "RM" + Eval("ORM08") %></strong></li>
                                                </ul>
                                            </div>
                                            <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                                <span class="member-order-status">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="am-tab-panel member-order-shop-tab">
                    <asp:Literal ID="lit_dt3" runat="server"></asp:Literal>
                    <ul class="member-order-shop-list">
                        <asp:Repeater ID="rp_order_list3" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                            <ItemTemplate>
                                <li class="member-order-shop-li">
                                    <a href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>' class="member-order-list-link">
                                        <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                            <div class="am-u-sm-9 member-order-data-col">
                                                <ul class="member-order-data-list">
                                                    <li><span class="txtRsc" data-id="m001">訂單日期</span>：<span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span></li>
                                                    <li><span class="txtRsc" data-id="m002">訂單編號</span>：<span><%--<a style="color: #32b9ff;" href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>'><%# Eval("ORM02") %></a>--%><%# Eval("ORM02") %></span></li>

                                                    <li><span class="txtRsc" data-id="m005">出貨單號</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m003">付款方式</span>：<span><asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m006">付款狀態</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></span>
                                                    </li>
                                                    <%--                    <li>訂單狀態：
                                <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></li>--%>
                                                    <li><span class="txtRsc" data-id="m004">訂單金額</span><strong class="member-order-item-total">：<%# "RM" + Eval("ORM08") %></strong></li>
                                                </ul>
                                            </div>
                                            <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                                <span class="member-order-status">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>


                <div class="am-tab-panel member-order-shop-tab">

                    <asp:Literal ID="lit_rv_pending" runat="server"></asp:Literal>

                    <ul class="member-order-shop-list">


                        <asp:Repeater ID="rp_rv_pending" runat="server" OnItemDataBound="rp_rv_ItemDataBound">
                            <ItemTemplate>
                                <li class="member-order-shop-li">
                                    <a href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>' class="member-order-list-link">
                                        <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                            <div class="am-u-sm-9 member-order-data-col">
                                                <ul class="member-order-data-list">
                                                    <li><span class="txtRsc" data-id="m001">訂單日期</span>：<span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span></li>
                                                    <li><span class="txtRsc" data-id="m002">訂單編號</span>：<span><asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal></span></li>

                                                    <li><span class="txtRsc" data-id="m005">出貨單號</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m003">付款方式</span>：<span><asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m006">付款狀態</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></span>
                                                    </li>
                                                    <li><span class="txtRsc" data-id="m004">訂單金額</span><strong class="member-order-item-total">：<%# "RM" + Eval("ORM08") %></strong></li>
                                                </ul>
                                            </div>
                                            <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                                <span class="member-order-status">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>



                    </ul>
                </div>


                <div class="am-tab-panel member-order-shop-tab">

                    <asp:Literal ID="lit_rv_finish" runat="server"></asp:Literal>

                    <ul class="member-order-shop-list">



                        <asp:Repeater ID="rp_rv_finish" runat="server" OnItemDataBound="rp_rv_ItemDataBound">
                            <ItemTemplate>
                                <li class="member-order-shop-li">
                                    <a href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>' class="member-order-list-link">
                                        <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                            <div class="am-u-sm-9 member-order-data-col">
                                                <ul class="member-order-data-list">
                                                    <li><span class="txtRsc" data-id="m001">訂單日期</span>：<span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span></li>
                                                    <li><span class="txtRsc" data-id="m002">訂單編號</span>：<span><asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal>

                                                    <li><span class="txtRsc" data-id="m005">出貨單號</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m003">付款方式</span>：<span><asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m006">付款狀態</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></span>
                                                    </li>
                                                    <li><span class="txtRsc" data-id="m004">訂單金額</span><strong class="member-order-item-total">：<%# "RM" + Eval("ORM08") %></strong></li>
                                                </ul>
                                            </div>
                                            <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                                <span class="member-order-status">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>






                <div class="am-tab-panel member-order-shop-tab">

                    <asp:Literal ID="lit_dt4" runat="server"></asp:Literal>

                    <ul class="member-order-shop-list">

                        <asp:Repeater ID="rp_order_list4" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                            <ItemTemplate>
                                <li class="member-order-shop-li">
                                    <a href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>' class="member-order-list-link">
                                        <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                            <div class="am-u-sm-9 member-order-data-col">
                                                <ul class="member-order-data-list">
                                                    <li><span class="txtRsc" data-id="m001">訂單日期</span>：<span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span></li>
                                                    <li><span class="txtRsc" data-id="m002">訂單編號</span>：<span><%--<a style="color: #32b9ff;" href='<%# "memberorderdetail.aspx?oid=" + Eval("ORM01").ToString() %>'><%# Eval("ORM02") %></a>--%><%# Eval("ORM02") %></span></li>

                                                    <li><span class="txtRsc" data-id="m005">出貨單號</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m003">付款方式</span>：<span><asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span></li>
                                                    <li><span class="txtRsc" data-id="m006">付款狀態</span>：
                                                        <span>
                                                            <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></span>
                                                    </li>
                                                    <%--                    <li>訂單狀態：
                                <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></li>--%>
                                                    <li><span class="txtRsc" data-id="m004">訂單金額</span><strong class="member-order-item-total">：<%# "RM" + Eval("ORM08") %></strong></li>
                                                </ul>
                                            </div>
                                            <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                                <span class="member-order-status">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <uc1:member_center_class runat="server" ID="member_center_class" />






    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
        });

        function ChangTab(tabId) {
            $('#member-order-tab-wrapper').tabs('open', tabId);
        }

        //function msg1() {
        //    $("#msg1").remove();
        //}


        //function msg2() {
        //    $("#msg2").remove();
        //}

        //function msg() {
        //    $("#msg1").remove();
        //    $("#msg2").remove();
        //}

    </script>

    <style>
        .voucher-none {
            padding: 50px 0;
            text-align: center;
        }
    </style>
</asp:Content>

