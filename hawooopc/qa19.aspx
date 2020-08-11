<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa19.aspx.cs" Inherits="user_qa19" %>

<%--<%@ Register Src="~/user/control/qa_class.ascx" TagPrefix="uc1" TagName="qa_class" %>--%>

<%@ Register Src="~/user/control/qa_title.ascx" TagPrefix="uc1" TagName="qa_title" %>
<%@ Register Src="~/user/control/qa_menu.ascx" TagPrefix="uc1" TagName="qa_menu" %>
<%@ Register Src="~/user/control/qa_menu_en.ascx" TagPrefix="uc1" TagName="qa_menu_en" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 限時團購內頁 -->
    <link rel="stylesheet" href="assets/css/qa.css">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- content star -->
    <div style="margin-top: 120px; display: block;">
        <uc1:qa_title runat="server" ID="qa_title" />

        <!--  product breadcrumb（商品頁麵包屑） star-->
        <%--        <section class="product-breadcrumb-section">
            <div class="am-container product-breadcrumb-wrapper">
                <ul class="am-u-sm-12 am-cf">
                    <li class="am-fl product-breadcrumb">
                        <a href="#">HaWooo</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">F&Q問與答</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">如何註冊會員帳號？</a>
                    </li>
                </ul>
            </div>
        </section>--%>


        <!--  products breadcrumb（商品頁麵包屑） end-->
        <section class="am-container qa-wrapper" id="zhPanel" runat="server">
            <!-- qa左邊導覽列 qa-nav end -->
            <uc1:qa_menu runat="server" ID="qa_menu" />
            <!-- 右方內容 qa-content start -->
            <div class="qa-content">
                <h4 class="qa-height qa-maintitle">買貴通報</h4>
                <div class="qa-main">

                    <h5 class="qa-step">
                        <p class="qa-step-title">HaWooo為消費者提供「買貴通報」服務。<br>
                            如果您發現在HaWooo購買的商品價格較其他網站更高，可以與我們通報。<br>
                            請收集下列資料，然後填寫<a href="https://docs.google.com/forms/d/e/1FAIpQLSegqHqqKKs_bCco4jCqXK15kILV6UtQnRaYt4xoqhHmpteJkw/viewform" target="_blank" style="color: #FB5450; text-decoration-line: underline">「買貴通報」表單</a>。</p>
                    </h5>

                    <h5 class="qa-step">‧<p class="qa-step-title">訂單編號</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title">商品名稱</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title">找到更低價格的網址</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title">其他網站的價格</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title">提供圖像證明(截圖)</p>
                    </h5>
                    <div class="content_b"></div>

                    <h5 class="qa-step">服務條款與規範<br>
                        <p class="qa-step-title" style="font-size: 15px;">
                            <br>
                            1. 「買貴通報」僅適用於已付款並且確認的訂單。因此在填寫表單時，請提供HaWooo的訂單編號。<br>
                            <br>
                            2. 所通報內容必須符合以下條件：(A).相同商品或是組合、(B).下單後30天內與我們通報。<br>
                            <br>
                            3. 經查核，若HaWooo所販售的商品價格高於其他網站，將會補償商品差價購物金。審核之後，會主動與客人聯繫。
                        
                        </p>
                    </h5>
                    <br>

                    <p class="qa-step-title" style="font-size: 15px;">
                        <br>
                        對於相關服務有任何問題，請與我們聯繫。<br>
                        Tel：03-76102050<br>
                        FB：<a href="https://bit.ly/2Ln1rs6" target="_blank" style="text-decoration: underline">https://bit.ly/2Ln1rs6</a><br>
                    </p>




                </div>
                <div class="content_b"></div>

                <div class="qa-contact">
                    <h4 class="qa-contact-title">還有其他問題嗎？</h4>
                    <p>電話:
                        <br>
                        +603-23866096</p>
                    <p>E-mail:<br>
                        <a href="mailto:service@hawooo.com">service@hawooo.com</a></p>
                    <br>
                    <p class="qa-time">星期一 - 星期五(except public holiday) 9AM - 6PM</p>
                </div>
            </div>
            <!-- 右方內容 qa-content end -->
        </section>
        <!--Howard在這裡結束-->


        <!--Howard這邊加Header-->

        <!-- content start -->


        <!--  product breadcrumb（商品頁麵包屑） star-->
        <%--    <uc1:qa_title runat="server" ID="qa_title1_en" />--%>
        <%--  <section class="product-breadcrumb-section">
            <div class="am-container product-breadcrumb-wrapper">
                <ul class="am-u-sm-12 am-cf">
                    <li class="am-fl product-breadcrumb">
                        <a href="#">HaWooo</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">FAQ</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">How to register an account?</a>
                    </li>

                </ul>
            </div>
        </section>--%>
        <!--  products breadcrumb（商品頁麵包屑） end-->

        <section class="am-container qa-wrapper" id="enPanel" runat="server">
            <!-- qa左邊導覽列 qa-nav start -->
            <uc1:qa_menu_en runat="server" ID="qa_menu_en" />

            <!-- qa左邊導覽列 qa-nav end -->
            <!-- 右方內容 qa-content start -->
            <div class="qa-content-text">
                <h4 class="qa-height qa-maintitle">What is HaWooo Price Comparison Service?</h4>
                <div class="qa-main">
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">
                        HaWooo offers the Price Comparison service.
                       If you find the price of the item you purchased in HaWooo is higher than other websites, you can report to us.
					   Please prepare the following details & fill up <a href="https://docs.google.com/forms/d/1iUpqSeihClwPnpgpHNpkousvEuxiYq0LVnMRTNpyndw/viewform?edit_requested=true" target="_blank" style="color: #FB5450; text-decoration-line: underline">HaWooo Price Comparison Form(HPCF)</a>.	
                    </p>
                    </h5>

                    <h5 class="qa-step">‧<p class="qa-step-title-eng">Order Number</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">Product Name</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">The website where you found the better rate</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">Price of other website</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">Screenshots of the competitor site</p>
                    </h5>
                    <div class="content_b"></div>
                    <h5 class="qa-step">Terms & Conditions<p class="qa-step-title-eng" style="font-size: 15px;">
                        <br>
                        1. HaWooo Price Comparison service applies to confirmed order only. You must provide us with your order number to submit the form.<br>
                        2. The following conditions must apply: (A).<span style="text-decoration-line: underline">Same product OR Same package</span>. (B).<span style="text-decoration-line: underline">Notify us within 30 days of order</span>.<br>
                        3. Once the product been verified is selling at higher price than others website, we will refund the price differences of the product by credited the amount into customer's HaWooo account. We'll contact with customer upon confirmed.
						  <br>
                        <br>
                        Should you have any question, please let us know.<br>
                        Tel：03-76102050<br>
                        FB：<a href="https://bit.ly/2Ln1rs6" target="_blank">https://bit.ly/2Ln1rs6</a>
                    </p>
                    </h5>







                    <div class="content_b"></div>
                </div>
                <div class="qa-contact">

                    <h4 class="qa-contact-title">Need further clarifications?</h4>
                    <p class="qa-time-eng">
                        You can contact us during our working hours:
                    <br>
                        Mon-Fri: 9am-6pm, except public holidays.
                    </p>
                    <p>Phone:
                        <br>
                        +603-23866096</p>
                    <p>E-mail:<br>
                        <a href="mailto:service@hawooo.com">service@hawooo.com</a></p>
                    <br>
                </div>
            </div>
            <!-- 右方內容 qa-content end -->

        </section>
    </div>
    <!--Howard這邊加footer-->
</asp:Content>

