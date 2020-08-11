<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="cart3.aspx.cs" Inherits="cart3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/cart.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            hiddenFooterMenu();
        })
    </script>
    <div>
        <div class="container-cart-steps">
            <ul class="am-avg-sm-3 ul-cart-steps">
                <li><span class="cart-step-text txtRsc" data-id="cart041">訂單資訊</span></li>
                <li><span class="cart-step-arrow">
                    <i class="fa fa-angle-right" aria-hidden="true"></i></span>
                    <span class="cart-step-text txtRsc" data-id="cart042">付款方式</span>
                </li>
                <li class="cart-step-active"><span class="cart-step-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                    <span class="cart-step-text txtRsc" data-id="cart043">訂單完成</span>
                </li>
            </ul>
        </div>

        <section class="wrapper-cart wrapper-shipping-notify">
            <div class="am-g am-g-collapse wrapper-shipping total-txt">
                <div class="am-u-sm-12" style="text-align: center; font-weight: bold; font-size: 14px;">
                    Order No：
                    <asp:Literal ID="lit_orderNum" runat="server"></asp:Literal>
                    <br />
                    <span class="txtRsc" data-id="cart030">感謝您的訂購</span><br />
                    <span class="txtRsc" data-id="cart044">我們將在3-10個工作天將商品寄給您</span>
                </div>
            </div>
        </section>
        <section class="wrapper-cart wrapper-shipping-notify" id="cimb" runat="server">
            <div class="am-g am-g-collapse wrapper-shipping total-txt">
                <span style="font-size: 13px; font-weight: bold;">ATM INFO</span>
                <hr style="padding: 0px; margin: 2px" />
                <span>Bank:</span>
                <span>Cimb Bank</span><br />
                <span>Name:</span>
                <span>PEOPLES MAP</span><br />
                <span>Account:</span>
                <span>80-0327458-9</span>
                <br />
                <span class="txtRsc" data-id="cart035">匯款完成請務必保留匯款單據，並將匯款單上傳至</span><a href="http://m.me/hawooohawooo" target="_blank">Facebook</a>。
            </div>
        </section>
        <section class="wrapper-cart wrapper-shipping-notify" id="pbb" runat="server">
            <div class="am-g am-g-collapse wrapper-shipping total-txt">
                <span style="font-size: 13px; font-weight: bold;">ATM INFO</span>
                <hr style="padding: 0px; margin: 2px" />
                <span>Bank:</span>
                <span>Public Bank</span><br />
                <span>Name:</span>
                <span>PEOPLES MAP</span><br />
                <span>Account:</span>
                <span>3201174410</span>
                <br />
                <span class="txtRsc" data-id="cart035">匯款完成請務必保留匯款單據，並將匯款單上傳至</span><a href="http://m.me/hawooohawooo" target="_blank">Facebook</a>。
            </div>
        </section>
        <section class="wrapper-cart wrapper-shipping-notify">
            <div class="am-g am-g-collapse total-txt">
                <div class="wrapper-buttons" style="border-top: none; padding: 10px 0px;" id="repay" runat="server">
                    <asp:Literal ID="lit_repay" runat="server"></asp:Literal>
                </div>


                <div class="wrapper-buttons" style="border-top: none; padding: 10px 0px;">
                    <a href="http://m.me/hawooohawooo" target="_blank">
                        <span class="button-cart button-next" style="width: 80%">Customer Service</span>
                    </a>
                </div>

                <div class="wrapper-buttons" style="border-top: none; padding: 0px 0px 10px 0px;">
                    <a href="memberorder.aspx" target="_blank">
                        <span class="button-cart button-prev" style="width: 80%">Order List</span>
                    </a>
                </div>
            </div>
        </section>
        <section class="ship-info wrapper-cart" style="padding-bottom: 0px" runat="server">
            <div class="am-g" style="height: 80px; background-color: white; line-height: 80px;">
                <div class="am-fl" style="width: 120px">
                    <span style="font-size: 16px; color: #707070; padding-left: 16px">
                        <i class="am-icon-user"></i>
                        收件人資訊
                    </span>
                </div>

                <div class="am-fr" style="font-size: 12px; width: calc(100% - 120px)">

                    <table style="text-align: right; line-height: 18px; margin-top: 10px; margin-right: 5px; width: 100%">
                        <tr>
                            <td style="font-weight: bold; color: #212121">
                                <asp:Literal ID="lit_shipname" runat="server"></asp:Literal>
                            </td>
                            <td rowspan="2">
                                <i class=" am-icon-angle-right" style="font-size: 20px; padding: 0px 7px;"></i>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #BBBBBE">
                                <span class="ship-addr">
                                    <asp:Literal ID="lit_address" runat="server"></asp:Literal></span>

                            </td>
                        </tr>
                    </table>

                </div>
            </div>
        </section>

        <section class="wrapper-cart wrapper-shipping-notify">

            <div class="am-g am-g-collapse wrapper-shipping total-txt">
                <div class="am-u-sm-12">
                    <span class="am-fl">運費
                    </span>
                    <span class="am-fr">RM
                             
                                <asp:Literal ID="lit_ship_info" runat="server"></asp:Literal>
                    </span>
                </div>
                <div class="am-u-sm-12">
                    <span class="am-fl">小計
                    </span>
                    <span class="am-fr">RM
                                <asp:Literal ID="lit_subtotal" runat="server"></asp:Literal>
                    </span>
                </div>
                <div class="am-u-sm-12">
                    <span class="am-fl">活動折抵
                    </span>
                    <span class="am-fr">RM 
                                <asp:Literal ID="lit_discount" runat="server"></asp:Literal>
                    </span>
                </div>
                <div class="am-u-sm-12">
                    <span class="am-fl total-title">付款總金額
                    </span>
                    <span class="am-fr total-price">RM<asp:Literal ID="lit_sum" runat="server"></asp:Literal>
                    </span>
                </div>
            </div>
            <div class="am-g" style="text-align: center; padding: 0px 0px 10px 0px;">
                <hr style="margin: 0px; padding-bottom: 5px;" />
                <span style="font-size: 14px; color: #707070">本次消費將獲得 <span style="color: #F0648F">
                    <asp:Literal ID="lit_get_hacoin" runat="server"></asp:Literal>
                </span>Hacoin
                </span>
            </div>

        </section>




    </div>
    <asp:HiddenField ID="hf_sum" runat="server" ClientIDMode="Static" Value="0" />
    <asp:Literal ID="lit_hawooo_txt" runat="server"></asp:Literal>
    <asp:Literal ID="lit_google_txt" runat="server"></asp:Literal>
    <asp:Literal ID="lit_involveasia_txt" runat="server"></asp:Literal>
    <script>
        ga('ec:setAction', 'checkout', { 'step': 5 });
    </script>
    <script>
        $(function () {
            hiddenFooterMenu();
            $("#midmenu").remove();
        });
    </script>
</asp:Content>

