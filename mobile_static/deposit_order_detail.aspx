<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="deposit_order_detail.aspx.cs" Inherits="mobile_static_deposit_order_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets_v2/css/order-specs.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="am-g brand-catalog-title-w" style="z-index: 999">
        <div class="brand-catalog-title  am-cf">
            <button class="am-btn am-btn-primary b-collapse-title am-collapsed" data-am-collapse="{target: '#brands-nav'}" onclick="event.returnValue=false;">
                <h3 class="am-fl">Deposit Order &gt; Deposit Order Detail</h3>
                <i class="am-icon-caret-down am-fr"></i>
            </button>
        </div>
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
    <section class="order-specs">
        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-main">訂單明細</div>
            <!-- 訂單編號與狀態 重新付款 (Start)-->
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-9 order-specs-col">
                        <ul class="order-specs-data-list">
                            <li><span class="txtRsc" data-id="m001">Deposit Order Date：</span> <span>2020/9/11 下午12:00:00</span></li>
                            <li><span class="txtRsc" data-id="m002">Deposit Order No：</span> <span>S200911120103011</span></li>
                        </ul>
                    </div>
                    <div class="am-u-sm-3 order-specs-col order-specs-col-status">
                        <span class="order-specs-status">Processing</span>
                    </div>
                </div>
            </div>
            <!-- 訂單編號與狀態 重新付款(End)-->

            <!-- 【開始支付尾款】 訂單編號與狀態 (Start)-->
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-9 order-specs-col">
                        <ul class="order-specs-data-list">
                            <li><span class="txtRsc" data-id="m001">Deposit Order Date：</span> <span>2020/9/11 下午12:00:00</span></li>
                            <li><span class="txtRsc" data-id="m002">Deposit Order No：</span> <span>S200911120103011</span></li>
                        </ul>
                    </div>
                    <div class="am-u-sm-3 order-specs-col order-specs-col-status">
                        <span class="order-specs-status">Final Unpaid</span>
                    </div>
                </div>
            </div>
            <!--  【開始支付尾款】訂單編號與狀態 (End)-->
        </div>

        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">Purchase Items</div>
            <div class="am-panel-bd">
                <ul class="am-avg-sm-1 order-specs-product-list">
                    <!-- product item start -->

                    <li>
                        <div class="am-g am-g-collapse order-specs-row  order-specs-row-product">
                            <div class="am-u-sm-3 order-specs-col order-specs-col-product-img">
                                <img src="http://www.hawooo.com/images/webimgs/n20201008030710461.jpg">
                            </div>
                            <div class="am-u-sm-9 order-specs-col order-specs-col-product-data">
                                <div class="am-container order-specs-product-title">
                                    <span>森田藥粧 緊緻抗皺多醣體眼膜貼 28對/盒
                                    </span>
                                </div>
                                <div class="am-container order-specs-product-type">
                                    <span>1盒</span>
                                </div>
                                <div class="am-container order-specs-habi">
                                    <span>
                                        <img src="images/habi_icon.png">Ha幣回饋x1.00：99.00</span>
                                </div>
                                <div class="am-container order-specs-product-price">
                                    <div class="am-u-sm-6 order-specs-product-price-single">
                                        <span>RM 99.00 (x1)</span>
                                    </div>
                                    <div class="am-u-sm-6 order-specs-product-price-total">
                                        <strong>RM 99.00</strong>
                                    </div>
                                </div>
                                <div id="ContentPlaceHolder1_rp_cart_list_product_comment_panel_0">

                                    <div class="am-container  hw-rating-bar" data-product-id="35862998-5393-4506-a117-091028e32797"></div>

                                </div>
                            </div>
                        </div>

                    </li>

                    <li>
                        <div class="am-g am-g-collapse order-specs-row  order-specs-row-product">
                            <div class="am-u-sm-3 order-specs-col order-specs-col-product-img">
                                <img src="http://www.hawooo.com/images/webimgs/n20200901053515832.png">
                            </div>
                            <div class="am-u-sm-9 order-specs-col order-specs-col-product-data">
                                <div class="am-container order-specs-product-title">
                                    <span>買1送2 C'est vrai 妝前隔離乳 30ml 送紅玉玫瑰妝前隔離乳2ml×2
                                    </span>
                                </div>
                                <div class="am-container order-specs-product-type">
                                    <span>買1送2</span>
                                </div>
                                <div class="am-container order-specs-habi">
                                    <span>
                                        <img src="images/habi_icon.png">Ha幣回饋x1.00：69.00</span>
                                </div>
                                <div class="am-container order-specs-product-price">
                                    <div class="am-u-sm-6 order-specs-product-price-single">
                                        <span>RM 69.90 (x1)</span>
                                    </div>
                                    <div class="am-u-sm-6 order-specs-product-price-total">
                                        <strong>RM 69.90</strong>
                                    </div>
                                </div>
                                <div id="ContentPlaceHolder1_rp_cart_list_product_comment_panel_1">

                                    <div class="am-container  hw-rating-bar" data-product-id="9a834e81-3802-43ee-8dc1-87c4da109021"></div>

                                </div>
                            </div>
                        </div>

                    </li>

                    <!-- product item end -->
                </ul>
            </div>
        </div>

        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">Order Info</div>
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-position.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-user">

                        <table>
                            <tbody>
                                <tr style="margin-bottom: 1rem">
                                    <td style="padding-bottom: 10px">
                                        <strong>Name:</strong>
                                    </td>
                                    <td style="padding-bottom: 10px">
                                        <strong>derrick chen</strong>
                                    </td>
                                </tr>
                                <tr class="font-color">
                                    <td>
                                        <span>Tel:</span>
                                    </td>
                                    <td>
                                        <span></span>
                                    </td>
                                </tr>
                                <tr class="font-color">
                                    <td>
                                        <span>Phone:</span>
                                    </td>
                                    <td>
                                        <span>01612345678</span>
                                    </td>
                                </tr>

                                <tr class="font-color">
                                    <td style="padding-bottom: 10px">
                                        <span>Addr:</span>
                                    </td>
                                    <td style="padding-bottom: 10px">
                                        <span>測試地址 Ajil Terengganu 21810</span>

                                    </td>
                                </tr>
                            </tbody>
                        </table>


                    </div>
                </div>
                <div class="am-g am-g-collapse order-specs-row order-specs-row-notes">
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-house.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-notes">
                        <strong>備註：</strong> <span></span>
                    </div>
                </div>
            </div>
        </div>
        <%--<div id="ContentPlaceHolder1_shipDetail" class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">Logistics Details</div>
            <div class="am-panel-bd">
                <div class="am-scrollable-horizontal">
                    <table class="am-table am-table-bordered am-text-nowrap" style="margin: 0px; font-size: 12px;">



                                <tbody><tr>
                                    <td style="width: 80px">單號:
                                    </td>
                                    <td style="width: 120px">&lt;<a href="https://system.goodmaji.com/web/shipmenthistory.aspx?shipNo=" target="_blank">

                                    </a>
                                    </td>
                                    <td style="width: 80px">出貨日:
                                    </td>
                                    <td>


                                    </td>
                                    <td style="width: 80px">狀態:
                                    </td>
                                    <td style="width: 100px">

                                        0
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">

                                        <div class="am-panel am-panel-default" style="margin-bottom: 0px">
                                            <div class="am-panel-hd">
                                                <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#'}" style="padding: 2px">商品明細
                                                </h4>
                                            </div>
                                            <div id="" class="am-panel-collapse am-collapse ">
                                                <div class="am-panel-bd">
                                                    <table class=" am-table am-table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>商品</th>
                                                                <th>數量</th>
                                                            </tr>
                                                        </thead>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>



                                    </td>
                                </tr>

                    </tbody></table>
                </div>
            </div>
        </div>--%>

        <!-- 【待付尾款狀態】Payment Info(Start) -->
        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">Payment Info</div>
            <div class="am-panel-bd bg-lighter-primary">
                <div class="am-g am-g-collapse order-specs-row fs-0">
                    <div class="am-u-sm-12">
                        <div>
                            <h6 class="mb-2 border-left border-2x border-primary pl-3">First Stage Payment：<span class="text-primary">Not Completed</span> </h6>
                        </div>
                    </div>
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-dollar.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-payment">
                        <ul>
                            <li><strong>Payment Method :</strong> <span>Moplay</span></li>
                            <li><strong>Payment Status :</strong> <span>Deposit Unpaid
                            </span></li>

                        </ul>
                    </div>
                </div>
            </div>

            <div class="am-panel-bd">
                <div class="py-3">
                    <h6 class="mb-2 border-left border-2x border-primary pl-3 fs-0">Second Stage Payment：<span class="text-primary">Not Completed</span> </h6>
                </div>
                <div class="d-flex flex-between-center order-specs-row ">
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Subtotal Amount</span>
                    </div>
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>RM
                            60.00</span>
                    </div>
                </div>
                <div class="d-flex flex-between-center order-specs-row">
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Shipping Fee</span>
                    </div>
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>RM
                                            25.00</span>
                    </div>
                </div>
                <div class="d-flex flex-between-center order-specs-row" id="ha">
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Deposit For Double Discount</span>
                    </div>
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>-RM 0</span>
                    </div>
                </div>
                <%--   <div class="am-g am-g-collapse order-specs-row" id="discountC">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>折扣券</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            0.00</span>
                    </div>
                </div>--%>
                <%--        <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>購物金</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            0.00</span>
                    </div>
                </div>--%>

                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <strong>Final Payment：</strong>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <strong class="text-primary">RM185.00</strong>
                    </div>
                </div>
            </div>
        </div>
        <!-- 【待付尾款狀態】Payment Info(End) -->

     <!-- 【等待支付尾款】Payment Info(Start) -->
        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">Payment Info</div>
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse order-specs-row fs-0">
                    <div class="am-u-sm-12">
                        <div>
                            <h6 class="mb-2 border-left border-2x border-primary pl-3">First Stage Payment：<span class="text-secondary">Completed</span> </h6>
                        </div>
                    </div>
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-dollar.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-payment">
                        <ul>
                            <li><strong>Payment Method :</strong> <span>Moplay</span></li>
                            <li><strong>Payment Status :</strong> <span>Deposit Unpaid
                            </span></li>

                        </ul>
                    </div>
                </div>
            </div>

         <div class="am-panel-bd bg-lighter-primary">
                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-12">
                        <div>
                            <h6 class="mb-2 border-left border-2x border-primary pl-3 fs-0">Second Stage Payment：<span class="text-primary">Not Completed</span> </h6>
                        </div>
                    </div>
                    <div class="am-u-sm-2 order-specs-col order-specs-col-icon">
                        <img src="images/icon-spec-dollar.png" alt="">
                    </div>
                    <div class="am-u-sm-10 order-specs-col order-specs-col-payment">
                        <ul>
                            <li><strong>Payment Status：</strong> <span>Final Payment Unpaid</span></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="am-panel-bd">
                <div class="d-flex flex-between-center order-specs-row ">
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Subtotal Amount</span>
                    </div>
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>RM
                            60.00</span>
                    </div>
                </div>
                <div class="d-flex flex-between-center order-specs-row">
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Shipping Fee</span>
                    </div>
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>RM
                                            25.00</span>
                    </div>
                </div>
                <div class="d-flex flex-between-center order-specs-row" id="ha">
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>Deposit For Double Discount</span>
                    </div>
                    <div class="order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>-RM 0</span>
                    </div>
                </div>
                <%--   <div class="am-g am-g-collapse order-specs-row" id="discountC">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>折扣券</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            0.00</span>
                    </div>
                </div>--%>
                <%--        <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <span>購物金</span>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <span>－RM
                            0.00</span>
                    </div>
                </div>--%>

                <div class="am-g am-g-collapse order-specs-row">
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-L">
                        <strong>Final Payment：</strong>
                    </div>
                    <div class="am-u-sm-6 order-specs-col order-specs-col-payment order-specs-col-payment-R">
                        <strong class="text-primary">RM185.00</strong>
                    </div>
                </div>
            </div>
        </div>
        <!-- 【等待支付尾款】Payment Info(End) -->

        <%--<div id="ContentPlaceHolder1_tb2" class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-secondary">贈品明細</div>
            <div class="am-panel-bd">
                <ul class="am-avg-sm-1 order-specs-product-list">
                    <!-- product item start -->

                    <li>
                        <div class="am-g am-g-collapse order-specs-row  order-specs-row-product">
                            <div class="am-u-sm-3 order-specs-col order-specs-col-product-img">
                                <img src="../images/giftimgs/n20200729030025538.jpg">
                            </div>
                            <div class="am-u-sm-9 order-specs-col order-specs-col-product-data">
                                <div class="am-container order-specs-product-title">
                                    <span>活動名稱：C'est vrai 1/10-31/10 買就送</span>
                                </div>
                                <div class="am-container order-specs-product-type">
                                    <span>贈送商品：紅玉蠟菊抗痕彈力精萃(5ml)</span>
                                </div>
                                <div class="am-container order-specs-product-type">
                                    <span>贈送數量：1</span>
                                </div>
                            </div>
                        </div>

                    </li>

                    <li>
                        <div class="am-g am-g-collapse order-specs-row  order-specs-row-product">
                            <div class="am-u-sm-3 order-specs-col order-specs-col-product-img">
                                <img src="../images/giftimgs/n20200514110709067.jpg">
                            </div>
                            <div class="am-u-sm-9 order-specs-col order-specs-col-product-data">
                                <div class="am-container order-specs-product-title">
                                    <span>活動名稱：森田藥粧 7/10-31/10 好禮三重送①</span>
                                </div>
                                <div class="am-container order-specs-product-type">
                                    <span>贈送商品：森田藥粧抗菌柔濕巾(25張/包)</span>
                                </div>
                                <div class="am-container order-specs-product-type">
                                    <span>贈送數量：1</span>
                                </div>
                            </div>
                        </div>

                    </li>

                    <!-- product item end -->
                </ul>
            </div>
        </div>--%>
    </section>
       <!--【等待支付尾款】付款按鈕 (Start)-->
    <section class="bg-white py-3 order-specs-bottom-btn-section">
        <div class="am-g">
            <div class="am-u-sm-12">
                <div class="d-flex flex-center">
                    <a href="#" class="am-btn border-primary text-primary p-2 mr-2 font-weight-bold fs-3" style="width: 38px;height:38px;">
                        <i class="am-icon-angle-left"></i>
                    </a>
                    <a href="#" class="disabled bg-200 d-block w-100 text-900 fs-0 text-white text-center"><i class="am-icon-lock mr-2"></i>The final payment start<br /> on 2020/11/11 00:00:00
                    </a>
                </div>
            </div>
        </div>
    </section>
   <!-- 【等待支付尾款】付款按鈕 (end)-->
   <!-- 重新付款按鈕 (Start)-->
    <section class="bg-white py-3 order-specs-bottom-btn-section">
        <div class="am-g">
            <div class="am-u-sm-12">
                <div class="d-flex">
                    <a href="#" class="am-btn border-primary text-primary p-2 mr-2 font-weight-bold fs-3" style="width: 38px;">
                        <i class="am-icon-angle-left"></i>
                    </a>
                    <a href="#" class="am-btn btn-primary btn-block text-white">Pay RM10.00 Deposit Again
                    </a>
                </div>
                <p class="text-900 fs-0 my-1">* Complete the deposit transaction before 2020/11/11 00:00:00</p>
            </div>
        </div>
    </section>
   <!-- 重新付款按鈕 (end)-->
   <!-- 開始付尾款按鈕 (Start)-->
    <section class="bg-white py-3 order-specs-bottom-btn-section">
        <div class="am-g">
            <div class="am-u-sm-12">
                <div class="d-flex">
                    <a href="#" class="am-btn border-primary text-primary p-2 mr-2 font-weight-bold fs-3" style="width: 38px;">
                        <i class="am-icon-angle-left"></i>
                    </a>
                    <a href="#" class="am-btn btn-primary btn-block text-white">Pay
                    </a>
                </div>
                <p class="text-900 fs-0 my-1">* Payment due date 2020/11/12 00:00:00</p>
            </div>
        </div>
    </section>
   <!--開始付尾款按鈕 (end)-->
</asp:Content>

