<%@ Control Language="C#" AutoEventWireup="true" CodeFile="recommend_product.ascx.cs" Inherits="user_control_recommend_product" %>
<link href="assets/css/bx_wrap.css" rel="stylesheet" />
<script src="assets/js/bxCarousel.js"></script>
<!-- 商品推薦區 -->
<div class="am-tabs" data-am-tabs style="margin: 20px 10px 0 10px;">
    <ul class="am-tabs-nav am-nav am-nav-tabs">
        <li class="am-active product-tab"><a href="#tab1" style="background-color: #f8849a; color: #ffffff; font-weight: 600;">你可能也會喜歡</a></li>
    </ul>
    <div class="am-tabs-bd">
        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
            <div class="demo">
                <div class="bx_wrap">
                    <div class="bx_container">
                        <ul id="recommend1">
                            <asp:Repeater ID="rp_recommend1" runat="server" EnableViewState="false">
                                <ItemTemplate>
                                    <li style="margin: 0;">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-thumbnail" />
                                            <p class="product-name"><%# Eval("WP02") %></p>
                                        </a>
                                        <p class="product-price">RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></p>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="am-tabs" data-am-tabs style="margin: 20px 10px 0 10px;">
    <ul class="am-tabs-nav am-nav am-nav-tabs">
        <li class="am-active product-tab"><a href="#tab2" style="background-color: #9d9597; color: #ffffff; font-weight: 600;">最多人瀏覽的商品</a></li>
    </ul>
    <div class="am-tabs-bd">
        <div class="am-tab-panel am-fade  am-in am-active" id="tab2">
            <div class="demo">
                <div class="bx_wrap">
                    <div class="bx_container">
                        <ul id="recommend2">
                            <asp:Repeater ID="rp_recommend2" runat="server" EnableViewState="false">
                                <ItemTemplate>
                                    <li style="margin: 0;">
                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-thumbnail" />
                                            <p class="product-name"><%# Eval("WP02") %></p>
                                        </a>
                                        <p class="product-price">RM <%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString())  %></p>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 商品推薦區使用 -->
<script type="text/javascript">
    $(function () {
        $('#recommend1').bxCarousel({
            display_num: 5,
            move: 4,
            margin: 12
        });
    });
    $(function () {
        $('#recommend2').bxCarousel({
            display_num: 5,
            move: 4,
            margin: 12
        });
    });
</script>

