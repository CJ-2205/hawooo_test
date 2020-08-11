<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="memberorderdetail.aspx.cs" Inherits="memberorderdetail" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Comment -->
    <script src="http://rvtest.hawoo.com/js/order-review.js"></script>
    <script>
        function GetOrderComment(orderNo, userId, userName, image, token) {
            $("#hw-order-comment").attr({ "data-order-no": orderNo, "data-user-id": userId, "data-user-name": userName, "data-member-image": image, "data-token": token });
        };
    </script>
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


    <uc1:member_class runat="server" ID="member_class" />
    <div id="hw-order-comment"></div>
    <section class="order-specs">
        <div class="am-panel am-panel-default order-specs-panel">
            <div class="am-panel-hd panel-hd-main">訂單明細</div>
            <div class="am-panel-bd">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-9 order-specs-col">
                        <ul class="order-specs-data-list">
                            <li><span class="txtRsc" data-id="m001">訂單日期 ：</span> <span>
                                <asp:Literal ID="lit_ORM03" runat="server"></asp:Literal></span></li>
                            <li><span class="txtRsc" data-id="m002">訂單編號 ：</span> <span>
                                <asp:Literal ID="lit_ORM02" runat="server"></asp:Literal></span></li>
                            <%--<li><span class="txtRsc" data-id="m005">出貨單號 ：</span> <span>
                                <asp:Literal ID="lit_ORM25" runat="server"></asp:Literal></span></li>--%>
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
        <div class="am-panel am-panel-default order-specs-panel" id="shipDetail" runat="server">
            <div class="am-panel-hd panel-hd-secondary">Logistics Details</div>
            <div class="am-panel-bd">
                <div class="am-scrollable-horizontal">
                    <table class="am-table am-table-bordered am-text-nowrap" style="margin: 0px; font-size: 12px;">

                        <asp:Repeater runat="server" ID="rp_ship_list">
                            <ItemTemplate>

                                <tr>
                                    <td style="width: 80px">單號:
                                    </td>
                                    <td style="width: 120px"><<a href="https://system.goodmaji.com/web/shipmenthistory.aspx?shipNo=<%# DataBinder.Eval(Container.DataItem, "ORDA12") %>" target="_blank">
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

                                        <div class="am-panel am-panel-default" style="margin-bottom: 0px">
                                            <div class="am-panel-hd">
                                                <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#<%# DataBinder.Eval(Container.DataItem, "ORDA12") %>'}" style="padding: 2px">商品明細
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



                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
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
                                                <img src="images/habi_icon.png">Ha幣回饋x<%# Eval("ORD15").ToString().Equals("") ? "0" : Eval("ORD15").ToString() %>：<%#Eval("ORD16").ToString().Equals("") ? "0" : Eval("ORD16").ToString() %></span>
                                        </div>
                                        <div class="am-container order-specs-product-price">
                                            <div class="am-u-sm-6 order-specs-product-price-single">
                                                <span>RM <%# Eval("ORD05") %> (x<%# Eval("ORD06") %>)</span>
                                            </div>
                                            <div class="am-u-sm-6 order-specs-product-price-total">
                                                <strong>RM <%# Convert.ToDecimal(Eval("ORD06").ToString()) * Convert.ToDecimal(Eval("ORD05").ToString()) %></strong>
                                            </div>
                                        </div>
                                        <asp:Panel ID="product_comment_panel" runat="server" Visible='<%#Eval("ORD09").ToString().Equals("1") %>'>
                                            <div class="am-container  hw-rating-bar" data-product-id='<%# Eval("ORD03") %>'></div>
                                        </asp:Panel>
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

