<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about10.aspx.cs" Inherits="user_about10" %>

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
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <!--問題1 Start-->
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 35px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            要怎麼付款呢？
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-1.png" />
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>您有兩種方式：</p>
                        <p>
                            <span>① 線上付款(Molpay)：支持馬來西亞主要銀行與信用卡付款，Molpay會自動核對付款，您無須做付款通知。</span>
                            <img src="../images/aboutpc/images/shopping-qa-img-1.png" />
                        </p>
                        <p>② 線下付款：</p>
                        <p>
                            <span>支持馬來西亞主要銀行與信用卡付款，Molpay會自動核對付款，您無須做付款通知。</span>
                            <img src="../images/aboutpc/images/shopping-qa-img-2.png" />
                        </p>
                    </div>
                </div>
                <!--問題1 End-->
                <!--問題2 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 95px; left: 200px; width: 420px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            一次最多可以代購幾件商品?不同網站也可以一起買嗎?
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-4.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #5dbca3 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>我們每張訂單最多可訂單20項商品，不同顏色或尺寸的商品分開計算。不同的網站也都可以算在同一張訂單裡喔。</p>
                    </div>
                </div>
                <!--問題2 End-->
                <!--問題3 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 100px; left: 240px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            訂單送出後，可以再新增品項或取消嗎？
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-3.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>如果還沒有付款，我們可以為您取消訂單，您再重填一張代購單就可以了。</p>
                    </div>
                </div>
                <!--問題3 End-->
                <!--問題4 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 100px; left: 240px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
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
                <!--問題4 End-->
                <!--問題5 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 95px; left: 200px; width: 400px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            為什麼國際運費計算的重量跟我的實際重量不同?
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-5.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>依國際快遞物流準則，有時候體積較大的商品實際重量可能很輕，但還是佔用貨艙許多空間。所以國際物流業會收取運費的方式以「體積重量」和「實際重量」，兩個較重的一方為計算標準。</p>
                        <img src="http://www.hawooo.com/outside/shipinfo.jpg" class="am-img-thumbnail" />
                    </div>
                </div>
                <!--問題5 End-->
                <!--問題6 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 105px; left: 240px; width: 400px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            禁止代購代運的商品有哪些？
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-2.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #3d85c6 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <img src="../images/aboutpc/images/shopping-qa-img-3.png" />
                    </div>
                </div>
                <!--問題6 End-->
                <!--問題7 Start-->
                <div class="am-g" style="width: 790px; margin: 0 auto; padding: 0;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 100px; left: 240px; width: 400px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            有推薦的台灣大型購物網站嗎？
                        </p>
                        <img src="../images/aboutpc/images/shopping-title-3.png" />
                    </div>
                    <div class="am-u-sm-12" style="margin: 0; padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #5dbca3 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>台灣網路購物發達，將近有100,000,000種商品可供選擇，只要你在台灣的網路商城找得到，Hawooo都幫你買! 台灣購物/拍賣熱門商城推薦：</p>
                        <img src="../images/aboutpc/images/shopping-qa-img-4.png" />
                    </div>
                </div>
                <!--問題7 End-->
            </div>
        </div>
    </div>
</asp:Content>

