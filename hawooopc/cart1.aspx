<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="cart1.aspx.cs" Inherits="user_cart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<link href="assets/css/pay.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="assets/css/sopping_cart1.css?v=20171107" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            fbq('track', 'AddToCart');
        })
    </script>
    <section>
        <asp:HiddenField ID="hfShip2East" runat="server" Value="YES" />
        <asp:HiddenField ID="hfEastProductMsg" runat="server" />

        <asp:HiddenField ID="hfListId" runat="server" Value="" />
        <asp:HiddenField ID="hfTotal" runat="server" Value="0" />
        <asp:HiddenField ID="hfNum" runat="server" Value="0" />

        <section class="am-container sp-body">
            <%-- <div class="am-g" style="padding-bottom: 10px">
                <img src="../images/index/20151130/249freeship.png" style="width: 100%" />
            </div>--%>
            <section class="am-u-sm-12 m-0 p-0 am-cf cartstep">
                <div class="am-u-sm-4 select">
                    <img src="img/cart-img/step1.png" />
                </div>
                <div class="am-u-sm-4">
                    <img src="img/cart-img/step3.png" />
                </div>
                <div class="am-u-sm-4">
                    <img src="img/cart-img/step4.png" />
                </div>
            </section>

            <section class="am-u-sm-12 sp-items-wrapper">
                <%--   <asp:Literal ID="lit_cart1" runat="server"></asp:Literal>--%>
                <div class="sp-items-title">
                    <img src="icon/hot_brands_white.png" /><span><asp:Literal ID="lit_cart_type" runat="server"></asp:Literal></span>
                    <span class="txtRsc" data-id="hal005">購物車</span>
                </div>
                <!-- coupon -->
                <div class="am-modal am-modal-no-btn coupon-modal" tabindex="-1" id="coupon-modal">
                    <div class="am-modal-dialog">
                        <div class="am-modal-hd">
                            <span class="txtRsc" data-id="cart002">請選擇要使用的折扣券</span>
                            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                        </div>
                        <div class="am-modal-bd">

                            <div class="coupon-table-wrapper">
                                <!-- 固定table head start-->
                                <div class="c-table-head"></div>
                                <!-- 固定table head end-->
                                <div class="c-table-body">
                                    <asp:UpdatePanel ID="up_coupon_list" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:HiddenField runat="server" ID="hf_ITEM_ID"></asp:HiddenField>
                                            <table class="coupon-table" id="couponlist">
                                                <thead>
                                                    <tr>
                                                        <th class="s-coupon-text"><span class="txtRsc" data-id="cart003">折扣券說明</span></th>
                                                        <th class="s-coupon-date"><span class="txtRsc" data-id="cart004">有效日</span></th>
                                                        <th class="s-coupon-before"><span class="txtRsc" data-id="cart005">折扣金額</span></th>
                                                        <th class="s-coupon-after"><span class="txtRsc" data-id="cart006">折扣後金額</span></th>
                                                        <th class="s-coupon-input"><span class="txtRsc" data-id="cart007">選取</span></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:Repeater ID="rp_coupon_list" runat="server">
                                                        <ItemTemplate>
                                                            <tr onclick="setSingleRb(this)">
                                                                <td class="am-text-left">
                                                                    <asp:HiddenField ID="hf_PCUGID" runat="server" Value='<%# Eval("PCUGID") %>' />
                                                                    <asp:HiddenField ID="hf_PCUG09" runat="server" Value='<%# Eval("PCUG09") %>' />
                                                                    <asp:HiddenField ID="hf_PCUG10" runat="server" Value='<%# Eval("PCUG10") %>' />
                                                                    <asp:HiddenField ID="hf_PCUG11" runat="server" Value='<%# Eval("PCUG11") %>' />
                                                                    <asp:HiddenField ID="hf_PCUG12" runat="server" Value='<%# Eval("PCUG12") %>' />
                                                                    <asp:Literal ID="lit_PC02" runat="server" Text='<%# Eval("PC02") %>'></asp:Literal>
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="lit_PC05" runat="server" Text='<%# Convert.ToDateTime(Eval("PCUG05").ToString()).ToString("yyyy-MM-dd") %>'></asp:Literal>
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="lit_dis_price" runat="server"></asp:Literal>
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="lit_dis_sum" runat="server"></asp:Literal>
                                                                </td>
                                                                <%-- <td class="coupon-disabled">已使用
                                                                </td>--%>
                                                                <td id="<%# Eval("PCUGID") %>">
                                                                    <asp:Literal ID="lit_state" runat="server"></asp:Literal>
                                                                    <asp:RadioButton ID="rb_sel" runat="server" CssClass="csel" />
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </tbody>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <!-- 折扣券按鈕 coupon btn start-->
                            <div class="coupon-table-btn">
                                <asp:UpdatePanel ID="up_coupon_btn" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:Button ID="btn_coupon_cancel" runat="server" Text="Not use" CssClass="am-btn grey-btn" OnClick="btn_coupon_cancel_Click" />
                                        <asp:Button ID="btn_coupon_use" runat="server" Text="Confirm" CssClass="am-btn header-pink-btn" OnClick="btn_coupon_use_Click" />
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
                <!-- coupon -->

                <script>
                    function setSingleRb(e) {
                        var sid = e.children[4].id;
                        $("#couponlist > tbody > tr").each(function (n) {
                            var rid = $(this).find("td")[4].id;
                            if (rid == sid) {
                                $(this).find(".csel").find('input:radio')[0].checked = true;
                            }
                            else {
                                $(this).find(".csel").find('input:radio')[0].checked = false;
                            }
                            //$(this).find(".PCUGID").find('hiddin')
                        })
                        if ($(e).find("td").hasClass("coupon-disabled")) {
                            return false;
                        } else {
                            $(".coupon-table").find("tr").removeClass("selected");
                            $(e).addClass("selected");
                            $(e).find("input:radio").prop("checked", "true");
                        }
                    }
                    function closeCoupon() {
                        $("#coupon-modal").modal('close');
                    }
                    function openCoupon() {
                        $("#coupon-modal").modal();
                        //cuponUsed();
                        //appendCouponHead();
                    };

                    // 如果折價券有”coupon-used“ 就不准點，其餘的可以讓input被checked
                    function clickCouponTable(e) {
                        if ($(e).find("td").hasClass("coupon-disabled")) {
                            return false;
                        } else {
                            $(".coupon-table").find("tr").removeClass("selected");
                            $(e).addClass("selected");
                            $(e).find("input:radio").prop("checked", "true");
                        }
                    };

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
                <asp:UpdatePanel ID="up_cart_list" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table class="soppingcart-table am-u-sm-centered">
                            <thead>
                                <tr class="sp-table-title">
                                    <th class="sp-img"></th>
                                    <th class="sp-text"><span class="txtRsc" data-id="cart008">商品</span></th>
                                    <th class="sp-coupon"></th>
                                    <th class="sp-price am-text-center"><span class="txtRsc" data-id="cart009">單價</span></th>
                                    <th class="sp-qty am-text-center"><span class="txtRsc" data-id="cart010">數量</span></th>
                                    <th class="sp-total am-text-center"><span class="txtRsc" data-id="cart011">小計</span></th>
                                    <th class="sp-delete"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rp_cart_list" runat="server" OnItemCreated="rp_cart_list_ItemCreated" OnItemDataBound="rp_cart_list_ItemDataBound">
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
                                            <td class="am-text-center coupon" runat="server" id="coupontd">
                                                <asp:LinkButton ID="lnk_sel_coupon" runat="server" OnClick="lnk_sel_coupon_Click"></asp:LinkButton>
                                            </td>
                                            <td class="am-text-center">RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %> </td>
                                            <td class="am-text-center">
                                                <asp:HiddenField ID="hf_WP17" runat="server" Value='<%# Eval("WP17") %>' EnableViewState="false" />
                                                <asp:HiddenField ID="hf_CTD06" runat="server" Value='<%# Eval("CTD06") %>' EnableViewState="false" />
                                                <asp:HiddenField ID="hf_QTY" runat="server" Value='<%# Eval("QTY") %>' EnableViewState="false" />
                                                <asp:HiddenField ID="hf_WPA04" runat="server" Value='<%# Eval("WPA04") %>' EnableViewState="false" />
                                                <asp:DropDownList ID="ddl_count" runat="server" OnSelectedIndexChanged="ddl_count_SelectedIndexChanged" AutoPostBack="true" Width="50px">
                                                </asp:DropDownList>
                                            </td>

                                            <td class="am-text-center">
                                                <asp:HiddenField ID="hf_CTD11" runat="server" Value='<%# Eval("CTD11") %>' EnableViewState="false" />
                                                <asp:HiddenField ID="hf_CTD12" runat="server" Value='<%# Eval("CTD12") %>' EnableViewState="false" />
                                                <p>
                                                    RM
                                                    <asp:Literal ID="lit_price" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) * Convert.ToInt32(Eval("CTD06").ToString()) - (Eval("CTD11").ToString().Equals("0") ? 0 : Convert.ToDecimal(Eval("CTD12").ToString())) %>'></asp:Literal>
                                                </p>
                                                <strike>
                                                    <asp:Literal ID="lit_o_price" runat="server" Text='<%# Eval("CTD11").ToString().Equals("0") ? "" : "RM" + (hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) * Convert.ToInt32(Eval("CTD06").ToString())).ToString() %>' ></asp:Literal>
                                                </strike>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="img_del" runat="server" ImageUrl="icon/del1.png" OnClick="img_del_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="padding: 5px">
                                                <asp:Literal ID="lit_web_event" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                            <tfoot>
                                <!-- 這是一條空白間距 -->
                                <tr class="space"></tr>
                                <!-- 這是一條空白間距 -->
                                <!-- 消費滿額贈 premiums star -->

                                <tr class="total-wrapper">
                                    <td colspan="5" class="total-left">
                                        <span style="color: #ff6a00; padding-right: 20px">
                                            <asp:Literal ID="lit_ship_msg" runat="server"></asp:Literal>
                                        </span>
                                        <span class="txtRsc" data-id="cart012">運費：</span>
                                    </td>
                                    <td colspan="2" class="total-right">RM
                                        <asp:Literal ID="lit_ship_free_info" runat="server"></asp:Literal>
                                    </td>
                                </tr>

                                <tr class="total-wrapper">
                                    <td colspan="5" class="total-left">
                                        <span class="txtRsc" data-id="cart011">小計：</span>
                                    </td>
                                    <td colspan="2" class="total-right">RM
                                        <asp:Literal ID="lit_product_total" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr class="total-wrapper">
                                    <td colspan="5" class="total-left">
                                        <span class="txtRsc" data-id="cart013">活動折抵：</span>
                                    </td>
                                    <td colspan="2" class="total-right">-RM
                                        <asp:Literal ID="lit_webevnet_total" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <asp:Panel ID="panel_dis_price" runat="server">
                                    <tr class="total-wrapper">
                                        <td colspan="5" class="total-left">(2件10%off，3件20%off) 折抵：
                                        </td>
                                        <td colspan="2" class="total-right">-RM 
                                            <asp:Literal ID="lit_price_discount" runat="server"></asp:Literal>
                                        </td>
                                    </tr>
                                </asp:Panel>
                                <asp:Panel ID="panel_full_event" runat="server">
                                    <tr class="total-wrapper">
                                        <td colspan="5" class="total-left">
                                            <span class="txtRsc" data-id="cart014">滿</span> <span>
                                                <asp:Literal ID="lit_FE03" runat="server" EnableViewState="false"></asp:Literal></span>
                                            <span class="txtRsc" data-id="cart015">折抵</span>
                                            <span style="color: #C00">
                                                <asp:Literal ID="lit_FE04" runat="server" EnableViewState="false"></asp:Literal></span>
                                            <asp:Literal ID="lit_FE11" runat="server" EnableViewState="false"></asp:Literal>
                                            ：
                                        </td>
                                        <td colspan="2" class="total-right">-RM 
                                            <asp:Literal ID="lit_fullevent_count" runat="server" EnableViewState="false"></asp:Literal>
                                        </td>
                                    </tr>
                                </asp:Panel>
                                <style>
                                    .hadiscount li {
                                        display: inline-flex;
                                    }
                                </style>
                                <asp:Panel ID="panel_ha_coin" runat="server">
                                    <tr class="total-wrapper">
                                        <td colspan="5" class="total-left">(<span class="txtRsc" data-id="cart016">我有</span> Ha:
                                            <asp:Literal ID="lit_ha_coin" runat="server"></asp:Literal>)
                                            <span class="txtRsc" data-id="cart017">Ha幣使用</span>
                                            <p style="width: 200px">
                                                <asp:RadioButtonList Style="line-height: 20px; margin: 0px; padding: 0px;" ID="rb_ha_discount" CssClass="hadiscount" runat="server" OnSelectedIndexChanged="rb_ha_discount_SelectedIndexChanged" AutoPostBack="true" RepeatLayout="UnorderedList">
                                                    <asp:ListItem Text="1500點-折抵運費" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="全額折抵訂單金額" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="本次不使用HaCoin" Value="0"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </p>
                                        </td>
                                        <td colspan="2" class="total-right">-RM
                                            <asp:Literal runat="server" ID="lit_ha_use"></asp:Literal>

                                        </td>
                                    </tr>
                                </asp:Panel>
                                <asp:Panel ID="panel_coupon" runat="server">

                                    <tr class="total-wrapper">
                                        <td colspan="5" class="total-left">
                                            <span class="txtRsc" data-id="cart021">輸入折扣券號:</span>
                                            <%--  <div>

                                                <a onclick="setCoupon('LoveWomen20');" style="font-size: 14px; cursor: pointer; color: #ff6a00">[滿280扣RM20]</a><br />
                                                <a onclick="setCoupon('LoveWomen30');" style="font-size: 14px; cursor: pointer; color: #ff6a00">[滿380扣RM30]</a><br />
                                               
                                                <script>
                                                    function setCoupon(key) {
                                                        $('#<%= txt_coupon.ClientID %>').val(key);
                                                        $("#<%= btn_confirm.ClientID %>").click();
                                                    }
                                                </script>
                                            </div>
                                            --%>
                                        </td>
                                        <td colspan="2" class="total-right" style="line-height: 30px">
                                            <asp:Panel ID="Panel1" runat="server" DefaultButton="btn_confirm">
                                                <span style="font-size: 14px">
                                                    <asp:DropDownList ID="ddl_discount" runat="server" Width="150px" AutoPostBack="true" OnSelectedIndexChanged="ddl_discount_SelectedIndexChanged"></asp:DropDownList></span>
                                                <asp:TextBox ID="txt_coupon" runat="server" Style="width: 120px; margin-top: 5px"></asp:TextBox>
                                                <asp:ImageButton ID="btn_confirm" ImageUrl="../images/icon/enter2.png" runat="server" OnClick="btn_confirm_Click" data-am-popover="{content: 'Select', trigger: 'hover focus'}" />
                                                <br />
                                                <span style="font-size: 12px">-RM</span>
                                                <span style="font-size: 20px; color: #C00">
                                                    <asp:Literal ID="lit_discount_txt" runat="server" Text="0"></asp:Literal></span>
                                                <span style="font-size: 12px; color: #000">
                                                    <asp:LinkButton ID="lnk_coupon_del" runat="server" OnClick="lnk_coupon_del_Click" Visible="false">[Delte]</asp:LinkButton></span>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </asp:Panel>
                                <asp:Panel ID="panel_gold" runat="server">
                                    <tr class="total-wrapper">
                                        <td colspan="5" class="total-left">
                                            <span class="txtRsc" data-id="cart022">您的購物金還有</span>：
                                            <span style="color: #ff0000">RM
                                        <asp:Literal ID="lit_money" runat="server"></asp:Literal></span>，Enter：
                                        </td>
                                        <td colspan="2" class="total-right">-
                                         <asp:TextBox ID="txt_use_gold" runat="server" Width="70px" AutoPostBack="true" OnTextChanged="txt_use_gold_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                </asp:Panel>
                            </tfoot>
                        </table>
                        <div class="sp-total-title">
                            <span>TOTAL：RM
                            <asp:Literal ID="lit_sum" runat="server"></asp:Literal></span>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="txt_use_gold" EventName="TextChanged" />
                        <%--  <asp:AsyncPostBackTrigger ControlID="ddl_discount" EventName="SelectedIndexChanged" />--%>
                        <%--     <asp:AsyncPostBackTrigger ControlID="ddl_ship" EventName="SelectedIndexChanged" />--%>
                        <%--   <asp:AsyncPostBackTrigger ControlID="lnk_coupon_del" EventName="Click" />--%>
                        <%-- <asp:AsyncPostBackTrigger ControlID="btn_confirm" EventName="Click" />--%>
                    </Triggers>
                </asp:UpdatePanel>

                <hr />
                <asp:UpdatePanel ID="up_gift" runat="server">
                    <ContentTemplate>
                        <div class="premiums-title txtRsc" style="padding-top: 10px;" data-id="gf001">滿額贈品</div>
                        <!-- 一筆滿額贈開始 -->
                        <div class="premiums">
                            <asp:Repeater ID="rp_gift_list" runat="server">
                                <ItemTemplate>
                                    <div class="premiums-content am-cf">
                                        <div class="premiums-pic am-fl">
                                            <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE05" runat="server" Value='<%# Eval("GE05") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE16" runat="server" Value='<%# Eval("GE16") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE17" runat="server" Value='<%# Eval("GE17") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GE12" runat="server" Value='<%# Eval("GE12") %>' EnableViewState="false" />
                                            <asp:HiddenField ID="hf_GP01" runat="server" Value='<%# Eval("GP01") %>' EnableViewState="false" />
                                            <asp:CheckBox ID="chk_gift" runat="server" Enabled="false" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"] + "giftimgs/" + Eval("GP10") %>' style="height: 90px; margin: 10px;" />
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
                                                    <h4>
                                                        <span class="txtRsc" data-id="cart025">滿額金額</span>：<p>
                                                            RM
                                                            <asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal><span style="color: #ff0000">
                                                                <asp:Literal ID="lit_non_price" runat="server"></asp:Literal></span>
                                                        </p>
                                                    </h4>
                                                    <h4>
                                                        <span class="txtRsc" data-id="cart026">獲得數量</span>：<p>
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

                <%-- <style>
                    .payment td {
                        padding: 12px;
                    }
                </style>--%>



                <section class="am-u-sm-12 order-info">

                    <div class="order-info-title txtRsc" data-id="cart051">訂購資訊</div>
                    <asp:UpdatePanel ID="up_user_info" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="am-u-sm-12" style="padding-top: 10px; font-size: 16px; font-weight: 800; padding-bottom: 10px; text-align: center">
                                <asp:CheckBox ID="chk_get_user_info" runat="server" Text="帶入會員資訊" OnCheckedChanged="chk_get_user_info_CheckedChanged" AutoPostBack="true" />
                                &nbsp;&nbsp;|&nbsp;&nbsp;
                                <asp:CheckBox ID="chk_get_last_order_info" runat="server" Text="帶入最後購買資訊" AutoPostBack="true" OnCheckedChanged="chk_get_last_order_info_CheckedChanged" />
                            </div>
                            <div class="am-u-sm-6">
                                <div class="am-form">
                                    <fieldset>
                                        <div class="am-form-group">
                                            <label>
                                                <span style="color: #ff0000">*</span>
                                                <span class="txtRsc" data-id="cart045">姓名</span>
                                            </label>
                                            <asp:TextBox ID="txt_name" runat="server" placeholder="Please enter name" MaxLength="30"></asp:TextBox>
                                        </div>
                                        <div class="am-form-group">
                                            <label class="txtRsc" data-id="cart046">電話</label>
                                            <asp:TextBox ID="txt_tel" runat="server" placeholder="Please enter telephone" MaxLength="30"></asp:TextBox>

                                        </div>
                                        <div class="am-form-group">
                                            <label>
                                                <span style="color: #ff0000">*</span>
                                                <span class="txtRsc" data-id="cart047">手機</span> &nbsp;[EX：0161234567]
                                            </label>
                                            <div class="am-form-group">
                                                <asp:TextBox ID="txt_phone" runat="server" placeholder="Please enter mobile number starting with 01" MaxLength="11"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="am-form-group">
                                            <label>
                                                <span style="color: #ff0000">*</span>
                                                <span class="txtRsc" data-id="cart048">電子郵件</span>
                                            </label>
                                            <asp:TextBox ID="txt_email" runat="server" placeholder="Please enter email" MaxLength="200"></asp:TextBox>
                                        </div>
                                    </fieldset>
                                </div>

                            </div>

                            <div class="am-u-sm-6">
                                <div class="am-form">
                                    <fieldset>
                                        <div class="am-form-group">
                                            <label><span style="color: #ff0000">*</span>Loc / State / City / Postcode</label>
                                            <asp:UpdatePanel ID="up_post_state" runat="server">
                                                <ContentTemplate>
                                                    <div style="display: table">
                                                        <div style="display: table-cell">
                                                            <asp:DropDownList ID="ddl_state_1" runat="server" Width="140px" OnSelectedIndexChanged="ddl_state_1_SelectedIndexChanged" AutoPostBack="true" Style="padding: 8px">
                                                                <asp:ListItem Value="0" Text="West Malaysia"></asp:ListItem>
                                                                <asp:ListItem Value="1" Text="East Malaysia"></asp:ListItem>
                                                                <%--<asp:ListItem Value="2" Text="Brunei"></asp:ListItem>--%>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div style="display: table-cell; padding-left: 5px">
                                                            <asp:DropDownList ID="ddl_state_2" runat="server" Width="130px" Style="padding: 5px" OnSelectedIndexChanged="ddl_state_2_OnSelectedIndexChanged" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div style="display: table-cell; padding-left: 5px">
                                                            <asp:DropDownList ID="ddl_city" runat="server" Width="130px" Style="padding: 5px" OnSelectedIndexChanged="ddl_city_OnSelectedIndexChanged" AutoPostBack="True">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div style="display: table-cell; padding-left: 5px">
                                                            <asp:DropDownList ID="ddl_postcode" runat="server" Width="100px" Style="padding: 5px">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                        <div class="am-form-group">
                                            <label><span style="color: #ff0000">*</span>Address</label>
                                            <div style="display: table">

                                                <div style="display: table-cell;">
                                                    <asp:TextBox ID="txt_address" runat="server" placeholder="Please enter address" MaxLength="300" Width="520px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <div class="am-u-sm-12" style="padding-left: 0px; padding-right: 0px">
                                                <label class="txtRsc" data-id="cart049">備註</label>
                                                <asp:TextBox ID="txt_note" runat="server" placeholder="Please enter order note" MaxLength="500" TextMode="MultiLine" Height="115px"></asp:TextBox>
                                            </div>
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
                                                <asp:TextBox ID="txt_ORM46" runat="server" placeholder="請輸入訂購人姓名" MaxLength="50"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="am-u-sm-6" style="padding-right: 0px; padding-left: 25px">
                                            <div class="am-form-group">
                                                <label><span style="color: #ff0000">*</span>訂購人電話</label>
                                                <asp:TextBox ID="txt_ORM47" runat="server" placeholder="請輸入訂購人聯絡電話" MaxLength="50"></asp:TextBox>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="chk_get_user_info" EventName="CheckedChanged" />
                            <asp:AsyncPostBackTrigger ControlID="chk_get_last_order_info" EventName="CheckedChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </section>

                <br />
            </section>
            <section class="am-u-sm-12 shopping-order-btn" style="padding-top: 10px">
                <asp:UpdatePanel ID="up_step" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="am-u-sm-6 am-text-center">
                            <asp:Button ID="btn_pre" runat="server" CssClass="am-btn am-btn-defult grey-btn" OnClick="btn_pre_Click" Text="< BACK" Width="200px" />

                        </div>
                        <div class="am-u-sm-6 am-text-center">
                            <asp:Button ID="btn_next" runat="server" CssClass="am-btn am-btn-defult header-pink-btn" OnClick="btn_next_Click" Text="NEXT >" Width="200px" OnClientClick="blockMsg('Please wait...');" />
                            <%--<button id="btn_next" class="am-btn am-btn-defult header-pink-btn" runat="server" onserverclick="btn_next_Click">下一步 ></button>--%>
                        </div>
                    </ContentTemplate>

                </asp:UpdatePanel>
            </section>
        </section>

    </section>


    <%--    <script>
        ga('ec:setAction', 'checkout', { 'step': 3 });
    </script>

    <script src="//d17m68fovwmgxj.cloudfront.net/js/appier-track-v1.7.js"></script>
    <script>
        function sendAppierCartList(pList) {

            var appierRtCartList = pList;

            //========= PLEASE DO NOT CHANGE BELOW =========
            if (typeof (window.APPIER_RETARGET) == 'undefined') {
                (function (w, d, s, m) {
                    var f = d.getElementsByTagName('script')[0],
                        j = d.createElement('script'),
                        ns = 'APPIER_RETARGET';
                    w._appierSendQueue = w._appierSendQueue || [];
                    w['appierRetargetJson'] = { id: s, site: m };
                    j.async = true;
                    j.src = '//jscdn.appier.net/aa.js?id=' + m;
                    f.parentNode.insertBefore(j, f);
                    !w[ns] && (w[ns] = {});
                    (!w[ns].send) && (w[ns].send = function (j) {
                        w._appierSendQueue.push(j);
                    });
                })(window, document, "ZFfm", "hawooo.com");
            }
            window.APPIER_RETARGET.send({ 't': 'type_cart', 'content': appierRtCartList });
        };
    </script>--%>


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
