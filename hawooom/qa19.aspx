<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa19.aspx.cs" Inherits="mobile_qa19" %>

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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> 買貴通報</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step"><p class="qa-step-title">HaWooo為消費者提供「買貴通報」服務。<br>如果您發現在HaWooo購買的商品價格較其他網站更高，可以與我們通報。<br>請收集下列資料，然後填寫<a href="https://docs.google.com/forms/d/e/1FAIpQLSegqHqqKKs_bCco4jCqXK15kILV6UtQnRaYt4xoqhHmpteJkw/viewform" target="_blank"  style="color:#FB5450;text-decoration-line: underline">「買貴通報」表單</a>。</p></h5>
			
          <h5 class="qa-step">‧<p class="qa-step-title">訂單編號</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">商品名稱</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">找到更低價格的網址</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">其他網站的價格</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">提供圖像證明(截圖)</p></h5><br>
           	
			
	      <h5 class="qa-step">服務條款與規範<p class="qa-step-title"><br>
			  1. 「買貴通報」僅適用於已付款並且確認的訂單。因此在填寫表單時，請提供HaWooo的訂單編號。<br>
			  2. 所通報內容必須符合以下條件：<br>(A).相同商品或是組合<br>(B).下單後30天內與我們通報。<br>
			  3. 經查核，若HaWooo所販售的商品價格高於其他網站，將會補償商品差價購物金。審核之後，會主動與客人聯繫。<br>
			  </p></h5>	 
			
	      
		  
			
	      <h5 class="qa-step">‧<p class="qa-step-note">對於相關服務有任何問題，請與我們聯繫。<br>
						Tel：03-76102050<br>
						FB：<a href="https://bit.ly/2Ln1rs6" target="_blank" style="text-decoration: underline">https://bit.ly/2Ln1rs6</a><br></p></h5>		 
	      
		  
			
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
        <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a> What is HaWooo Price Comparison Service?</h4>
		<hr style="margin:0">  
		  
        <div class="qa-content">
          
          <h5 class="qa-step">‧<p class="qa-step-title">HaWooo offers the Price Comparison service. If you find the price of the item you purchased in HaWooo is higher than other websites, you can report to us. Please prepare the following details & fill up <a href="https://docs.google.com/forms/d/e/1FAIpQLSegqHqqKKs_bCco4jCqXK15kILV6UtQnRaYt4xoqhHmpteJkw/viewform" target="_blank"  style="color:#FB5450;text-decoration-line: underline">HaWooo Price Comparison Form(HPCF)</a>.</p></h5>
			
          <h5 class="qa-step">‧<p class="qa-step-title">Order Number</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">Product Name</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">The website where you found the better rate</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">Price of other website</p></h5>
          <h5 class="qa-step">‧<p class="qa-step-title">Screenshots of the competitor site</p></h5><br>
           	
			
	      <h5 class="qa-step">Terms & Conditions<p class="qa-step-title"><br>
			  1. HaWooo Price Comparison service applies to confirmed order only. You must provide us with your order number to submit the form.<br>
			  2. The following conditions must apply:<br>(A).<span style="text-decoration: underline">Same product OR Same package</span>.<br>(B).<span style="text-decoration: underline">Notify us within 30 days of order</span>.<br>
			  3. Once the product been verified is selling at higher price than others website, we will refund the price differences of the product by credited the amount into customer's HaWooo account. We'll contact with customer upon confirmed. <br>
			  </p></h5>	 
			
	      
		  
			
	      <h5 class="qa-step">‧<p class="qa-text-eng" style="display: inline">Should you have any question, please let us know.<br>
						Tel：03-76102050<br>
						FB：<a href="https://bit.ly/2Ln1rs6" target="_blank" style="text-decoration: underline">https://bit.ly/2Ln1rs6</a><br></p></h5>		 
	      
		  
			
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
    <uc1:member_center_class runat="server" ID="member_center_class" />


    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
            $('#member-order-tab-wrapper_en').tabs();
        })
    </script>
</asp:Content>

