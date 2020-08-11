<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="72HhotDeal.aspx.cs" Inherits="user_static_72HhotDeal" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/72Hhot_deal.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g">

        <div class="am-container hot-bg">
            <div class="am-margin-bottom-lg">
                <div class="banner-box  am-g" id="clockBlock">
                    <%--<img src="https://www.hawooo.com/images/ftp/week1/bn_01.png" alt="" style="width: 100%;" />--%>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week2/bn_01.png" %>' alt="" style="width: 100%;" />
                    <div class="copy-coupon "><a href="#"></a>
                    </div>
                    <span class="clock">
                        <span id='h'></span>:
                        <span id='m'></span>:
                        <span id='s'></span>:
                        <span id='ms'></span>
                    </span>
                </div>
                <%--=====================Top Banner End==========================--%>
                <%--四隻主打商品start--%>
                <section class="am-padding-vertical-lg">
                    <ul class="am-avg-sm-2  am-center  goods-items">
                        <asp:Repeater ID="rp_plist" runat="server">
                            <ItemTemplate>
                                <%--<li class="am-text-center">
                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week1/bg_02.png" %>' alt="商品背景1" style="width: 100%;" />
                                        <div class="goods-pic am-center">
                                            <img src='<%#Eval("WP08_1") %>' alt="主打商品1" style="width: 100%;" />
                                        </div>
                                        <div class="goods-info">
                                            <h3 class="goods-discount"><span><%# Eval("PERSENT").ToString() %></span></h3>
                                            <h4 class="goods-depict"><%# Eval("WP02").ToString() %></h4>
                                            <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span><%# Eval("WPA06").ToString() %></span> </h2>
                                            <del class="goods-org-price"><span>RM</span><%# Eval("WPA10").ToString() %></del>
                                        </div>
                                    </a>
                                </li>--%>
                                <li class="am-text-center">
                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="goods-grass">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week2/new_pd_bg.png" %>' alt="矮草叢" style="width: 100%;" />
                                            <h3 class="goods-discount"><span><%# Eval("PERSENT").ToString() %></span></h3>
                                        </div>
                                        <div class="goods-info">
                                            <div class="goods-pic am-center">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="主打商品1" style="width: 100%;" />
                                            </div>
                                            <h4 class="goods-depict"><%# Eval("WP02").ToString() %></h4>
                                            <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span><%# Eval("WPA06").ToString() %></span></h2>
                                            <del class="goods-org-price"><span>RM</span><%# Eval("WPA10").ToString() %></del>
                                        </div>
                                        <div class="buy-now-btn">
                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week2/new_pd_bt.png" %>' alt="主打商品1" style="width: 100%;" />
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </section>

                <%--四隻主打商品End--%>
                <div class="am-g  am-center am-margin-top-lg">
                    <div class="banner-box  am-u-sm-6  am-u-sm-centered">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week2/new_title.png" %>' alt="" style="width: 100%;" />
                    </div>
                </div>
                <div class="am-g other-act-group am-padding-top-lg">
                    <div class="other-act">
                        <a href="https://www.hawooo.com/user/newarrival.aspx" class="am-center">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week1/other_01.png" %>' alt="其他商品連結1" style="width: 100%;" /></a>
                    </div>
                    <%--<div class="am-u-sm-6  other-act">
                        <a href="https://www.hawooo.com/user/2019womenbuy3.aspx" class=" am-fl">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week1/other_02.png" %>' alt="其他商品連結2" style="width: 100%;" /></a>
                    </div>--%>
                </div>

            </div>
        </div>
    </div>

    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".clock").everyTime('0.1s',
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

        $(function () {
            var date3 = new Date("2019-10-29T00:00:00");
            var dateNow = new Date();
            if (dateNow > date3) {
                $('#clockBlock').css("display", "none");
                $('.clock').remove();

            };
        });
    </script>
</asp:Content>

