<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user_static_Default" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0;" />--%>
    <link href="assets/css/new_arrival0626.min.css" rel="stylesheet" />

    <div class="banner-box" style="max-width: 1180px; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/2019newarv/bn_01.png" alt="" style="width: 100%;" />
        <div class="timer">
            <span id='d'></span>:
            <span id='h'></span>:
            <span id='m'></span>:
            <span id='s'></span>
        </div>
    </div>
    <div class="am-container pc-container" style="background-color: #FBEED9;">
        <section class="new-arrival-box" id="product-make1">
            <ul class="new-arrival am-padding-left-0 am-avg-sm-2">
                <asp:Repeater ID="rp_top_products" runat="server">
                    <ItemTemplate>
                        <li class="am-fl  hvr-float">
                            <div class="resize">
                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" class="am-u-sm-12" style="background-color: #fff">
                                    <div class="product-left-box am-u-sm-7">
                                        <img data-sizes="auto"
                                            src="../noimg.png"
                                            data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    </div>
                                    <div class="product-right-box  am-u-sm-5  pc-product-right-box">
                                        <div class="product-news am-text-center">
                                            LIMITED   OFFER   NEW   ITEMS! 
                                        </div>
                                        <div class="product-info">
                                            <h3 class="product-name"><%# Eval("WP02").ToString() %> </h3>
                                            <div class="pc-info-list">
                                                <dl class="am-margin-0">
                                                    <%# Eval("WP24").ToString() %>
                                                </dl>
                                            </div>

                                            <div class="price-box pc-price-box">
                                                <h1 class=" am-monospace pc-product-price">RM<%# Eval("WPA06").ToString() %>
                                                </h1>
                                                <div class="original-price pc-original-price">RM<%# Eval("WPA10").ToString() %></div>
                                            </div>

                                            <div class="below-block">
                                                <h6 class="sale-off  pc-sale-off am-monospace"><%# Eval("PERSENT").ToString() %></h6>
                                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img style='width: 20px' src='../images/icon/" + Eval("WPT07") + "' />  " : "") + Eval("WP30") %></span>
                                            </div>

                                        </div>
                                        <div class="buy-now-btn am-btn pc-buy-now" type="button">BUY NOW </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>
        <%-------------------------------------new-arrival大盒子end---------------------------------------%>
        <%-------------------------------------new-arrival小盒子start---------------------------------------%>

        <section class="new-arrival-smbox" id="product-make2">
            <ul class="am-padding-left-0 am-avg-sm-4">
                <asp:Repeater ID="rp_products2" runat="server">
                    <ItemTemplate>
                        <li class="am-fl  hvr-float">
                            <div class="resize-sm">
                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                    <div class="product-img">
                                        <img data-sizes="auto"
                                            src="../noimg.png"
                                            data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    </div>
                                    <div class="product-text-box">
                                        <div class="product-item-block">
                                            <h3 class="smbox-product-name"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product-item-block">
                                            <div class="product-price-block am-fl">
                                                <h4 class="smbox-product-price  am-margin-0 pc-smbox-price"><span>RM<%# Eval("WPA06").ToString() %></span></h4>
                                                <p class="pc-original-price original-price ">RM<%# Eval("WPA10").ToString() %></p>
                                            </div>
                                            <div class="smbox-sele-off am-fr">
                                                <span><%# Eval("PERSENT").ToString() %></span>
                                                <div class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img style='width: 20px' src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>
    </div>
    <%--商品方塊li製造器--%>
    <%--    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 3; i++) {
                duplicate('product-make1');
            }
            for (i = 0; i < 3; i++) {
                duplicate('product-make2');
            }
            for (i = 0; i < 3; i++) {
                duplicate('product-make3');
            }
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }--%>
    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".timer").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    if (spendtime > 0) {
                        $("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                    } else { // 避免倒數變成負的
                        $("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                    }
                });
        }

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
   </script>
</asp:Content>

