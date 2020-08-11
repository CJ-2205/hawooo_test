<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="member_level_list.aspx.cs" Inherits="mobile_static_member_level_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/member_card.min.css" rel="stylesheet" />
    <script defer src="https://use.fontawesome.com/releases/v5.8.0/js/all.js"></script>
    <style>
        .pinktxt {
            font-size: 18px;
            font-weight: bold;
            color: #ee5984;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="member-container">
        <div class="vip-rule-box am-margin-sm">
            <div class="go-back-btn am-text-center am-v am-active am-cf">
                <a href="member_card.aspx"><span class="am-fl"><i class="fas fa-angle-left"></i></span>
                    <span class="txtRsc" data-id="mkd016">會員分級制度
                    </span>
                </a>
                <hr class="am-margin-sm" />
            </div>


            <%--活動前--%>
            <asp:Panel ID="before" runat="server" Visible="false">
                <div class="card-notice">
                    <p class="am-padding-xs am-margin-bottom-sm">
                        <span class="am-margin-right-xs text-primary"><i class="fas fa-bullhorn"></i>
                        </span>
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
                        本⽉您是 <b>Black Card </b>會員，快來購物體驗。
                    </p>
                </div>
                <h6 class="am-text-center am-margin-bottom card-countdown">黑卡體驗剩餘：<span class="text-primary">
                    <asp:Literal ID="litDays" runat="server"></asp:Literal>
                    天</span></h6>
            </asp:Panel>
            <%--活動中--%>




            <asp:Panel ID="cardInfo" runat="server">

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
                <div style="position: relative; display: block">
                    <div class="am-g member-progress" style="position: relative; display: flex">
                        <div class="progress-bar-wrap" style="width: 100%">
                            <img src="images/member/progress_bar-01.svg" />
                            <div class="gray-bar am-center am-padding-0" style="height: 100%; width: 100%;">
                            </div>
                            <div class="pink-bar" style="height: 100%;" id="pink">
                            </div>
                        </div>
                    </div>
                </div>

                <div>

                    <ul class="level-card-p am-avg-sm-4 am-g am-text-nowrap am-text-center">
                        <li style="text-align: left"><span>W Card</span></li>
                        <li style="padding-right: 5%"><span>S Card</span></li>
                        <li style="padding-left: 5%"><span>G Card</span></li>
                        <li style="text-align: right"><span>B Card</span></li>
                    </ul>
                </div>
            </asp:Panel>
            <%--  <ul class="level-card-p am-avg-sm-4 am-g am-text-nowrap am-text-center" style="position: relative">
                <li style="text-align: left"><span>W Card</span></li>
                <li style="text-align: left; padding-left: 5%"><span>S Card</span></li>
                <li style="text-align: left; padding-left: 10%"><span>G Card</span></li>
                <li style="text-align: right;"><span>B Card</span></li>
            </ul>--%>

            <%--/*------------------------------------------表格star---------------------------------*/--%>

            <section class="am-scrollable-horizontal am-margin-top-lg" runat="server" id="zh_tb">
                <table class="level-table am-table am-table-striped am-table-centered am-table-bordered">
                    <tbody class=" am-text-nowrap ">
                        <tr class="table-title">
                            <td></td>
                            <td>好友<br />
                                推薦
                            </td>
                            <td>生日<br />
                                好禮</td>
                            <td>Ha幣<br />
                                回饋</td>
                            <td>累計<br />
                                消費</td>
                            <td>專屬<br />
                                客服</td>
                        </tr>
                        <tr>
                            <td>W卡</td>
                            <td>HA幣<br />
                                1,600</td>
                            <td>x</td>
                            <td>1倍送</td>
                            <td>x</td>
                            <td>團隊</td>
                        </tr>

                        <tr>
                            <td>S卡</td>
                            <td>HA幣<br />
                                1,600</td>
                            <td>RM50</td>
                            <td>2倍送</td>
                            <td>RM 1K</td>
                            <td>團隊</td>
                        </tr>

                        <tr>
                            <td>G卡</td>
                            <td>HA幣<br />
                                1,600</td>
                            <td>RM100</td>
                            <td>3倍送</td>
                            <td>RM 5K</td>
                            <td>1v1</td>
                        </tr>

                        <tr>
                            <td>B卡</td>
                            <td>HA幣<br />
                                1,600</td>
                            <td>RM200</td>
                            <td>5倍送</td>
                            <td>RM 15K</td>
                            <td>1v1</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <section class="am-scrollable-horizontal am-margin-top-lg" runat="server" id="en_tb">
                <table class="level-table am-table am-table-striped am-table-centered am-table-bordered">
                    <tbody class=" am-text-nowrap ">
                        <tr class="table-title">
                            <td></td>
                            <td>Friend<br />
                                Referral
                            </td>
                            <td>Birthday<br />
                                Gift</td>
                            <td>Ha Coins<br />
                                Rewards</td>
                            <td>Total<br />
                                Spend</td>
                            <td>Customer<br />
                                Service</td>
                        </tr>
                        <tr>
                            <td>W Card</td>
                            <td>Ha Coin<br />
                                1,600</td>
                            <td>x</td>
                            <td>1 time</td>
                            <td>x</td>
                            <td>Whole
                                <br />
                                Team</td>
                        </tr>

                        <tr>
                            <td>S Card</td>
                            <td>HA Coin<br />
                                1,600</td>
                            <td>RM50</td>
                            <td>2 time</td>
                            <td>RM 1K</td>
                            <td>Whole
                                <br />
                                Team</td>
                        </tr>

                        <tr>
                            <td>G Card</td>
                            <td>HA Coin<br />
                                1,600</td>
                            <td>RM100</td>
                            <td>3 time</td>
                            <td>RM 5K</td>
                            <td>1v1</td>
                        </tr>

                        <tr>
                            <td>B Card</td>
                            <td>HA Coin<br />
                                1,600</td>
                            <td>RM200</td>
                            <td>5 time</td>
                            <td>RM 15K</td>
                            <td>1v1</td>
                        </tr>
                    </tbody>
                </table>
            </section>
            <%--/*------------------------------------------表格end---------------------------------*/--%>

            <%--/*------------------------------------------相關文字star---------------------------------*/--%>


            <section class="vip-info-wrapper am-article  am-center">
                <div class="vip-info-title">
                    <p class="am-fl question-mark">
                        <img class="am-icon-sm" src="images/member/q.svg" />
                    </p>
                    <span class="txtRsc" data-id="mkd017">好友推薦</span>
                </div>
                <div class="vip-info-p">
                    <p class="am-article-bd  am-padding-right-0 txtRsc" style="text-align: justify" data-id="mkd027">
                        推薦好友使用邀請碼註冊完成，即可享有Ha幣<span class="pinktxt">100</span>。同一好友完成第一次購買後，即可享有Ha幣<span class="pinktxt">1,500</span>回饋，每位好友最高可替妳賺進Ha幣<span class="pinktxt">1,600</span>，規則不限好友數量，趕緊推薦大家搶好友賺Ha幣。
                    </p>
                </div>
                <div class="vip-info-title">
                    <p class="am-fl question-mark">
                        <img class="am-icon-sm" src="images/member/q.svg" />
                    </p>
                    <span class="txtRsc" data-id="mkd018">生日好禮</span>
                </div>
                <div class="vip-info-p">
                    <p class="am-article-bd txtRsc" style="text-align: justify" data-id="mkd029">
                        生日當月1號，系統會自動存入購物金（等同現金，無折抵門檻限制），好物祝你生日快樂。記得到
                        <a href='memberinfo.aspx'>「我的資訊 」填寫生日</a>，生日時就可領取啦。
                    </p>
                </div>

                <div class="vip-info-title">
                    <p class="am-fl question-mark">
                        <img class="am-icon-sm" src="images/member/q.svg" />
                    </p>
                    <span class="txtRsc" data-id="mkd019">Ha幣回饋</span>
                </div>
                <div class="vip-info-p">
                    <p class="am-article-bd txtRsc" style="text-align: justify" data-id="mkd030">
                        每次消費RM1即可獲得1Ha幣。S卡以上會員，Ha幣回饋2~
                         5倍送。Ha幣可用於折抵下筆訂單金額或運費，Ha幣無法變
                        現或是轉讓至其他帳戶。可至『會員中心』>
                    <a href='membercoin.aspx'>『我的Ha幣』</a>，查看帳戶Ha幣金額。
                    </p>
                </div>
                <div class="vip-info-title">
                    <p class="am-fl question-mark">
                        <img class="am-icon-sm" src="images/member/q.svg" />
                    </p>
                    <span class="txtRsc" data-id="mkd021">專屬客服</span>
                </div>
                <div class="vip-info-p">
                    <p class="am-article-bd txtRsc" style="text-align: justify" data-id="mkd031">
                        任何問題，好物客服團隊將在工作日9am-6pm為您服務，G卡以上會員，會有自己專屬的客服人員，享受1v1尊榮服務。
                    </p>
                </div>
                <div class="vip-info-title">
                    <p class="am-fl question-mark">
                        <img class="am-icon-sm" src="images/member/q.svg" />
                    </p>
                    <span class="txtRsc" data-id="mkd034">會員保留</span>
                </div>
                <div class="vip-info-p">
                    <p class="am-article-bd txtRsc" style="text-align: justify" data-id="mkd035">
                        會員等級在每次消費後會保留12個月，若在保留期間未再次消費，過去累積消費會歸0開始重新計算，並設定回原Welcome卡。
                    </p>
                </div>
                <div class="vip-info-title">
                    <p class="am-fl question-mark">
                        <img class="am-icon-sm" src="images/member/q.svg" />
                    </p>
                    <span class="txtRsc" data-id="mkd038">黑卡體驗</span>
                </div>
                <div class="vip-info-p">
                    <p class="am-article-bd txtRsc" style="text-align: justify" data-id="mkd039">
                        黑卡體驗者可享有ha coin回饋和專屬客服福利。
                    </p>
                </div>
            </section>
            <asp:UpdatePanel ID="up_lookback" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div style="padding-top: 10px">
                        <asp:Button ID="btnLookBack" runat="server" CssClass="to-account-btn am-g" Text="A Click Upgrade Membership" OnClick="btnLookBack_OnClick" />
                        <span class="txtRsc" data-id="mkd028" style="font-size: 12px">*點擊可累積2019年開始的訂單金額</span>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <hr />
            <article class="am-article  member-rules-about">

                <h2 class="am-popup-title dark-gray-title am-text-center am-margin-sm txtRsc" data-id="mkd003">您的好友推薦碼
                </h2>

                <div class="qr-code-news ">
                    <span class="txtRsc" data-id="mkd027"></span>
                </div>
                <div class="friend-qrcode am-margin  am-u-sm-centered">
                    <asp:Literal ID="lit_qrcode" runat="server"></asp:Literal>
                </div>

                <button type="button" class="am-center code-btn am-btn am-u-sm-8 am-u-sm-centered">
                    <asp:Literal ID="lit_code" runat="server"></asp:Literal>
                </button>
                <div class="am-text-center">
                    <p class="description-text  am-text-nowrap qr-code-news txtRsc" data-id="mkd036">
                    </p>
                </div>
            </article>
            <button type="button" class=" close-btn am-g pink-title-text" onclick="javascript:location.href='member_card.aspx';"><  BACK</button>

        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function SetPinkBar(val) {
            $(".pink-bar").css('width', val + '%');
        }
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
</asp:Content>

