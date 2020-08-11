<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qat04.aspx.cs" Inherits="user_qat04" %>

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
                <h4 class="qa-height qa-maintitle">Shipping & Delivery</h4>
                <div class="qa-index">
                    <ul>
                        <li class="qa-text-index-title"><a href="qa14.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            Shipping fees</a></li>
                        <li class="qa-text-index-title"><a href="qa07.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How do get free shipping?</a></li>
                        <li class="qa-text-index-title"><a href="qa08.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            When will I receive my parcel?</a></li>
                        <li class="qa-text-index-title"><a href="qa09.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How to track my shipment?</a></li>
                        <li class="qa-text-index-title"><a href="qa10.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How to differentiate the order status?</a></li>
                        <li class="qa-text-index-title"><a href="qa15.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How do I cancel my order?</a></li>
                    </ul>
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
                <h4 class="qa-height qa-maintitle">Shipping & Delivery</h4>
                <div class="qa-index">
                    <ul>
                        <li class="qa-text-index-title"><a href="qa14.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            Shipping fees</a></li>
                        <li class="qa-text-index-title"><a href="qa07.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How do get free shipping?</a></li>
                        <li class="qa-text-index-title"><a href="qa08.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            When will I receive my parcel?</a></li>
                        <li class="qa-text-index-title"><a href="qa09.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How to track my shipment?</a></li>
                        <li class="qa-text-index-title"><a href="qa10.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How to differentiate the order status?</a></li>
                        <li class="qa-text-index-title"><a href="qa15.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How do I cancel my order?</a></li>
                    </ul>
                </div>
            </div>
            <!-- 右方內容 qa-content end -->

        </section>
    </div>
    <!--Howard這邊加footer-->
</asp:Content>

