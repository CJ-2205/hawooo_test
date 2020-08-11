<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="cart2.aspx.cs" Inherits="user_cart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/sopping_cart1.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hfListId" runat="server" Value="" />
    <div>
        <section class="am-container sp-body">
            <section class="am-u-sm-12 m-0 p-0 am-cf cartstep">
                <div class="am-u-sm-4">
                    <img src="img/cart-img/step1.png" />
                </div>
                <div class="am-u-sm-4 select">
                    <img src="img/cart-img/step3.png" />
                </div>
                <div class="am-u-sm-4">
                    <img src="img/cart-img/step4.png" />
                </div>
            </section>
            <section class="am-u-sm-12 sp-items-wrapper">
                <div class="sp-items-title">
                    <img src="icon/hot_brands_white.png" /><span><asp:Literal ID="lit_cart_type" runat="server"></asp:Literal></span>
                    <span>My Cart</span>
                </div>
                <table class="soppingcart-table am-u-sm-centered">
                    <thead>
                        <tr class="sp-table-title">
                            <th class="sp-img"></th>
                            <th class="sp-text"><span class="txtRsc" data-id="cart008">商品</span></th>
                            <th class="sp-price am-text-center"><span class="txtRsc" data-id="cart009">單價</span></th>
                            <th class="sp-qty am-text-center"><span class="txtRsc" data-id="cart010">數量</span></th>
                            <th class="sp-total am-text-center"><span class="txtRsc" data-id="cart011">小計</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_cart_list" runat="server" OnItemDataBound="rp_cart_list_ItemDataBound">
                            <ItemTemplate>
                                <tr class="sp-item">
                                    <td>
                                        <asp:HiddenField ID="hf_CTD01" runat="server" Value='<%# Eval("CTD01") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_CTD03" runat="server" Value='<%# Eval("CTD03") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_CTD10" runat="server" Value='<%# Eval("CTD10") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_WP29" runat="server" Value='<%# Eval("WP29") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_WP36" runat="server" Value='<%# Eval("WP36") %>' EnableViewState="false" />
                                        <a href='<%# "productdetail.aspx?id=" +  Eval("CTD01") %>'>
                                            <img src='<%# "../images/webimgs/" + Eval("CTD09") %>' width="100" />
                                        </a>
                                    </td>
                                    <td>
                                        <a href='<%# "productdetail.aspx?id=" +  Eval("CTD01") %>'>
                                            <%# Eval("CTD02") %> - <%# Eval("CTD04") %></a>
                                        <p class="item-habi">
                                            <img src="icon/habi_icon.png">
                                            <%# "Hacoin feedback x " +  Session["MRebate"].ToString() + " :" +  Math.Floor(Convert.ToDouble(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())) * Convert.ToInt32(Eval("CTD06").ToString()) * Convert.ToDouble( Session["MRebate"].ToString())) %>
                                        </p>
                                        <asp:Literal ID="lit_booking_msg" runat="server"></asp:Literal>
                                    </td>
                                    <!-- coupon -->
                                    <td class="am-text-center">RM  
                                        <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %> </td>
                                    <td class="am-text-center">
                                        <%# Eval("CTD06") %>
                                    </td>
                                    <td class="am-text-center">
                                        <asp:HiddenField ID="hf_CTD11" runat="server" Value='<%# Eval("CTD11") %>' EnableViewState="false" />
                                        <asp:HiddenField ID="hf_CTD12" runat="server" Value='<%# Eval("CTD12") %>' EnableViewState="false" />
                                        <p>
                                            RM
                                            <asp:Literal ID="lit_price" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) * Convert.ToInt32(Eval("CTD06").ToString()) - Convert.ToDecimal(Eval("CTD12").ToString()) %>'></asp:Literal>
                                        </p>
                                        <strike>
                                            <asp:Literal ID="lit_o_price" runat="server" Text='<%# Eval("CTD11").ToString().Equals("0") ? "" : "RM" + (hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) * Convert.ToInt32(Eval("CTD06").ToString())).ToString() %>' ></asp:Literal>
                                        </strike>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <asp:Literal ID="lit_web_event" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr class="total-wrapper">
                            <td colspan="4" class="total-left">
                                <span style="color: #ff6a00; padding-right: 20px">
                                    <asp:Literal ID="lit_ship_msg" runat="server"></asp:Literal>
                                </span>
                                <span class="txtRsc" data-id="cart012">運費：</span>
                            </td>
                            <td class="total-right ">RM
                            <asp:Literal ID="lit_CTI02" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <tr class="total-wrapper">
                            <td colspan="4" class="total-left"><span class="txtRsc" data-id="cart011">小計：</span>
                            </td>
                            <td class="total-right">RM
                            <asp:Literal ID="lit_CTI01" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <tr class="total-wrapper">
                            <td colspan="4" class="total-left"><span class="txtRsc" data-id="cart013">活動折抵：</span>
                            </td>
                            <td class="total-right">-RM
                            <asp:Literal ID="lit_webevnet_total" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <asp:Panel ID="panel_dis_price" runat="server">
                            <tr class="total-wrapper">
                                <td colspan="4" class="total-left">(2件10%off，3件20%off) 折抵：
                                </td>
                                <td colspan="2" class="total-right">-RM 
                                            <asp:Literal ID="lit_CTI34" runat="server" EnableViewState="false"></asp:Literal>
                                </td>
                            </tr>
                        </asp:Panel>
                        <asp:Panel ID="panel_full_event" runat="server">
                            <tr class="total-wrapper">
                                <td colspan="4" class="total-left"><span class="txtRsc" data-id="cart014">滿</span> <span style="color: #C00">
                                    <asp:Literal ID="lit_FE03" runat="server" EnableViewState="false"></asp:Literal></span>
                                    <span class="txtRsc" data-id="cart015">折抵</span><span style="color: #C00">
                                        <asp:Literal ID="lit_FE04" runat="server" EnableViewState="false"></asp:Literal></span>
                                    <asp:Literal ID="lit_FE11" runat="server" EnableViewState="false"></asp:Literal>
                                    ：
                                </td>
                                <th colspan="2" class="total-right">-RM 
                                    <asp:Literal ID="lit_fullevent_count" runat="server" EnableViewState="false"></asp:Literal>
                                </th>
                            </tr>
                        </asp:Panel>
                        <asp:Panel ID="panel_ha_coin" runat="server">
                            <tr class="total-wrapper">
                                <td colspan="4" class="total-left"><span class="txtRsc" data-id="cart017">Ha幣使用</span>：
                                </td>
                                <td colspan="2" class="total-right">-RM
                                <asp:Literal runat="server" ID="lit_CTI31"></asp:Literal>
                                </td>
                            </tr>
                        </asp:Panel>
                        <asp:Panel ID="panel_coupon" runat="server">
                            <tr class="total-wrapper">
                                <td colspan="4" class="total-left">
                                    <span class="txtRsc" data-id="cart027">折扣碼</span>：
                                    <asp:Literal ID="lit_discount_txt" runat="server"></asp:Literal>
                                </td>
                                <td colspan="2" class="total-right">-RM 
                            <asp:Literal ID="lit_discount_money" runat="server"></asp:Literal>
                                </td>
                            </tr>
                        </asp:Panel>
                        <tr class="total-wrapper">
                            <td colspan="4" class="total-left">
                                <span class="txtRsc" data-id="cart028">購物金</span>：
                            </td>
                            <td class="total-right">-RM
                            <asp:Literal ID="lit_CTI07" runat="server"></asp:Literal>
                            </td>
                        </tr>

                    </tfoot>
                </table>
                <div class="sp-total-title">
                    <span>TOTAL：RM
                          <asp:Literal ID="lit_CTI04" runat="server"></asp:Literal></span>
                </div>

                <hr />
                <asp:UpdatePanel ID="up_gift" runat="server">
                    <ContentTemplate>
                        <div class="premiums-title txtRsc" style="padding-top: 10px;" data-id="gf001">滿額贈品</div>
                        <div class="premiums">
                            <asp:Repeater ID="rp_gift_list" runat="server">
                                <ItemTemplate>
                                    <div class="premiums-content am-cf">
                                        <div class="premiums-pic am-fl">
                                            <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE05" runat="server" Value='<%# Eval("GE05") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE12" runat="server" Value='<%# Eval("GE12") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE16" runat="server" Value='<%# Eval("GE16") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE17" runat="server" Value='<%# Eval("GE17") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GP01" runat="server" Value='<%# Eval("GP01") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GP10" runat="server" Value='<%# Eval("GP10") %>' EnableViewState="false" />
                                            <asp:CheckBox ID="chk_gift" runat="server" Enabled="false" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"] + "giftimgs/" + Eval("GP10") %>' style="height: 90px; width: 90px; margin: 10px 10px 0px 10px" />
                                        </div>
                                        <div class="premiums-text am-cf am-fl">
                                            <div class="premiums-name" style="width: 98%">
                                                <span class="txtRsc" data-id="cart023">活動名稱</span>：<h2><a href="shop.aspx?gid=<%# Eval("GE01") %>">
                                                    <asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal></a></h2>
                                            </div>
                                            <ul class="premiums-description">
                                                <li class="pd-list">

                                                    <p>
                                                        <asp:Literal ID="lit_GE11" runat="server" Text='<%# Eval("GE11") %>'></asp:Literal>
                                                    </p>
                                                </li>
                                                <li class="pd-name">
                                                    <h4><span class="txtRsc" data-id="cart024">贈品名稱</span>：<p>
                                                        <asp:Literal ID="lit_GP02" runat="server" Text='<%# Eval("GP02") %>'></asp:Literal>
                                                    </p>
                                                    </h4>
                                                    <h4><span class="txtRsc" data-id="cart025">滿額金額</span>：<p>
                                                        RM
                                                            <asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal><span style="color: #ff0000">
                                                                <asp:Literal ID="lit_non_price" runat="server"></asp:Literal></span>
                                                    </p>
                                                    </h4>
                                                    <h4><span class="txtRsc" data-id="cart026">獲得數量</span>：<p>
                                                        <asp:Literal ID="lit_count" runat="server"></asp:Literal>
                                                    </p>
                                                    </h4>
                                                </li>
                                                <li class="pd-stamp">
                                                    <asp:Literal ID="lit_type" runat="server"></asp:Literal>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <section class="am-u-sm-12 payment-select">
                    <div class="payment-select-title txtRsc" data-id="cart053">選擇付款方式</div>
                    <!-- 付款表格 star-->
                    <div class="payment-methods">
                        <!-- <div> -->
                        <!-- online-pay -->
                        <div class="payment-wrapper">
                            <div class="payment-tab" id="online-payments">
                                <img src="icon/creditcard.png">
                                <span class="txtRsc" data-id="cart052">線上付款</span>
                            </div>
                            <div class="payment-content online-wrapper" id="online-options">
                                <div class="payment-option online-option" id="online-option-1">

                                    <input id="op1" type="radio" class="optioninput" runat="server">Credit Card<img src="icon/visa-master.png">
                                </div>
                                <div class="payment-option online-option" id="online-option-2">
                                    <p style="padding-left: 25px">Online Banking</p>
                                    <ul class="payLogo am-cf">
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb01" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb02" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb03" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb04" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb05" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb06" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb07" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb08" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                        <li class="onlineBankingDiv">
                                            <input type="radio" name="onbankoption" id="rb09" runat="server">
                                            <i class="am-icon-check-circle-o"></i>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- offline-pay -->
                        <div class="payment-wrapper">
                            <div class="payment-tab" id="offline-payments">
                                <img src="icon/atm.png">
                                <span class="txtRsc" data-id="cart054">線下付款</span>
                            </div>
                            <div class="payment-content off-wrapper" id="offline-options">
                                <div class="payment-option offline-option" id="offline-option-1">
                                    <input id="op2" type="radio" class="optioninput" runat="server">7-Eleven
                            <img src="icon/seven11.png" style="width: 30px">
                                </div>
                                <div class="payment-option offline-option" id="offline-option-2" style="display: none;">
                                    <input id="ofp1" type="radio" class="optioninput" runat="server">Cimb Bank<img src="icon/cimb-bank-logo-sm.png" />
                                </div>
                                <div class="payment-option offline-option" id="offline-option-3">
                                    <input id="ofp2" type="radio" class="optioninput" runat="server">Public Bank<img src="icon/Public-Bank-logo-sm.png" />
                                </div>
                            </div>
                        </div>
                        <!-- </div> -->
                    </div>
                    <!-- 付款表格 end-->
                </section>


                <section class="am-u-sm-12 order-info">

                    <div class="order-info-title txtRsc" data-id="cart051">訂購資訊</div>

                    <div class="am-u-sm-6">
                        <div class="am-form">
                            <fieldset>
                                <div class="am-form-group">
                                    <label>
                                        <span style="color: #ff0000">*</span>
                                        <span class="txtRsc" data-id="cart045">姓名</span>
                                    </label>
                                    <asp:TextBox ID="txt_name" runat="server" placeholder="Please enter name" MaxLength="30" Enabled="false"></asp:TextBox>
                                </div>

                                <div class="am-form-group">
                                    <label class="txtRsc" data-id="cart046">電話</label>
                                    <asp:TextBox ID="txt_tel" runat="server" placeholder="Please enter telephone" MaxLength="30" Enabled="false"></asp:TextBox>

                                </div>
                                <div class="am-form-group">
                                    <label>
                                        <span style="color: #ff0000">*</span>
                                        <span class="txtRsc" data-id="cart047">手機</span>
                                    </label>
                                    <asp:TextBox ID="txt_phone" runat="server" placeholder="Please enter mobile number starting with 01" MaxLength="30" Enabled="false"></asp:TextBox>
                                </div>
                                <div class="am-form-group">
                                    <label><span style="color: #ff0000">*</span> <span class="txtRsc" data-id="cart048">電子郵件</span></label>
                                    <asp:TextBox ID="txt_email" runat="server" placeholder="Please enter email" MaxLength="200" Enabled="false"></asp:TextBox>
                                </div>
                            </fieldset>
                        </div>

                    </div>
                    <div class="am-u-sm-6">
                        <div class="am-form">
                            <fieldset>
                                <div class="am-form-group">
                                    <label><span style="color: #ff0000">*</span>Loc / State / City / Postcode</label>
                                    <div style="display: table">
                                        <div style="display: table-cell">
                                            <asp:TextBox ID="txt_CTI19" Width="140px" runat="server" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div style="display: table-cell; padding-left: 5px;">
                                            <asp:TextBox ID="txt_CTI20" Width="130px" runat="server" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div style="display: table-cell; padding-left: 5px;">
                                            <asp:TextBox ID="txt_city" Width="130px" runat="server" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div style="display: table-cell; padding-left: 5px">
                                            <asp:TextBox ID="txt_CTI18" Width="100px" runat="server" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-form-group">

                                    <label><span style="color: #ff0000">*</span>Address</label>
                                    <div style="display: table">

                                        <div style="display: table-cell;">
                                            <asp:TextBox ID="txt_address" Width="520px" runat="server" MaxLength="300" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="am-form-group">
                                    <label class="txtRsc" data-id="cart049">備註</label>
                                    <asp:TextBox ID="txt_note" runat="server" placeholder="Please enter order note" MaxLength="500" TextMode="MultiLine" Height="115px" Enabled="false"></asp:TextBox>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="am-u-sm-12" runat="server" id="porder">
                        <hr />
                        <div class="am-form">
                            <fieldset>
                                <div class="am-u-sm-6" style="padding-left: 0px">
                                    <div class="am-form-group">
                                        <label><span style="color: #ff0000">*</span>訂購人姓名</label>
                                        <asp:TextBox ID="txt_ORM46" runat="server" placeholder="請輸入訂購人姓名" MaxLength="50" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="am-u-sm-6" style="padding-right: 0px; padding-left: 25px">
                                    <div class="am-form-group">
                                        <label><span style="color: #ff0000">*</span>訂購人電話</label>
                                        <asp:TextBox ID="txt_ORM47" runat="server" placeholder="請輸入訂購人聯絡電話" MaxLength="50" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <hr />

                </section>

            </section>
            <!-- FB Messenger Subscription -->
            <section class="am-u-sm-12 fb-messenger-wrap">
                <h5 class="fb-messenger-header">訂單狀態通知</h5>
                <div class="fb-messenger-content">
                    <p>透過Facebook Messenger收取訂單狀態更新的通知</p>
                    <div id="facebook-messanger">
                        <div style="width: 125px;" class="fb-send-to-messenger"
                            messenger_app_id="1468567733438462"
                            page_id="103872626630136"
                            color="blue"
                            size="standard">
                        </div>
                    </div>
                    <div class="opted-in">
                        <button id="btn-optout">
                            <i class="am-icon-check-circle-o"></i>
                            <span>已訂閱 Messenger</span>
                        </button>
                    </div>
                    <asp:HiddenField ID="hdnSubscribe" runat="server" />
                </div>
            </section>
            <section class="am-u-sm-12 shopping-order-btn" style="padding-top: 10px">
                <asp:UpdatePanel ID="up_edit" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="am-u-sm-6 am-text-center">
                            <asp:Button ID="btn_pre" runat="server" CssClass="am-btn am-btn-defult grey-btn" OnClick="btn_pre_Click" Text="< Previous" Width="200px" />

                        </div>
                        <div class="am-u-sm-6 am-text-center">
                            <asp:Button ID="btn_next" runat="server" CssClass="am-btn am-btn-defult header-pink-btn" OnClick="btn_next_Click" Text="Confirm >" Width="200px" OnClientClick="blockMsg('Please wait...');" />
                        </div>

                    </ContentTemplate>

                </asp:UpdatePanel>
            </section>
        </section>
    </div>
    <script>
        ga('ec:setAction', 'checkout', { 'step': 4 });
    </script>
    <script>
        $(document).ready(function () {
            $.getScript('https://connect.facebook.net/en_US/sdk.js', function () {
                sendToMessenger();
            });

            $('#btn-optout').click(function (e) {
                e.preventDefault();
                $('.opted-in').hide();
                $('#facebook-messanger').append('<div class="fb-send-to-messenger" messenger_app_id="1468567733438462" page_id="103872626630136" ' +
                    'color="blue" size="standard"></div>');
                $('.fb-send-to-messenger').show();
                $('#<%=hdnSubscribe.ClientID %>').val('false');

                FB.init({
                    appId: '1468567733438462',
                    autoLogAppEvents: true,
                    xfbml: true,
                    version: 'v7.0'
                });
            });
        });

        function sendToMessenger() {
            FB.init({
                appId: '1468567733438462',
                autoLogAppEvents: true,
                xfbml: true,
                version: 'v7.0'
            });
            FB.Event.subscribe('send_to_messenger', function (e) {
                // callback for events triggered by the plugin
                if (e.event == "opt_in") {
                    $('#facebook-messanger').empty();
                    $('.opted-in').show();
                    $('#<%=hdnSubscribe.ClientID %>').val(true);
                }
                else if (e.event == "rendered") {
                    if ($('#<%=hdnSubscribe.ClientID %>').val() == 'true') {
                        $('#facebook-messanger').empty();
                        $('.opted-in').show();
                    }
                    else {
                        $('.opted-in').hide();
                        $('.fb-send-to-messenger').show();
                    }
                }
            });
        }
    </script>
    <%-- <script src="assets/js/pay.js"></script>--%>
    <script src="assets/js/shopping_cart.js?v=180126"></script>

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
        fbq('track', 'AddPaymentInfo', { content_ids: [<%=hfListId.Value.Equals("")?"":hfListId.Value.TrimEnd(',')%>], currency: 'MYR', value: <%= Convert.ToDecimal(lit_CTI01.Text)-Convert.ToDecimal(lit_CTI02.Text) %>  });    </script>
    <noscript>
        <img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=967509866640000&ev=PageView&noscript=1" />
    </noscript>
</asp:Content>
