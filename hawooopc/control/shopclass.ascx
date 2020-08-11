<%@ Control Language="C#" AutoEventWireup="true" CodeFile="shopclass.ascx.cs" Inherits="user_control_shopclass" %>
<link href="assets/css/market_left.css" rel="stylesheet" />
<style>
    .classbar a:hover {
        color: #ff8e95;
    }
</style>
<div class="am-u-sm-2 default-panel" style="width: 15%; background-color: White">
    <div class="left-box">
        <h3>
            <a style="color: #ff6180" id="new"><i class="am-icon-exclamation"></i>&nbsp;
               <span class="txtRsc" data-id="mkt001">最新商品</span>
            </a></h3>
    </div>
    <div class="left-box">
        <h3 class="txtRsc" data-id="mkt002">商品分類</h3>
        <asp:Literal ID="lit_hawooo_class" runat="server"></asp:Literal>
    </div>
    <div class="left-box">
        <h3 class="txtRsc" data-id="mkt003">精選活動</h3>
        <ul class="left-choice">
            <asp:Literal ID="lit_edm_class" runat="server"></asp:Literal>
            <asp:Literal ID="lit_sel_class" runat="server"></asp:Literal>
        </ul>
    </div>
    <div class="left-box" id="productTagBox">
        <h3 class="txtRsc" data-id="mkt004">商品標籤</h3>
        <ul class="left-choice">
            <li>
                <asp:CheckBox ID="chk_t_2" runat="server" AutoPostBack="true" OnCheckedChanged="chkTagEvent" ClientIDMode="Static" />
                <label class="txtRsc" data-id="mkt005" for="chk_t_2">本週熱銷</label>
            </li>
            <li>
                <asp:CheckBox ID="chk_t_1" runat="server" AutoPostBack="true" OnCheckedChanged="chkTagEvent" ClientIDMode="Static" />
                <label class="txtRsc" data-id="mkt006" for="chk_t_1">免運商品</label>
            </li>
            <li>
                <asp:CheckBox ID="chk_t_3" runat="server" AutoPostBack="true" OnCheckedChanged="chkTagEvent" ClientIDMode="Static" />
                <label class="txtRsc" data-id="mkt007" for="chk_t_3">限時優惠</label>
            </li>
        </ul>
    </div>
    <div class="left-box" id="priceTagBox">
        <h3 class="txtRsc" data-id="mkt008">價格區間</h3>
        <ul class="left-choice">
            <li>
                <asp:CheckBox ID="chk_1" runat="server" Text="Under RM50" AutoPostBack="true" OnCheckedChanged="chkEvent" />
            </li>
            <li>
                <asp:CheckBox ID="chk_2" runat="server" Text="RM50~100" AutoPostBack="true" OnCheckedChanged="chkEvent" />
            </li>
            <li>
                <asp:CheckBox ID="chk_3" runat="server" Text="RM100~150" AutoPostBack="true" OnCheckedChanged="chkEvent" />
            </li>
            <li>
                <asp:CheckBox ID="chk_4" runat="server" Text="RM150~250" AutoPostBack="true" OnCheckedChanged="chkEvent" />
            </li>
            <li>
                <asp:CheckBox ID="chk_5" runat="server" Text="Over RM250" AutoPostBack="true" OnCheckedChanged="chkEvent" />
            </li>
        </ul>
    </div>
    <script>
        $(function () {
            var pname = location.pathname;
            if (pname == '/user/productdetail.aspx') {
                hiddenTag();
            }
            else {
                showTag();
            }
        })
        function hiddenTag() {
            $("#productTagBox").hide();
            $("#priceTagBox").hide();
        }

        function showTag() {
            $("#productTagBox").show();
            $("#priceTagBox").show();
        }
        function setNewsUrl(url) {
            $("#new").attr("href", url);
        }
    </script>
</div>
