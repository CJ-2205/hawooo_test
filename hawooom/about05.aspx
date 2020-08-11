<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about05.aspx.cs" Inherits="mobile_about05" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    什麼是HaWooo折扣券?
                </p>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
            <%--<div class="am-g">
                <div class="am-u-sm-12" style="width: 100%; margin: 0; padding: 0;">
                    <img src="about/images/member_banner.png" style="width: 100%" />
                </div>
            </div>--%>
            <!--問題開始-->
            <div class="am-u-md-12 about-m-aboutBox">
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            什麼是HaWooo折扣券?
                        </p>
                        <img src="about/images/voucher_title_1_1.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        折扣券為Hawooo參加網站的活動贈品之一，為一組英文大小寫字母與阿拉伯數字的組合序號，會員可於有效期限內，至Hawooo網站購物時使用，故您需先加入會員或是登入會員帳號、密碼後方可使用。
                    </div>
                </div>
                <!--問題2-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/voucher_title_2_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            如何使用HaWooo折扣券?
                        </p>
                        <img src="about/images/voucher_title_2_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <p>
                            1.折扣券分為全站折扣券(全站部分商品適用)、類別折價券(指定類別內部分商品適用)、單品折價券(單品適用)三種類型。一次消費限使用一張折價券。
                        <br />
                            2.已生效的折扣券方能使用，過期無法使用樣可繼續累積。
                        <br />
                            3.折扣券限折抵購物金額，無法折抵物流費、運費、服務費等費用。
                        <br />
                            4.折扣券不限會員本人使用，可轉讓給家人、朋友，但無法折抵、轉讓、兌換現金及找零，或折換贈品。
                        <br />
                            5.開立發票金額以該訂單「購買時實際支付的金額」計算。折扣券折抵金額不另外開立發票。
                        <br />
                            6.折扣券為贈品，係屬無償取得，不適用商品(服務)禮券記載之規範。
                        </p>
                        <h3><span class="about-m-step">Step1 </span>
                            <br />
                            選擇您要購買的商品，點選「加入購物車」按鈕。</h3>
                        <img src="about/images/voucher_img_1.png" />
                        <h3><span class="about-m-step">Step2 </span>
                            <br />
                            請點選右上角購物車前往結帳，輸入折扣卷號。</h3>
                        <img src="about/images/voucher_img_2.png">
                    </div>
                </div>
                <!--問題3-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12" style="width: 320px;">
                        <img src="about/images/voucher_title_3_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            如何查詢我有多少折扣券？
                        </p>
                        <img src="about/images/voucher_title_3_2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <p>登入後進入「會員中心/折扣券紀錄」查詢您持有的折扣券張數、面額、適用範圍、適用商品及使用明細。</p>
                        <h3><span class="about-m-step">Step1 </span>
                            <br />
                            到Hawooo頁面上方點選，「會員中心icon」。</h3>
                        <img src="about/images/voucher_img_3.png">
                        <h3><span class="about-m-step">Step2 </span>
                            <br />
                            右上方點選「項目選擇」中的「折扣卷紀錄」。</h3>
                        <img src="about/images/voucher_img_4.png">
                        <h3><span class="about-m-step">Step3 </span>
                            <br />
                            現在您可以查詢您持有的折價券了。</h3>
                        <img src="about/images/voucher_img_5.png">
                    </div>
                </div>
                <!--問題結束-->
            </div>

        </div>
    </div>
</asp:Content>

