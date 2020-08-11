<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020CNY_hot_deals.aspx.cs" Inherits="mobile_static_2020CNY_hot_deals" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY.min.css" rel="stylesheet" />
    <style>
        .banner-box1 {
            color: #A92F2D;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box1">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bbn_01m.png" %>' alt="bbn_01m" style="width: 100%;" />
                <!-- 如果有要倒數 --->
                <span class="clock-m">
                    <span id="d"></span>:
                <span id="h"></span>:
                <span id="m"></span>:
                <span id="s"></span>
                </span>
            </div>
            <section>
                <div class="mb-shop-block shop-block-bg">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-2">
                <li>
                    <a href="2020CNY.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
            <ul class="am-avg-sm-3">
                <li>
                    <a href="2020CNY.aspx?#s2" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY_beauty.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <%--<li>
                    <a href="2020CNYtasty_food.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>--%>
                <li>
                    <a href="2020CNY.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script>
        $(function hiddenFooterMenu() {
            $("#footermenu").css('display', 'none');
        });
    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
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

