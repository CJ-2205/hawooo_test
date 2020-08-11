<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about10.aspx.cs" Inherits="mobile_about10" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background:#ffffff">
        <div style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    代購服務 > 常見問題Q&A
                </p>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
           <%-- <div class="am-g">
                <div class="am-u-sm-12" style="width: 100%; margin: 0; padding: 0;">
                    <img src="about/images/member_banner.png" style="width: 100%" />
                </div>
            </div>--%>
            <div class="am-u-md-12 about-m-aboutBox">
                <!--問題1 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            要怎麼付款?
                        </p>
                        <img src="about/images/shopping_title_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <p>
                            你有兩種方式：<br>
                            ① 線上付款(Molpay)：支持馬來西亞主要銀行與信用卡付款，Molpay會自動核對付款，您無須做付款通知。
                        </p>
                        <img src="about/images/shopping-img-3.png">
                        <p>
                            ② 線下付款：支持馬來西亞主要銀行與信用卡付款，Molpay會自動核對付款，您無須做付款通知。
                        </p>
                        <img src="about/images/shopping-img-4.png">
                        </p>
                    </div>
                </div>
                <!--問題1 結束-->
                <!--問題2 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_2_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            一次最多可以代購幾件商品?<br>
                            不同網站也可以一起買？
                        </p>
                        <img src="about/images/shopping_title_4_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-g">
                        <p>
                            我們每張訂單最多可訂單20項商品，不同顏色或尺寸的商品分開計算。不同的網站也都可以算在同一張訂單裡喔。
                        </p>
                    </div>
                </div>
                <!--問題2 結束-->
                <!--問題3 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_5_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            訂單送出後，可以再新增品項或取消嗎？
                        </p>
                        <img src="about/images/shopping_title_5_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <p>如果還沒有付款，我們可以為您取消訂單，您再重填一張代購單就可以了。</p>
                    </div>
                </div>
                <!--問題3 結束-->
                <!--問題4 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_2_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            可以退貨嗎?
                        </p>
                        <img src="about/images/shopping_title_2_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-g">
                        <p>所有代購物品我們將有專人驗貨，以確保瑕疵品等問題。但若您的商品的問題是歸咎於您購買的網站/店面時，或您因個人因素想辦理退換貨時，在未超過該網站/商店退換貨規定的時間內，我們可以協助您將商品寄回台灣，並辦理退換貨事宜，不另收服務費。但先前訂單已產生的服務費與國際運費無法退回，並且您需自行負擔寄回去的國際運費及當地運費</p>
                        <p>若已超過賣方的退換貨期限，無論任何理由，皆無法退換貨。 請您了解，您使用的是國際代購代運，有可能當您收到商品時或者商品退回到原購當地國時，已經超過賣方的退換貨期限，無法完成退換貨。請您要委託我們代購代運前，先了解相關風險及責任，皆是會員您須自行承擔的。</p>
                    </div>
                </div>
                <!--問題4 結束-->
                <!--問題5 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_5_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            為什麼國際運費計算的重量跟我的<br>
                            實際重量不同?
                        </p>
                        <img src="about/images/shopping_title_5_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <p>依國際快遞物流準則，有時候體積較大的商品實際重量可能很輕，但還是佔用貨艙許多空間。所以國際物流業會收取運費的方式以「體積重量」和「實際重量」，兩個較重的一方為計算標準。</p>
                        <div class="am-u-sm-12 about-m-shipment">
                            <p>
                                長(cm)x寬(cm)x高(cm)/5000 = 體積重量(kg)
                            </p>
                        </div>
                        <img src="about/images/shopping-img-1_2.png">
                    </div>
                </div>
                <!--問題5 結束-->
                <!--問題6 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_2_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            禁止代購代運的商品有哪些？
                        </p>
                        <img src="about/images/shopping_title_2_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-g">
                        <img src="about/images/shopping-img-5.png">
                    </div>
                </div>
                <!--問題6 結束-->
                <!--問題7 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_7_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            有推薦的台灣大型購物網站嗎？
                        </p>
                        <img src="about/images/shopping_title_7_2.png" width="100%">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <p>台灣網路購物發達，將近有100,000,000種商品可供選擇，只要你在台灣的網路商城找得到，Hawooo都幫你買! 台灣購物/拍賣熱門商城推薦：</p>
                        <img src="about/images/shopping-img-6.png" width="100%">
                    </div>
                </div>
                <!--問題7 結束-->
            </div>
        </div>
    </div>
</asp:Content>

