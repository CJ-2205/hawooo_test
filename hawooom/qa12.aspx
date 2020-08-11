<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa12.aspx.cs" Inherits="mobile_qa12" %>

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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> 訂購方式</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">1‧)<p class="qa-step-title">選擇商品的規格和數量。</p></h5>
          <h5 class="qa-step">2‧)<p class="qa-step-title">點擊加入購物車。</p></h5>
	      <h5 class="qa-step">3‧)<p class="qa-step-title">確認後點擊馬上結帳。</p></h5>		 
	      <h5 class="qa-step">4‧)<p class="qa-step-title">確認是否有要使用的折扣券、Ha幣與購物金，確認之後再填寫收件資料，確認無誤點選「NEXT」。</p></h5>	 
	      <h5 class="qa-step">5‧)<p class="qa-step-title">確認總額是否正確。</p></h5>		 
	      <h5 class="qa-step">6‧)<p class="qa-step-title">選擇付款方式（credit or debit card / online banking / ATM Transfer）</p></h5>		 
	      <h5 class="qa-step">7‧)<p class="qa-step-title">完成，訂單完成會顯示訂單編號。</p></h5>		 
		  		 			
        </div>
      </div> 
    </section>

        <h4 class="qa-wantmore"> 還有其他問題嗎？</h4>

    <section class=" am-panel-default qa-wantmore-section qa-wantmore-section-hw">
		
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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> How to place an order?</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">1‧)<p class="qa-step-title">Select your preferred specification.</p></h5>
          <h5 class="qa-step">2‧)<p class="qa-step-title">Click"<b>Add to cart</b>" or "<b>Buy Now</b>".</p></h5>
	      <h5 class="qa-step">3‧)<p class="qa-step-title">Click "<b>Checkout</b>" to proceed your payment.</p></h5>		 
	      <h5 class="qa-step">4‧)<p class="qa-step-title">At the checkout page, fill up your shipping information and click "<b>next</b>" button.</p></h5>	 
	      <h5 class="qa-step">5‧)<p class="qa-step-title">Double confirm the total amount.</p></h5>		 
	      <h5 class="qa-step">6‧)<p class="qa-step-title">Choose your payment method (credit or debit card / online banking / ATM Transfer）and click “<b>next</b>” to complete your order.</p></h5>		 
	      <h5 class="qa-step">7‧)<p class="qa-step-title">Order completed. After done all the procedure, will show the order number.</p></h5>		 
		  
		  
			
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

