﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa16.aspx.cs" Inherits="mobile_qa16" %>

<%--<%@ Register Src="~/mobile/control/aboutmenu2.ascx" TagPrefix="uc1" TagName="aboutmenu2" %>--%>
<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <uc1:member_class runat="server" ID="member_class" />
    <!-- 麵包屑 Start-->

    <div style="margin-top: 20px" id="zhPanel" runat="server">
      <section class="am-container member-margin">
      <div class="qa-wrapper">
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> 什麼是Ha幣？</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">‧<p class="qa-step-title">Ha幣是好物官方推出的虛擬貨幣，每次消費RM1即可獲得1Ha幣，Ha幣是無法兌現為現金。
(100 Ha幣=RM1、1500Ha幣=免運x1次)</p></h5>
		
          <h5 class="qa-step">‧<p class="qa-step-title">Ha幣在訂單出貨之後，自動轉入會員帳號。</p></h5>
		  <h5 class="qa-step">‧<p class="qa-step-title">Ha幣使用期限為3個月 ex：1/8 - 30/8下單獲得Ha幣，都在30/11過期。</p></h5>
		  <img class="qa-answer-img2" src="https://www.hawooo.com/images/ftp/test/qa16p1.gif">
			
        </div>
      </div> 
    </section>

        <h4 class="qa-wantmore"> 還有其他問題嗎？</h4>

    <section class=" am-panel-default qa-wantmore-section qa-wantmore-section-hw" >
		
      <div class="am-panel-hd">
        
		<a href="">
              <div class="am-g am-g-collapse" style="margin: .4em 0">
                <div class="am-u-sm-1">
                  <i class="am-icon-volume-down qa-wantmore-iconphone"></i>
                </div>
                <div class="am-u-sm-11">
                  <p class="qa-wantmore-text" style="text-align: left"><b>Phone</b><br>+603-23866096</p>
				  
                </div>
              </div>
            </a>
		  
      </div>
		
		   
		
            <div class="am-panel-hd" style="margin-top:.5em;">
        
		<a href="">
              <div class="am-g am-g-collapse" style="margin: .4em 0">
                <div class="am-u-sm-1">
                  <i class="am-icon-at qa-wantmore-iconmail"></i>
                </div>
                <div class="am-u-sm-11">
                  <p class="qa-wantmore-text" style="text-align: left"><b>e-mail</b><br>service@hawooo.com</p>
				  
                </div>
              </div>
            </a>
		  
      </div>
    </section>
    </div>


    <div style="margin-top: 20px" id="enPanel" runat="server">
       <section class="am-container member-margin">
      <div class="qa-wrapper">
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> What is Ha Coin?</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">‧<p class="qa-step-title">Ha Coin are our official virtual currency, for every RM 1 spent from purchases that you will earn 1 Ha Coin from Hawooo. Ha Coin cannot be exchanged for cash or transferred to another account.<span class="qa-text-eng">(100 Ha Coin=RM1; 1500 Ha Coin=free shipping x 1)</span></p></h5>
		
          <h5 class="qa-step">‧<p class="qa-step-title">You will only receive the coins after an order has been shipped out.</p></h5>
		  <h5 class="qa-step">‧<p class="qa-step-title">The expiration of Ha Coin is 3 months. ex：1/8 – 30/8 get the Ha Coin, the expiry date is 30/11.</p></h5>
		  
			
        </div>
      </div> 
    </section>

        <h4 class="qa-wantmore"> Need further clarifications?</h4>

    <section class=" am-panel-default qa-wantmore-section qa-wantmore-section-hw" >
		
      <div class="am-panel-hd">
        
		<a href="">
              <div class="am-g am-g-collapse" style="margin: .4em 0">
                <div class="am-u-sm-1">
                  <i class="am-icon-volume-down qa-wantmore-iconphone"></i>
                </div>
                <div class="am-u-sm-11">
                  <p class="qa-wantmore-text" style="text-align: left"><b>Phone</b><br>+603-23866096</p>
				  
                </div>
              </div>
            </a>
		  
      </div>
		
		   	
            <div class="am-panel-hd" style="margin-top:.5em;">
        
		<a href="">
              <div class="am-g am-g-collapse" style="margin: .4em 0">
                <div class="am-u-sm-1">
                  <i class="am-icon-at qa-wantmore-iconmail"></i>
                </div>
                <div class="am-u-sm-11">
                  <p class="qa-wantmore-text" style="text-align: left"><b>e-mail</b><br>service@hawooo.com</p>
				  
                </div>
              </div>
            </a>
		  
      </div>
    </section>
    </div>
    <uc1:member_center_class runat="server" ID="member_center_class" />


    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
            $('#member-order-tab-wrapper_en').tabs();
        })
    </script>
</asp:Content>
