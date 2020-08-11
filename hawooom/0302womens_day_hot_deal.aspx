<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="0302womens_day_hot_deal.aspx.cs" Inherits="mobile_static_0302womens_day_hot_deal" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/0302womens_day.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="banner-box hot-deal-pag-clock-m">
            <img runat="server" id="img" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/bbn_01m.png" alt="bbn_01" style="width: 100%;" />
            <%-- 計時器 Start--%>
            <div class="clock" id="s-clock">
                <span id="d"></span>:
                        <span id='h'></span>:
                        <span id='m'></span>:
                        <span id='s'></span>
            </div>
            <%-- 計時器 End--%>
        </div>
        <section>
            <div class="mb-shop-block" runat="server" id="pd">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products" />

                </ul>
            </div>
        </section>
        <footer class="activity-method am-padding-vertical-sm">
            <div class="am-container">
                Terms & Conditions<br />
                Hot Deal<br />
                1. Promotion Date<br />
                <div class="indent">
                    <ul>
                        <li>- Round 1: 2/3/2020 12:00- 7/3/2020 23:59</li>
                        <li>- Round 2: 8/3/2020 00:00- 11/3/2020 23:59</li>
                    </ul>
                </div>
                2. Items are at its best prices, promo codes are NOT applicable on these items<br />
                3. Free gift with minspend (Free Zephyrine Rose Essence Lotion 30ml; Min Spend RM380, Limited 300 sets) are APPLICABLE on these items<br />
                4. Brand activities are APPLICABLE on these items（EXCEPT HH）<br />
                5. Limited time, limited items, check out ASAP!<br />
                6. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these International Women's Day Sale terms from time to time, and in such manner as Hawooo deems appropriate.
            </div>
        </footer>
    </div>

    <section class="footer-bar">
        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a href="0302womens_day.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_02m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>

        <div>
            <ul class="am-avg-sm-3">
                <li>
                    <a href="0302womens_day_buy1free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </section>

    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".clock").everyTime('1s',
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

