<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about06.aspx.cs" Inherits="mobile_about06" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/about.css" rel="stylesheet" />
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <uc1:aboutmenu runat="server" ID="aboutmenu" />
        <div style="background-color: #ffffff; padding-top: 10px">
            <!--問題開始-->
            <!--問題開始-->
            <div class="am-u-md-12 about-m-aboutBox">
                <!--問題1 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            全部商品都是台灣的嗎?
                        </p>
                        <img src="about/images/qa_title_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <p>保證都是100%台灣正品，空運來馬來西亞。妳可以用近台灣本地商店的價格，直接入手台灣各大品牌，就像在台灣直接購物一樣！</p>
                    </div>
                </div>
                <!--問題1 結束-->
                <!--問題2 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            請問馬來西亞買的到嗎?
                        </p>
                        <img src="about/images/return_title_2-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <p>可以呀，HaWooo.com就是馬來西亞的總代理。</p>
                    </div>
                </div>
                <!--問題2 結束-->
                <!--問題3 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_3-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            請問客服在大馬的哪裡？
                        </p>
                        <img src="about/images/return_title_3-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <p>
                            Peoples MAP sdn. Bhd. D-09-05, Menara Mitraland,Jalan PJU 5/1, Kota Damansara,47810 Petaling Jaya, Selangor, Malaysia.
                        </p>
                    </div>
                </div>
                <!--問題3 結束-->
                <!--問題4 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            下單完成後沒有出現匯款資訊?
                        </p>
                        <img src="about/images/return_title_2-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <p>出現訂單編號的下方就是囉！</p>
                    </div>
                </div>
                <!--問題4 結束-->
                <!--問題5 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_3-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            運費怎麼算呢?
                        </p>
                        <img src="about/images/return_title_3-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <p>購買商品數量1-3個運費都是RM29，之後每多一樣商品，運費加RM6。</p>
                    </div>
                </div>
                <!--問題5 結束-->
                <!--問題6 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            西馬跟東馬運費一樣嗎？
                        </p>
                        <img src="about/images/return_title_2-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <p>
                            東馬需要多加RM10,所以運費是RM39。
                        </p>
                    </div>
                </div>
                <!--問題6 結束-->
                <!--問題7 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_3-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            請問多久會收到貨？
                        </p>
                        <img src="about/images/return_title_3-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <p>客服會親自致電給您，確認商品、聯絡電話、寄送地址等。您將會在5-10個工作天內收到商品</p>
                    </div>
                </div>
                <!--問題7 結束-->
                <!--問題8 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            匯款後，要做什麼呢？
                        </p>
                        <img src="about/images/return_title_2-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <p>
                            匯款後，拍單據給客服人員看就行了！客服人員會跟客戶做電話確認，確認無誤就會安排出貨囉！
                        </p>
                    </div>
                </div>
                <!--問題8 結束-->
                <!--問題9 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/pay_title_1_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            除了Hawooo.com，<br>
                            還可以買其他網站的東西嗎?
                        </p>
                        <img src="about/images/pay_title_1_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <p>可以，代購費用另計。 (需要客戶提供商品的網址，之後客服人員會與您報價。詳情請見購物流程說明)</p>
                    </div>
                </div>
                <!--問題9 結束-->
                <!--問題10 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            要如何付款呢？
                        </p>
                        <img src="about/images/return_title_2-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <p>
                            您有兩種方式：<br>
                            ① 線上付款（Molpay），支持馬來西正主要銀行與信用卡付款，Molpay我自動核對付款，您無須做付款通知。<br>
                        </p>
                        <img src="about/images/molpay_img_1.png">
                        <p>② 線下付款：您可以透過ATM、銀行櫃台、網路銀行、支票付款等方式，匯款至Hawooo的戶頭。</p>
                        <img src="about/images/molpay_img_2.png">
                    </div>
                </div>
                <!--問題10 結束-->
            </div>
        </div>
    </div>




</asp:Content>

