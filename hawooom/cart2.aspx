<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true" CodeFile="cart2.aspx.cs" Inherits="cart2" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/cart.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hfListId" runat="server" Value="" />

    <!-- 內容區 START -->
    <div style="padding: 5px;">
        <!-- 麵包屑 Start-->
        <div class="container-cart-steps">
            <ul class="am-avg-sm-3 ul-cart-steps">
                <li>
                    <span class="cart-step-text txtRsc" data-id="cart041">訂單資訊</span></li>
                <li class="cart-step-active">
                    <span class="cart-step-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </span><span class="cart-step-text txtRsc" data-id="cart042">付款方式</span>
                </li>
                <li>
                    <span class="cart-step-arrow"><i class="fa fa-angle-rght" aria-hidden="true"></i>
                    </span>
                    <span class="cart-step-text txtRsc" data-id="cart043">訂單完成</span>
                </li>
            </ul>
        </div>
        <section class="cart-habi" id="section_goods" runat="server">
            <div class="am-g" style="padding: 10px; line-height: 30px; vertical-align: middle;">
                <div class="am-fl" style="font-size: 14px; font-weight: bold;">
                    付款金額(
                    <asp:Literal ID="lit_pcount" runat="server"></asp:Literal>
                    商品):
                </div>
                <div class="am-fr" style="font-size: 15px; font-weight: bold; color: #F0648F;">
                    RM 
                    <asp:Literal ID="lit_price" runat="server"></asp:Literal>
                </div>
            </div>
            <section data-am-widget="accordion" class="am-accordion am-active am-accordion-gapped" data-am-accordion='{  }' style="background-color: #FAFAFA; margin: 0px">
                <dl class="am-accordion-item">
                    <dt class="am-accordion-title more-title">
                        <span class="txtRsc" data-id="cart056">查看訂單資訊</span>
                    </dt>
                    <dd class="am-accordion-bd am-collapse " style="background-color: #F5F5F5;">
                        <asp:UpdatePanel ID="up_cart_list" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <!-- 購物清單 Start-->
                                <section class="am-g am-g-collapse wrapper-cart-products">
                                    <ul class="am-avg-sm-1">
                                        <asp:Repeater ID="rp_cart_list" runat="server" OnItemDataBound="rp_cart_list_ItemDataBound">
                                            <ItemTemplate>
                                                <li class="li-cart-product">
                                                    <div class="am-g" style="width: 100%">
                                                        <div class="am-fl" style="padding: 7px;">
                                                            <asp:HiddenField ID="hf_CTD01" runat="server" Value='<%# Eval("CTD01") %>' EnableViewState="false" />
                                                            <asp:HiddenField ID="hf_CTD03" runat="server" Value='<%# Eval("CTD03") %>' EnableViewState="false" />
                                                            <asp:HiddenField ID="hf_CTD10" runat="server" Value='<%# Eval("CTD10") %>' EnableViewState="false" />
                                                            <asp:HiddenField ID="hf_CTD11" runat="server" Value='<%# Eval("CTD11") %>' EnableViewState="false" />
                                                            <asp:HiddenField ID="hf_CTD12" runat="server" Value='<%# Eval("CTD12") %>' EnableViewState="false" />
                                                            <asp:HiddenField ID="hf_WP29" runat="server" Value='<%# Eval("WP29") %>' EnableViewState="false" />
                                                            <asp:HiddenField ID="hf_WP36" runat="server" Value='<%# Eval("WP36") %>' EnableViewState="false" />

                                                            <a href='<%# "product.aspx?id=" +  Eval("CTD01") %>'>
                                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"] + "/webimgs/" + Eval("CTD09") %>' style="width: 65px;" />
                                                            </a>
                                                        </div>
                                                        <div class="am-fl" style="width: calc(100% - 90px);">
                                                            <div class="am-g" style="width: 100%">
                                                                <div class="am-fl" style="max-width: 93%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
                                                                    <a href='<%# "product.aspx?id=" +  Eval("CTD01") %>' style="font-size: 13px; color: #707070;">
                                                                        <span>
                                                                            <%# Eval("CTD02") %>
                                                                        </span>
                                                                    </a>
                                                                </div>
                                                                <div class="am-fr">
                                                                </div>
                                                            </div>
                                                            <div class="am-g">
                                                                <span class="am-fl">
                                                                    <asp:HiddenField ID="hf_WP17" runat="server" Value='<%# Eval("WP17") %>' EnableViewState="false" />
                                                                    <asp:HiddenField ID="hf_CTD06" runat="server" Value='<%# Eval("CTD06") %>' EnableViewState="false" />
                                                                    <asp:HiddenField ID="hf_QTY" runat="server" Value='<%# Eval("QTY") %>' EnableViewState="false" />
                                                                    <asp:HiddenField ID="hf_WPA04" runat="server" Value='<%# Eval("WPA04") %>' EnableViewState="false" />

                                                                    <span style="font-size: 10px; color: #BBBBBE">
                                                                        <%# Eval("CTD04") %> * <%# Eval("CTD06") %>
                                                       
                                                                    </span>

                                                                </span>

                                                            </div>
                                                            <div class="am-g">
                                                                <span style="color: #707070; font-size: 12px; text-decoration: line-through;">

                                                                    <%# Eval("CTD11").ToString().Equals("0") ? "" : ("RM " + hawooo.PbClass.CashRate(Eval("WPA06").ToString(), Currency.MYR) * Convert.ToInt32(Eval("CTD06").ToString())) %> 
                                                                </span>
                                                                <span style="color: #F0648F; font-size: 12px;">
                                                                    <%# "RM " + (hawooo.PbClass.CashRate(Eval("WPA06").ToString(), Currency.MYR) * Convert.ToInt32(Eval("CTD06").ToString()) - Convert.ToDecimal(Eval("CTD12").ToString())) %>                                                  
                                                                </span>
                                                            </div>
                                                            <asp:Panel ID="p_pre_sale" runat="server" Visible="true">
                                                                <div class="am-g">
                                                                    <i class="am-icon-caret-up"></i>
                                                                    <%= LangClass.GetMsgInfo("M027",(LangType)ViewState["LG"]) %>
                                                                </div>
                                                                <asp:Panel ID="Panel1" runat="server" Visible="true">
                                                                    <div class="am-g">
                                                                        <asp:Literal ID="lit_booking_msg" runat="server"></asp:Literal>
                                                                    </div>
                                                                </asp:Panel>
                                                            </asp:Panel>
                                                        </div>

                                                    </div>
                                                    <asp:Panel ID="p_web_event" runat="server">
                                                        <div class="am-g am-vertical-align-middle div-auto-discount ad-ok" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
                                                            <asp:Literal ID="lit_web_event" runat="server"></asp:Literal>
                                                        </div>
                                                    </asp:Panel>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>

                                </section>

                                <!-- 購物清單 End-->
                                <div class="am-popup" id="my-popup">
                                    <div class="am-popup-inner">
                                        <div class="am-popup-hd">
                                            <h4 class="am-popup-title txtRsc" data-id="gf001">滿額贈品</h4>
                                            <span data-am-modal-close
                                                class="am-close" style="color: #000000">&times;</span>
                                        </div>
                                        <div class="am-popup-bd iframe-rwd">
                                            <div id="gload" style="text-align: center; width: 100%">
                                                <img src="../images/icon/loading.gif" />
                                            </div>
                                            <iframe id="giftlink" onload="LoadingOK(this)"></iframe>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    function OpenGiftModal(gid) {
                                        var url = "giftcontent.aspx?gid=" + gid;
                                        $("#giftlink").attr('src', url);
                                        $("#my-popup").modal();
                                    }
                                    function LoadingOK() {
                                        $("#gload").hide();
                                    }
                                </script>
                                <!--滿額商品 Start-->
                                <section class="wrapper-cart wrapper-cart-promotion" id="full_gift_event" runat="server">

                                    <asp:Repeater ID="rp_gift_list" runat="server">
                                        <ItemTemplate>
                                            <a onclick="OpenGiftModal('<%# Eval("GE01") %>')" style="text-align: left; text-decoration-line: underline; color: gray">
                                                <div class="promotion-table">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td class="promotion-tag" style="width: 70px">

                                                                <asp:Literal ID="lit_type" runat="server" Text='<%# Eval("type").ToString() %>'></asp:Literal>
                                                            </td>
                                                            <td style="text-align: left">
                                                                <a onclick="OpenGiftModal('<%# Eval("GE01") %>')">
                                                                    <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal>
                                                                </a>

                                                                x<asp:Literal ID="lit_count" runat="server" Text='<%# Eval("count").ToString() %>'></asp:Literal>
                                                                <asp:Literal ID="lit_non_price" runat="server" Text='<%# Eval("lack").ToString() %>'></asp:Literal>

                                                                <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' />
                                                                <asp:HiddenField ID="hf_GP01" runat="server" Value='<%# Eval("GP01") %>' />
                                                                <asp:HiddenField ID="hf_GP02" runat="server" Value='<%# Eval("GP02") %>' />
                                                                <asp:HiddenField ID="hf_GE02" runat="server" Value='<%# Eval("GE02") %>' />
                                                                <asp:HiddenField ID="hf_GE10" runat="server" Value='<%# Eval("GE10") %>' />
                                                                <asp:HiddenField ID="hf_GE10_EN" runat="server" Value='<%# Eval("GE10_EN") %>' />
                                                                <asp:HiddenField ID="hf_GE11" runat="server" Value='<%# Eval("GE11") %>' />
                                                                <asp:HiddenField ID="hf_GE11_EN" runat="server" Value='<%# Eval("GE11_EN") %>' />
                                                                <asp:HiddenField ID="hf_GP10" runat="server" Value='<%# Eval("GP10") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>

                                                </div>
                                            </a>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                </section>
                                <!--滿額商品 End-->

                                <!-- 結帳區 Start-->
                                <section class="wrapper-cart wrapper-shipping-notify">
                                    <asp:UpdatePanel ID="up_result" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:HiddenField ID="hf_can_ship_em" runat="server" ClientIDMode="static" />
                                            <asp:HiddenField ID="hf_ha_use" runat="server" />
                                            <asp:HiddenField ID="hf_price_discount" runat="server" />
                                            <asp:HiddenField ID="hf_webevnet_total" runat="server" />
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
                                                    <span class="am-fr">-RM 
                                                         <asp:Literal ID="lit_discount" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                                <div class="am-u-sm-12">
                                                    <span class="am-fl">Hacoin
                                                    </span>
                                                    <span class="am-fr">-RM 
                                                        <asp:Literal ID="lit_dishacoin" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                                <div class="am-u-sm-12">
                                                    <span class="am-fl">購物金
                                                    </span>
                                                    <span class="am-fr">-RM 
                                                        <asp:Literal ID="lit_disgold" runat="server"></asp:Literal>
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
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </section>


                                <!--收件資訊-->
                                <section class="wrapper-cart wrapper-shipping-notify" style="display: flex; padding: 7px;">
                                    <div class="am-fl" style="font-size: 12px; width: 100%" onclick="OpenGetShipInfo();">

                                        <div class="am-fl">

                                            <span style="font-weight: bold; color: #212121">
                                                <asp:Literal ID="lit_shipname" runat="server"></asp:Literal>
                                            </span>
                                            <br />
                                            <span class="ship-addr">
                                                <asp:Literal ID="lit_shipinfo" runat="server"></asp:Literal>
                                            </span>

                                        </div>
                                        <%-- <div class="am-fr" style="transform: translateY(50%);">
                                            <i class="am-icon-angle-right" style="font-size: 20px;"></i>
                                        </div>--%>
                                    </div>

                                </section>


                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </dd>
                </dl>
            </section>
        </section>



        <section class="wrapper-cart" id="wrapper-shipping-form">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 am-form">
                    <section data-am-widget="accordion" class="am-accordion am-accordion-gapped payment-methods" data-am-accordion='{  }' style="margin: 1em 12px; background: #ffffff">
                        <div class="am-form">

                            <div class="payment-methods-title-wrapper" style="text-align: center">
                                <h5 class="shop-title txtRsc" data-id="">請選擇付款方式
                                </h5>
                            </div>
                            <dl class="am-accordion-item am-active" id="pay-credit">
                                <dt class="am-accordion-title payment-methods-subTitle payment-title" onclick="move2tab('pay-credit');">
                                    <span>Credit Card</span>
                                </dt>
                                <dd class="am-accordion-bd am-collapse am-in">
                                    <div class="am-accordion-content ">
                                        <ul class="am-avg-sm-1">
                                            <li>

                                                <ul class="am-avg-sm-1 payment-methods-choices">
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-1">
                                                        <asp:RadioButton ID="op1" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="op1">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/visa-master.png" alt="" class="payment-methods-online-logo payment-methods-credit-card">
                                                            </div>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="am-accordion-item" id="pay-onlinebank">
                                <dt class="am-accordion-title payment-methods-subTitle payment-title" onclick="move2tab('pay-onlinebank');">
                                    <span>Online Bank</span>
                                </dt>
                                <dd class="am-accordion-bd am-collapse">
                                    <div class="am-accordion-content ">
                                        <ul class="am-avg-sm-1">
                                            <li>
                                                <ul class="am-avg-sm-2 payment-methods-choices">
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb04" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb04">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/affin-bank.png" alt="" class="payment-methods-online-logo payment-methods-affin-bank">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb01" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb01">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/am-online.png" alt="" class="payment-methods-online-logo payment-methods-am-online">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb02" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb02">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/cimb-clicks.png" alt="" class="payment-methods-online-logo payment-methods-cimb-clicks">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb03" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb03">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/esa-pay.png" alt="" class="payment-methods-online-logo payment-methods-esa-pay">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb05" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb05">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/fpx-business.png" alt="" class="payment-methods-online-logo payment-methods-fpx-business">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb06" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb06">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/hong-leong-connect.png" alt="" class="payment-methods-online-logo payment-methods-hong-leong">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb07" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb07">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/maybank.png" alt="" class="payment-methods-online-logo payment-methods-maybank">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb08" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb08">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/rhb-now.png" alt="" class="payment-methods-online-logo payment-methods-rhb-now">
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-2">
                                                        <asp:RadioButton ID="rb09" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="rb09">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/web-cash.png" alt="" class="payment-methods-online-logo payment-methods-web-cash">
                                                            </div>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </dd>
                            </dl>
                            <dl class="am-accordion-item" id="pay-others">
                                <dt class="am-accordion-title payment-methods-subTitle payment-title" onclick="move2tab('pay-others');">
                                    <span>Others(ex.7-11,ATM)</span>
                                </dt>
                                <dd class="am-accordion-bd am-collapse ">
                                    <div class="am-accordion-content">
                                        <ul class="am-avg-sm-1">
                                            <li>

                                                <ul class="am-avg-sm-1 payment-methods-choices">
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-1">
                                                        <asp:RadioButton ID="op2" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="op2">
                                                            <div class="payment-methods-img-wrapper">
                                                                <img src="images/payment_methods/seven11.png" alt="" class="payment-methods-online-logo payment-methods-7-eleven">
                                                            </div>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>

                                                <ul class="am-avg-sm-1 payment-methods-choices">
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-1">
                                                        <asp:RadioButton ID="ofp1" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <lgabel class="payment-methods-label" for="ofp1">
                                                            <div class="payment-methods-bank-info">
                                                                <div class="payment-methods-img-wrapper">
                                                                    <img src="images/payment_methods/cimb-bank-logo-sm.png" alt="" class="payment-methods-online-logo payment-methods-credit-card">
                                                                </div>
                                                                <div class="payment-methods-bank-specs">
                                                                    <ul>
                                                                        <li>
                                                                            <strong>ID： </strong><span>80-0327458-9</span>
                                                                        </li>
                                                                        <li>
                                                                            <strong>Bank： </strong><span>Cimb Bank</span>
                                                                        </li>
                                                                        <li>
                                                                            <strong>Account： </strong><span>Peoples Map Sdn Bhd.</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </lgabel>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>

                                                <ul class="am-avg-sm-1 payment-methods-choices">
                                                    <li class="payment-methods-choice-li payment-methods-choice-li-avg-1">
                                                        <asp:RadioButton ID="ofp2" runat="server" ClientIDMode="Static" EnableViewState="false" />
                                                        <label class="payment-methods-label" for="ofp2">
                                                            <div class="payment-methods-bank-info">
                                                                <div class="payment-methods-img-wrapper">
                                                                    <img src="images/payment_methods/Public-Bank-logo-sm.png" alt="" class="payment-methods-online-logo payment-methods-credit-card">
                                                                </div>
                                                                <div class="payment-methods-bank-specs">
                                                                    <ul>
                                                                        <li>
                                                                            <strong>ID： </strong><span>3201174410</span>
                                                                        </li>
                                                                        <li>
                                                                            <strong>Bank： </strong><span>Public Bank</span>
                                                                        </li>
                                                                        <li>
                                                                            <strong>Account： </strong><span>Peoples Map Sdn Bhd.</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </section>
                </div>
            </div>


            <section class="wrapper-cart" id="wrapper-shipping-form">
                <div class="am-footer-fixed buy-footer">
                    <asp:UpdatePanel ID="up_step" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="wrapper-buttons" style="padding-top: 5px;">
                                <asp:LinkButton ID="btn_pre" runat="server" CssClass="button-cart button-prev" OnClick="btn_pre_Click"><i class="fa fa-angle-left" aria-hidden="true"></i><span>back</span></asp:LinkButton>
                                <asp:LinkButton ID="btn_next" runat="server" CssClass="button-cart button-next" OnClick="btn_next_Click"><span>next</span><i class="fa fa-angle-right" aria-hidden="true"></i></asp:LinkButton>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btn_pre" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btn_next" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </section>


        </section>
        <!-- Payment methods -->


        <!-- 購物車資訊區域 End-->


        <script>
            ga('ec:setAction', 'checkout', { 'step': 4 });
        </script>
        <!-- Payment methods script -->
        <script type="text/javascript">
            $('.payment-methods').on('click', function (e) {

                var $selectedLi = $(e.target).hasClass('.payment-methods-choice-li') ? $(e.target) : $(e.target).closest('.payment-methods-choice-li');
                var $selectedLiInput = $selectedLi.find("input[type='radio']");

                var $everyLi = $('.payment-methods-choice-li');

                $selectedLiInput.prop("checked", true);
                if ($selectedLiInput.is(':checked')) {
                    $everyLi.removeClass('payment-methods-choice-active');
                    $selectedLi.addClass('payment-methods-choice-active');
                } else {
                    return;
                }
            });
        </script>
        <script>
            $(function () {
                hiddenFooterMenu();
                $(".am-footer").css('display', 'none');
                $("#midmenu").remove();
            });

            function move2tab(id) {
                $('html,body').animate({ scrollTop: $('#' + id).offset().top - 55 }, 600);
            }
        </script>
    </div>
    <!--Hawooo Facebook Pixel Code -->
    <script type="text/javascript">
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            }; if (!f._fbq) f._fbq = n;
            n.push = n; n.loaded = !0; n.version = '2.0'; n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t, s)
        }(window,
            document, 'script', '//connect.facebook.net/en_US/fbevents.js');
        fbq('init', '967509866640000');
        fbq('track', 'AddPaymentInfo', { content_ids: [<%=hfListId.Value.Equals("")?"":hfListId.Value.TrimEnd(',')%>], currency: 'MYR', value: <%= Convert.ToDecimal(lit_subtotal.Text)-Convert.ToDecimal(lit_ship_info.Text) %>  });    </script>
    <noscript>
        <img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=967509866640000&ev=PageView&noscript=1" />
    </noscript>
</asp:Content>

