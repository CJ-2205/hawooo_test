<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true"
    CodeFile="cart1.aspx.cs" Inherits="cart1" EnableSessionState="ReadOnly" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="assets/css/cart.css?v=200190212" rel="stylesheet" />
    <script src="../api/address.js"></script>
    <style>
        .blockUI {
            z-index: 9999 !important;
        }

        .am-accordion-content {
            padding: 0px !important;
        }

        .am-selected {
            background-color: white;
        }

        .addr-panel1 {
            height: 50px;
            line-height: 2;
            background-color: white;
            background: white;
            width: 100%;
            padding: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 5px;">
        <asp:HiddenField ID="hfShip2East" runat="server" Value="YES" />
        <asp:HiddenField ID="hfEastProductMsg" runat="server" />

        <asp:HiddenField ID="hfListId" runat="server" Value="" />
        <asp:HiddenField ID="hfTotal" runat="server" Value="0" />
        <asp:HiddenField ID="hfNum" runat="server" Value="0" />
        <!-- 麵包屑 Start-->
        <div class="container-cart-steps">
            <ul class="am-avg-sm-3 ul-cart-steps">
                <li class="cart-step-active">
                    <span class="cart-step-text txtRsc" data-id="cart041">訂單資訊</span></li>
                <li>
                    <span class="cart-step-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </span><span class="cart-step-text txtRsc" data-id="cart042">付款方式</span>
                </li>
                <li>
                    <span class="cart-step-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i>
                    </span>
                    <span class="cart-step-text txtRsc" data-id="cart043">訂單完成</span>
                </li>
            </ul>
        </div>
        <!-- 麵包屑 End-->
        <%-- <p class="cart-title">1.購物車資訊</p>--%>
        <div class="am-modal am-modal-no-btn coupon-modal" tabindex="-1" id="coupon-modal">
            <div class="am-modal-dialog">
                <div class="am-modal-hd">
                    <span class="txtRsc" data-id="cart002">請選擇要使用的折扣券</span>
                    <p class="coupon-discription txtRsc" data-id="cart038">
                        單一商品只能使用單張折扣券
                    </p>
                    <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                </div>
                <div class="am-modal-bd">
                    <div class="coupon-table-wrapper">
                        <!-- 固定table head start-->
                        <div class="c-table-head">
                        </div>
                        <!-- 固定table head end-->
                        <div class="c-table-body">
                            <asp:UpdatePanel ID="up_coupon_list" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:HiddenField runat="server" ID="hf_ITEM_ID"></asp:HiddenField>
                                    <asp:Repeater ID="rp_coupon_list" runat="server">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hf_PCUGID" runat="server" Value='<%# Eval("PCUGID") %>' />
                                            <asp:HiddenField ID="hf_PCUG09" runat="server" Value='<%# Eval("PCUG09") %>' />
                                            <asp:HiddenField ID="hf_PCUG10" runat="server" Value='<%# Eval("PCUG10") %>' />
                                            <asp:HiddenField ID="hf_PCUG11" runat="server" Value='<%# Eval("PCUG11") %>' />
                                            <asp:HiddenField ID="hf_PCUG12" runat="server" Value='<%# Eval("PCUG12") %>' />
                                            <table class="coupon-table" onclick="setSingleRb(this)">
                                                <!-- 一張折扣券 one coupon start-->
                                                <tr>
                                                    <td rowspan="2" class="s-coupon-input" id="<%# Eval("PCUGID") %>">
                                                        <asp:Literal ID="lit_state" runat="server"></asp:Literal>
                                                        <asp:RadioButton ID="rb_sel" runat="server" CssClass="csel" />
                                                    </td>
                                                    <td class="s-coupon-minus txtRsc" data-id="cart015">折抵<span>RM<asp:Literal ID="lit_dis_price" runat="server"></asp:Literal></span>
                                                    </td>
                                                    <td class="s-coupon-date d-title">
                                                        <asp:Literal ID="lit_PC05" runat="server" Text='<%# Convert.ToDateTime(Eval("PCUG05").ToString()).ToString("yy.MM.dd") %>'></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="s-coupon-text">
                                                        <asp:Literal ID="lit_PC02" runat="server" Text='<%# Eval("PC02") %>'></asp:Literal>
                                                    </td>
                                                    <td class="s-coupon-date">
                                                        <asp:Literal ID="lit_dis_sum" runat="server"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <!-- 一張折扣券 one coupon end-->
                                            </table>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                    <!-- 折扣券按鈕 coupon btn start-->
                    <div class="coupon-table-btn">
                        <asp:UpdatePanel ID="up_coupon_btn" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Button ID="btn_coupon_cancel" runat="server" Text="不使用" CssClass="am-btn grey-btn"
                                    OnClick="btn_coupon_cancel_Click" />
                                <asp:Button ID="btn_coupon_use" runat="server" Text="確認" CssClass="am-btn header-pink-btn"
                                    OnClick="btn_coupon_use_Click" />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btn_coupon_cancel" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="btn_coupon_use" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                    <!-- 折扣券按鈕 coupon btn end-->
                </div>
            </div>
        </div>

        <!-- 購物車資訊區域 Start-->
        <asp:UpdatePanel ID="up_cart_list" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <!-- 購物清單 Start-->
                <section class="am-g am-g-collapse wrapper-cart-products">
                    <ul class="am-avg-sm-1">
                        <asp:Repeater ID="rp_cart_list" runat="server" OnItemCreated="rp_cart_list_ItemCreated" OnItemDataBound="rp_cart_list_ItemDataBound">
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
                                                    <asp:LinkButton ID="img_del" runat="server" OnClick="img_del_Click"> <i class="fa fa-times" aria-hidden="true" style="color:#000;"></i></asp:LinkButton>

                                                </div>
                                            </div>
                                            <div class="am-g">
                                                <span class="am-fl">
                                                    <asp:HiddenField ID="hf_WP17" runat="server" Value='<%# Eval("WP17") %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_CTD06" runat="server" Value='<%# Eval("CTD06") %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_QTY" runat="server" Value='<%# Eval("QTY") %>' EnableViewState="false" />
                                                    <asp:HiddenField ID="hf_WPA04" runat="server" Value='<%# Eval("WPA04") %>' EnableViewState="false" />
                                                    <asp:DropDownList ID="ddl_count" runat="server" OnSelectedIndexChanged="ddl_count_SelectedIndexChanged" AutoPostBack="true" Style="height: 26px; width: 70px; border-color: #E2E2E2; text-align: center; border-radius: 5px;">
                                                    </asp:DropDownList>
                                                    <span style="font-size: 10px; color: #BBBBBE">
                                                        <%# Eval("CTD04") %>
                                                    </span>

                                                </span>
                                                <span class="am-fr" style="font-size: 12px; height: 20px; border-radius: 7px;">
                                                    <asp:Button ID="lnk_sel_coupon" runat="server" Text="Coupon" OnClick="lnk_sel_coupon_Click" />
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

                                        </div>

                                    </div>
                                    <asp:Panel ID="p_pre_sale" runat="server" Visible="true">
                                        <div class="am-g am-vertical-align-middle div-auto-discount ad-ok" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
                                            <i class="am-icon-caret-up"></i>
                                            <%= LangClass.GetMsgInfo("M027",(LangType)ViewState["LG"]) %>
                                        </div>
                                        <asp:Panel ID="Panel1" runat="server" Visible="true">
                                            <div class="am-g">
                                                <asp:Literal ID="lit_booking_msg" runat="server"></asp:Literal>
                                            </div>
                                        </asp:Panel>
                                    </asp:Panel>
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
            </ContentTemplate>

            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="lnk_coupon_del" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <!-- product premium  -->
        <div class="am-popup" id="my-popup">
            <div class="am-popup-inner">
                <div class="am-popup-hd">
                    <h4 class="am-popup-title txtRsc" data-id="gf001">滿額贈品</h4>
                    <span data-am-modal-close class="am-close" style="font-size: 30px">&times;</span>
                </div>
                <div class="am-popup-bd iframe-rwd">
                    <div id="gload" style="text-align: center; width: 100%">
                        <img src="../images/icon/loading.gif" />
                    </div>
                    <iframe id="giftlink" onload="LoadingOK(this);"></iframe>

                </div>
            </div>
        </div>
        <script>
            function OpenGiftModal(gid) {
                document.getElementById("giftlink").contentWindow.document.body.innerText = "";
                var url = "giftcontent.aspx?gid=" + gid;
                $("#giftlink").attr('src', url);
                $("#my-popup").modal();
            }
            function LoadingOK() {
                $("#gload").hide();
            }
        </script>
        <section class="wrapper-cart wrapper-cart-promotion" id="full_gift_event" runat="server">
            <asp:UpdatePanel ID="up_gift" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
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
                                                <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal>
                                                x<asp:Literal ID="lit_count" runat="server" Text='<%# Eval("count").ToString() %>'></asp:Literal>
                                                <asp:Literal ID="lit_non_price" runat="server" Text='<%# Eval("lack").ToString() %>'></asp:Literal>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </ContentTemplate>
            </asp:UpdatePanel>
            <section data-am-widget="accordion" class="am-accordion am-active am-accordion-gapped" data-am-accordion='{  }' style="background-color: #FAFAFA; margin: 0px" id="more-gift">
                <dl class="am-accordion-item">
                    <dt class="am-accordion-title more-title">看更多免費贈品
                    </dt>
                    <dd class="am-accordion-bd am-collapse ">

                        <div class="am-accordion-content">
                            <!--Ha幣 -->
                            <asp:UpdatePanel ID="up_no_gift" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Repeater ID="rp_no_gift" runat="server">
                                        <ItemTemplate>
                                            <a onclick="OpenGiftModal('<%# Eval("GE01") %>')" style="text-align: left; text-decoration-line: underline; color: gray">
                                                <div class="promotion-table">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td class="promotion-tag" style="width: 70px">
                                                                <asp:Literal ID="lit_type" runat="server" Text='<%# Eval("type").ToString() %>'></asp:Literal>
                                                            </td>
                                                            <td style="text-align: left">
                                                                <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal>

                                                                x<asp:Literal ID="lit_count" runat="server" Text='<%# Eval("count").ToString() %>'></asp:Literal>
                                                                <asp:Literal ID="lit_non_price" runat="server" Text='<%# Eval("lack").ToString() %>'></asp:Literal>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                </div>
                                            </a>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <!--購物金 -->
                        </div>
                    </dd>
                </dl>
            </section>

        </section>

        <!--折扣卷 -->
        <section class="cart-habi" id="section_coupon" runat="server" style="margin-top: 10px">

            <div class="cart-habi-content">
                <asp:UpdatePanel ID="up_coupon" runat="server">
                    <ContentTemplate>
                        <div class="wrapper-input-coupon am-g am-g-collapse" style="padding: 10px 10px 0px 10px">
                            <div class="am-u-sm-8">
                                <input type="text" class="input-coupon" id="txt_coupon" runat="server" placeholder='Use promo code' style="text-align: center; width: 100%" />
                            </div>
                            <div class="am-u-sm-4">
                                <asp:Button ID="btn_cupon" runat="server" CssClass="submit-coupon" OnClick="btn_coupon_Click" Style="background-color: #F4F4F4; width: 95%; margin-left: 5%; border-radius: 8px; color: #707070;" Text="Apply" />
                            </div>
                        </div>
                        <div class="wrapper-select-coupon" style="padding: 0px 10px 0px 10px">
                            <asp:LinkButton ID="lnk_coupon_del" runat="server" OnClick="lnk_coupon_del_Click" Visible="false"></asp:LinkButton>
                            <asp:DropDownList ID="ddl_discount" runat="server" OnSelectedIndexChanged="ddl_discount_SelectedIndexChanged" Width="100%" AutoPostBack="true" ViewStateMode="Inherit" CssClass="DropDownStyle"></asp:DropDownList>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <section data-am-widget="accordion" class="am-accordion am-active am-accordion-gapped" data-am-accordion='{  }' style="background-color: #FAFAFA; margin: 0px">
                <dl class="am-accordion-item">
                    <dt class="am-accordion-title more-title">看更多折扣方式
                    </dt>
                    <dd class="am-accordion-bd am-collapse ">
                        <style>
                            .cart-habi .label {
                                display: inline-block;
                                height: 25px;
                                vertical-align: middle;
                            }
                        </style>
                        <div class="am-accordion-content">
                            <!--Ha幣 -->
                            <asp:UpdatePanel ID="up_hacoin" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>

                                    <section class="wrapper-cart cart-habi">
                                        <div class="cart-habi-title">
                                            <img src="images/habi_icon.png"><h4>Ha coin<span>(<span class="txtRsc" data-id="cart016">我有</span>Ha coin：<asp:Literal ID="lit_ha_coin" runat="server"></asp:Literal>)</span></h4>
                                        </div>
                                        <div class="cart-habi-content">

                                            <div class="wrapper-input-eCash am-g am-g-collapse rblist" id="div_hacoin">
                                                <asp:RadioButtonList ID="rb_ha_discount" runat="server" RepeatLayout="Table" OnSelectedIndexChanged="rb_ha_discount_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Text="抵運費(1500點)" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="全部折訂單金額" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="本次暫不使用Ha幣" Value="0"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>

                                        </div>
                                    </section>
                                    <triggers>
                                        <asp:AsyncPostBackTrigger ControlID="rb_ha_discount" EventName="SelectedIndexChanged" />
                                    
                                    </triggers>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                            <!--購物金 -->
                            <asp:UpdatePanel ID="up_gold" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <section class="wrapper-cart wrapper-cart-eCash" runat="server" id="section_ha_coin">
                                        <div class="cart-eCash-title">
                                            <h4><i class="am-icon-money"></i>
                                                <span class="txtRsc" data-id="cart028">購物金</span><span class="text-eCash-available">(
                              <span class="txtRsc" data-id="cart016">我有</span> RM 
                            <asp:Literal ID="lit_money" runat="server"></asp:Literal>)</span></h4>
                                        </div>
                                        <div class="am-g am-g-collapse">
                                            <div class="wrapper-input-eCash am-u-md-6 am-u-md-offset-6">
                                                <asp:TextBox ID="txt_use_gold" runat="server" Width="100%" CssClass="am-form-field" AutoPostBack="true" OnTextChanged="txt_use_gold_TextChanged"></asp:TextBox>
                                            </div>
                                        </div>
                                    </section>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="txt_use_gold" EventName="TextChanged" />
                                </Triggers>
                            </asp:UpdatePanel>

                        </div>
                    </dd>
                </dl>
            </section>
        </section>
        <!-- 運費說明-->
        <section class="wrapper-cart wrapper-shipping-notify">
            <%--<div class="shipping-notify-title">
                        <h4><i class="am-icon-bullhorn"></i>
                            <span class="txtRsc" data-id="cart040">運費說明</span></h4>
                    </div>--%>
            <div class="am-g am-g-collapse wrapper-shipping am-text-center">
                <p style="font-size: 12px">
                    <span class="ship-title">Shipping Fee:</span>
                    <asp:Literal ID="lit_ship_cost" runat="server"></asp:Literal>
                    <br />
                    <span class="ship-title">Free Shipping:</span>
                    <asp:Literal ID="lit_ship_free" runat="server"></asp:Literal>
                </p>
            </div>
        </section>
        <!--統計資訊-->
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
                                <asp:HiddenField ID="hf_ship_term" runat="server" />
                                <asp:HiddenField ID="hf_ship_cost" runat="server" />
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

        <asp:UpdatePanel ID="up_address" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:HiddenField ID="hf_pkey" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_ptxt" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_name" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_tel" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_phone" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_email" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_loc" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_address" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_city" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_state" runat="server" ClientIDMode="static" />
                <asp:HiddenField ID="hf_postcode" runat="server" ClientIDMode="static" />
                <!-- 結帳區 End-->
                <section class="ship-info" id="new_ship" runat="server">
                    <div class="am-g" style="height: 60px; background-color: white; line-height: 60px;">
                        <div class="am-fl">
                            <span style="font-size: 16px; color: #707070; padding-left: 16px">
                                <i class="am-icon-user"></i>
                                收貨地址
                            </span>
                        </div>

                        <div class="am-fr" style="font-size: 12px;" onclick="blockMsg('Loading...');OpenSetShipInfo();">
                            <div class="am-fl">
                                <table style="text-align: right; line-height: 18px; margin-top: 10px; margin-right: 5px;">
                                    <tr>
                                        <td style="font-weight: bold; color: #212121">新增收件人
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #BBBBBE">新增收貨地址
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="am-fr">
                                <i class=" am-icon-angle-right" style="font-size: 20px; padding: 0px 7px;"></i>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- 收件人資訊(新) -->
                <section class="ship-info" id="sel_ship" runat="server">
                    <div class="am-g" style="height: auto; background-color: white; padding: 7px;">

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
                            <div class="am-fr" style="transform: translateY(50%);">
                                <i class="am-icon-angle-right" style="font-size: 20px;"></i>
                            </div>
                        </div>
                    </div>
                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
        <%-- set shipinfo --%>
        <div class="am-popup" id="GetShipInfo">
            <div class="am-popup-inner">
                <div class="am-popup-hd" style="z-index: 999;">
                    <h4 class="am-popup-title" id="ship-id">選擇收件人
                    </h4>
                    <span data-am-modal-close
                        class="am-close" style="font-size: 30px;">&times;</span>
                </div>
                <div class="am-popup-bd" style="padding: 0px;">
                    <ul class="am-list am-list-border">
                        <asp:UpdatePanel ID="up_ShipList" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Repeater ID="rp_shipInfo" runat="server">
                                    <ItemTemplate>
                                        <li style="border-bottom: 1px solid #dedede;" onclick="SelShip('<%# Eval("USI01") %>');">

                                            <div class="am-g">
                                                <div class="am-fl" style="width: 79%; text-align: left; padding: 10px 5px; font-size: 12px;">
                                                    <p>
                                                        <asp:HiddenField ID="hfUSI01" runat="server" Value='<%# Eval("USI01") %>' />
                                                        <%# Eval("USI07") %>
                                                    </p>
                                                    <p>
                                                        <%# Eval("USI05") %>
                                                    </p>
                                                    <p><%# Eval("PI04") %> - <%# Eval("PI03") %> - <%# Eval("PI02") %></p>
                                                    <p>
                                                        <%# Eval("USI09") %>
                                                    </p>
                                                    <p>
                                                        <%# Eval("USI06").ToString().Equals("1") ? "Default Shipping Address" : "" %>
                                                    </p>
                                                </div>
                                                <div class="am-fr" style="width: 10%; display: inline-block; right: 0px; text-align: center; text-align: center; vertical-align: middle; line-height: 100px;" onclick="">
                                                    <asp:LinkButton ID="lnk_edit_shipinfo" runat="server" OnClick="lnk_edit_shipinfo_OnClick" CssClass="am-icon-edit am-icon-sm"> </asp:LinkButton>

                                                </div>
                                            </div>
                                        </li>

                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:HiddenField ID="hf_sel" runat="server" ClientIDMode="static" />
                                <asp:Button ID="btn_select" runat="server" Text="selship" Style="display: none;" OnClick="btn_sel_ship_OnClick" ClientIDMode="static" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <script>
                            function SelShip(uid) {
                                $("#hf_sel").val(uid);
                                $("#btn_select").click();
                                //$(e).find("#btn_select").click();
                            }
                        </script>
                        <li>
                            <div class="am-form-group wrapper-buttons">
                                <asp:UpdatePanel ID="up_news" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:LinkButton ID="lnk_news" runat="server" CssClass="button-cart button-next" Style="width: 100%" OnClick="lnk_news_OnClick" OnClientClick="blockMsg('Loading..');">
                                            <span>Add new address</span>
                                        </asp:LinkButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="am-popup" id="SetShipInfo">
            <div class="am-popup-inner">
                <div class="am-popup-hd" style="z-index: 999;">
                    <h4 class="am-popup-title">收件人資訊
                    </h4>
                    <span data-am-modal-close
                        class="am-close" style="font-size: 30px;">&times;</span>
                </div>
                <div class="am-popup-bd" style="padding: 0px;">
                    <div class="am-form">
                        <fieldset>
                            <div class="am-form-group">
                                <asp:UpdatePanel ID="up_ship" runat="server" UpdateMode="conditional">
                                    <ContentTemplate>
                                        <label class="am-checkbox">
                                            <asp:CheckBox ID="chk_get_user_info" runat="server" Text="帶入會員資訊" OnCheckedChanged="chk_get_user_info_CheckedChanged" AutoPostBack="true" />
                                            (<span style="color: red;">*</span>
                                            <span class="txtRsc" data-id="cart039">為必填資料</span>)
                                        </label>
                                        <label class="am-checkbox">
                                            <asp:CheckBox ID="chk_get_last_order_info" runat="server" Text="帶入最後購買資訊" AutoPostBack="true" OnCheckedChanged="chk_get_last_order_info_CheckedChanged" />
                                        </label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                            <asp:HiddenField ID="hf_USI01" runat="server" ClientIDMode="static" />
                            <div class="am-form-group">
                                <label>Full Name</label>
                                <asp:TextBox ID="txt_USI07" runat="server" placeholder="" ClientIDMode="static"></asp:TextBox>

                            </div>
                            <div class="am-form-group">
                                <label>Phone Number</label>
                                <asp:TextBox ID="txt_USI09" runat="server" placeholder="" ClientIDMode="static"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <label>E-mail Address</label>
                                <asp:TextBox ID="txt_USI10" runat="server" placeholder="" ClientIDMode="static"></asp:TextBox>
                            </div>

                            <div class="am-form-group">
                                <label>Address</label>
                                <asp:TextBox ID="txt_USI05" runat="server" placeholder="" TextMode="Multiline" Height="50px" ClientIDMode="static"></asp:TextBox>
                            </div>
                            <div class="am-form-group">
                                <label>Location</label>
                                <select id="ddl_loc" data-am-selected onchange="GetState();" runat="server" clientidmode="static" style="width: 100%">
                                    <option value="-1">Select Location</option>
                                    <option value="0">West</option>
                                    <option value="1">East</option>
                                </select>
                            </div>
                            <div class="am-form-group">
                                <label>State</label>
                                <select id="ddl_state" onchange="GetCity();" data-am-selected="{searchBox: 1}" runat="server" clientidmode="static" style="width: 100%">
                                    <option value="-1">Select State</option>
                                </select>
                            </div>
                            <div class="am-form-group">
                                <label>City</label>
                                <select id="ddl_city" onchange="GetPostCode();" data-am-selected="{searchBox: 1}" runat="server" clientidmode="static" style="width: 100%">
                                    <option value="-1">Select City</option>
                                </select>
                            </div>
                            <div class="am-form-group">
                                <label>Postcode</label>

                                <select id="ddl_postcode" data-am-selected="{searchBox: 1}" runat="server" clientidmode="static" style="width: 100%" onchange="SetPostCode();">
                                    <option value="-1">Select Postcode</option>
                                </select>
                            </div>
                            <div class="am-form-group">
                                <label>Note</label>
                                <asp:TextBox ID="txt_USI11" runat="server" placeholder="" TextMode="Multiline" Height="50px" ClientIDMode="static"></asp:TextBox>
                            </div>
                            <div class="am-form-group addr-panel1">
                                <div class="am-fl">
                                    Set As Default Address
                                </div>
                                <div class="am-fr">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="default_ship" checked runat="server" clientidmode="static" />
                                        <label class="onoffswitch-label" for="default_ship">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <asp:UpdatePanel ID="up_ship_delete" runat="server">
                                <ContentTemplate>
                                    <asp:Panel runat="server" ID="p_delete_ship">
                                        <div class="am-form-group addr-panel1" runat="server">
                                            <asp:LinkButton ID="lnk_ship_delete" runat="server" OnClick="lnk_ship_delete_OnClick" OnClientClick="if(!confirm('Delete Address?')) return false;">
                                                <span style="font-size:14px; color: coral;">Delete Address</span>
                                            </asp:LinkButton>
                                        </div>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div class="am-form-group wrapper-buttons">

                                <asp:UpdatePanel ID="up_ship_info" runat="server">
                                    <ContentTemplate>
                                        <asp:LinkButton ID="lnk_save_ship" runat="server" CssClass="button-cart button-next" Style="width: 100%" OnClick="lnk_save_ship_OnClick">
                                            <span>Save</span>
                                        </asp:LinkButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <section class="wrapper-cart" id="wrapper-shipping-form">
            <div class="am-footer-fixed buy-footer">
                <asp:UpdatePanel ID="up_step" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="wrapper-buttons" style="padding-top: 5px;">
                            <asp:LinkButton ID="btn_pre" runat="server" CssClass="button-cart button-prev" OnClick="btn_pre_Click">
                                <i class="fa fa-angle-left" aria-hidden="true"></i><span>SHOP</span>
                            </asp:LinkButton>
                            <asp:LinkButton ID="btn_next2" runat="server" CssClass="button-cart button-next" OnClick="btn_next_Click" OnClientClick="blockMsg('Loading...');">
                                <span>NEXT</span><i class="fa fa-angle-right" aria-hidden="true"></i>
                            </asp:LinkButton>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btn_pre" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btn_next2" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </section>
        <!-- 購物車資訊區域 End-->
    </div>
    <script>
        function setSingleRb(e) {
            var sid = e.getElementsByTagName("tr")[0].children[0].id;
            $(".coupon-table").each(function (n) {
                var rid = $(this).find("td")[0].id;
                if (rid === sid) {
                    $(this).find(".csel").find('input:radio')[0].checked = true;
                } else {
                    $(this).removeClass("selected");
                    $(this).find(".csel").find('input:radio')[0].checked = false;
                }
            });
            if ($(e).find("td").hasClass("coupon-disabled")) {
                return false;
            } else {
                $(".coupon-table").find("tr").removeClass("selected");
                $(e).addClass("selected");
                $(e).find("input:radio").prop("checked", "true");
            }
            return false;
        }
        function closeCoupon() {
            $("#coupon-modal").modal('close');
        }
        function openCoupon() {
            $("#coupon-modal").modal();
            //cuponUsed();
            //appendCouponHead();
        }

        // 如果折價券有"coupon-used"就不准點，其餘的可以讓input被checked
        function clickCouponTable(e) {
            if ($(e).find("td").hasClass("coupon-disabled")) {
                return false;
            } else {
                $(".coupon-table").find("tr").removeClass("selected");
                $(e).addClass("selected");
                $(e).find("input:radio").prop("checked", "true");
            }
        }

        // 如果折價券太多的時候，可以讓標題固定 coupon table append
        function appendCouponHead() {
            if ($(".coupon-table").height() > 300) {
                $(".c-table-head").html("<table></table>");
                var couponthead = $(".coupon-table").find("thead").clone();
                $(".c-table-head table").html(couponthead);
            }
        }
        // 折扣券如果有被使用，這條tr不可以被點
        function couponUsed() {
            $(".coupon-disabled").parent("tr").addClass("used");
        }

    </script>
    <script>
        $(function () {
            hiddenFooterMenu();
            $(".am-footer").css('display', 'none');
            $("#midmenu").remove();

        });

        ga('ec:setAction', 'checkout', { 'step': 3 });
    </script>
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
        fbq('track', 'InitiateCheckout', { content_ids: [<%=hfListId.Value%>], currency: 'MYR', num_items: <%=hfNum.Value%> , value: <%=hfTotal.Value%>  });    </script>
    <noscript>
        <img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=967509866640000&ev=PageView&noscript=1" />
    </noscript>
    <!--Hawooo End Facebook Pixel Code -->
</asp:Content>
