﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa07.aspx.cs" Inherits="user_qa07" %>

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
                <h4 class="qa-height qa-maintitle">消費滿額多少有免運費呢？</h4>
                <div class="qa-main">
                    <h5 class="qa-step">‧<p class="qa-step-title">西馬滿額RM 199 免運費。</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title">東馬滿額RM 299 免運費。</p>
                    </h5>
                    <div class="content_b"></div>

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
                <h4 class="qa-height qa-maintitle">How do get free shipping?</h4>
                <div class="qa-main">
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">West Malaysia minimum spend RM 199 free shipping.</p>
                    </h5>
                    <h5 class="qa-step">‧<p class="qa-step-title-eng">East Malaysia minimum spend RM 299 free shipping.</p>
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

