<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about02.aspx.cs" Inherits="mobile_about02" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
       <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    客戶服務 > 如何訂購商品？
                </p>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
          <%--  <div class="am-g">
                <div class="am-u-sm-12 about-m-banner">
                    <img src="about/images/member_banner.png" />
                </div>
            </div>--%>
            <!--問題開始-->
            <div class="am-u-sm-12 about-m-aboutBox">
                <div class="am-g about-m-group">
                    <!--問題1 開始-->
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            如何訂購商品？
                        </p>
                        <img src="about/images/qa_title_1.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <h3><span class="about-m-step">Step1 </span>
                            <br />
                            在首頁上方點選「登入(Login)」。</h3>
                        <img src="about/images/buy_img_1.png">
                        <h3><span class="about-m-step">Step2 </span>
                            <br />
                            填寫資料，按「LOGIN」。<span style="font-size: 13px;">（如果您有Facebook帳號也可以直接登入）</span></h3>
                        <img src="about/images/buy_img_2.png">
                        <h3><span class="about-m-step">Step3 </span>
                            <br />
                            挑選您喜歡的商品放入購物車。</h3>
                        <img src="about/images/buy_img_3.png">
                        <h3>
                            <span class="about-m-step">Step4 </span>
                            <br />
                            <span style="padding-left: 5px;">(1)查看並確認購物明細，是您選擇的商品款式、付款金額。</span><br>
                            <span style="padding-left: 5px;">(2)填寫訂購資訊，按「Next」。</span>
                        </h3>
                        <img src="about/images/buy_img_4.png">
                        <h3><span class="about-m-step">Step5 </span>
                            <br />
                            確認訂單，確認無誤，按「確認送出」→ 訂單完成。</h3>
                        <img src="about/images/buy_img_5.png">
                    </div>
                </div>
                <!--問題結束-->
            </div>

        </div>
    </div>
</asp:Content>

