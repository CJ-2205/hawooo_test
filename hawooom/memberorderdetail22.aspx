<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="memberorderdetail22.aspx.cs" Inherits="memberorderdetail22" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fontello/css/icon-money.css">
    <link rel="stylesheet" href="assets/fontello/css/icon-money-codes.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/menu_top.css" />
    <link rel="stylesheet" href="assets/css/market_menu.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/homepage.css" />
    <link rel="stylesheet" href="assets/css/order-specs.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div>
        <div>
            <uc1:member_class runat="server" ID="member_class" />
            <div class="order-details">
                <a style="color: #32b9ff;" href="memberorder.aspx"><i class="am-icon-step-backward"></i></a>&nbsp;&nbsp;訂單明細 | Order detail
            </div>
            <div class="join-provision">
                <section data-am-widget="accordion" style="padding-bottom: 20px" data-am-accordion='{ "multiple": true }'>
                    <div class="am-u-sm-12" style="width: 100%">
                        <dl class="am-accordion-item">
                            <dt class="am-accordion-title">
                                <span style="font-size: 14px;">訂單資訊</span>
                            </dt>
                            <dd class="am-accordion-bd am-collapse am-in">
                                <ul class="voucher-list">
                                    <li>訂單編號：
                                        <asp:Literal ID="lit_ORM02" runat="server"></asp:Literal></li>
                                    <li>出貨單號：<asp:Literal ID="lit_ORM25" runat="server"></asp:Literal></li>
                                    <li>狀態：<asp:Literal ID="lit_ORM24" runat="server"></asp:Literal></li>
                                    <li>貨運名稱：<asp:Literal ID="lit_ORM20" runat="server"></asp:Literal></li>
                                    <li>訂單日期：
                                        <asp:Literal ID="lit_ORM03" runat="server"></asp:Literal></li>
                                    <li>
                                        <br />
                                        <hr />
                                    </li>
                                    <li>姓名：
                                        <asp:Literal ID="lit_ORM13" runat="server"></asp:Literal></li>
                                    <li>電話：
                                        <asp:Literal ID="lit_ORM14" runat="server"></asp:Literal></li>
                                    <li>手機：
                                        <asp:Literal ID="lit_ORM15" runat="server"></asp:Literal></li>
                                    <li>電子郵件：
                                        <asp:Literal ID="lit_ORM17" runat="server"></asp:Literal></li>
                                    <li>收件地址：    
                                        <asp:Literal ID="lit_ORM16" runat="server"></asp:Literal></li>
                                    <li>訂單備註：  
                                        <asp:Literal ID="lit_ORM18" runat="server"></asp:Literal></li>
                                </ul>

                            </dd>
                        </dl>
                    </div>

                    <div class="am-u-sm-12" style="width: 100%">
                        <dl class="am-accordion-item">
                            <dt class="am-accordion-title ">
                                <span style="font-size: 14px;">金流資訊</span>
                            </dt>
                            <dd class="am-accordion-bd am-collapse am-in">

                                <ul class="voucher-list">
                                    <li>付款方式：<asp:Literal ID="lit_ORM12" runat="server"></asp:Literal></li>
                                    <li>付款狀態：  
                                        <asp:Literal ID="lit_ORM19" runat="server"></asp:Literal>
                                        <asp:Literal ID="lit_Re_Molpay" runat="server"></asp:Literal>
                                    </li>

                                </ul>
                            </dd>
                        </dl>
                    </div>

                    <div class="am-u-sm-12" style="width: 100%">
                        <dl class="am-accordion-item">

                            <dt class="am-accordion-title">
                                <span style="font-size: 14px;">商品明細</span>
                            </dt>
                            <dd class="am-accordion-bd am-collapse am-in" style="font-size: 12px">

                                <ul class="cart-infor-list-box" style="width: 100%; background-color: #fff">
                                    <asp:Repeater ID="rp_cart_list" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("ORD07") %>' style="width: 10%" />
                                                <div class="order-right" style="width: 85%">
                                                    <p class="order-title"><%# Eval("ORD02") %>-<%# Eval("ORD04") %></p>
                                                    <p class="selectBox">

                                                        <%# Eval("ORD06") %>
                                                    </p>
                                                    <p class="orderSpec">
                                                        RM <%# Eval("ORD05") %>
                                                    </p>
                                                    <p class="orderPrice">RM<%# Convert.ToDecimal(Eval("ORD06").ToString()) * Convert.ToDecimal(Eval("ORD05").ToString()) %></p>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <ul class="orderCalculate" style="background-color: #fff">
                                    <li><span class="spanText1">運費：</span><span class="spanText2">RM&nbsp; 
                                        <asp:Literal ID="lit_ORM06" runat="server"></asp:Literal></span></li>
                                    <li><span class="spanText1">購物金：</span><span class="spanText2">
                                        <asp:Literal ID="lit_ORM11" runat="server"></asp:Literal></span></li>
                                    <li><span class="spanText1">折扣卷：</span><span class="spanText2">-RM&nbsp;
                                        <asp:Literal ID="lit_ORM10" runat="server"></asp:Literal></span></li>
                                    <li style="background-color: #f8ee9a; text-align: center; font-size: 130%;">總計：<span style="color: #ee1867">RM&nbsp;  
                                        <asp:Literal ID="lit_ORM08" runat="server"></asp:Literal></span></li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <hr />
                    <div class="am-u-sm-12" runat="server" id="tb2" style="width: 100%">
                        <dl class="am-accordion-item">
                            <dt class="am-accordion-title">
                                <span style="font-size: 14px;">贈品明細</span>
                            </dt>
                            <dd class="am-accordion-bd am-collapse am-in" style="font-size: 12px">

                                <asp:Repeater ID="rp_gift_list" runat="server">
                                    <ItemTemplate>
                                        <table style="border: 1px solid #c7c7c7; width: 100%">
                                            <tr>
                                                <td style="width: 90px; padding-left: 5px">
                                                    <img src="../images/giftimgs/<%# Eval("ORE09") %>" style="width: 80px; height: 80px" />
                                                </td>
                                                <td style="float: left; padding: 10px">
                                                    <table>
                                                        <tr>
                                                            <td>活動名稱：<%# Eval("ORE06") %>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>贈送商品：<%# Eval("ORE03") %>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>贈送數量：<%# Eval("ORE04") %>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </dd>
                        </dl>
                    </div>

                </section>
            </div>
        </div>
    </div>--%>

    <uc1:member_class runat="server" ID="member_class" />

    <section class="order-specs">
        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-main">訂單明細</div>
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-9 order-specs-col">
                        <ul class="order-specs-data-list">
                            <li><span>訂單日期 ：</span> <span>
                                <asp:Literal ID="lit_ORM03" runat="server"></asp:Literal></span></li>
                            <li><span>訂單編號 ：</span> <span>
                                <asp:Literal ID="lit_ORM02" runat="server"></asp:Literal></span></li>
                            <li><span>出貨單號 ：</span> <span>
                                <asp:Literal ID="lit_ORM25" runat="server"></asp:Literal></span></li>
                            <%-- <li><span>貨運名稱 ：</span> <span>
                                <asp:Literal ID="lit_ORM20" runat="server"></asp:Literal></span></li>--%>



                            <%--                                  
                                    <li>電子郵件：
                                        <asp:Literal ID="lit_ORM17" runat="server"></asp:Literal></li>
                             
                            --%>
                        </ul>
                    </div>
                    <div class="am-u-sm-3 order-specs-col order-specs-col-status">
                        <span class="order-specs-status">
                            <asp:Literal ID="lit_ORM24" runat="server"></asp:Literal></span>
                    </div>
                </div>
            </div>
        </div>

        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">送貨資訊</div>
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-position.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-user">

                        <%--     <ul>

                            <li><strong>收件人:</strong> <strong>
                                <asp:Literal ID="lit_ORM13" runat="server"></asp:Literal></strong></li>
                            <li><span>Phone:</span>
                                <span>
                                    <asp:Literal ID="lit_ORM15" runat="server"></asp:Literal></span></li>
                            <li><span>Tel:</span>
                                <span>
                                    <asp:Literal ID="lit_ORM14" runat="server"></asp:Literal></span></li>
                            <li><span>Addr:</span>
                                <span>
                                    <asp:Literal ID="lit_ORM16" runat="server"></asp:Literal></span></li>

                        </ul>--%>


                        <%--  <table>
                            <tr>
                                <td>
                                    <ul>
                                        <li>
                                            <strong>收件人:</strong>
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            <strong>
                                                <asp:Literal ID="lit_ORM13" runat="server"></asp:Literal></strong>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <ul>
                                        <li><span>Phone:</span>
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            <span>
                                                <asp:Literal ID="lit_ORM15" runat="server"></asp:Literal></span>

                                        </li>
                                    </ul>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li><span>Tel:</span>
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            <span>
                                                <asp:Literal ID="lit_ORM14" runat="server"></asp:Literal></span></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li><span>Addr:</span>
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            <span>
                                                <asp:Literal ID="lit_ORM16" runat="server"></asp:Literal></span></li>
                                    </ul>
                                </td>
                            </tr>
                        </table>--%>



                        <table>
                            <tr style="margin-bottom: 1rem">
                                <td style="padding-bottom: 10px">
                                    <strong>Name:</strong>
                                </td>
                                <td style="padding-bottom: 10px">
                                    <strong>
                                        <asp:Literal ID="lit_ORM13" runat="server"></asp:Literal></strong>
                                </td>
                            </tr>
                            <tr class="font-color">
                                <td>
                                    <span>Tel:</span>
                                </td>
                                <td>
                                    <span>
                                        <asp:Literal ID="lit_ORM14" runat="server"></asp:Literal></span>
                                </td>
                            </tr>
                            <tr class="font-color">
                                <td>
                                    <span>Phone:</span>
                                </td>
                                <td>
                                    <span>
                                        <asp:Literal ID="lit_ORM15" runat="server"></asp:Literal></span>
                            </tr>

                            <tr class="font-color">
                                <td style="padding-bottom: 10px">
                                    <span>Addr:</span>
                                </td>
                                <td style="padding-bottom: 10px">
                                    <span>
                                        <asp:Literal ID="lit_ORM16" runat="server"></asp:Literal></span>

                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row order-specs-row-notes">
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-house.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-notes">
                        <strong>備註：</strong> <span>
                            <asp:Literal ID="lit_ORM18" runat="server"></asp:Literal></span>
                    </div>
                </div>
            </div>
        </div>

        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">購買商品</div>
            <div class="am-panel-bd">
                <ul class="am-avg-sm-1 order-specs-product-list">
                    <!-- product item start -->
                    <asp:Repeater ID="rp_cart_list" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="am-g am-g-collapse order-specs-row  order-specs-row-product">
                                    <div class="am-u-sm-3 order-specs-col order-specs-col-product-img">
                                        <img src='<%# "http://www.hawooo.com/images/webimgs/" + Eval("ORD07") %>' />
                                    </div>
                                    <div class="am-u-sm-9 order-specs-col order-specs-col-product-data">
                                        <div class="am-container order-specs-product-title">
                                            <span><%# Eval("ORD02") %>
                                                <asp:Literal ID="lit_ORD11" runat="server" Text='<%# Eval("ORD11").ToString().Equals("1") ? "(預購商品)" : "" %>'></asp:Literal></span>
                                        </div>
                                        <div class="am-container order-specs-product-type">
                                            <span><%# Eval("ORD04") %></span>
                                        </div>
                                        <div class="am-container order-specs-habi">
                                            <span>
                                                <img src="images/habi_icon.png">Ha幣回饋x<%#Eval("ORD15") %>：<%#Eval("ORD16") %></span>
                                        </div>
                                        <div class="am-container order-specs-product-price">
                                            <div class="am-u-sm-6 order-specs-product-price-single">
                                                <span>RM <%# Eval("ORD05") %> (x<%# Eval("ORD06") %>)</span>
                                            </div>
                                            <div class="am-u-sm-6 order-specs-product-price-total">
                                                <strong>RM <%# Convert.ToDecimal(Eval("ORD06").ToString()) * Convert.ToDecimal(Eval("ORD05").ToString()) %></strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%-- <a href="reviews_ZH.html" class="hidden-self" style="visibility:hidden"><span class="m-write-review">我要評論</span></a>--%>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <!-- product item end -->
                </ul>
            </div>
        </div>

        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">付款資料</div>
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse order-specs-row order-specs-row-payment">
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-dollar.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-payment">
                        <ul>
                            <li><strong>付款方式 :</strong> <span>
                                <asp:Literal ID="lit_ORM12" runat="server"></asp:Literal></span></li>
                            <li><strong>付款狀態 :</strong> <span>
                                <asp:Literal ID="lit_ORM19" runat="server"></asp:Literal>
                                <asp:Literal ID="lit_Re_Molpay" runat="server"></asp:Literal></span></li>

                        </ul>
                    </div>
                </div>



                <div class="am-g am-g-collapse order-specs-row ">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>商品金額小計</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>RM
                            <asp:Literal ID="lit_ORM05" runat="server"></asp:Literal></span>
                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>運費</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>RM
                            <asp:Literal ID="lit_ORM06" runat="server"></asp:Literal></span>
                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row" id="ha">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Ha幣</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>折運費／折商品－RM
                            <asp:Literal ID="lit_ORM66" runat="server"></asp:Literal></span>
                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row" id="discountC">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>折扣券</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            <asp:Literal ID="lit_ORM10" runat="server"></asp:Literal></span>
                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>購物金</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            <asp:Literal ID="lit_ORM11" runat="server"></asp:Literal></span>
                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row" id="discount">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>折扣</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            <asp:Literal ID="lit_ORM69" runat="server"></asp:Literal></span>
                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <strong>訂單總額</strong>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <strong class="order-specs-payment-total">RM
                            <asp:Literal ID="lit_ORM08" runat="server"></asp:Literal></strong>
                    </div>
                </div>
            </div>
        </div>



        <%-- <div class="am-u-sm-12" runat="server" id="tb2" style="width: 100%">
            <dl class="am-accordion-item">
                <dt class="am-accordion-title">
                    <span style="font-size: 14px;">贈品明細</span>
                </dt>
                <dd class="am-accordion-bd am-collapse am-in" style="font-size: 12px">

                    <asp:Repeater ID="rp_gift_list" runat="server">
                        <ItemTemplate>
                            <table style="border: 1px solid #c7c7c7; width: 100%">
                                <tr>
                                    <td style="width: 90px; padding-left: 5px">
                                        <img src="../images/giftimgs/<%# Eval("ORE09") %>" style="width: 80px; height: 80px" />
                                    </td>
                                    <td style="float: left; padding: 10px">
                                        <table>
                                            <tr>
                                                <td>活動名稱：<%# Eval("ORE06") %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>贈送商品：<%# Eval("ORE03") %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>贈送數量：<%# Eval("ORE04") %>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </dd>
            </dl>
        </div>--%>




        <div class="am-panel am-panel-default order-specs-panel" id="tb2" runat="server">
            <div class="am-panel-hd panel-hd-secondary">贈品明細</div>
            <div class="am-panel-bd">
                <ul class="am-avg-sm-1 order-specs-product-list">
                    <!-- product item start -->
                    <asp:Repeater ID="rp_gift_list" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="am-g am-g-collapse order-specs-row  order-specs-row-product">
                                    <div class="am-u-sm-3 order-specs-col order-specs-col-product-img">
                                        <img src="../images/giftimgs/<%# Eval("ORE09") %>" />
                                    </div>
                                    <div class="am-u-sm-9 order-specs-col order-specs-col-product-data">
                                        <div class="am-container order-specs-product-title">
                                            <span>活動名稱：<%# Eval("ORE06") %></span>
                                        </div>
                                        <div class="am-container order-specs-product-type">
                                            <span>贈送商品：<%# Eval("ORE03") %></span>
                                        </div>
                                        <div class="am-container order-specs-product-type">
                                            <span>贈送數量：<%# Eval("ORE04") %></span>
                                        </div>
                                    </div>
                                </div>
                                <%-- <a href="reviews_ZH.html" class="hidden-self" style="visibility:hidden"><span class="m-write-review">我要評論</span></a>--%>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <!-- product item end -->
                </ul>
            </div>
        </div>
    </section>

 


    <%--  <section class="order-specs-btn-section" id="bot1" style="visibility:hidden">
            <div class="am-g order-specs-btn-row">
                <div class="am-u-sm-12 order-specs-btn-col">
                    <a hrer="#" class="am-btn order-specs-btn">
                        <img src="images/order-specs-card_icon.png" alt="" class="order-specs-btn-img order-atm-img">
                        <span class="order-specs-btn-text">信用卡付款</span>
                    </a>
                    <a hrer="#" class="am-btn order-specs-btn" onclick="openATMbox(this)">
                        <img src="images/order-specs-atm_icon.png" alt="" class="order-specs-btn-img order-atm-img">
                        <span class="order-specs-btn-text">實體ATM轉帳</span>
                    </a>
                    <span class="order-atm-box"></span>
                    <a hrer="about06.aspx" class="am-btn order-specs-btn">
                        <img src="images/icon-spec-bubble.png" alt="" class="order-specs-btn-img">
                        <span class="order-specs-btn-text">常見問與答</span>
                    </a>
                </div>
            </div>
        </section>

        <section class="order-specs-btn-section" id="bot2" style="visibility:hidden">
            <div class="am-g order-specs-btn-row">
                <div class="am-u-sm-12 order-specs-btn-col">
                    <a hrer="#" class="am-btn order-specs-btn">
                        <img src="images/icon-spec-truck.png" alt="" class="order-specs-btn-img">
                        <span class="order-specs-btn-text">查看運送詳情</span>
                    </a>
                    <a hrer="#" class="am-btn order-specs-btn">
                        <img src="images/icon-spec-bubble.png" alt="" class="order-specs-btn-img">
                        <span class="order-specs-btn-text">常見問與答</span>
                    </a>
                </div>
            </div>
        </section>--%>



    <section class="order-specs-bottom-btn-section">
        <div class="am-g">
            <div class="am-u-sm-12 order-specs-bottom-btn-col">
                <a href="memberorder.aspx" class="am-btn order-specs-bottom-btn">
                    <span class="order-specs-bottom-btn-text">返回所有訂單</span>
                </a>
            </div>
        </div>
    </section>

    <script>

        //團購顯示資訊(移除Ha幣跟折扣券)
        function removeHaAndDiscountC() {
            $("#ha").remove(); //移除Ha幣區域
            $("#discountC").remove(); //移除折扣券區域
            //removeBot(i);//選擇下方代入按鈕


        }
        //非團購顯示(移除折扣)
        function removeDiscount() {
            $("#discount").remove();//移除折扣區域
            //removeBot(i);//選擇下方代入按鈕
        }


        //選擇下方該代入的按鈕(1.查詢貨態 2.付款方式 3.都不顯示)
        //function removeBot(i) {
        //    switch (i) {
        //        case 1:
        //            {
        //                $("#bot1").remove();
        //                $("#bot2").css("visibility", "visible");
        //                $(".hidden-self").css("visibility", "visible");
        //                break;
        //            }
        //        case 2:
        //            {
        //                $("#bot1").css("visibility", "visible");
        //                $("#bot2").remove();
        //                break;
        //            }
        //        case 3:
        //            {
        //                $("#bot1").remove();
        //                $("#bot2").remove();
        //                break;
        //            }
        //    }
        //}

    </script>

    <style>
        .font-color {
            line-height: 1.8rem;
            color: #9d9597;
        }
    </style>
</asp:Content>

