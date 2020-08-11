<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="orderpagetest.aspx.cs" Inherits="orderpagetest" %>

<%--<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="memberorder_rev1.aspx.cs" Inherits="mobile_static_memberorder_rev1" %>--%>
<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/member.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <main class="page-main">
        <!-- 訊息區 -->
        <div class="am-g am-g-collapse announcement" id="news" style="display: none">
            <div class="am-u-sm-11">
                <span class="announcement-text"></span>
            </div>
            <div class="am-u-sm-1 announcement-icon-wrapper">
                <div>✕</div>
            </div>
        </div>
        <script>
            function HiddenNews() {
                $("#news").hide();
            }
            function ShowNews() {
                $("#news").show();
            }
        </script>
        <script>
            LoadingDone();
        </script>

        <link rel="stylesheet" href="assets/css/brand2.css">
        <uc1:member_class runat="server" id="member_class" />
        <section class="am-g brand-catalog-title-w" style="z-index: 999">
            <%--<div class="brand-catalog-title  am-cf">
                <button class="am-btn am-btn-primary b-collapse-title am-collapsed" data-am-collapse="{target: '#brands-nav'}" onclick="event.returnValue=false;">
                    <h3 class="am-fl">
                        <span class="txtRsc" data-id="m010">My Orders</span></h3>
                    <i class="am-icon-caret-down am-fr"></i>
                </button>
            </div>--%>
            <nav class="brand-catalog-nav" style="top: 45px">
                <ul id="brands-nav" class="am-nav am-collapse" style="height: 0px;">
                    <li><a href="member_card.aspx">
                        <span class="txtRsc" data-id="m040">My Card</span>
                    </a></li>
                    <li><a href="memberorder.aspx">
                        <span class="txtRsc" data-id="m010">My Orders</span>
                    </a></li>
                    <li><a href="memberinfo.aspx">
                        <span class="txtRsc" data-id="m009">My Info</span>
                    </a></li>
                    <li><a href="membercoin.aspx">
                        <span class="txtRsc" data-id="m011">My Hacoin</span>
                    </a></li>
                    <li><a href="membergold.aspx">
                        <span class="txtRsc" data-id="m012">My Credits</span>
                    </a></li>
                    <li><a href="membercoupon.aspx">
                        <span class="txtRsc" data-id="m013">My Coupons</span>
                    </a></li>
                    <li><a href="track.aspx">
                        <span class="txtRsc" data-id="mb009">My Wishlist</span>
                    </a></li>
                    <li><a href="qa.aspx">
                        <span class="txtRsc" data-id="mb010">FAQ</span>
                    </a></li>
                    <li><a href="logout.aspx">
                        <span class="txtRsc" data-id="hal004">Logout</span>
                    </a></li>
                </ul>
            </nav>
        </section>

        <!-- 麵包屑 Start-->
        <section class="member-order-tab-section ">
            <%--<div class="am-tabs" id="member-order-tab-wrapper">
                <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                    <li class=""><a href="javascript:void(0)">待出貨</a></li>
                    <li class=""><a href="javascript:void(0)">待付款</a></li>
                    <li class=""><a href="javascript:void(0)">出貨中</a></li>
                    <li class=""><a href="javascript:void(0)">待評價</a></li>
                    <li class="am-active"><a href="javascript:void(0)">已評價</a></li>
                    <li><a href="javascript:void(0)">已取消</a></li>
                </ul>--%>
            <div class="am-tabs" id="member-order-tab-wrapper" class="member-order-tab-wrapper">
                <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                    <li class="am-active"><a href="javascript:void(0)">待出貨</a></li>
                    <li><a href="javascript:void(0)">待付款</a></li>
                    <li><a href="javascript:void(0)">出貨中</a></li>
                    <li><a href="javascript:void(0)">待評價</a></li>
                    <li><a href="javascript:void(0)">已評價</a></li>
                    <li><a href="javascript:void(0)">已取消</a></li>
                    <%-- <li><a href="javascript:void(0)">限時團購訂單</a></li>--%>
                </ul>
                <div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                    <%--<div class="am-tab-panel member-order-shop-tab">
                        <span>No orders..</span>
                        <ul class="member-order-shop-list">
                        </ul>
                    </div>--%>

                    <div class="am-tab-panel  member-order-shop-tab">
                       
                        <!-- 【7/16新增】新版訂單列表 (Start) -->
                        <%--待出貨--%>
                        <asp:Literal ID="lit_dt1" runat="server"></asp:Literal>
                        
                    </div>
                    <!-- 【7/16新增】新版訂單列表 (End) -->
                    <%--尚未付款--%>
                    <div class="am-tab-panel  member-order-shop-tab">
                        <asp:Literal ID="lit_dt2" runat="server"></asp:Literal>
                        <ul class="member-order-shop-list">
                            <asp:Repeater ID="rp_order_list2" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                                <ItemTemplate>
                                    <li class="order-list">
                                        <a href="#!" class="order-list-header">
                                            <div>
                                                <p class="order-number"><span>Order No. </span><span><%# Eval("ORM02") %></span></p>
                                                <span class="order-date"></span><span><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></span>
                                            </div>
                                            <div>
                                                <button class="order-btn">
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal>
                                                </button>
                                            </div>
                                        </a>
                                        <div class="order-list-body">
                                            <ul class="order-product-wrap">
                                                <asp:Repeater ID="rp_cart_list" runat="server">
                                                    <ItemTemplate>
                                                        <li class="order-product">
                                                            <div class="order-product-img">
                                                                <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("ORD07") %>' />
                                                            </div>
                                                            <div>
                                                                <p class="order-product-name">
                                                                    <%--<span><%# Eval("ORD02") %>--%>
                                                                    <asp:Literal ID="lit_ORD02" runat="server" Text='<%# Eval("ORD02") %>'></asp:Literal>
                                                                    <asp:Literal ID="lit_ORD11" runat="server" Text='<%# Eval("ORD11").ToString().Equals("1") ? "(預購商品)" : "" %>'></asp:Literal></span>
                                                    <span><%# Eval("ORD04") %></span>
                                                                </p>
                                                                <p class="order-product-price"><span>RM <%# Eval("ORD05") %> x<%# Eval("ORD06") %></span></p>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                            <div class="btn-view-all">
                                                <a href="#!">View all<i class="fa fa-angle-down" aria-hidden="true"></i><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="order-list-footer">
                                            <div>
                                                <img src="https://www.hawooo.com/mobile/images/icon-spec-dollar.png" />
                                                <span class="order-payment"></span><span>
                                                    <asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></span>
                                            </div>
                                            <p class="order-total">4 Items,Total: <span><%# "RM" + Eval("ORM08") %></span></p>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <%--已付款&已出貨--%>
                    <div class="am-tab-panel  member-order-shop-tab">
                        <asp:Literal ID="lit_dt3" runat="server"></asp:Literal>
                        <ul class="member-order-shop-list">
                            
                        </ul>
                    </div>
                    <%--已取消--%>
                    <div class="am-tab-panel  member-order-shop-tab">
                        <asp:Literal ID="lit_dt4" runat="server"></asp:Literal>
                        <ul class="member-order-shop-list">
                            
                        </ul>
                    </div>
                    <%--待評價--%>
                    <div class="am-tab-panel  member-order-shop-tab">
                        <asp:Literal ID="lit_rv_pending" runat="server"></asp:Literal>
                        <ul class="member-order-shop-list">
                            
                        </ul>
                    </div>
                    <%--已評價--%>
                    <div class="am-tab-panel  member-order-shop-tab">
                        <asp:Literal ID="lit_rv_finish" runat="server"></asp:Literal>
                        <ul class="member-order-shop-list">
                            
                        </ul>
                    </div>

                </div>
            </div>
        </section>
        <script>
            $('.btn-view-all').click(function () {
                $(this).prev().toggleClass('order-product-show');
                $(this).toggleClass('show');
            });
        </script>
        <!-- 會員專區專用（所有會員的都塞在裡面）→ 【7/16】以合併至 member.min.css 裡，可刪除這行 -->
        <!--<link rel="stylesheet" href="assets/css/member2.css">-->

        <section class="am-panel am-panel-default member-center-section" id="member-center-section">
            <header class="am-panel-hd">
                <h3 class="am-panel-title txtRsc" data-id="hal001">Member Center</h3>
            </header>
            <div class="am-panel-bd">
                <ul class="am-avg-sm-2">
                    <li>
                        <a href="https://www.hawooo.com/mobile/memberinfo.aspx">
                            <div class="am-g am-g-collapse member-center-row">
                                <div class="am-u-sm-3">
                                    <img src="images/member-profile.png" alt="" class="member-center-icon">
                                </div>
                                <div class="am-u-sm-9 member-center-subTitle-col">
                                    <span class="member-center-subTitle txtRsc" data-id="m009">My Info</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.hawooo.com/mobile/memberorder.aspx">
                            <div class="am-g am-g-collapse member-center-row">
                                <div class="am-u-sm-3">
                                    <img src="images/member-order.png" alt="" class="member-center-icon">
                                </div>
                                <div class="am-u-sm-9 member-center-subTitle-col">
                                    <span class="member-center-subTitle txtRsc" data-id="m010">My Orders</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.hawooo.com/mobile/membergold.aspx">
                            <div class="am-g am-g-collapse">
                                <div class="am-g am-g-collapse member-center-row">
                                    <div class="am-u-sm-3">
                                        <img src="images/member-balance.png" alt="" class="member-center-icon">
                                    </div>
                                    <div class="am-u-sm-9 member-center-subTitle-col">
                                        <span class="member-center-subTitle txtRsc" data-id="m012">My Credits</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.hawooo.com/mobile/membercoin.aspx">
                            <div class="am-g am-g-collapse">
                                <div class="am-g am-g-collapse member-center-row">
                                    <div class="am-u-sm-3">
                                        <img src="images/member-ha.png" alt="" class="member-center-icon">
                                    </div>
                                    <div class="am-u-sm-9 member-center-subTitle-col">
                                        <span class="member-center-subTitle txtRsc" data-id="m011">My Hacoin</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.hawooo.com/mobile/membercoupon.aspx">
                            <div class="am-g am-g-collapse">
                                <div class="am-g am-g-collapse member-center-row">
                                    <div class="am-u-sm-3">
                                        <img src="images/member-vouchers.png" alt="" class="member-center-icon">
                                    </div>
                                    <div class="am-u-sm-9 member-center-subTitle-col">
                                        <span class="member-center-subTitle txtRsc" data-id="m013">My Coupons</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>

                    <li>
                        <a href="https://www.hawooo.com/mobile/qa.aspx">
                            <div class="am-g am-g-collapse">
                                <div class="am-g am-g-collapse member-center-row">
                                    <div class="am-u-sm-3">
                                        <img src="images/member-qa.png" alt="" class="member-center-icon">
                                    </div>
                                    <div class="am-u-sm-9 member-center-subTitle-col">
                                        <span class="member-center-subTitle txtRsc" data-id="m014">FAQ</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>
        </section>

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
    </main>
</asp:Content>

