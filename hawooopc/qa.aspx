<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa.aspx.cs" Inherits="user_qa" %>

<%--<%@ Register Src="~/user/control/about_class.ascx" TagPrefix="uc1" TagName="about_class" %>--%>
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
        <!--  product breadcrumb（商品頁麵包屑） star-->
        <uc1:qa_title runat="server" ID="qa_title1" />
        <!--  product breadcrumb（商品頁麵包屑）end-->
        <section class="am-container qa-wrapper" id="zhPanel" runat="server">
            <!-- qa左邊導覽列 qa-nav end -->
            <uc1:qa_menu runat="server" ID="qa_menu" />
            <!-- 右方內容 qa-content start -->
            <div class="qa-content">
                <h4 class="qa-height qa-maintitle">常見問題</h4>
                <div class="qa-index">
                    <ul>
                        <li><a href="qa11.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            如何註冊會員帳號？</a></li>
                        <li><a href="qa16.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            什麼是Ha幣？</a></li>
                        <li><a href="qa03.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            什麼是購物金？</a></li>
                        <li><a href="qa04.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            如何查看Ha幣和購物金？</a></li>
                        <li><a href="qa05.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            如何使用Ha幣和購物金？</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- 右方內容 qa-content end -->
        <!--Howard在這裡結束-->


        <!--Howard這邊加Header-->

        <!-- content start -->



        <section class="am-container qa-wrapper" id="enPanel" runat="server">
            <!-- qa左邊導覽列 qa-nav start -->
            <uc1:qa_menu_en runat="server" ID="qa_menu_en" />
            <!-- qa左邊導覽列 qa-nav end -->
            <!-- 右方內容 qa-content start -->
            <div class="qa-content">
                <h4 class="qa-height qa-maintitle">Learn how to...</h4>
                <div class="qa-index">
                    <ul>
                        <li class="qa-text-index-title"><a href="qa11.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How to register an account?</a></li>
                        <li class="qa-text-index-title"><a href="qa16.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            What is Ha Coin?</a></li>
                        <li class="qa-text-index-title"><a href="qa03.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            What is HaWooo shopping credit？</a></li>
                        <li class="qa-text-index-title"><a href="qa04.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How can I check the Ha Coin and HaWooo shopping credit?</a></li>
                        <li class="qa-text-index-title"><a href="qa05.aspx">
                            <img src="https://www.hawooo.com/images/ftp/test/tasklist.png" class="qa-taskicon" />
                            How to use Ha Coin and HaWooo shopping credit?</a></li>
                    </ul>
                </div>
            </div>
            <!-- 右方內容 qa-content end -->
        </section>
    </div>
    <!--Howard這邊加footer-->
</asp:Content>

