<%@ Control Language="C#" AutoEventWireup="true" CodeFile="products.ascx.cs" Inherits="mobile_control_products" %>
<%@ Import Namespace="hawooo" %>
<asp:Repeater ID="rp_goods" runat="server">
    <ItemTemplate>
        <li class="am-fl">
            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                <div class="product_item_pic">
                    <img data-sizes="auto"
                        src="../../noimg.png"
                        data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                </div>
                <div class="product_item_text">
                    <div class="product_item_block am-cf">
                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                    </div>
                    <div class="product_item_block am-cf">

                        <h4 class="am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                    </div>
                    <div class="product_item_block am-cf">
                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                        </p>
                    </div>
                </div>
                <div class="rating-wrapper">
                    <p class="rating-avg">3.8</p>
                    <div class="rating-stars">
                        <span class="rating-stars-empty">
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                        </span>
                        <span class="rating-stars-filled">
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                            <span class="star"><i class="fa fa-star"></i></span>
                        </span>
                    </div>
                    <span class="rating-count">(100)</span>
                </div>
            </a>
        </li>
    </ItemTemplate>
</asp:Repeater>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

    $(function () {
        $.each($('.rating-wrapper'), function (key, value) {
            $(this).find('.rating-stars').star($(this));
        });
    });

    $.fn.star = function (value) {
        var val = 0, stars = 5, percentage = 0;
        return this.each(function (i, e) {
            val = parseFloat(value.find(".rating-avg").text());
            percentage = (val / stars) * 100;
            percentage = percentage > 100 ? 100 : percentage;
            percentage = percentage < 0 ? 0 : percentage;
            value.find('.rating-stars-filled').animate({ width: percentage + '%' }, 0);
        });
    };
</script>
