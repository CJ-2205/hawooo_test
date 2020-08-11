<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="member_card.aspx.cs" Inherits="mobile_member_card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="assets/css/member_card.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .trial {
            font-size: larger;
            font-family: fantasy;
            text-align: center;
        }
    </style>
    <div class="member-container am-g-fixed ">
        <section class="vip-card-wrapper am-margin-sm ">
            <%--活動前--%>
            <asp:Panel ID="before" runat="server" Visible="false">
                <div class="card-notice">
                    <p class="am-padding-xs am-margin-bottom-sm">
                        <span class="am-margin-right-xs text-primary"><i class="fas fa-bullhorn"></i>
                        </span>
                        <%--您即將下個⽉1號，開始享有 <b>Black Card </b>會員等級優惠。--%>
                        <asp:Literal ID="litMsg" runat="server"></asp:Literal>
                    </p>
                </div>
            </asp:Panel>
            <%--活動前--%>
            <%--活動中--%>
            <asp:Panel ID="ing" runat="server" Visible="false">

                <div class="card-notice">
                    <p class="am-padding-xs am-margin-bottom-sm">
                        <span class="am-margin-right-xs text-black"><i class="fas fa-gift"></i>
                        </span>
                        本⽉您是 <b> Black Card </b>會員，快來購物體驗。
                    </p>
                </div>
            </asp:Panel>
            <%--活動中--%>

            <div>
                <div class="vip-card-title  am-cf">
                    <div class="vip-card-icon-box">
                        <span class="vip-card-icon am-fl">
                            <asp:Literal ID="lit_icon" runat="server"></asp:Literal>
                        </span>
                        <h3 class="card-level-title am-fr">
                            <asp:Literal ID="lit_card_title" runat="server"></asp:Literal>
                        </h3>
                    </div>
                    <div class="am-fr">
                        <span class="dark-gray-title "><i class="far fa-hand-point-right "></i></span>
                        <a class="about-level-btn txtRsc" href="member_level_list.aspx" data-id="mkd001">詳細內容</a>
                    </div>
                </div>
            </div>




            <div class="vip-card am-center">
                <asp:Literal ID="lit_img" runat="server"></asp:Literal>
                <%-- <img src="images/member/Hawooo_Cardg.png" />--%>
            </div>

            <ul class="vip-card-benefits am-padding-0  am-text-center">
                <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
            </ul>
            <hr />

            <asp:Panel ID="PanelPointInfo" runat="server">
                <div class="upgrade-vip-card-p">

                    <p class="am-text-wrap">
                        <span class="txtRsc" data-id="mkd002">累積消費
                        </span>
                        <span class="upgrade-rm-total pink-title-text ">
                            <asp:Literal ID="lit_price_range" runat="server"></asp:Literal></span>，
                    <span class="txtRsc" data-id="mkd002-1">升級成為</span>
                        <span class="card-color-p">
                            <asp:Literal ID="lit_card_type" runat="server"></asp:Literal></span>
                        <span class="txtRsc" data-id="mkd002-2">會員</span>。
                    </p>
                </div>
            </asp:Panel>


            <%------------------------------------------進度條start-----------------------------------------------%>
            <asp:Panel ID="Point" runat="server" Visible="true">
                <div style="position: relative; display: block">
                    <div class="am-g member-progress" style="position: relative; display: flex">
                        <div class="progress-bar-wrap" style="width: 100%">
                            <img src="images/member/progress_bar-01.svg" />
                            <div class="gray-bar am-center am-padding-0" style="height: 100%; width: 100%; border: 3px solid #fff;">
                            </div>
                            <div class="pink-bar" style="height: 100%;" id="pink">
                            </div>
                        </div>
                    </div>
                </div>

                <%--   <ul class="level-card-p am-avg-sm-4 am-g am-text-nowrap am-text-center">--%>
                <ul class="level-card-p am-avg-sm-4 am-g  am-text-center">
                    <li style="text-align: left"><span>W Card</span></li>
                    <li style="padding-right: 5%"><span>S Card</span></li>
                    <li style="padding-left: 5%"><span>G Card</span></li>
                    <li style="text-align: right"><span>B Card</span></li>
                </ul>
            </asp:Panel>

            <asp:Panel ID="days" runat="server" Visible="false">
                <h6 class="am-text-center am-margin-bottom card-countdown">黑卡體驗剩餘：<span class="text-primary">
                    <asp:Literal ID="litDays" runat="server"></asp:Literal>
                    天</span></h6>
            </asp:Panel>



            <div class="qr-code-news am-g  am-padding-top">
                <hr />
                <div class="am-u-sm-12 am-text-center">
                    <h2 class="am-margin-sm dark-gray-title txtRsc" data-id="mkd003">您的好友推薦碼 
                       <a href="member_level_list.aspx"><i class="fas fa-question-circle"></i></a></h2>
                    <button type="button" class="am-center code-btn am-btn am-u-sm-8 am-u-sm-centered" data-am-modal="{target: '#my-popup'}">
                        <asp:Literal ID="lit_code1" runat="server"></asp:Literal>
                    </button>
                    <div class="am-u-sm-12">
                        <p class="description-text  am-margin-bottom-0 txtRsc" data-id="mkd004">
                            推薦好友註冊及下單完成，即可享有<span class="rm-ten pink-title-text">
                         1500</span>Ha幣。
                        </p>
                    </div>
                </div>

                <div class="am-popup" tabindex="-1" id="my-popup">
                    <div class="am-popup-inner">

                        <div class="am-popup-hd" style="z-index: 999">
                            <span data-am-modal-close class="am-close" style="font-size: 30px; color: #040404;">&times;</span>
                        </div>

                        <div class="am-popup-bd am-text-justify am-margin description-text ">
                            <div class="am-u-sm-centered am-padding">
                                <img src="images/member/share.png" />
                            </div>
                            <h2 class="am-popup-title dark-gray-title am-text-center am-margin-sm txtRsc" data-id="mkd003">您的好友推薦碼
                            </h2>
                            <span class="txtRsc" data-id="mkd027"></span>
                            <div class="friend-qrcode am-margin  am-u-sm-centered">
                                <asp:Literal ID="lit_qrcode" runat="server"></asp:Literal>
                            </div>

                            <button type="button" class="am-center code-btn am-btn am-u-sm-8 am-u-sm-centered">
                                <asp:Literal ID="lit_code2" runat="server"></asp:Literal>
                            </button>
                            <div class="am-text-center">
                                <p class="description-text  am-text-nowrap qr-code-news txtRsc" data-id="mkd036">
                                </p>
                            </div>
                            <button type="button" class="close-btn am-g pink-title-text" onclick="closeMyModel();" style="width: 100%; margin: auto;"><  BACK</button>
                        </div>

                    </div>
                </div>
                <script>
                    function closeMyModel() {
                        $("#my-popup").modal('close');
                    }
                </script>
            </div>
        </section>

        <section class="member-icon-box am-margin-sm" style="margin-bottom: 10px">
            <ul class="member-icon-block am-avg-sm-4 am-text-center am-text-nowrap">
                <li>
                    <a href="memberorder.aspx?t=1" class="member-icon">
                        <div class="order-status">
                            <img src="images/member/wallet-01.svg">
                            <asp:Literal ID="lit_nopay_tag" runat="server"></asp:Literal>
                        </div>
                        <span class="order-status-title txtRsc" data-id="mkd005">待付款
                        </span>
                    </a>
                </li>
                <li>
                    <a href="memberorder.aspx" class="member-icon">
                        <div class="order-status">
                            <img src="images/member/check_01.svg">
                        </div>
                        <span class="order-status-title txtRsc" data-id="mkd006">待出貨
                        </span>
                    </a>
                </li>
                <li>
                    <a href="memberorder.aspx?t=2" class="member-icon">
                        <div class="order-status">
                            <img src="images/member/air-01.svg">
                        </div>
                        <span class="order-status-title txtRsc" data-id="mkd007">出貨中
                        </span>
                    </a>
                </li>

                <li>
                    <a href="memberorder.aspx" class="member-icon">
                        <div class="order-status">
                            <img src="images/member/list-01.svg">
                        </div>
                        <span class="order-status-title txtRsc" data-id="mkd008">訂單中心
                        </span>
                    </a>
                </li>
            </ul>
        </section>
        <%-----------------------------------------------會員 出貨程序 end------------------------------------------------%>

        <%-----------------------------------------------會員 下方2排icon start------------------------------------------%>
        <section class="member-icon-box am-margin-sm">
            <ul class="member-icon-block  am-avg-sm-4 am-text-center ">
                <li class="bottom-border"><a href="track.aspx">
                    <img src="images/member/m_love_icon.png" />
                    <span class="txtRsc" data-id="mkd009">我的收藏</span>
                </a></li>
                <li class="bottom-border"><a href="membergold.aspx">
                    <img src="images/member/money-01.svg" />
                    <span class="txtRsc" data-id="mkd010">購物金</span></a></li>
                <li class="bottom-border"><a href="membercoupon.aspx">
                    <img src="images/member/coupon-01.svg" />
                    <span class="txtRsc" data-id="mkd011">折扣券</span></a></li>
                <li class="bottom-border">
                    <a href="membercoin.aspx">
                        <img src="images/member/ha-01.svg" />
                        <span class="txtRsc" data-id="mkd012">Ha幣</span>
                    </a>
                </li>
                <li><a href="memberinfo.aspx">
                    <img src="images/member/b.svg" />
                    <span class="txtRsc" data-id="mkd013">我的資訊</span></a>
                </li>
                <li><a href="qa.aspx">
                    <img src="images/member/qa.svg" />
                    <span class="txtRsc" data-id="mkd014">常見問題</span>
                </a></li>
                <li>
                    <% string mcard = "W";
                        if (Session["MCard"] != null)
                        {
                            mcard = Session["MCard"].ToString();
                        }
                    %>
                    <%  if (mcard == "G" || mcard == "B")
                        {%>
                    <a href="https://m.me/hawooohannah">
                        <%}
                            else
                            {%>
                        <a href="https://m.me/hawooohawooo">
                            <%}%>
                            <img src="images/member/service.svg" />
                            <span class="txtRsc" data-id="mkd015">客服</span></a>
                </li>
                <li><a href="logout.aspx">
                    <img src="images/member/b.svg" />
                    <span class="txtRsc" data-id="hal004">登出</span>
                </a>
                </li>
            </ul>
        </section>
        <script>
            function SetPinkBar(val) {
                $(".pink-bar").css('width', val + '%');
            };
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.8.0/js/all.js"></script>
        <script>
            function SetUrl(url) {
                $("#qr-code-copy").attr('data-clipboard-text', url);
            }
            var clipboard = new ClipboardJS('#qr-code-copy');
            clipboard.on('success', function (e) {
                console.info('Action:', e.action);
                console.info('Text:', e.text);
                console.info('Trigger:', e.trigger);
                e.clearSelection();
                ShowHangMsg('Copy completed');
            });

            clipboard.on('error', function (e) {
                console.error('Action:', e.action);
                console.error('Trigger:', e.trigger);
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
    </div>
</asp:Content>

