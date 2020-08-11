<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="member_card.aspx.cs" Inherits="user_member_card" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/member/member_card.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/member.css" />
    <script defer src="https://use.fontawesome.com/releases/v5.8.0/js/all.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .trial {
            font-size: larger;
            font-family: fantasy;
        }
    </style>
    <div class="am-container">

        <uc1:memberleftclass runat="server" ID="memberleftclass" />


        <section class="member-card am-fl">


            <div class="member-Info am-u-sm-12">
                <h5 class="member-Info-text">Hi，您好!<br />
                    您目前是<span class="leve-now-p">
                        <asp:Literal ID="lit_card_title" runat="server"></asp:Literal>
                    </span>
                    <br />

                    <asp:Panel ID="PanelPointInfo" runat="server">
                        累積消費<span class="grand-total-p">
                            <asp:Literal ID="lit_price_range" runat="server"></asp:Literal>
                        </span>，升級成為<span class="upgrade-leve-p"><asp:Literal ID="lit_card_type" runat="server"></asp:Literal></span>會員。
                    </asp:Panel>

                    <asp:Panel ID="blackCard" runat="server" Visible="false">
                        黑卡體驗剩餘:<span class="grand-total-p"><asp:Literal ID="litDays" runat="server"></asp:Literal></span>天。
                    </asp:Panel>
                </h5>
            </div>


            <%--活動中--%>
            <asp:Panel ID="TrialBlackCard" runat="server" Visible="false">

                <div class="am-u-sm-12 am-margin-top-lg card-notice">
                    <div class="am-padding-xs am-margin-bottom card-notice-txt">
                        <p class="am-padding-horizontal-sm">
                            <span class="am-margin-right-xs text-black"><i class="fas fa-gift"></i>
                            </span>
                            本⽉您是<b> Black Card </b>會員，快來購物體驗。
                        </p>
                        <span class="am-padding-horizontal-sm">
                            <a class="text-primary about-member-level" href="member_level_list.aspx">會員分級</a>
                        </span>
                    </div>
                </div>
            </asp:Panel>
            <%--活動中--%>



            <%------------------------------------------進度條start-----------------------------------------------%>
            <asp:Panel ID="Point" runat="server">
                <div class="am-g">
                    <div class="member-progress-contain am-u-sm-7">
                        <div class="member-progress">
                            <img src="../mobile/images/member/progress_bar-01.svg" />
                            <div class="gray-bar " style="width: 100%; height: 60px">
                            </div>
                            <div class="pink-bar" style="height: 60px;">
                            </div>
                        </div>

                        <ul class="progres-percent-p">
                            <li style="text-align: left"><span>W Card</span></li>
                            <li style=""><span>S Card</span></li>
                            <li style=""><span>G Card</span></li>
                            <li style="text-align: right"><span>B Card</span></li>
                        </ul>
                    </div>
                </div>
            </asp:Panel>
            <%-----------------------------------------------------進度條end-----------------------------------------------------%>


            <%--活動前--%>
            <asp:Panel ID="TrailBefore" runat="server" Visible="true">
                <div class="am-u-sm-12 am-margin-top-lg card-notice">
                    <div class="am-padding-xs am-margin-bottom card-notice-txt">
                        <p class="am-padding-horizontal-sm">
                            <span class="am-margin-right-xs text-primary"><i class="fas fa-bullhorn"></i>
                            </span>

                            <asp:Literal ID="litMsg" runat="server"></asp:Literal>
                            <span class="am-padding-horizontal-sm">
                                <a class="about-member-level" href="member_level_list.aspx">
                                    <i class="far fa-hand-point-right"></i>會員制度
                                </a>
                            </span>
                        </p>
                    </div>
                </div>
            </asp:Panel>
            <%--活動前--%>

            <div class="am-g">
                <div class="am-u-sm-5">
                    <%-- <div class="member-card-level">
                        <div class="card-level-icon">
                            <asp:Literal ID="lit_icon" runat="server"></asp:Literal>

                        </div>
                        <span class="card-level-title am-fr">
                            <asp:Literal ID="lit_card_title2" runat="server"></asp:Literal>
                        </span>
                    </div>--%>
                    <div class="vip-card" style="margin-top: 10px">
                        <asp:Literal ID="lit_img" runat="server"></asp:Literal>
                    </div>
                </div>
                <%-----------------------------------------------------vip-card end-----------------------------------------------------%>
                <div class="am-u-sm-7" style="padding: 0">
                    <%--    <a class="about-member-level" href="member_level_list.aspx">
                        <i class="far fa-hand-point-right"></i>詳細說明
                    </a>--%>
                    <div class="member-card-level">
                        <div class="card-level-icon">
                            <asp:Literal ID="lit_icon" runat="server"></asp:Literal>

                        </div>
                        <span class="card-level-title am-fr">
                            <asp:Literal ID="lit_card_title2" runat="server"></asp:Literal>
                        </span>
                    </div>
                    <div>
                        <ul class="vip-card-benefits">
                            <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                            <%-- <li>
                                <div class="pink-circle"></div>
                                <span>Ha幣x3倍送</span> </li>
                            <li>
                                <div class="pink-circle"></div>
                                <span>RM100生日禮</span> </li>
                            <li>
                                <div class="pink-circle"></div>
                                <span>專人1v1客服</span> </li>--%>
                        </ul>
                    </div>

                </div>
            </div>
        </section>
    </div>
    <script>
        function SetPinkBar(val) {
            $(".pink-bar").css('width', val + '%');
        }
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

