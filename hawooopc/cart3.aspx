<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="cart3.aspx.cs" Inherits="user_cart3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- <script src="//d17m68fovwmgxj.cloudfront.net/js/appier-track-v1.7.js"></script>
    <script>
        function sendAppierOrder(pList, oID, oPrice) {
            debugger;
            var appierRtIDList = pList;
            var appierRtorderId = oID;
            var appierRtPrice = oPrice;
            var appierDCCurrency = "MYR";
            //========= PLEASE DO NOT CHANGE BELOW =========
            if (typeof (window.APPIER_RETARGET) == 'undefined') {
                (function (w, d, s, m) {
                    var f = d.getElementsByTagName('script')[0],
                        j = d.createElement('script'),
                        ns = 'APPIER_RETARGET';
                    w._appierSendQueue = w._appierSendQueue || [];
                    w['appierRetargetJson'] = { id: s, site: m };
                    j.async = true;
                    j.src = '//jscdn.appier.net/aa.js?id=' + m;
                    f.parentNode.insertBefore(j, f);
                    !w[ns] && (w[ns] = {});
                    (!w[ns].send) && (w[ns].send = function (j) {
                        w._appierSendQueue.push(j);
                    });
                })(window, document, "ZFfm", "hawooo.com");
            }
            Appier.appierTrack("x4CbI0DLH67C4H3", { uu: appierRtorderId, total_revenue: appierRtPrice, currency: appierDCCurrency }, "GffCpKQ1ffGKhI4");
            window.APPIER_RETARGET.send({ "t": "type_purchase", "content": appierRtIDList, "totalvalue": appierRtPrice });
        };
    </script>--%>
    <link href="assets/css/sopping_cart1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="am-container sp-body">
        <section class="am-u-sm-12 m-0 p-0 am-cf cartstep">
            <div class="am-u-sm-4 ">
                <img src="img/cart-img/step1.png" />
            </div>
            <div class="am-u-sm-4">
                <img src="img/cart-img/step3.png" />
            </div>
            <div class="am-u-sm-4 select">
                <img src="img/cart-img/step4.png" />
            </div>
        </section>
        <asp:Literal ID="lit_ck_txt" runat="server"></asp:Literal>
        <section class="am-u-sm-12 sp-compelete-wrapper">
            <div class="sp-compelete-title">Your order is confirm thank you</div>
            <div class="am-g">
                <div class="am-u-sm-12 am-text-center" style="min-height: 500px; padding-top: 70px">
                    <%--  <input id="Button1" type="button" value="列印帳單" class="am-btn am-btn-primary" style="width: 200px"
                        onclick="PrintDiv('pdiv');" />
                    <br />--%>
                    <div id="pdiv">
                        <div style="vertical-align: middle; font-size: 20px; text-align: center;">
                            <i class="am-icon-check-circle-o am-icon-lg"></i>Order No：
                            <asp:Literal ID="lit_orderNum" runat="server"></asp:Literal>
                            <hr />
                            <span class="txtRsc" data-id="cart030">感謝您的訂購</span><br />
                            <span class="txtRsc" data-id="cart031">可進入</span><a href="memberorder.aspx">
                                <span class="txtRsc" data-id="cart032">訂單管理</span></a>
                            <span class="txtRsc" data-id="cart033">查詢處理進度</span>
                            <hr />
                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                                <section class="am-u-sm-12 sp-compelete-wrapper">
                                    <div class="sp-compelete-content">
                                        <div class="sp-payment-info am-u-sm-8 am-u-sm-offset-2">
                                            <div class="sp-payment-info-title">
                                                <span class="txtRsc" data-id="cart034">ATM付款資訊</span>
                                            </div>
                                            <div class="sp-paymen-info-table">
                                                <div class="sp-paymen-info-pic">
                                                    <img src="https://www.hawooo.com/user/images/pay/cimb-bank-logo-sm.png">
                                                </div>
                                                <div class="sp-paymen-info-text">
                                                    <div class="sp-paymen-info-bankname">
                                                        BANK：<h2>CIMB BANK</h2>
                                                    </div>
                                                    <ul class="sp-paymen-info-description">
                                                        <li class="pd-list">
                                                            <h3>NAME：PEOPLES MAP SDN.BHD</h3>
                                                            <h3>ACCOUNT：80-0327458-9</h3>
                                                        </li>
                                                        <li class="pd-name">
                                                            <p>
                                                                <span class="txtRsc" data-id="cart035">匯款完成請務必保留匯款單據，並將匯款單上傳至</span>
                                                                <a href="http://m.me/hawooohawooo">FB Message</a>
                                                            </p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server" Visible="false">
                                <section class="am-u-sm-12 sp-compelete-wrapper">
                                    <div class="sp-compelete-content">
                                        <div class="sp-payment-info am-u-sm-8 am-u-sm-offset-2">
                                            <div class="sp-payment-info-title">
                                                <span class="txtRsc" data-id="cart034">ATM付款資訊</span>
                                            </div>
                                            <div class="sp-paymen-info-table">
                                                <div class="sp-paymen-info-pic">
                                                    <img src="https://www.hawooo.com/user/images/pay/Public-Bank-logo-sm.png">
                                                </div>
                                                <div class="sp-paymen-info-text">
                                                    <div class="sp-paymen-info-bankname">
                                                        BANK：<h2>Public Bank</h2>
                                                    </div>
                                                    <ul class="sp-paymen-info-description">
                                                        <li class="pd-list">
                                                            <h3>NAME：PEOPLES MAP SDN.BHD</h3>
                                                            <h3>ACCOUNT：3201174410</h3>
                                                        </li>
                                                        <li class="pd-name">
                                                            <p>
                                                                <span class="txtRsc" data-id="cart035">匯款完成請務必保留匯款單據，並將匯款單上傳至</span>
                                                                <a href="http://m.me/hawooohawooo">FB Message</a>
                                                            </p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" Visible="false">
                                <section class="am-u-sm-12 sp-compelete-wrapper">
                                    <div class="sp-compelete-content">
                                        <div class="sp-payment-info am-u-sm-8 am-u-sm-offset-2">
                                            <div class="sp-payment-info-title">
                                                <span class="txtRsc" data-id="cart036">線上付款資訊 </span>
                                            </div>
                                            <div class="sp-paymen-info-table" style="padding: 10px">
                                                <asp:Literal ID="lit_crad_info" runat="server"></asp:Literal>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server" Visible="false">
                                <div class="am-panel boxshadow" style="width: 400px; margin: 0 auto; padding: 20px">
                                    <div class="am-panel-bd" style="text-align: left;">
                                        <span class="txtRsc" data-id="cart037">我們會以最快的速度將貨品寄送給您，請於收件時進行付款即可.   
                                        </span>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <asp:HiddenField ID="hf_sum" runat="server" ClientIDMode="Static" Value="0" />
    <%--  <div style="display: inline;">
        <img height="0" width="1" style="border-style: none;" alt="" src="//www.googleadservices.com/pagead/conversion/968980791/?value=200.00&amp;currency_code=MYR&amp;label=W3dfCKH90xEQt_KFzgM&amp;guid=ON&amp;script=0" />
    </div>--%>
    <asp:Literal ID="lit_hawooo_txt" runat="server"></asp:Literal>
    <asp:Literal ID="lit_google_txt" runat="server"></asp:Literal>
    <asp:Literal ID="lit_involveasia_txt" runat="server"></asp:Literal>
    <script>
        ga('ec:setAction', 'checkout', { 'step': 5 });
    </script>
</asp:Content>
