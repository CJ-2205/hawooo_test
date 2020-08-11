<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="202003hot_deal.aspx.cs" Inherits="user_static_202003hot_deal" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- <link href="assets/css/202003hot_deal.min.css" rel="stylesheet" />--%>
    <link href="assets/css/events_style.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g">
        <div class="am-container main-contain hotdeal-contain">
            <!--Top Banner (start) =================================================-->
            <div class="am-g  countdown-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20200302/bn_01.png"%>' alt="top banner" />
                <span class="countdown pc-countdown">
                    <span id='d'></span>:
                    <span id='h'></span>:
                    <span id='m'></span>:
                    <span id='s'></span>
                </span>
            </div>

            <!--Top Banner (End) ==================================================-->

            <!--hotdeal block1 (start) ================================================-->
            <section class="am-margin-bottom">
                <div class="am-margin-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20200302/bn_02.png"%>' alt="banner" />
                </div>
                <div class="shop-block">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp_plist" runat="server" OnItemDataBound="rp_plist_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                                <li class="am-fl goods goods-flashsale">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                        <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>
                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">
                                                        <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                                        <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 23px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>
                                            <div class="goods-block">
                                                <p class="goods-name">
                                                    <%# Eval("WP02").ToString() %>
                                                </p>
                                            </div>
                                            <div class="goods-block">
                                                <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                                <s class="goods-original-price">
                                                    <span>RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                                                    </span>
                                                </s>
                                                <div class="goods-block">
                                                    <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <%--<li class="am-fl goods goods-flashsale hvr-float">
                                    <a href="#!">
                                        <div class="goods-top">
                                            <div class="goods-img">
                                                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/2020flagship_events/goods.jpg">
                                                <div class="goods-discount goods-discount3">
                                                    <span class="ribbon">10<small>%</small>  OFF
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="goods-bottom">
                                            <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/hw_event/fire.svg" style="width: 23px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold111件
                                                </div>
                                                <div class="bar-white" style="width: 50%;"></div>
                                            </div>
                                            <div class="goods-block">
                                                <p class="goods-name">
                                                    DR.CINK All-Round 4D Super Moisturizing Revitalizing &amp; Luxurios Caviar Serum Set
                                                </p>
                                            </div>
                                            <div class="goods-block">
                                                <h1 class="goods-price">
                                                    <span>RM</span>  385.20
                                                </h1>
                                                <s class="goods-original-price">
                                                    <span>RM</span>530.56
                                                </s>
                                            </div>
                                            <div class="goods-block">
                                                <p>SAVE<span> RM500.00</span></p>
                                            </div>
                                        </div>
                                    </a>
                                </li>--%>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <!--hotdeal block1 (End) =================================================-->

            <!--hotdeal block2 (start) ================================================-->
            <section class="am-margin-bottom">
                <div class="am-margin-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20200302/bn_03.png"%>' alt="banner" />
                </div>
                <div class="shop-block">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
            </section>
            <!--hotdeal block2 (End) ================================================-->

            <!--hotdeal block3 (start) ================================================-->
            <section class="am-margin-bottom">
                <div class="am-margin-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20200302/bn_04.png"%>' alt="banner" />
                </div>

                <div class="am-padding-vertical-sm">
                    <a href="https://www.hawooo.com/user/202003new_arrival.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20200302/bn_05.png"%>' alt="banner" />
                    </a>
                </div>
            </section>
            <!--hotdeal block3 (End) ================================================-->
        </div>
    </div>

    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        $(document).ready(function () {
            $(".shop-block li").addClass("hvr-float");
        });

        function setTime(spendtime) {
            $(".pc-countdown").everyTime('1s',
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

