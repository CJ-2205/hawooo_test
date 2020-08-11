<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa18.aspx.cs" Inherits="mobile_qa18" %>

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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> 如何退換商品？</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step"><p class="qa-step-title">若是收到瑕疵商品或錯誤商品，請在收到包裹7 天內通知客服。經過客服人員審核確認為瑕疵或是錯誤商品，將協助安排回寄商品。</p></h5>
			
          <h5 class="qa-step">‧<p class="qa-step-title">post.co 退貨處理：無需付費與排隊，加快處理時間。</p></h5>
		  <h5 class="qa-step"><p class="qa-step-note">(填入包裹資訊，選擇臨近的收件站 → 包裝商品 → 將包裹送到所選擇的收件站即可。)</p></h5>	
			
			
          <h5 class="qa-step">‧<p class="qa-step-title">親自到郵政局寄出商品。</p></h5>
        
	      
			
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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> How to exchange or return the item?</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">‧<p class="qa-step-title">Hawooo offers free and easy exchanges and returns. Before that, make sure that your exchange or return request has been verify by the customer service. After verification, you can use the post co return service or use other courier service return to us.</p></h5><br>
			
		  
          <h5 class="qa-step">‧<p class="qa-step-title" style="margin-top: 50px;">Post Co return procedure：</p></h5>
		  <h5 class="qa-step" >-<p class="qa-text-eng" style="display: inline">Step 1: Fill up the information, and choose the nearest center for drop off your parcel.</p></h5>		
		  <h5 class="qa-step">-<p class="qa-text-eng" style="display: inline">Step 2: Print out the return form and pack the item.</p></h5>		
		  <h5 class="qa-step">-<p class="qa-text-eng" style="display: inline">Step 3: Drop off the parcel at the center.</p></h5>		
			
			
          
        
	      
			
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

