<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="member_level_list.aspx.cs" Inherits="user_member_level_list" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/member/member_rules.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/member.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-container">
        <uc1:memberleftclass runat="server" ID="memberleftclass" />
        <section class="member-rules am-fl">
            <h1 class="member-rules-title">
                <a href="member_card.aspx">< 會員分級制度
                </a>
            </h1>
            <div class="am-g am-margin-bottom progress-contain">
                <div class="am-u-sm-3">
                    <div class="vip-card">
                        <asp:Literal ID="lit_card_img" runat="server"></asp:Literal>
                    </div>
                </div>
                <div class="am-u-sm-9">
                    <%--活動前--%>
                    <asp:Panel runat="server" ID="beforeTrial" Visible="false">
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
                    <asp:Panel runat="server" ID="trialing" Visible="false">
                        <div class="card-notice">
                            <p class="am-padding-xs am-margin-bottom-sm">
                                <span class="am-margin-right-xs text-black"><i class="fas fa-gift"></i>
                                </span>
                                本⽉您是<b>Black Card </b>會員，快來購物體驗。
                            </p>
                            <h6 class="am-margin-vertical-sm">黑卡體驗剩餘：<span class="text-primary"><asp:Literal runat="server" ID="litDays"></asp:Literal>
                                天</span> </h6>
                        </div>
                    </asp:Panel>
                    <%--活動中--%>
                    <asp:Panel runat="server" ID="Point" Visible="true">
                        <div class="member-progress-contain am-u-sm-8">
                            <div class="member-progress">
                                <img src="../mobile/images/member/progress_bar-01.svg" />
                                <div class="gray-bar " style="width: 100%; height: 60px">
                                </div>
                                <div class="pink-bar" style="height: 60px;">
                                </div>
                            </div>

                            <ul class="progres-percent-p" style="margin-top: 0px;">
                                <li style="text-align: left"><span>W Card</span></li>
                                <li style=""><span>S Card</span></li>
                                <li style=""><span>G Card</span></li>
                                <li style="text-align: right"><span>B Card</span></li>
                            </ul>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <asp:Panel runat="server" ID="Point2" Visible="true">
                <div class="member-Info am-u-sm-12">
                    <h5 class="member-Info-text">累積消費
        <span class="grand-total-p">
            <asp:Literal ID="lit_price_range" runat="server"></asp:Literal>
        </span>，升級成為
        <span class="upgrade-leve-p">
            <asp:Literal ID="lit_card_type" runat="server"></asp:Literal>
        </span>會員。
                    </h5>
                    <%--  <span class="grand-total-now am-fr">目前累計消費<span class="grand-total-money">350</span>RM</span>--%>
                </div>
            </asp:Panel>
            <%--/*------------------------------------------表格star---------------------------------*/--%>
            <section class="am-g">
                <div class="am-u-sm-12 level-table ">
                    <table class="am-table  am-table-bordered am-text-center">
                        <tbody class=" am-text-nowrap ">
                            <tr class="table-title">
                                <td></td>
                                <td>好友<br />
                                    推薦
                                </td>
                                <td>生日<br />
                                    好禮
                                </td>
                                <td>Ha幣<br />
                                    回饋
                                </td>
                                <td>累計<br />
                                    消費
                                </td>
                                <td>專屬<br />
                                    客服
                                </td>
                            </tr>
                            <tr>
                                <td>W卡</td>
                                <td>HA幣
                    <br />
                                    1600
                                </td>
                                <td>x</td>
                                <td>1倍送</td>
                                <td>x</td>
                                <td>團隊</td>
                            </tr>

                            <tr style="background-color: #f9f7f8;">
                                <td>S卡</td>
                                <td>HA幣
                    <br />
                                    1600
                                </td>
                                <td>RM50</td>
                                <td>2倍送</td>
                                <td>RM 1K</td>
                                <td>團隊</td>
                            </tr>

                            <tr>
                                <td>G卡</td>
                                <td>HA幣
                    <br />
                                    1600
                                </td>
                                <td>RM100</td>
                                <td>3倍送</td>
                                <td>RM 5K</td>
                                <td>1v1</td>
                            </tr>

                            <tr style="background-color: #f9f7f8;">
                                <td>B卡</td>
                                <td>HA幣
                    <br />
                                    1600
                                </td>
                                <td>RM200</td>
                                <td>5倍送</td>
                                <td>RM 15K</td>
                                <td>1v1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
            <%--/*------------------------------------------表格end---------------------------------*/--%>
            <%--/*------------------------------------------卡片好處 star---------------------------------*/--%>
            <section class="am-g">
                <div class="am-u-sm-12">
                <div class="am-margin-bottom am-text-justify vip-info-p">
                    <span class="question-mark card-question-title txtRsc" data-id="mkd017">好友推薦
                    </span>
                    <img src="images/member/q.svg"  width="16" />
                    <p class="txtRsc" style="text-align: justify" data-id="mkd027">
                        推薦好友需使用邀請碼並且通過電話號碼驗證完成註冊流程，即可享有Ha幣<span class="pinktxt">100</span>，一天限推薦3位。同一好友完成第一次購買後，即可享有Ha幣<span class="pinktxt">1,500</span>回饋，每位好友最高可替妳賺進Ha幣<span class="pinktxt">1,600</span>，規則不限好友數量，趕緊推薦大家搶好友賺Ha幣。
                    </p>
                </div>

                <div class="am-margin-bottom am-text-justify vip-info-p">
                    <span class="question-mark card-question-title txtRsc" data-id="mkd018">生日好禮
                            <img src="images/member/q.svg" width="16" />
                    </span>
                    <p class="txtRsc" data-id="mkd029">
                        生日當月1號，系統會自動存入購物金（等同現金，無折抵門檻限制），好物祝你生日快樂。記得到
                            <a href='memberinfo.aspx'>「我的資訊 」填寫生日</a>，生日時就可領取啦。
                    </p>
                </div>

                <div class="am-margin-bottom am-text-justify vip-info-p">
                    <span class="question-mark card-question-title txtRsc" data-id="mkd019">Ha幣回饋
                            <img src="images/member/q.svg" width="16" />
                    </span>
                    <p class="txtRsc" data-id="mkd030">
                        每次消費RM1即可獲得1Ha幣。S卡以上會員，Ha幣回饋2~
                5倍送。Ha幣可用於折抵下筆訂單金額或運費，Ha幣無法變
                現或是轉讓至其他帳戶。可至『會員中心』>
                <a href="membercoin.aspx">『我的Ha幣』</a>，查看帳戶Ha幣金額。
                    </p>
                </div>

                <div class="am-margin-bottom am-text-justify vip-info-p">

                    <span class="question-mark card-question-title txtRsc" data-id="mkd021">專屬客服
                            <img src="images/member/q.svg" width="16" />
                    </span>

                    <p class="txtRsc" data-id="mkd031">
                        任何問題，好物客服團隊將在工作日9am-6pm為您服務，G
                卡以上會員，會有自己專屬的客服人員，享受1v1尊榮服務。
                    </p>
                </div>

                <div class="am-margin-bottom am-text-justify vip-info-p">
                    <span class="question-mark card-question-title txtRsc" data-id="mkd034">會員保留
                            <img src="images/member/q.svg" width="16" />
                    </span>
                    <p class="txtRsc" data-id="mkd035">
                        會員等級在每次消費後會保留12個月，若在保留期間未再次消費，過去累積消費會歸0開始重新計算，並設定回原Welcome卡。
                    </p>
                </div>

                <div class="am-margin-bottom am-text-justify vip-info-p">
                    <span class="question-mark card-question-title txtRsc" data-id="mkd038">黑卡體驗
                            <img src="images/member/q.svg" width="16" />
                    </span>
                    <p class="txtRsc" data-id="mkd039">
                        黑卡體驗者可享有ha coin回饋和專屬客服福利。
                    </p>
                </div>
                <asp:UpdatePanel ID="up_lookback" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div>
                            <asp:Button ID="btnLookBack" runat="server" CssClass="to-account-btn" Text="A Click Upgrade Membership" OnClick="btnLookBack_OnClick" />
                            <h6 style="font-size: 12px" class="am-margin-top-xs txtRsc" data-id="mkd028">*點擊可累積2019年開始的訂單金額</h6>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                    </div>
            </section>
            <hr />
            <%--/*------------------------------------------卡片好處end---------------------------------*/--%>
            <%--/*------------------------------------------QR code star---------------------------------*/--%>

            <section class="am-g">
                <div class="am-u-sm-12">
                    <h5 class="qr-code-title txtRsc" data-id="mkd003">您的好友推薦碼</h5>
                    <div class="qr-code-news ">
                        <p class="am-text-justify txtRsc" data-id="mkd027">
                            掃描專屬QRcode，推薦好友註冊及下單完成，即可享有
                <span class="rm-ten pink-title-text">1500</span>Ha幣。
                        </p>

                    </div>
                </div>

                <div class="am-g">
                    <div class="am-u-sm-3 friend-qrcode">
                        <asp:Literal ID="lit_qrcode" runat="server"></asp:Literal>
                    </div>

                    <div class="am-u-sm-9 am-text-star">
                        <p style="padding-top: 50px;">
                            <button type="button" class="am-center code-btn am-btn am-u-sm-8 am-u-sm-centered">
                                <asp:Literal ID="lit_code" runat="server"></asp:Literal>
                            </button>
                        </p>
                        <p class="copy-p txtRsc" data-id="mkd036">
                            朋友不在身邊？<a id="qr-code-copy">點我複製推薦碼</a>
                        </p>
                    </div>
                </div>
            </section>
            <%--/*------------------------------------------QR code end---------------------------------*/--%>
        </section>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.8.0/js/all.js"></script>
        <script>
            function SetPinkBar(val) {
                $(".pink-bar").css('width', val + '%');
            }

            function SetUrl(url) {
                $("#qr-code-copy").attr('data-clipboard-text', url);
            }

            var clipboard = new ClipboardJS('#qr-code-copy');
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });

            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        </script>
    </div>
</asp:Content>
