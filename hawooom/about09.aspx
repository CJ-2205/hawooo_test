<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about09.aspx.cs" Inherits="mobile_about09" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
       <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div  style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    代購服務 > 代購物流說明
                </p>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
            <%--<div class="am-g">
                <div class="am-u-sm-12" style="width: 100%; margin: 0; padding: 0;">
                    <img src="about/images/member_banner.png" style="width: 100%" />
                </div>
            </div>--%>
            <!--問題開始-->
            <!--問題開始-->
            <div class="am-u-sm-12 about-m-aboutBox">
                <!--問題1 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            代購的商品，多久會收到貨?
                       
                        </p>
                        <img src="about/images/shopping_title_1.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <p>客服會親自致電給您，確認商品、聯絡電話、寄送地址等。您將會在7-14個工作天內收到商品。 如果發貨廠商速度越快，客戶越早收到貨喔！</p>
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
                            可以退貨嗎?
                       
                        </p>
                        <img src="about/images/shopping_title_2_2.png" width="100%">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-g">
                        <p>
                            所有代購物品我們將有專人驗貨，以確保瑕疵品等問題。但若您的商品的問題是歸咎於您購買的網站/店面時，或您因個人因素想辦理退換貨時，在未超過該網站/商店退換貨規定的時間內，我們可以協助您將商品寄回台灣，並辦理退換貨事宜，不另收服務費。但先前訂單已產生的服務費與國際運費無法退回，並且您需自行負擔寄回去的國際運費及當地運費。
                        </p>
                        <p>若已超過賣方的退換貨期限，無論任何理由，皆無法退換貨。 請您了解，您使用的是國際代購代運，有可能當您收到商品時或者商品退回到原購當地國時，已經超過賣方的退換貨期限，無法完成退換貨。請您要委託我們代購代運前，先了解相關風險及責任，皆是會員您須自行承擔的。</p>
                    </div>
                </div>
                <!--問題2 結束-->
                <!--問題3 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/shopping_title_3_1.png" width="100%">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            國際運費的重量怎麼計算的呢?
                       
                        </p>
                        <img src="about/images/shopping_title_3_2.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <p>依國際快遞物流準則，有時候體積較大的商品實際重量可能很輕，但還是佔用貨艙許多空間。所以國際物流業會收取運費的方式以「體積重量」和「實際重量」，兩個較重的一方為計算標準。</p>
                        <div class="am-u-sm-12 about-m-shipment">
                            <p>
                                長(cm)x寬(cm)x高(cm)/5000 = 體積重量(kg)
                           
                            </p>
                        </div>
                        <img src="about/images/shopping-img-1_2.png" />
                    </div>

                </div>
                <!--問題3 結束-->
            </div>
        </div>
    </div>
</asp:Content>

