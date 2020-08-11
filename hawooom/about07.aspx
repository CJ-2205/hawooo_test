<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about07.aspx.cs" Inherits="mobile_about07" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <p class="pagelink">
                    代購服務 > 購物流程說明
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
            <div class="am-u-md-12 about-m-aboutBox">
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            要怎麼代購呢？
                       
                        </p>
                        <img src="about/images/shopping_title_1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-b">
                        <h3>加入會員 → 填寫代購單 → HaWooo寄信通知有沒有貨及計算費用 → 買家付款 → 出貨</h3>
                    </div>
                </div>
                <!--問題結束-->
            </div>
        </div>
    </div>
</asp:Content>

