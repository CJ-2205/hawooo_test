<%@ Page Title="" Language="C#" MasterPageFile="~/user_static/u.master" AutoEventWireup="true" CodeFile="deposit_order_list.aspx.cs" Inherits="user_static_deposit_order_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets_v2/css/customer.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="body">
        <div id="_page_content" style="margin-top: 120px; display: block;">
            <!--上方LOGO ITEM SERCE BAR 開始-->





            <!-- content star -->
            <content style="margin-top: 140px; display: block;">
        <!-- 會員區 左邊導覽＋右邊顯示 -->
        <section class="am-container am-cf member-wrapper">
            <!--  左邊導覽 -->

<!--  左邊導覽 -->
<div class="am-fl member-sidemenu">
    <ul class="memeber-sidetab">
        <a href="member_card.aspx">
            <li>
                <img src="icon/member-profile.png">
                <span class="txtRsc" data-id="m040">我的會員卡</span></li>
        </a>
        <a href="memberinfo.aspx">
            <li>
                <img src="icon/member-profile.png">
                <span class="txtRsc" data-id="m009">我的資訊</span></li>
        </a>
        <a href="memberorder.aspx">
            <li>
                <img src="icon/member-order.png">
                <span class="txtRsc" data-id="m010">我的訂單</span> </li>
        </a>
         <!--預付訂金訂單連結  (Start)-->
                <a href="deposit_order_list.aspx">
            <li>
                <img src="icon/member-order.png">
                <span>預付訂金訂單</span> </li>
        </a>
         <!--預付訂金訂單連結  (End)-->
        <a href="memberhacoin.aspx">
            <li>
                <img src="icon/member-ha.png">
                <span class="txtRsc" data-id="m011">我的HA幣</span>
                <span class="member-bonus-left"></span></li>
        </a>
        <a href="membergold.aspx">
            <li>
                <img src="icon/member-balance.png">
                <span class="txtRsc" data-id="m012">我的購物金</span>
                <span class="member-bonus-left"></span></li>
        </a>
        <a href="membercoupon.aspx">
            <li>
                <img src="icon/member-vouchers.png">
                <span class="txtRsc" data-id="m013">我的折扣卷</span>
            </li>
        </a>

        <a href="qa.aspx">
            <li>
                <img src="icon/member-qa.png">
                <span class="txtRsc" data-id="m014">常見問題</span>
            </li>
        </a>
    </ul>



