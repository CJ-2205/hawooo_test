<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa22.aspx.cs" Inherits="user_qa22" %>

<%@ Register Src="~/user/control/qa_class.ascx" TagPrefix="uc1" TagName="qa_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 限時團購內頁 -->
    <link rel="stylesheet" href="assets/css/qa.css">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--  product breadcrumb（商品頁麵包屑） star-->
    <uc1:qa_class runat="server" ID="qa_class" />
    <!--  products breadcrumb（商品頁麵包屑） end-->

    <section class="am-container qa-wrapper">
        <!-- qa左邊導覽列 qa-nav start -->
        <div class="qa-nav">
            <h4 class="qa-height q-navtitle">分類</h4>

            <div class="am-panel-group qa-nav-panel" id="accordion">
                <div class="am-panel">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-1'}">客戶服務
                        <i class="am-fr am-icon-angle-down"></i>
                        </h4>
                    </div>
                    <div id="qa-tab-1" class="am-panel-collapse am-collapse">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa11.aspx">如何加入會員？</a></li>
                                <li><a href="qa12.aspx">如何訂購商品？</a></li>
                                <li><a href="qa13.aspx">如何線上付款？</a></li>
                                <li><a href="qa14.aspx">物流派送規則</a></li>
                                <li><a href="qa15.aspx">折扣券說明</a></li>
                                <li><a href="qa16.aspx">Ha幣說明</a></li>
                                <li><a href="qa17.aspx">與台灣原價說明</a></li>
                                <li><a href="qa18.aspx">訂單狀態說明</a></li>
                                <li><a href="qa19.aspx">其他常見問題Q&A</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="am-panel">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-2'}">團購服務
                        <i class="am-fr am-icon-angle-down"></i>
                        </h4>
                    </div>
                    <div id="qa-tab-2" class="am-panel-collapse am-collapse am-in">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa21.aspx">團購流程說明</a></li>
                                <li class="active"><a href="qa22.aspx">團購線上付款</a></li>
                                <li><a href="qa23.aspx">團購費用規則</a></li>
                                <li><a href="qa24.aspx">團購物流說明</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="am-panel">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-3'}">條款說明
                          <i class="am-fr am-icon-angle-down"></i>
                        </h4>
                    </div>
                    <div id="qa-tab-3" class="am-panel-collapse am-collapse">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa31.aspx">服務條款</a></li>
                                <li><a href="qa32.aspx">貨運條款</a></li>
                                <li><a href="qa33.aspx">退貨條款</a></li>
                                <li><a href="qa34.aspx">隱私權</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- qa左邊導覽列 qa-nav end -->
        <!-- 右方內容 qa-content start -->
        <div class="qa-content">
            <h4 class="qa-height qa-maintitle">如何付款？</h4>
            <div class="qa-main">
            <h5 class="qa-step">Pay Online:</h5>

                <h5 class="qa-step">STEP 1<p class="qa-step-title">選擇付款方式，「Credit Card」或「Online Banking」。</p>
                    <img src="images/qa/qa13p1.png">
                </h5>
                <br />
                <br />
                <h5 class="qa-step">STEP 2<p class="qa-step-title">
                    進入Molpay結帳頁面。
                </p>
                    <p class="qa-text">
                        (1).確認付款金額。
                    </p>
                    <p class="qa-text">
                        (2).填寫個人資料。
                    </p>
                    <img src="images/qa/qa13p2.png">
                    <br />
                    <br />
                    <p class="qa-text">(3).勾選同意 Terms of Service & Privacy Policy，點選Pay Online。</p>
                    <img src="images/qa/qa13p3.png">
                    <br />
                    <br />
                    <p class="qa-text">(4).付款完成</p>
                </h5>
                  <br />
                        
                <h5 class="qa-step">ATM:</h5>

                <h5 class="qa-step">STEP 1<p class="qa-step-title">選擇線下付款</p>
                    <br />
                    <img src="images/qa/qa13p8.png">
                </h5>
                  <br />
                        <br />
                <h5 class="qa-step">STEP 2<p class="qa-step-title">
                    您可選擇7-Eleven、Cimb Bank、Public Bank付款。
                </p>
                </h5>

                <p class="qa-text">
                    Public Bank<br>
                    Account Name: PEOPLES MAP SDN BHD.<br>
                    Account No: 3201174410<br>
                    <br>
                    CIMB BANK<br>
                    Account Name: PEOPLES MAP SDN BHD.<br>
                    Account No: 80-0327458-9                   
                </p>
                <p class="qa-text">
                    Molpay 7-Eleven付款流程請參考以下鏈接：      
                        <a href="https://www.molpay.com/v3/7eleven" target="_blank">www.molpay.com/v3/7eleven</a>
                </p>
                <br />
                <br />

                <h5 class="qa-step">STEP 3<p class="qa-step-title">
                    匯款後，將匯款單據拍給客服即算完成。客服人員確認無誤後便會安排出貨。
                </p>
                </h5>
                <p class="qa-text">
                    <a href="https://www.messenger.com/t/hawooohawooo" style="color: blue;" target="_blank">點我聯繫客服</a>
                </p>


                <hr>
                <h4 class="qa-subtitle">如果刷卡失敗，可以再次付款嗎？</h4>
        <h5 class="qa-step">STEP 1<p class="qa-step-title">訂單完成。</p>
                    <br />
                    <img src="images/qa/qa13p4.png">
                </h5>
                <br />
                <br />
                <h5 class="qa-step">STEP 2<p class="qa-step-title">若刷卡失敗，您可以選擇『訂單管理』，並點選您未刷卡完成的訂單編號。</p>
                    <img src="images/qa/qa13p5.png">
                </h5>
                <br />

                <h5 class="qa-step">STEP 3<p class="qa-step-title">您可以選擇『實體ATM轉帳』或『線上付款』。</p>
                </h5>
                <br />
                <h5 class="qa-step">STEP 4<p class="qa-text">(1).若您選擇『線上付款』，即可擁有第二次刷卡機會。輸入相關資訊後，點選Pay Online完成付款。</p>
                    <img src="images/qa/qa13p6.png"><br />
                    <br />
                    <p class="qa-text">(2).若第二次刷卡仍失敗，您可透過實體ATM付款。付款完成後，請與客服人員聯繫。</p>
                    <img src="images/qa/qa13p7.png">
                </h5>
                <p class="qa-text">
                    Public Bank<br />
                    Account Name: PEOPLES MAP SDN BHD.<br />
                    Account No: 3201174410<br />
                    <br />
                    CIMB BANK<br />
                    Account Name: PEOPLES MAP SDN BHD.<br />
                    Account No: 80-0327458-9<br />
                </p>
                <p class="qa-text">
                    若您還是希望使用線上Molpay線上付款，建議您可選擇另一張信用卡，進行付款。<br />
                </p>
                <p class="qa-text" style="color: red;">
                    (請注意：若您取消訂單，您所使用的折扣券、Ha幣、或購物金恕不退回。)
                </p>

            </div>
            <div class="qa-contact">
                <h4 class="qa-contact-title">還有其他問題嗎？</h4>
                <p>
                    電話:
                    <br>
                    +603-23866096
                </p>
                <p>
                    E-mail:<br>
                    <a href="mailto:service@hawooo.com">service@hawooo.com</a>
                </p>
                <p class="qa-time">星期一 - 星期五(except public holiday)9.00AM - 6.00PM</p>
            </div>
        </div>
        <!-- 右方內容 qa-content end -->
    </section>


</asp:Content>

