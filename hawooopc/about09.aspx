<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about09.aspx.cs" Inherits="user_about09" %>

<%@ Register Src="~/user/control/about_class.ascx" TagPrefix="uc1" TagName="about_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g">
            <!-- Slider Start-->
            <div class="am-margin-top" style="margin-top: 20px;">
                <img src="../images/aboutpc/images/about-us-banner.png" />
            </div>
            <!-- Slider End-->
        </div>
        <div class="am-g" style="background-color: #ffffff">

            <div class="am-u-md-3" style="margin-top: 20px;">
                <uc1:about_class runat="server" ID="about_class" />
            </div>
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px;">
                <!--問題1 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 35px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            代購的商品，多久會收到貨?
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-1.png" />
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>客服會親自致電給您，確認商品、聯絡電話、寄送地址等。您將會在7-14個工作天內收到商品。 如果發貨廠商速度越快，客戶越早收到貨喔！</p>
                    </div>
                </div>
                <!--問題1 End-->
                <!--問題2 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 105px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            可以退貨嗎?
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-2.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #5dbca3 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>所有代購物品我們將有專人驗貨，以確保瑕疵品等問題。但若您的商品的問題是歸咎於您購買的網站/店面時，或您因個人因素想辦理退換貨時，在未超過該網站/商店退換貨規定的時間內，我們可以協助您將商品寄回台灣，並辦理退換貨事宜，不另收服務費。但先前訂單已產生的服務費與國際運費無法退回，並且您需自行負擔寄回去的國際運費及當地運費。</p>
                        <br />
                        <p>
                            若已超過賣方的退換貨期限，無論任何理由，皆無法退換貨。
                                請您了解，您使用的是國際代購代運，有可能當您收到商品時或者商品退回到原購當地國時，已經超過賣方的退換貨期限，無法完成退換貨。請您要委託我們代購代運前，先了解相關風險及責任，皆是會員您須自行承擔的。
                        </p>
                    </div>
                </div>
                <!--問題2 End-->
                <!--問題3 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 100px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            國際運費的重量怎麼計算的呢?
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-3.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>依國際快遞物流準則，有時候體積較大的商品實際重量可能很輕，但還是佔用貨艙許多空間。所以國際物流業會收取運費的方式以「體積重量」和「實際重量」，兩個較重的一方為計算標準。</p>
                        <img src="../images/aboutpc/images/transport-img-1.png" />
                    </div>
                </div>
                <!--問題3 End-->
            </div>
        </div>
    </div>


</asp:Content>