</div>

            <!--  右邊導覽 -->
            <div class="am-fl member-rightmenu">
                <div class="am-tabs" data-am-tabs="">
                    <!-- 訂單tab 開始 -->
                    <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-2">
                        <li class="am-active"><a href="#tab1">Shop</a></li>

                    </ul>
                    <!-- 訂單tab 結束 -->

                    <div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                        <!-- 好物市集的panel 開始 -->
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">

                            <div id="ContentPlaceHolder1_part2">

                 <!--【尾款】訂單列表  (Start)-->
                            <div id="display_order">
                                  <table class="am-table am-table-bordered am-table-radius am-table-striped" style="background-color:white">
                                <thead class="text-nowrap">
                                    <tr>
                                        <th class="txtRsc" style="width:18%">訂單日期</th>
                                        <th class="txtRsc" style="width:18%">訂單編號</th>
                                        <th class="txtRsc" style="width:10%">付款方式</th>
                                        <th class="txtRsc" style="width:12%">訂單金額</th>
                                        <th class="txtRsc" style="width:14%">出貨單號</th>
                                        <th class="txtRsc" style="width:14%">付款狀態</th>
                                        <th class="txtRsc" style="width:14%">訂單狀態</th>
                                    </tr>
                                </thead>

                                <tbody class="text-nowrap">
                                            <tr>
                                                <td>2020-10-08 08:53:33</td>
                                              <td><a href="deposit_order_detail.aspx">   S201008085333232 </a></td>
                                                <td>
                                                    Molpay</td>
                                                <td><span style="font-size: 12px">RM</span> 85.00</td>
                                                <td>
                                                    <span></span>
                                                    </td>
                                                <td>
                                                  尚未付款</td>
                                                <td>
                                                    <span style="color:#C00;font-weight:800">取消訂單</span>
                                                </td>
                                            </tr>
                                </tbody>
                            </table>
                         </div>
                   <!--【尾款】訂單列表  (End)-->

                     </div>
                        </div>
              <!-- 好物市集的panel 結束 -->

                    </div>
                </div>

             <!--【預付訂金】訂單列表  (Start)-->
                            <div>
                                  <table class="am-table am-table-bordered am-table-radius am-table-striped" style="background-color:white">
                                <thead class="text-nowrap">
                                    <tr>
                                        <th class="txtRsc" style="width:18%">Deposit Order Date</th>
                                        <th class="txtRsc" style="width:18%">Deposit Order No</th>
                                        <th class="txtRsc" style="width:10%">Payment</th>
                                        <th class="txtRsc" style="width:12%">Deposit Amount</th>
                                        <th class="txtRsc" style="width:14%">Final Amount</th>
                                        <th class="txtRsc" style="width:14%">Payment Status</th>
                                        <th class="txtRsc" style="width:14%">Order Status</th>
                                    </tr>
                                </thead>

                                <tbody class="text-nowrap">
                                            <tr>
                                                <td>2020-10-08 08:53:33</td>
                                              <td><a href="deposit_order_detail.aspx">   S201008085333232 </a></td>
                                                <td>
                                                    Molpay</td>
                                                <td><span style="font-size: 12px">RM</span> 85.00</td>
                                                <td>
                                                    <span style="font-size: 12px">RM</span> 85.00
                                                    </td>
                                                <td>
                                                    Deposit Paid</td>
                                                <td>
                                                    <span style="color:#C00;font-weight:800">Final Payment Unpaid</span>
                                                </td>
                                            </tr>

                                                  <tr>
                                                <td>2020-10-08 08:53:33</td>
                                              <td><a  href="deposit_order_detail.aspx">   S201008085333232 </a></td>
                                                <td>
                                                    Molpay</td>
                                                <td><span style="font-size: 12px">RM</span> 85.00</td>
                                                <td>
                                                    <span style="font-size: 12px">RM</span> 85.00
                                                    </td>
                                                <td>
                                                    Deposit Unpaid</td>
                                                <td>
                                                    <span style="color:#C00;font-weight:800">Processing</span>
                                                </td>
                                            </tr>
                                </tbody>
                            </table>
                         </div>
             <!--【預付訂金】訂單列表  (End)-->

            <!--【尾款】-已付完尾款進入預付訂金order list  (Start)-->
                            <div>
                                <p class="mb-3">※ To view the status of your order after complete the final payment, please go to
                                    <a class="text-underline text-secondary font-weight-extra-bold" href="deposit_order_list.aspx"> My Orders</a>
                                </p>
                                  <table class="am-table am-table-bordered am-table-radius am-table-striped" style="background-color:white">
                                <thead class="text-nowrap">
                                    <tr>
                                        <th class="txtRsc" style="width:18%">Deposit Order Date</th>
                                        <th class="txtRsc" style="width:18%">Deposit Order No</th>
                                        <th class="txtRsc" style="width:10%">Payment</th>
                                        <th class="txtRsc" style="width:12%">Deposit Amount</th>
                                        <th class="txtRsc" style="width:14%">Final Amount</th>
                                        <th class="txtRsc" style="width:14%">Payment Status</th>
                                        <th class="txtRsc" style="width:14%">Order Status</th>
                                    </tr>
                                </thead>

                                <tbody class="text-nowrap">
                                                  <tr>
                                                <td>2020-09-11 12:01:03</td>
                                              <td><a  href="deposit_order_detail.aspx">S200911120103011</a></td>
                                                <td>
                                                    Molpay</td>
                                                <td><span style="font-size: 12px">RM</span> 85.00</td>
                                                <td>
                                                    <span style="font-size: 12px">RM</span> 85.00
                                                    </td>
                                                <td>
                                                    Deposit Unpaid</td>
                                                <td>
                                                    <span style="color:#C00;font-weight:800">Processing</span>
                                                </td>
                                            </tr>
                                </tbody>
                            </table>
                         </div>
             <!--【尾款】-已付完尾款進入預付訂金order list  (End)-->

            </div>
            <!--  右邊導覽 結束 -->

        </section>
        <!-- 會員區 左邊導覽＋右邊顯示 結束 -->
         </content>
            <script>
                $(function () {
                    $('#member-order-tab-wrapper').tabs();
                })
            </script>


            <!-- 網站活動 events 開始 -->
            <section>
                <div class="events-wrapper" onmouseover="openEvents(this)" onmouseout="closeEvents(this)" onload="openEvents(this)" style="">
                    <div class="events-handle">NEWS</div>
                    <div class="am-cf events-content">
                        <ul class="am-cf">
                            <li class="am-fl index-announcement">
                                <div class="index-announcement-title">
                                    <img src="icon/hw566.png">
                                </div>
                                <span style="color: black"></span>
                            </li>
                            <li class="am-fl"></li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- 網站活動 events 結束 -->
        </div>
    </div>
</asp:Content>

