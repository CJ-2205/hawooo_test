<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="hot_deal.aspx.cs" Inherits="mobile_static_hot_deal" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/hot_deal.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g  hot-bg-m">
        <%--=====================Top Banner Start==========================--%>
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20191031/bn_01m.png"%>' alt="主banner" style="width: 100%;" />
            <span class="clock-m">
                <span id='d'></span>:
                <span id='h'></span>:
                <span id='m'></span>:
                <span id='s'></span>
            </span>
        </div>
        <%--=====================Top Banner End==========================--%>
        <%--主打商品start--%>
        <section class="am-padding-top">

            <%--        <div class="mb-shop-bg goods-mb">--%>
            <div class="hot-deal-block  mb-shop-bg  goods-mb" id="product-make1">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <asp:Repeater ID="rp_plist" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">

                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())+100).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>' style="position: relative">
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())+100).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="goods-panel">
                                        <div class="goods-img">
                                            <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                        </div>

                                        <div class="goods-info">
                                            <div class="goods-name"><%# Eval("WP02").ToString() %></div>

                                            <div class="am-cf goods-block mb-goods-block">
                                                <h3 class="am-fl goods-price">RM<%# Eval("WPA06").ToString() %></h3>
                                                <span class="am-fr goods-discount"><%# Eval("PERSENT").ToString() %>
                                                </span>
                                            </div>

                                            <div class="goods-original-price">
                                                <s>RM <%# Eval("WPA10").ToString() %></s>
                                            </div>

                                            <div class="fire-bar-block">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/20180918/burn2.png"%>' alt="bom" />
                                                </div>
                                                <div class="fire-bar">
                                                    已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())+100).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString())+100: Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                </div>
                                                <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString())+100)+"%" %>;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%--                    <li class="am-fl">
                        <a href="#">
                            <div class="goods-panel">
                                <div class="goods-img">
                                    <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                </div>
                                <div class="goods-info">
                                    <div class="goods-name">
                                        Beauty小舖 鈣密滴雞精膠囊 60粒/盒Beauty小舖 鈣密滴雞精膠囊 60粒/盒Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                    </div>

                                    <div class="am-cf goods-block mb-goods-block">
                                        <h3 class="am-fl goods-price">RM268.90
                                        </h3>
                                        <span class="am-fr goods-discount">53 %  <span>OFF</span>
                                        </span>
                                    </div>

                                    <div class="goods-original-price">
                                        <s>RM 314.90</s>
                                    </div>

                                    <div class="fire-bar-block">
                                        <div class="fire-img">
                                            <img src="https://www.hawooo.com/images/ftp/20180918/burn2.png" alt="bom" />
                                        </div>
                                        <div class="fire-bar">
                                            已售出111件
                                        </div>
                                        <div class="bar-white pc-bar-white" style="width: 50%;"></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>--%>
                </ul>
            </div>
            <%--  </div>--%>
        </section>


        <%--主打商品End--%>


        <div class="am-container ">
            <div class="am-g  am-center am-margin-top-lg">
                <div class="banner-box  am-u-lg-6 am-u-md-7 am-u-sm-11  am-u-sm-centered">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20191031/new_title.png" %>' alt="" style="width: 100%;" />
                </div>
            </div>
            <div class="am-g other-act-group-m  am-padding-vertical-lg">
                <div class="am-u-sm-6 other-act am-center" id="other1">
                    <a href="https://www.hawooo.com/mobile/new_arrival3.aspx" target="_blank" class=" am-fr">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20191031/other_01m.png" %>' alt="其他商品連結1" style="width: 100%;" /></a>
                </div>
                <div class="am-u-sm-6 other-act am-center" id="other2">
                    <a href="https://www.hawooo.com/mobile/mit_mega_sale.aspx" target="_blank" class=" am-fl">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019hotdeal/20191031/other_02m.png" %>' alt="其他商品連結1" style="width: 100%;" /></a>
                </div>
            </div>
        </div>
    </div>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        $(function () {
            var date = new Date("2019-11-25T00:00:00");
            var dateNow = new Date();
            if (dateNow > date) {
                $("div").remove("#other2");
                $("#other1").attr("class", "am-u-sm-6 am-u-sm-centered")

            }
        });

        function setTime(spendtime) {

            $(".clock-m").everyTime('1s',
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

