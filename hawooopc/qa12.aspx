<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa12.aspx.cs" Inherits="user_qa12" %>

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
                <h4 class="qa-height qa-maintitle">訂購方式</h4>
                <div class="qa-main">
                    <h5 class="qa-step">1‧)<p class="qa-step-title">選擇商品的規格和數量。</p>
                    </h5>

                    <h5 class="qa-step">2‧)<p class="qa-step-title">點擊加入購物車。</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p1.png">

                    <h5 class="qa-step">3‧)<p class="qa-step-title">確認後點擊馬上結帳。</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p2.png">

                    <h5 class="qa-step">4‧)<p class="qa-step-title">確認是否有要使用的折扣券、Ha幣與購物金，確認之後再填寫收件資料，確認無誤點選「NEXT」。</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p3.png">
                    <h5 class="qa-step">5‧)<p class="qa-step-title">確認總額是否正確。</p>
                    </h5>

                    <h5 class="qa-step">6‧)<p class="qa-step-title">選擇付款方式（credit or debit card / online banking / ATM Transfer）</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p4.png">
                    <h5 class="qa-step">7‧)<p class="qa-step-title">完成，訂單完成會顯示訂單編號。</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p5.png">
                </div>
                <div class="qa-contact">
                    <h4 class="qa-contact-title">還有其他問題嗎？</h4>
                    <p>
                        電話:
                        <br>
                        +603-23866096
                    </p>
                    <p>
                        E-mail:<br>
                        <a href="mailto:service@hawooo.com">service@hawooo.com</a>
                    </p>
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
            <div class="qa-content">
                <h4 class="qa-height qa-maintitle">How to place an order?</h4>
                <div class="qa-main">
                    <h5 class="qa-step">1‧)<p class="qa-step-title-eng">Select your preferred specification.</p>
                    </h5>

                    <h5 class="qa-step">2‧)<p class="qa-step-title-eng">Click"<b>Add to cart</b>" or "<b>Buy Now</b>".</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p1.png">

                    <h5 class="qa-step">3‧)<p class="qa-step-title-eng">Click "<b>Checkout</b>" to proceed your payment.</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p2.png">

                    <h5 class="qa-step">4‧)<p class="qa-step-title-eng">At the checkout page, fill up your shipping information and click "<b>next</b>" button.</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p3.png">
                    <h5 class="qa-step">5‧)<p class="qa-step-title-eng">Double confirm the total amount.</p>
                    </h5>

                    <h5 class="qa-step">6‧)<p class="qa-step-title-eng">Choose your payment method (credit or debit card / online banking / ATM Transfer）and click “<b>next</b>” to complete your order.</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p4.png">
                    <h5 class="qa-step">7‧)<p class="qa-step-title-eng">Order completed. After done all the procedure, will show the order number.</p>
                    </h5>
                    <img class="qa-answer-img" src="https://www.hawooo.com/images/ftp/test/qa12p5.png">
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

