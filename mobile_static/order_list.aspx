<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="order_list.aspx.cs" Inherits="mobile_static_order_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <link href="assets_v2/css/customer.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

        <section class="am-g brand-catalog-title-w" style="z-index: 999">
            <div class="brand-catalog-title  am-cf">
                <button class="am-btn am-btn-primary b-collapse-title am-collapsed" data-am-collapse="{target: '#brands-nav'}" onclick="event.returnValue=false;">
                    <h3 class="am-fl">
                        <span class="txtRsc" data-id="m010">My Orders</span></h3>
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
                      <!--預付訂金列表入口 (Start)-->
                      <li><a href="memberorder.aspx">
                        <span class="txtRsc" data-id="">Deposit Order</span>
                    </a></li>
                     <!--預付訂金列表入口 (End)-->
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
            <div class="am-tabs" id="member-order-tab-wrapper">
                <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                    <li class=""><a href="javascript:void(0)">待出貨</a></li>
                    <li class=""><a href="javascript:void(0)">待付款</a></li>
                    <li class=""><a href="javascript:void(0)">出貨中</a></li>
                    <li class=""><a href="javascript:void(0)">待評價</a></li>
                    <li class="am-active"><a href="javascript:void(0)">已評價</a></li>
                    <li><a href="javascript:void(0)">已取消</a></li>
                </ul>
                <div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
            <!--【尾款】已付款待出貨訂單列表  (Start)-->
                    <div class="am-tab-panel member-order-shop-tab">
                        <span>No orders..</span>
                            <ul class="member-order-shop-list">
                            <li class="order-list mt-1">
                                <a href="#!" class="order-list-header">
                                    <div>
                                        <p class="my-0 order-number">Order No. <span>S191111000045283</span></p>
                                        <span class="order-date">2019-11-11 00:00:45</span>
                                    </div>
                                    <div>
                                        <button class="order-btn fs-0 px-2 text-nowrap">Processing</button>
                                    </div>
                                </a>
                                <div class="order-list-body">
                                    <ul class="order-product-wrap">
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum...</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="btn-view-all">
                                        <a href="#!">View all<i class="fa fa-angle-down" aria-hidden="true"></i><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="order-list-footer">
                                    <div>
                                        <img src="https://www.hawooo.com/mobile/images/icon-spec-dollar.png" />
                                        <span class="order-payment">Molpay / No pay</span>
                                    </div>
                                    <p class="order-total">4 Items,Total: <span>RM 4000.00</span></p>
                                </div>
                            </li>
                 <%--           <li class="order-list">
                                <a href="#!" class="order-list-header">
                                    <div>
                                        <p class="order-number">Order No. S191111000045283</p>
                                        <span class="order-date">2019-11-11 00:00:45</span>
                                    </div>
                                    <div>
                                        <button class="order-btn">Processing</button>
                                    </div>
                                </a>
                                <div class="order-list-body">
                                    <ul class="order-product-wrap">
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum...</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="order-list-footer">
                                    <div>
                                        <img src="https://www.hawooo.com/mobile/images/icon-spec-dollar.png" />
                                        <span class="order-payment">Molpay / No pay</span>
                                    </div>
                                    <p class="order-total">2 Items,Total: <span>RM 2000.00</span></p>
                                </div>
                            </li>--%>
                        </ul>
                    </div>
            <!--【尾款】已付款待出貨訂單列表  (End)-->

          <!--【尾款】已付款訂單列表  (Start)-->
                    <div class="am-tab-panel  member-order-shop-tab">

                        <ul class="member-order-shop-list">
                            <li class="order-list mt-1">
                                <a href="#!" class="order-list-header">
                                    <div>
                                        <p class="my-0 order-number">Order No. S191111000045283</p>
                                        <span class="order-date">2019-11-11 00:00:45</span>
                                    </div>
                                    <div>
                                        <button class="order-btn fs-0 px-2 text-nowrap">Wait</button>
                                    </div>
                                </a>
                                <div class="order-list-body">
                                    <ul class="order-product-wrap">
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum...</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                        <li class="order-product">
                                            <div class="order-product-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200710091418521.jpg" />
                                            </div>
                                            <div>
                                                <p class="order-product-name">Dr.Morita Six Essence Hyaluronic Acid Eye Serum</p>
                                                <p class="order-product-price">RM 1000.00 <span>x1</span></p>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="btn-view-all">
                                        <a href="#!">View all<i class="fa fa-angle-down" aria-hidden="true"></i><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="order-list-footer">
                                    <div>
                                        <img src="https://www.hawooo.com/mobile/images/icon-spec-dollar.png" />
                                        <span class="order-payment">Molpay / No pay</span>
                                    </div>
                                    <p class="order-total">4 Items,Total: <span>RM 4000.00</span></p>
                                </div>
                            </li>
                        </ul>

                      <p class="my-0 fs-0 text-center text-900">※ To view the status of your order after complete the final payment, please go to <u class="text-secondary fs-2"> My Orders</a> </p>
                        <script>
                            $('.btn-view-all').click(function () {
                                $(this).prev().toggleClass('order-product-show');
                                $(this).toggleClass('show');
                            });
                        </script>
                     <!--【尾款】訂單列表  (End)-->
                    </div>
          <!--【尾款】已付款訂單列表  (End)-->
                    <div class="am-tab-panel member-order-shop-tab">
                        <ul class="member-order-shop-list">
                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=0e4551d3-76e4-46d2-b06e-99ee51f1a854" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2020-06-27 19:44:38</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S200627194438595</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890147788001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM17.90</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=18e3d601-2ffa-4a8a-a147-142d14dbe33f" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2020-05-08 08:56:22</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>L200508085622187</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI9700139759001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM169.00</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=1103410f-135c-42be-8ad4-cca3390cc856" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2020-04-30 21:07:21</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S200430210721667</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI9700134436001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM211.00</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=8a6d5ad5-0b79-4e6d-beb9-3314c097e0fc" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2020-03-25 13:19:30</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S200325131930902</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890114714001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM125.90</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=f9f08190-850c-415b-b29d-dc9da667dd2a" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2020-01-22 09:50:51</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S200122095051910</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890102627001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM162.80</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=78fc5db0-6b4e-403c-aafb-43630a406380" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-11-28 12:44:52</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S191128124452146</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890089985001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM89.40</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=579f2ce0-3bfd-48c6-ac4c-c76c03d42be6" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-11-11 12:17:35</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S191111121735325</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890086673001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM308.70</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=248c59af-0399-4b49-bbbb-8f64cd6465af" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-10-06 16:10:26</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S191006161026888</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890076268001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM108.00</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=80b5436a-1242-440b-a19a-b3b086f16fe6" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-09-13 23:44:47</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S190913234447669</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890071314001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM243.90</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=12c2a923-5417-4b80-a1c6-c414b92f67c1" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-08-22 23:13:47</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S190822231347884</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890066151001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM206.50</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=6838a2c7-0a40-40df-ad3e-ac9fb22bb619" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-05-09 16:04:18</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S190509160418118</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890045120001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM370.00</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">Shipping</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="am-tab-panel member-order-shop-tab">
                        <ul class="member-order-shop-list">
                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=0e4551d3-76e4-46d2-b06e-99ee51f1a854" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2020-06-27 19:44:38</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S200627194438595</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>GMJI8890147788001</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>Complete</span>
                                                </li>
                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM17.90</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">待評價(2)</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="am-tab-panel member-order-shop-tab am-active am-in">

                    </div>

                    <div class="am-tab-panel member-order-shop-tab">



                        <ul class="member-order-shop-list">


                            <li class="member-order-shop-li">
                                <a href="memberorderdetail.aspx?oid=24339942-523d-4f1a-92c9-233ca93ddbec" class="member-order-list-link">
                                    <div class="am-g am-g-collapse member-order-data-row" style="height: auto;">
                                        <div class="am-u-sm-9 member-order-data-col">
                                            <ul class="member-order-data-list">
                                                <li><span class="txtRsc" data-id="m001">Order Date</span>：<span>2019-11-11 00:00:45</span></li>
                                                <li><span class="txtRsc" data-id="m002">Order No.</span>：<span>S191111000045283</span></li>

                                                <li><span class="txtRsc" data-id="m005">Tracking Code</span>：
                                                        <span>Non shipped</span></li>
                                                <li><span class="txtRsc" data-id="m003">Payment</span>：<span>Molpay</span></li>
                                                <li><span class="txtRsc" data-id="m006">Payment Status</span>：
                                                        <span>No pay</span>
                                                </li>

                                                <li><span class="txtRsc" data-id="m004">Order Amount</span><strong class="member-order-item-total">：RM216.70</strong></li>
                                            </ul>
                                        </div>
                                        <div class="am-u-sm-3 member-order-shop member-order-status-col">
                                            <span class="member-order-status">
                                                <span style="color: #999999; font-weight: 800">Cancel</span></span><i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </section>

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

