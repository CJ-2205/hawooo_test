<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="0302womens_day_hot_deal.aspx.cs" Inherits="user_static_0302womens_day_hot_deal" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/0302womens_day.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg">
        <section class="am-container">
            <div class="banner-box hot-deal-pag-clock">
                <img runat="server" id="img" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200302/bbn_01.png" alt="bbn_01" style="width: 100%;" />
                <%-- 計時器 Start--%>
                <div class="clock" id="s-clock">
                    <span id='d'></span>:
                                <span id='h'></span>:
                                <span id='m'></span>:
                                <span id='s'></span>
                </div>
                <%-- 計時器 End--%>
            </div>


            <div class="am-padding-sm shop-block shop-block-bg" runat="server" id="pd">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>

            <%--=======================活動辦法 Start ===========================--%>
            <footer class="activity-method am-padding-vertical-lg">
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
            <%--=======================活動辦法 End============================--%>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="0302womens_day.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day_buy1free1.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

    <script type="text/javascript">
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };
    </script>
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

