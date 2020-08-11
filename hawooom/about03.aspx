<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about03.aspx.cs" Inherits="mobile_about03" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    客戶服務 > 如何線上付款？
                </p>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
           <%-- <div class="am-g">
                <div class="am-u-sm-12" style="width: 100%; margin: 0; padding: 0;">
                    <img src="about/images/member_banner.png" style="width: 100%" />
                </div>
            </div>--%>
            <!--問題開始-->
            <!--問題開始-->
            <div class="am-u-md-12 about-m-aboutBox">
                <div class="am-g about-m-group">
                    <!--問題1 開始-->
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            如何使用MolPay線上付款？
                        </p>
                        <img src="about/images/qa_title_1.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <h3><span class="about-m-step">Step1 </span>
                            <br />
                            訂單完成後，畫面會自動跳到填寫付款資料。</h3>
                        <img src="about/images/pay_img_1.png" />
                        <h3><span class="about-m-step">Step2 </span>
                            <br />
                            填寫資料完成後，按「Pay Online」。</h3>
                        <img src="about/images/buy_img_2.png" />
                    </div>
                </div>
                <!--問題結束-->
            </div>
        </div>
    </div>
</asp:Content>

