<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="72HhotDeal2.aspx.cs" Inherits="mobile_static_72HhotDeal2" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/72Hhot_deal.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--=====================Top Banner Start==========================--%>
    <div class="banner-box">
        <img src="https://www.hawooo.com/images/ftp/week1/bn_01m.png" alt="首頁banner" style="width: 100%;" />
        <span class="clock-m">
            <span id='h'></span>:
            <span id='m'></span>:
            <span id='s'></span>:
            <span id='ms'></span>
        </span>
    </div>
    <%--=====================Top Banner End==========================--%>


    <div class="am-g  hot-bg-m">

        <%--四隻主打商品start--%>
        <section class="am-padding-vertical-lg goods-items-group-m">
            <ul class="am-avg-md-2  am-avg-sm-1  am-center">
                <asp:Repeater ID="rp_plist" runat="server">
                    <ItemTemplate>
                        <li class="am-text-center">
                            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week1/bg_02m.png" %>' alt="商品背景1" style="width: 100%;" />
                                <div class="goods-pic am-center">
                                    <img src='<%#Eval("P_img") %>' alt="主打商品1" style="width: 100%;" />
                                </div>
                                <div class="goods-info">
                                    <h3 class="goods-discount"><span><%# Eval("PERSENT").ToString() %></span> <%--<span>OFF</span>--%> </h3>
                                    <h4 class="goods-depict"><%# Eval("WP02").ToString() %></h4>
                                    <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span><%# Eval("WPA06").ToString() %></span> </h2>
                                    <del class="goods-org-price"><span>RM</span><%# Eval("WPA10").ToString() %></del>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<li class="am-text-center">
                    <a href="#">
                        <img src="https://www.hawooo.com/images/ftp/week1/bg_02m.png" alt="商品背景1" style="width: 100%;" />
                        <div class="goods-pic am-center">
                            <img src="https://www.hawooo.com/images/ftp/week1/pd_01.png" alt="主打商品1" style="width: 100%;" />
                        </div>
                        <div class="goods-info">
                            <h3 class="goods-discount"><span>20%</span> <span>OFF</span> </h3>
                            <h4 class="goods-depict">天泉草本 纖暢纖飲,2盒(口味任選)</h4>
                            <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span>140.00</span> </h2>
                            <del class="goods-org-price"><span>RM</span>259.90</del>
                        </div>
                    </a>
                </li>
                <li class="am-text-center">
                    <a href="#">
                        <img src="https://www.hawooo.com/images/ftp/week1/bg_03m.png" alt="商品背景1" style="width: 100%;" />
                        <div class="goods-pic am-center">
                            <img src="https://www.hawooo.com/images/ftp/week1/pd_02.png" alt="主打商品1" style="width: 100%;" />
                        </div>
                        <div class="goods-info">
                            <h3 class="goods-discount"><span>20%</span> <span>OFF</span> </h3>
                            <h4 class="goods-depict">天泉草本 纖暢纖飲,2盒(口味任選)</h4>
                            <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span>140.00</span> </h2>
                            <del class="goods-org-price"><span>RM</span>259.90</del>
                        </div>
                    </a>
                </li>
                <li class="am-text-center">
                    <a href="#">
                        <img src="https://www.hawooo.com/images/ftp/week1/bg_04m.png" alt="商品背景1" style="width: 100%;" />
                        <div class="goods-pic am-center">
                            <img src="https://www.hawooo.com/images/ftp/week1/pd_03.png" alt="主打商品1" style="width: 100%;" />
                        </div>
                        <div class="goods-info">
                            <h3 class="goods-discount"><span>20%</span> <span>OFF</span> </h3>
                            <h4 class="goods-depict">天泉草本 纖暢纖飲,2盒(口味任選)</h4>
                            <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span>140.00</span> </h2>
                            <del class="goods-org-price"><span>RM</span>259.90</del>
                        </div>
                    </a>
                </li>
                <li class="am-text-center">
                    <a href="#">
                        <img src="https://www.hawooo.com/images/ftp/week1/bg_04m.png" alt="商品背景1" style="width: 100%;" />
                        <div class="goods-pic am-center">
                            <img src="https://www.hawooo.com/images/ftp/week1/pd_04.png" alt="主打商品1" style="width: 100%;" />
                        </div>
                        <div class="goods-info">
                            <h3 class="goods-discount"><span>20%</span> <span>OFF</span> </h3>
                            <h4 class="goods-depict">天泉草本 纖暢纖飲,2盒(口味任選)</h4>
                            <h2 class="goods-price am-margin-top-xs"><span>RM</span> <span>140.00</span> </h2>
                            <del class="goods-org-price"><span>RM</span>259.90</del>
                        </div>
                    </a>
                </li>--%>
            </ul>
        </section>
        <%--四隻主打商品End--%>
        <div class="am-container">
            <div class="am-g other-act-group-m am-padding-bottom-lg">
                <div class="am-u-sm-6 other-act am-center">
                    <a href="https://www.hawooo.com/mobile/newarrival.aspx" class=" am-fr">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week1/other_01m.png" %>' alt="其他商品連結1" style="width: 100%;" /></a>
                </div>
                <div class="am-u-sm-6  other-act am-center">
                    <a href="https://www.hawooo.com/mobile/2019womenbuy3.aspx" class=" am-fl">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/week1/other_02m.png" %>' alt="其他商品連結2" style="width: 100%;" /></a>
                </div>
            </div>
        </div>
    </div>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".clock-m").everyTime('0.1s',
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
</asp:Content>

