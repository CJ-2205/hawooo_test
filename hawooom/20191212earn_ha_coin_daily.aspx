<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191212earn_ha_coin_daily.aspx.cs" Inherits="mobile_static_20191212earn_ha_coin_daily" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
    <%--<style>
        .front img,.card img {
            max-width: 100%;
        }

    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  blue-bg" id="top">
        <div class="am-margin-bottom-lg">
            <section class="am-container">
                <div class="banner-box  am-text-center">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bbn_03.png" %>' alt="bbn_03m" style="width: 100%;" />
                </div>

                <div class="am-padding-sm shop-block  mb-earn-ha-coin-block" id="ha-card-copy">
                    <div class="mb-daily-p am-text-center">
                        <p>
                            Accumulated Check in and earn up to 2315 HA Coins<br />
                            The HA Coins will be transferred to your account automatically once you check in.<br />
                            The more days you check in, the more HA Coins you get!
                        </p>
                        <span id="topinfo" style="cursor: pointer; color: white" onclick="location.href='login.aspx?rurl=20191212earn_ha_coin_daily.aspx'">check in now to get your Ha coins</span>
                        <asp:Literal ID="lit_info" runat="server"></asp:Literal>
                    </div>

                    <div class="check-in-panel">
                        <ul class="am-avg-md-3 am-avg-sm-2">
                            <asp:Repeater ID="rp_date" runat="server" OnItemDataBound="rp_date_ItemDataBound">
                                <ItemTemplate>
                                    <li class="am-fl card transition" runat="server" name='<%#Eval("cid") %>' id="li1" onclick="CheckToGetCoin(this);">
                                        <div class="imgContain" style="cursor: pointer;">

                                            <asp:Panel runat="server" ID="panel1">
                                                <img class="gray-card" data-sizes="auto" src='<%#Eval("graycard") %>' style="width: 100%;" />
                                                <img class="gold-card" data-sizes="auto" src='<%#Eval("goldcard") %>' style="width: 100%;" />
                                            </asp:Panel>

                                            <asp:Panel runat="server" ID="panel2" Visible="false">

                                                <img class="gray-card" data-sizes="auto" src='<%#Eval("graycard") %>' style="width: 100%;" />
                                                <img class="gold-card" data-sizes="auto" src='<%#Eval("goldcard") %>' style="width: 100%;" />
                                            </asp:Panel>

                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>

                </div>
            </section>
        </div>
        <div class="activity-method">
            <div class="am-container">
                <p class="am-margin-0">
                    Terms & Conditions<br />
                    Check in and Earn HA Coins Daily<br />
                    1. Check in and earn HA Coins Daily from 2nd December 2019 - 12th December 2019<br />
                </p>

                <div>
                    <ul class="am-avg-md-3 am-avg-sm-2 am-padding-left am-padding-top-xs">
                        <li>Day 1 : 5 HA Coins</li>
                        <li>Day 2 : 10 HA Coins</li>
                        <li>Day 3 : 50 HA Coins</li>
                        <li>Day 4 : 100 HA Coins</li>
                        <li>Day 5 : 150 HA Coins</li>
                        <li>Day 6 : 200 HA Coins</li>
                        <li>Day 7 : 250 HA Coins</li>
                        <li>Day 8 : 300 HA Coins</li>
                        <li>Day 9 : 350 HA Coins</li>
                        <li>Day 10 : 400 HA Coins</li>
                        <li>Day 11 : 500 HA Coins</li>
                    </ul>
                </div>

                <p>The more days you check in, the more HA Coins you get!</p>
            </div>
        </div>

        <div class="footer-bar">
            <div class="am-container">
                <ul class="am-avg-sm-3">
                    <li>
                        <a href="20191212xmas.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                        </a>
                    </li>
                    <li>
                        <a href="#!" id="ss01">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212best_gifts.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                        </a>
                    </li>
                    <li>
                        <a href="#!">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212xmas.aspx?#s4" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212xmas.aspx?#s5" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_05m.png" %>' alt="ss_04m" style="width: 100%;" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript"> 

        //$('.card').click(function () {
        //    $(this).addClass('front');
        //});
    </script>

    <script>
        $(function hrefChange() {
            var date1 = new Date("2019-12-08T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss01').attr({
                    "href": "20191212preorder.aspx",
                    "target": "_blank"
                });
            }
        });

        //function AddliID() {
        //    for (i = 1; i <= 11; i++) {
        //        $('#ha-card-copy li').eq(i - 1).attr('id', "li" + i);
        //    }
        //};


        function CheckToGetCoin(v) {

            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                //doLogin('20191212earn_ha_coin_daily.aspx');
                location.href = "login.aspx?rurl=20191212earn_ha_coin_daily.aspx";
            } else {

                var val = "{'userID':'" + u + "'}";
                //debugger;
                $.ajax({
                    type: "POST",
                    url: "20191212earn_ha_coin_daily.aspx/GetCoin",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var coin = JSON.parse(msg.d)[0].coin;
                        var rmsg = JSON.parse(msg.d)[0].rmsg;

                        if (rmsg === "OK") {
                            $(v).addClass('front');
                            var oriCoin = parseInt($("#coinMsg").text());
                            var total = oriCoin + parseInt(coin);

                            $("#coinMsg").text(total);
                            alert('Successfully received, ' + coin + 'Ha Coin');

                        }
                        else {
                            alert(rmsg);
                        }

                    },
                    error: function () {
                        alert('Ajax ERROR');
                    }
                });
            }
        };


        $(function () {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u != null) {
                $('#topinfo').remove();
            };
            //AddliID();

        });
    </script>
</asp:Content>

