<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about05.aspx.cs" Inherits="user_about05" %>

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
                <!--問題1-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            什麼是HaWooo折扣券?
                       
                        </p>
                        <img src="../images/aboutpc/images/voucher_title_1.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        折扣券為Hawooo參加網站的活動贈品之一，為一組英文大小寫字母與阿拉伯數字的組合序號，會員可於有效期限內，至Hawooo網站購物時使用，故您需先加入會員或是登入會員帳號、密碼後方可使用。
                   
                    </div>
                </div>

                <!--問題2-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            如何使用HaWooo折扣券?
                       
                        </p>
                        <img src="../images/aboutpc/images/voucher_title_2.png" />
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
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
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step1 </span>選擇您要購買的商品，點選「加入購物車」按鈕。</h3>
                        <img src="../images/aboutpc/images/voucher_img_1.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step2 </span>請點選右上角購物車前往結帳，輸入折扣卷號。</h3>
                        <img src="../images/aboutpc/images/voucher_img_2.png" width="652" style="padding-left: 20px;" />
                    </div>
                </div>

                <!--問題3-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            如何查詢我有多少折扣券？
                       
                        </p>
                        <img src="../images/aboutpc/images/voucher_title_3.png" />
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>登入後進入「會員中心/折扣券紀錄」查詢您持有的折扣券張數、面額、適用範圍、適用商品及使用明細。</p>
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step1 </span>到Hawooo頁面上方點選，「會員中心 (Member Center)」。</h3>
                        <img src="../images/aboutpc/images/voucher_img_3.png" width="652" style="padding-left: 20px;" />
                        <h3><span style="font-size: 20px; color: #fff; background: #f49700;">Step2 </span>請點選左邊「折扣卷紀錄」，查詢您持有的折價券。</h3>
                        <img src="../images/aboutpc/images/voucher_img_4.png" width="652" style="padding-left: 20px;" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

