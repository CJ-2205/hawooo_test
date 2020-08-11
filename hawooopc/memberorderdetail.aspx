<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="memberorderdetail.aspx.cs" Inherits="user_memberorderdetail" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Comment -->
    <script src="http://rvtest.hawoo.com/js/order-review.js"></script>
    <script>
        function GetOrderComment(orderNo, userId, userName, image, token) {
            $("#hw-order-comment").attr({ "data-order-no": orderNo, "data-user-id": userId, "data-user-name": userName, "data-member-image": image, "data-token": token });
        };
    </script>
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
    <!-- 下方三個好處免運、正品、快送 -->
    <link rel="stylesheet" href="assets/css/footer_good_block.css">
    <!-- 會員專區專用 -->
    <link rel="stylesheet" type="text/css" href="assets/css/member2.css">
    <!-- 商品評分專用 reviews -->
    <link rel="stylesheet" type="text/css" href="assets/css/reviews.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- comment star -->
    <div id="hw-order-comment"></div>
    <!-- comment end -->
    <!-- content star -->
    <!-- 會員區 左邊導覽＋右邊顯示 -->
    <section class="am-container am-cf member-wrapper">
        <!--  左邊導覽 -->
        <uc1:memberleftclass runat="server" ID="memberleftclass" />
        <!--  右邊導覽 -->
        <div class="am-fl member-rightmenu">

            <section class="member-list-wrapper">
                <!-- 訂單編號與狀態 開始-->
                <div class="am-u-sm-12 member-info">
                    <table class="invoice-table title-table">
                        <tr>
                            <th colspan="4">
                                <i class="am-icon-list-ul"></i>訂單編號：<p>
                                    <asp:HiddenField ID="hf_ORM01" runat="server" />
                                    <asp:Literal ID="lit_ORM02" runat="server"></asp:Literal>
                                </p>
                                <i class="am-icon-clock-o"></i>訂單日期：<p>
                                    <asp:Literal ID="lit_ORM03" runat="server"></asp:Literal>
                                </p>
                            </th>
                            <th class="invoice-status">
                                <asp:Literal ID="lit_ORM24" runat="server"></asp:Literal>
                            </th>
                        </tr>
                    </table>
                </div>
                <!-- 訂單編號與狀態 結束-->

                <!-- 訂單編號與狀態 開始-->
                <div class="am-u-sm-12 member-info">
                    <table class="invoice-table delivery-table">
                        <thead>
                            <tr>
                                <th colspan="2" class="invoice-maintitle">送貨資訊</th>
                                <th colspan="2" class="invoice-subtitle"><%--出貨單號：<asp:Literal ID="lit_ORM25" runat="server"></asp:Literal>--%></th>
                            </tr>

                        </thead>
                        <tbody>
                            <tr>
                                <td class="o-table-title border-right">收件人姓名</td>
                                <td class="delivery-text">
                                    <asp:Literal ID="lit_ORM13" runat="server"></asp:Literal></td>
                                <td class="o-table-title border-left border-right">電話</td>
                                <td class="delivery-text">
                                    <asp:Literal ID="lit_ORM14" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td class="o-table-title border-right">email</td>
                                <td>
                                    <asp:Literal ID="lit_ORM17" runat="server"></asp:Literal></td>
                                <td class="o-table-title border-left border-right">手機</td>
                                <td>
                                    <asp:Literal ID="lit_ORM15" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td class="o-table-title border-right">地址</td>
                                <td colspan="3">
                                    <asp:Literal ID="lit_ORM16" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td class="o-table-title border-right">備註</td>
                                <td colspan="3">
                                    <asp:Literal ID="lit_ORM18" runat="server"></asp:Literal></td>
                            </tr>
                            <tr id="shipDetail" runat="server">
                                <td class="o-table-title border-right">Logistics Details</td>
                                <td colspan="3">

                                    <table class="am-table am-table-bordered" style="margin: 0px;">

                                        <asp:Repeater runat="server" ID="rp_ship_list">
                                            <ItemTemplate>

                                                <tr>
                                                    <td style="width: 80px">單號:
                                                    </td>
                                                    <td style="width: 120px">
                                                        <a href="https://system.goodmaji.com/web/shipmenthistory.aspx?shipNo=<%# DataBinder.Eval(Container.DataItem, "ORDA12") %>" target="_blank">
                                                            <asp:Literal ID="litORDA12" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ORDA12") %>'></asp:Literal>
                                                        </a>
                                                    </td>
                                                    <td style="width: 80px">出貨日:
                                                    </td>
                                                    <td>

                                                        <asp:Literal ID="litORDA13" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ORDA13") %>'></asp:Literal>
                                                    </td>
                                                    <td style="width: 80px">狀態:
                                                    </td>
                                                    <td style="width: 100px">

                                                        <asp:Literal ID="litST12" runat="server" Text='<%# Eval("STATE") %>'></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <div>
                                                            <div class="am-panel am-panel-default" style="margin-bottom: 0px">
                                                                <div class="am-panel-hd">
                                                                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#<%# DataBinder.Eval(Container.DataItem, "ORDA12") %>'}" style="padding: 5px">商品明細
                                                                    </h4>
                                                                </div>
                                                                <div id="<%# DataBinder.Eval(Container.DataItem, "ORDA12") %>" class="am-panel-collapse am-collapse ">
                                                                    <div class="am-panel-bd">
                                                                        <table class=" am-table am-table-bordered">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>商品</th>
                                                                                    <th>數量</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <asp:Repeater runat="server" ID="rp_ship_detail">
                                                                                <ItemTemplate>
                                                                                    <tr>

                                                                                        <td>
                                                                                            <asp:Literal ID="litORDA03" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ORDA03") %>'></asp:Literal>
                                                                                        </td>

                                                                                        <td>
                                                                                            <asp:Literal ID="litICOUNT" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ICOUNT") %>'></asp:Literal>
                                                                                        </td>
                                                                                    </tr>
                                                                                </ItemTemplate>
                                                                            </asp:Repeater>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>



                <!-- 未付款的金流資訊  開始 -->
                <div class="am-u-sm-12 member-info">
                    <table class="invoice-table payment-table">
                        <thead>
                            <tr>
                                <th colspan="3" class="invoice-maintitle">付款資訊</th>
                                <th class="payment-status">
                                    <asp:Literal ID="lit_ORM19" runat="server"></asp:Literal>
                                    <asp:Literal ID="lit_Re_Molpay" runat="server"></asp:Literal>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="o-table-title border-right">付款方式</td>
                                <td>
                                    <asp:Literal ID="lit_ORM12" runat="server"></asp:Literal></td>
                            </tr>
                            <tr class="m-invoice-btn" id="nonePay">
                                <td colspan="6">
                                    <a id="molpay" class="am-btn fuchsia-o-btn" style="float: right">
                                        <img src="icon/order-specs-card_icon.png">線上付款</a>
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <button href="member-order.html" class="am-btn fuchsia-o-btn" onclick="openATMbox(this)">
                                                <img src="icon/order-specs-atm_icon.png">實體ATM轉帳</button>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 未付款的金流資訊  結束 -->



                <!-- 匯款需要回傳匯款資料 開始 -->
                <asp:Panel ID="ATMPANEL" runat="server">
                    <div class="am-u-sm-12 member-info">
                        <div class="am-cf money-transfer">
                            <h4>匯款資料</h4>
                            <ul class="am-avg-sm-3">
                                <li>
                                    <h5>銀行：</h5>
                                    <%--<asp:TextBox ID="txt_ORM26" runat="server" MaxLength="30" Width="100px"></asp:TextBox>--%>
                                    <asp:TextBox ID="txt_ORM26" runat="server" MaxLength="30" Width="100%"></asp:TextBox>
                                </li>
                                <li>
                                    <h5>日期：</h5>
                                    <%--  <asp:TextBox ID="txt_ORM27" runat="server" Width="100px" MaxLength="20"></asp:TextBox>--%>
                                    <asp:TextBox ID="txt_ORM27" runat="server" Width="100%" MaxLength="20"></asp:TextBox>
                                </li>
                                <li>
                                    <h5>後五碼：</h5>
                                    <%-- <asp:TextBox ID="txt_ORM28" runat="server" Width="60px" MaxLength="5"></asp:TextBox>--%>
                                    <asp:TextBox ID="txt_ORM28" runat="server" Width="100%" MaxLength="5"></asp:TextBox>
                                </li>
                            </ul>
                            <asp:UpdatePanel ID="up_pay_info" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Button ID="btn_Send" runat="server" Width="15%" CssClass="am-btn am-fr fuchsia-o-btn money-transfer-btn btn-self" Text="確認送出" OnClick="btn_Send_Click" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_Send" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </asp:Panel>
                <!-- 匯款需要回傳匯款資料 結束 -->

                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <!-- 購物金獲得紀錄 開始 -->
                        <div class="am-u-sm-12 am-cf member-info">
                            <!-- 一筆tr是一筆哈幣 -->
                            <table class="invoice-table order-detail-table">
                                <!-- <div>訂單信息</div> -->
                                <thead>
                                    <tr>
                                        <th colspan="2" class="invoice-maintitle">購買商品</th>
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
                                    <asp:Repeater ID="rp_detail_list" runat="server" OnItemCreated="rp_detail_list_ItemCreated">
                                        <ItemTemplate>
                                            <tr class="order-item">
                                                <td class="m-invoice-pic">
                                                    <asp:HiddenField ID="hf_ORD01" runat="server" Value='<%# Eval("ORD01") %>' />
                                                    <!--圖片-->
                                                    <asp:Image ID="img_ORD08" runat="server" ImageUrl='<%# "../images/webimgs/" + Eval("ORD07") %>' Width="80px" />
                                                </td>
                                                <td class="m-invoice-text">
                                                    <!--名稱-->
                                                    <h4>
                                                        <asp:Literal ID="lit_ORD02" runat="server" Text='<%# Eval("ORD02") %>'></asp:Literal></h4>
                                                    <br>
                                                    <h5>
                                                        <asp:Literal ID="lit_ORD04" runat="server" Text='<%# Eval("ORD04") %>'></asp:Literal></h5>
                                                    <asp:Literal ID="lit_ORD11" runat="server" Text='<%# Eval("ORD11").ToString().Equals("1") ? "(預購商品)" : "" %>'></asp:Literal>

                                                    <p class="invoice-habi">
                                                        <img src="icon/habi_icon.png">回饋Ha幣x<asp:Literal ID="lit_ORD15" runat="server" Text='<%# Eval("ORD15") %>'></asp:Literal>倍:<asp:Literal ID="lit_ORD16" runat="server" Text='<%# FieldCheck.isDecimal(Eval("ORD16").ToString()) ? Eval("ORD16").ToString() : "0" %>'></asp:Literal>
                                                    </p>
                                                </td>
                                                <!--評論-->
                                                <td style="width: 10% !important">
                                                    <asp:Panel ID="product_comment_panel" runat="server" Visible='<%#Eval("ORD09").ToString().Equals("1") %>'>
                                                        <div class="hw-rating-bar" data-product-id='<%#Eval("ORD03") %>'></div>
                                                    </asp:Panel>
                                                </td>

                                                <td class="m-invoice-unit m-td">RM
                                                    <asp:Literal ID="lit_ORD05" runat="server" Text='<%# Eval("ORD05") %>'></asp:Literal>
                                                </td>
                                                <td class="m-invoice-qty m-td">

                                                    <asp:Literal ID="lit_ORD06" runat="server" Text='<%# Eval("ORD06") %>'></asp:Literal>
                                                </td>
                                                <td class="m-invoice-price m-td">RM
                                                    <asp:Literal ID="lit_Sum" runat="server" Text='<%# (Convert.ToDecimal(Eval("ORD05").ToString()) * Convert.ToInt32(Eval("ORD06").ToString())) %>'></asp:Literal>

                                                </td>

                                            </tr>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <tr class="order-cost-title">
                                        <td colspan="4">總計
                                        </td>
                                        <td class="m-invoice-price">RM
                                            <asp:Literal ID="lit_Sum" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr class="order-cost-title">
                                        <td colspan="4">折扣券
                                        </td>
                                        <td class="m-invoice-price">-RM
                                            <asp:Literal ID="lit_ORM10" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr class="order-cost-title">
                                        <td colspan="4">運費
                                        </td>
                                        <td class="m-invoice-price">RM
                                            <asp:Literal ID="lit_ORM06" runat="server"></asp:Literal></td>
                                    </tr>

                                    <tr class="order-cost-title">
                                        <td colspan="4">Ha幣扣除
                                        </td>
                                        <td class="m-invoice-price">-RM
                                            <asp:Literal ID="lit_ORM66" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr class="order-cost-title">
                                        <td colspan="4">購物金
                                        </td>
                                        <td class="m-invoice-price">-RM
                                            <asp:Literal ID="lit_ORM11" runat="server"></asp:Literal></td>
                                    </tr>
                                    <tr class="m-invoice-total">
                                        <td colspan="6">訂單金額：<p>
                                            RM
                                            <asp:Literal ID="lit_ORM08" runat="server"></asp:Literal>
                                        </p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <table class="am-table am-table-bordered am-table-radius am-table-striped" id="tb2" runat="server">
                    <thead>
                        <tr>
                            <th style="background-color: #29ABB3; color: #ffffff">贈品列表</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Repeater ID="rp_gift_list" runat="server">
                                    <ItemTemplate>
                                        <div class="am-u-sm-6">
                                            <table style="border: 1px solid #c8c8c8; width: 100%">
                                                <tr>
                                                    <td style="width: 85px; padding-left: 5px;">
                                                        <img src='<%# "../images/giftimgs/" + Eval("ORE09") %>' style="width: 80px; height: 80px" />
                                                    </td>
                                                    <td style="padding-left: 5px; float: left; padding-top: 10px; padding-bottom: 10px">
                                                        <table>
                                                            <tr>
                                                                <td>活動名稱：<%# Eval("ORE06") %></td>
                                                            </tr>
                                                            <tr>
                                                                <td>贈送商品：<%# Eval("ORE03") %></td>
                                                            </tr>
                                                            <tr>
                                                                <td>贈送數量：<%# Eval("ORE04") %></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </tbody>
                </table>

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
    <link href="../jquery-plus/jquery-starbox/css/ie7.css" rel="stylesheet" />
    <link href="../jquery-plus/jquery-starbox/css/jstarbox.css" rel="stylesheet" />
    <script src="../jquery-plus/jquery-starbox/jstarbox.js"></script>
    <div class="am-modal am-modal-no-btn" tabindex="-1" id="pmodal">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                商品評價 <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <div class="am-modal-bd" style="background-color: #ffffff">
                <div style="height: 10px">
                </div>
                <table>
                    <tr>
                        <td style="text-align: right">商品名稱：
                        </td>
                        <td>
                            <asp:UpdatePanel ID="up_name" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_ORD02" runat="server" Width="300px" Enabled="false"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr style="height: 50px">
                        <td style="text-align: right">分數：
                        </td>
                        <td style="text-align: left">
                            <asp:HiddenField ID="hf_ORC02" runat="server" ClientIDMode="Static" />
                            <div class="starbox">
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
                            <asp:UpdatePanel ID="up_content" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_ORC003" runat="server" TextMode="MultiLine" Width="300px" Height="150px"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr style="height: 50px">
                        <td></td>
                        <td style="text-align: right">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Button ID="btn_commnet" runat="server" Text="Send" CssClass="btn" OnClick="btn_commnet_Click"
                                        OnClientClick="getStarVal();" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_commnet" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
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

</asp:Content>
