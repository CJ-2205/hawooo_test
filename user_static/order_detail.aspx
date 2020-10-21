<%@ Page Title="" Language="C#" MasterPageFile="~/user_static/u.master" AutoEventWireup="true" CodeFile="order_detail.aspx.cs" Inherits="user_static_order_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="assets_v2/css/customer.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div>
        <div style="margin-top: 120px; display: block;">
            <!--上方LOGO ITEM SERCE BAR 開始-->



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

                    <section class="member-list-wrapper">

                       <!-- 訂單編號與狀態 (Start)-->
                        <div class="am-u-sm-12 member-info">
                            <div class="d-flex justify-content-between fs-0">
                                <div class="d-flex">
                                    <h6 class="my-0 mr-5"><i class="am-icon-list-ul mr-2"></i>Order No：
                                        S201008085333232</h6>
                                    <h6 class="my-0"><i class="am-icon-clock-o mr-2"></i>Order Date：<span> 2020/9/11 下午12:00:00</span> </h6>
                                </div>
                                <h6 class="my-0 text-primary">
                                 Shipping
                                </h6>
                            </div>
                        </div>
                        <!--訂單編號與狀態 (End)-->


                        <div class="am-u-sm-12 member-info">
                    <table class="invoice-table delivery-table">
                        <thead>
                            <tr>
                                <th colspan="2" class="invoice-maintitle">送貨資訊</th>
                                <th colspan="2" class="invoice-subtitle"></th>
                            </tr>

                        </thead>
                        <tbody>
                            <tr>
                                <td class="o-table-title border-right">收件人姓名</td>
                                <td class="delivery-text">
                                    derrick chen</td>
                                <td class="o-table-title border-left border-right">電話</td>
                                <td class="delivery-text">
                                    </td>
                            </tr>
                            <tr>
                                <td class="o-table-title border-right">email</td>
                                <td>
                                    derrick@hawooo.com</td>
                                <td class="o-table-title border-left border-right">手機</td>
                                <td>
                                    01612345678</td>
                            </tr>
                            <tr>
                                <td class="o-table-title border-right">地址</td>
                                <td colspan="3">
                                    測試地址 Beverly Sabah 88700</td>
                            </tr>
                            <tr>
                                <td class="o-table-title border-right">備註</td>
                                <td colspan="3">
                                    </td>
                            </tr>

                        </tbody>
                    </table>

                </div>

                    <!-- 【尾款付款狀態】Payment Info(Start) -->
                        <div class="am-u-sm-12 member-info">
                            <h4 class="invoice-maintitle">Payment Info</h4>
                            <div class="d-flex flex-between-center border-bottom border-top py-3 border-100">
                                <div>
                                    <h6 class="mb-2 border-left border-2x border-primary pl-3">First Stage Payment：<span class="text-secondary">Completed</span> </h6>
                                      <p class="text-900 fs--2 my-0 pl-4">Payment Method：Moplay</p>
                                </div>
                                <h6 class="text-secondary my-0">Deposit Paid</h6>
                            </div>
                            <div class="d-flex flex-between-center border-bottom border-top py-3 border-100">
                                <div>
                                    <h6 class="mb-2 border-left border-2x border-primary pl-3">Second Stage Payment：<span class="text-secondary">Completed</span></h6>
                                      <p class="text-900 fs--2 my-0 pl-4">Payment Method：Moplay</p>
                                </div>
                                  <h6 class="text-secondary my-0">Final Payment Paid</h6>
                            </div>
                        </div>
                     <!-- 【尾款付款狀態】Payment Info(End) -->

                            <!-- 購物金獲得紀錄 開始 -->
                            <div class="am-u-sm-12 am-cf member-info">
                                <!-- 一筆tr是一筆哈幣 -->

                     <!-- Purchase Items Info(Start) -->
                                <table class="invoice-table order-detail-table">

                              <!-- <div>訂單信息</div> -->
                                    <thead>
                                        <tr>
                                            <th colspan="2" class="invoice-maintitle">Purchase Items</th>
                                        </tr>
                                        <tr class="invoice-title">
                                            <th colspan="2">商品</th>
                                            <th>評價</th>
                                            <th>單價</th>
                                            <th>數量</th>
                                            <th>小計</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr class="order-item">
                                            <td class="m-invoice-pic">
                                                <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_detail_list$ctl00$hf_ORD01" id="ContentPlaceHolder1_rp_detail_list_hf_ORD01_0" value="27062">
                                                <!--圖片-->
                                                <img id="ContentPlaceHolder1_rp_detail_list_img_ORD08_0" src="../images/webimgs/n20200205051741609.jpg" style="width: 80px;">
                                            </td>
                                            <td class="m-invoice-text">
                                                <!--名稱-->
                                                <h4>BeautyEasy 玫瑰蜂王乳保濕水嫩青春露 150ml</h4>
                                                <br>
                                                <h5>150ml</h5>


                                                <p class="invoice-habi">
                                                    <img src="icon/habi_icon.png">回饋Ha幣x1.00倍:60.00
                                                </p>
                                            </td>
                                            <!--評論-->
                                            <td style="width: 10% !important">
                                                <div id="ContentPlaceHolder1_rp_detail_list_product_comment_panel_0">

                                                    <div class="hw-rating-bar" data-product-id="d8659480-b68d-4e35-95f8-f4ef2696cfd9"></div>

                                                </div>
                                            </td>

                                            <td class="m-invoice-unit m-td">RM
                                                    60.00
                                            </td>
                                            <td class="m-invoice-qty m-td">1
                                            </td>
                                            <td class="m-invoice-price m-td ">RM
                                                    60.00

                                            </td>

                                        </tr>


                                        <tr class="order-cost-title">
                                            <td colspan="4">Subtotal Amount
                                            </td>
                                            <td class="m-invoice-price">RM
                                            60.00</td>
                                        </tr>
                                    <%--    <tr class="order-cost-title">
                                            <td colspan="4">折扣券
                                            </td>
                                            <td class="m-invoice-price">-RM
                                            0.00</td>
                                        </tr>--%>
                                        <tr class="order-cost-title">
                                            <td colspan="4">Shipping Fee
                                            </td>
                                            <td class="m-invoice-price">RM
                                            25.00</td>
                                        </tr>

                                        <tr class="order-cost-title">
                                            <td colspan="4">Deposit For Double Discount
                                            </td>
                                            <td class="m-invoice-price">-RM
                                            0</td>
                                        </tr>
                                   <%--     <tr class="order-cost-title">
                                            <td colspan="4">購物金
                                            </td>
                                            <td class="m-invoice-price">-RM
                                            0.00</td>
                                        </tr>--%>
                                        <tr class="m-invoice-total">
                                            <td colspan="6">Final Payment：<p>
                                               RM185.00
                                            </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                     <!-- Purchase Items Info(End) -->
                            </div>





                    </section>
                    <!-- 購物金明細標題＆購物金明細 voucher-title & voucher-list end -->
                </div>
                <!--  右邊導覽 結束 -->


            </section>
            <script>
                $(function () {
                    $("#mc02").addClass("select");
                })
            </script>
            <link href="../jquery-plus/jquery-starbox/css/ie7.css" rel="stylesheet">
            <link href="../jquery-plus/jquery-starbox/css/jstarbox.css" rel="stylesheet">
            <script src="../jquery-plus/jquery-starbox/jstarbox.js"></script>
            <div class="am-modal am-modal-no-btn" tabindex="-1" id="pmodal">
                <div class="am-modal-dialog">
                    <div class="am-modal-hd">
                        商品評價 <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a>
                    </div>
                    <div class="am-modal-bd" style="background-color: #ffffff">
                        <div style="height: 10px">
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <td style="text-align: right">商品名稱：
                                    </td>
                                    <td>
                                        <div id="ContentPlaceHolder1_up_name">

                                            <input name="ctl00$ContentPlaceHolder1$txt_ORD02" type="text" id="ContentPlaceHolder1_txt_ORD02" disabled="disabled" class="aspNetDisabled" style="width: 300px;">
                                        </div>
                                    </td>
                                </tr>
                                <tr style="height: 50px">
                                    <td style="text-align: right">分數：
                                    </td>
                                    <td style="text-align: left">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$hf_ORC02" id="hf_ORC02">
                                        <div class="starbox">
                                            <div class="positioner">
                                                <div class="stars">
                                                    <div class="ghost" style="display: none; width: 0px;"></div>
                                                    <div class="colorbar" style="width: 0px;"></div>
                                                    <div class="star_holder">
                                                        <div class="star star-0"></div>
                                                        <div class="star star-1"></div>
                                                        <div class="star star-2"></div>
                                                        <div class="star star-3"></div>
                                                        <div class="star star-4"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <script>
                                            $(function () {
                                                $('.starbox').starbox({
                                                    average: 0.6,
                                                    autoUpdateAverage: true,
                                                    ghosting: true
                                                });
                                            })

                                            function getStarVal() {
                                                $("#hf_ORC02").val($('.starbox').starbox("getValue"));
                                            }
                                        </script>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">評價內容：
                                    </td>
                                    <td>
                                        <div id="ContentPlaceHolder1_up_content">

                                            <textarea name="ctl00$ContentPlaceHolder1$txt_ORC003" rows="2" cols="20" id="ContentPlaceHolder1_txt_ORC003" style="height: 150px; width: 300px;"></textarea>

                                        </div>
                                    </td>
                                </tr>
                                <tr style="height: 50px">
                                    <td></td>
                                    <td style="text-align: right">
                                        <div id="ContentPlaceHolder1_UpdatePanel2">

                                            <input type="submit" name="ctl00$ContentPlaceHolder1$btn_commnet" value="Send" onclick="getStarVal();" id="ContentPlaceHolder1_btn_commnet" class="btn">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script>
                function openPMODAL() {
                    $("#pmodal").modal().width(400);
                }
                function closePMODAL() {
                    $("#pmodal").modal('close');
                }

                function PayFunction(oid, v) {
                    switch (v) {
                        case 1:
                            {
                                $("#nonePay").remove(); //已付款,移除付款按鍵
                                break;
                            }
                        case 2:
                            {
                                $("#molpay").remove(); //付款方式非molpay,移除molpay按鍵
                                break;
                            }
                        case 3:
                            {
                                break;
                            }

                    }
                    $("#molpay").attr("href", "../molpay/transToMolPay.aspx?oid=" + oid);
                }

        //function molpayUrl(oid) {
        //    $("#molpay").attr("href", "../moply/transToMolPay.aspx?oid=" + oid);
        //}


            </script>
            <script src="assets/js/member.js"></script>
            <script src="assets/js/header.js"></script>


            <!-- 網站活動 events 開始 -->
            <section>
                <div class="events-wrapper" onmouseover="openEvents(this)" onmouseout="closeEvents(this)" onload="openEvents(this)" style="display: none">
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

