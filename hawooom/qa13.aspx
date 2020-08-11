<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa13.aspx.cs" Inherits="mobile_qa13" %>

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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> 如何付款？</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">A‧)<p class="qa-step-title">信用卡 Credit/Debit Card</p></h5>
          <h5 class="qa-step">B‧)<p class="qa-step-title">網絡銀行 Online Banking</p></h5>
	      <h5 class="qa-step">C‧)<p class="qa-step-title">線下付款 ATM Transfer</p></h5>	
			
	      <h5 class="qa-step">PUBLIC BANK<p class="qa-step-title"><br>Account Name: PEOPLES MAP SDN BHD.<br>Account No: 3201174410</p></h5>	 
	      <h5 class="qa-step">CIMB BANK<p class="qa-step-title"><br>Account Name: PEOPLES MAP SDN BHD.<br>Account No: 80-0327458-9</p></h5>	
		  	
	      <h5 class="qa-step">‧<p class="qa-step-note">(備註:若是線下付款，需將單據發到我們的郵件service@hawooo.com 或是上傳到HaWooo面子書)</p></h5>		 
	      
		  
			
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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> What are the payment methods available?</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">A‧)<p class="qa-step-title">Credit/Debit Card.</p></h5>
          <h5 class="qa-step">B‧)<p class="qa-step-title">Online Banking.</p></h5>
	      <h5 class="qa-step">C‧)<p class="qa-step-title">ATM Transfer.</p></h5>	
			
	      <h5 class="qa-step">PUBLIC BANK<p class="qa-step-title"><br>Account Name: PEOPLES MAP SDN BHD.<br>Account No: 3201174410</p></h5>	 
	      <h5 class="qa-step">CIMB BANK<p class="qa-step-title"><br>Account Name: PEOPLES MAP SDN BHD.<br>Account No: 80-0327458-9</p></h5>	
		  	
	      <h5 class="qa-step">‧<p class="qa-text-eng" style="display: inline">(Note: Kindly email to service@hawooo.com or send the payment slip to our Facebook messenger.)</p></h5>		 
	      
		  
			
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

