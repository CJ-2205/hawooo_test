<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="newarrival.aspx.cs" Inherits="newarrival" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0;" />
    <link href="assets/css/new_arrival0626.min.css" rel="stylesheet" />
    <style>
        .pc-timer {
            font-size: 30px !important;
            bottom: 26% !important;
        }

        .timer {
            background: url("https://p8r7m4d5.stackpathcdn.com/images/ftp/201909192/new_time.svg") no-repeat center center;
            background-size: contain;
            font-size: 24px;
            bottom: 28%;
            left: 0;
            right: 0;
            position: absolute;
            margin: 0 auto;
        }

        @media screen and (max-width: 576px) {
            .timer {
                font-size: 12px;
                bottom: 28%;
            }
        }
    </style>
    <div class="banner-box">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/201909192/bn_01m.png" %>' alt="" style="width: 100%;" />
        <div class="timer">
            <span id='d'></span>:
            <span id='h'></span>:
            <span id='m'></span>:
            <span id='s'></span>
        </div>
    </div>
    <div class="am-container" style="background-color: #EFE6E6;">
        <section class="new-arrival-box" id="product-make1">
            <ul class="new-arrival am-padding-left-0  am-avg-md-2">
                <asp:Repeater ID="rp_top_products" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="resize">
                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" class="am-u-sm-12" style="background-color: #fff">
                                    <div class="product-left-box mb-left-box am-u-sm-7 am-padding-0">
                                        <img data-sizes="auto"
                                            src="../noimg.png"
                                            data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    </div>
                                    <div class="product-right-box mb-right-box  am-u-sm-5 ">
                                        <div class="product-news am-text-center am-text-nowrap">
                                            Limited   Offer   New   Items!
                                        </div>
                                        <div class="mb-product-info">
                                            <h3 class="product-name"><%# Eval("WP02").ToString() %></h3>
                                            <div class="info-list">
                                                <%# Eval("WP24").ToString() %>
                                            </div>
                                            <div class="price-box">
                                                <h1 class="product-price  ">RM<%# Eval("WPA06").ToString() %>
                                                </h1>
                                                <div class="original-price ">RM <%# Eval("WPA10").ToString() %></div>
                                            </div>

                                            <div class="below-block">
                                                <h6 class="sale-off   mb-sale-off"><%# Eval("PERSENT").ToString() %></h6>
                                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img style='width: 20px' src='../images/icon/" + Eval("WPT07") + "' />  " : "") + Eval("WP30") %></span>
                                            </div>
                                        </div>
                                        <div class="buy-now-btn"><span>BUY NOW</span> </div>
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
            <ul class="am-padding-left-0 am-avg-sm-2 am-avg-md-3">
                <asp:Repeater ID="rp_products2" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">
                            <div class="resize-sm">
                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                    <div class="product-img">
                                        <img data-sizes="auto"
                                            src="../noimg.png"
                                            data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    </div>
                                    <div class="product-text-box">
                                        <div class="product-item-block" style="position: fixed; display: contents;">
                                            <div class="smbox-product-name"><%# Eval("WP02").ToString() %></div>
                                        </div>
                                        <div class="product-item-block">
                                            <div class="product-price-block am-fl">
                                                <h4 class="smbox-product-price  am-margin-0"><span>RM <%# Eval("WPA06").ToString() %></span></h4>
                                                <p class="smbox-original-price">RM <%# Eval("WPA10").ToString() %></p>
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

