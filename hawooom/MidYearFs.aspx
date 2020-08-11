<%@ Page Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="MidYearFs.aspx.cs" Inherits="mobile_MidYearFs" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/product_template.min.css" rel="stylesheet" />
    <link href="assets/css/new_arrival0626.min.css" rel="stylesheet" />
    <style>
        .brand-ad img {
            padding: 10px 10px 10px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="background-color: #dfdfdf">

        <div style="display: block; position: relative;" class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20190625/48h_bm_click.png" %>' width="100%" />
            <div class="timer">
                <span id='h'></span>:
                <span id='m'></span>:
                <span id='s'></span>:
                <span id='ms'></span>
            </div>
        </div>

        <div style="padding-top: 10px">
            <section class="product-template">
                <ul class="product-item-box  am-avg-sm-2 am-avg-md-3 am-margin-0">
                    <asp:Repeater ID="rp_plist" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="resize-sm">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="product-img">
                                            <img data-sizes="auto"
                                                src="../noimg.png"
                                                data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <span class="tag"><%# Eval("PERSENT").ToString() %></span>
                                        </div>

                                        <div class="product-text-box">
                                            <div class="product-item-block">
                                                <h3 class="product-name"><%# Eval("WP02").ToString() %></h3>
                                            </div>

                                            <div class="product-item-block ">
                                                <div class="price-contain">
                                                    <div class="product-price-block am-fl ">
                                                        <h4 class="product-price"><span>RM<%# Eval("WPA06").ToString() %></span></h4>
                                                        <p class="original-price "><del>RM<%# Eval("WPA10").ToString() %></del></p>
                                                    </div>
                                                    <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "margin-top: 1.3rem;" %>">
                                                        <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-coupon-box am-text-center">
                                                <div class="buy-btn am-u-sm-12">
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" class="buy-btn">BUY NOW</a>
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

                $(".timer").everyTime('0.1s',
                    function (i) {
                        //spendtime--; //總共秒數


                        spendtime = spendtime - 0.1; //總共秒數

                        //var d = Math.floor(spendtime / (24 * 3600));
                        //d = PrefixInteger(d, 2);
                        var h = Math.floor((spendtime % (24 * 3600 * 3600)) / 3600);
                        h = PrefixInteger(h, 2);
                        var m = Math.floor((spendtime % 3600) / (60));
                        m = PrefixInteger(m, 2);
                        var s = Math.floor(spendtime % 60);
                        s = PrefixInteger(s, 2);
                        var ms = Math.floor((spendtime * 10 % 10));
                        ms = PrefixInteger(ms, 1);




                        if (spendtime > 0) {
                            //$("#d").text(d);
                            $("#h").text(h);
                            $("#m").text(m);
                            $("#s").text(s);
                            $("#ms").text(ms);
                        } else { // 避免倒數變成負的
                            //$("#d").text(0);
                            $("#h").text(0);
                            $("#m").text(0);
                            $("#s").text(0);
                            $("#ms").text(ms);
                        }
                    });
            }

            function PrefixInteger(num, length) {
                return (Array(length).join('0') + num).slice(-length);
            }

        </script>
    </div>
</asp:Content>

