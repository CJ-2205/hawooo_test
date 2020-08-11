<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020CNY_hot_deals.aspx.cs" Inherits="user_static_2020CNY_hot_deals" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY.min.css" rel="stylesheet" />
    <style>
        .banner-box1 {
            color: #A92F2D;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain am-padding-vertical-lg">
        <section class="am-container shop-block-bg">
            <div class="banner-box  banner-box1">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/bbn_01.png" %>' alt="bbn_01" style="width: 100%;" />
                <span class="clock">
                    <span id="d"></span>:
                    <span id="h"></span>:
                    <span id="m"></span>:
                    <span id="s"></span>
                </span>
            </div>

            <div class="am-padding-sm shop-block">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />

                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="2020CNY.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY.aspx?#s2" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY_beauty.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
               <%-- <li>
                    <a href="2020CNYtasty_food.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>--%>
                <li>
                    <a href="2020CNY.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200110/ss_04.png" %>' alt="ss_05" />
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <%--=====================側邊選單 End==========================--%>
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

