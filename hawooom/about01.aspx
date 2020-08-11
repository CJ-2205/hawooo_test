<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about01.aspx.cs" Inherits="mobile_about01" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div  style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    客戶服務 > 如何加入會員？
                </p>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
           <%-- <div class="am-g">
                <div class="am-u-sm-12 about-m-banner">
                    <img src="about/images/member_banner.png">
                </div>
            </div>--%>
            <!--問題開始-->
            <div class="am-u-md-12 about-m-aboutBox">
                <div class="am-g about-m-group">
                    <!--問題1 開始-->
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            如何加入會員？
                        </p>
                        <img src="about/images/qa_title_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <h3><span class="about-m-step">Step1 </span>
                            <br />
                            在首頁上方點選「註冊(Register)」。</h3>
                        <img src="about/images/register_img_1.png" />
                        <h3><span class="about-m-step">Step2 </span>
                            <br />
                            填寫個人資料，然後按「加入會員」。<span style="font-size: 13px;">（如果您有Facebook帳號也可以直接登入）</span></h3>
                        <img src="about/images/register_img_2.png" />
                        <h3><span class="about-m-step">Step3 </span>
                            <br />
                            成功註冊為Hawooo會員，建議您定期更換密碼，有助於資料安全保護。</h3>
                        <img src="about/images/register_img_3.png" />
                    </div>
                </div>
                <!--問題結束-->
            </div>

        </div>
    </div>
</asp:Content>

