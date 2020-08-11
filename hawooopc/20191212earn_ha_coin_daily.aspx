<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191212earn_ha_coin_daily.aspx.cs" Inherits="user_static_20191212earn_ha_coin_daily" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain blue-bg" id="top">
        <div class="am-margin-vertical-xl">
            <section class="am-container">
                <div class="banner-box  am-text-center">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bbn_03.png" %>' alt="bbn_03" style="width: 100%;" />
                </div>



                <div class="am-padding-sm shop-block  earn-ha-coin-block" id="ha-card-copy">
                    <div class="daily-p am-text-center">
                        <p>
                            Accumulated Check in and earn up to 2315 HA Coins<br />
                            The HA Coins will be transferred to your account automatically once you check in.<br />
                            The more days you check in, the more HA Coins you get!
                        </p>
                        <%--                        <asp:Literal ID="lit_info" runat="server"></asp:Literal>--%>
                        <span id="topinfo" style="cursor: pointer; color: white" onclick="doLogin('20191212earn_ha_coin_daily.aspx');">check in now to get your Ha coins</span>

                        <asp:Literal ID="lit_info" runat="server"></asp:Literal>

                    </div>
                    <ul class="am-avg-sm-3">
                        <asp:Repeater ID="rp_date" runat="server" OnItemDataBound="rp_date_ItemDataBound">
                            <ItemTemplate>
                                <li class="am-fl card transition" runat="server" name='<%#Eval("cid") %>' id="li1" onclick="CheckToGetCoin(this);">
                                    <div class="imgContain" style="cursor: pointer;">

                                        <asp:Panel runat="server" ID="panel1">
                                            <img class="gray-card" data-sizes="auto" src='<%#Eval("graycard") %>' />
                                            <img class="gold-card" data-sizes="auto" src='<%#Eval("goldcard") %>' />
                                        </asp:Panel>

                                        <asp:Panel runat="server" ID="panel2" Visible="false">

                                            <img class="gray-card" data-sizes="auto" src='<%#Eval("graycard") %>' />
                                            <img class="gold-card" data-sizes="auto" src='<%#Eval("goldcard") %>' />
                                        </asp:Panel>

                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
        </div>
        <footer class="activity-method">
            <div class="am-container">
                <p class="am-margin-0">
                    Terms & Conditions<br />
                    Check in and Earn HA Coins Daily<br />
                    1. Check in and earn HA Coins Daily from 2nd December 2019 - 12th December 2019<br />
                </p>

                <ul class="am-avg-sm-4">
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
                <p class="am-padding-top-sm">The more days you check in, the more HA Coins you get!</p>
            </div>
        </footer>

        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="20191212xmas.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!" id="ss01">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="20191212best_gifts.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="20191212xmas.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
                <li>
                    <a href="20191212xmas.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_05.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript"> 

        //$('.card').click(function () {
        //    $(this).addClass('front');
        //});

    </script>

    <script>
        //function AddliID() {
        //    for (i = 1; i <= 11; i++) {
        //        $('#ha-card-copy li').eq(i - 1).attr('id', "li" + i);
        //    }
        //};
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

        function CheckToGetCoin(v) {

            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                doLogin('20191212earn_ha_coin_daily.aspx');
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
                        //console.log(msg);
                        //console.log(msg.d);
                        debugger;
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

                        //alert2url('Successfully received', '20191212earn_ha_coin_daily.aspx');

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

        });


    </script>

</asp:Content>

