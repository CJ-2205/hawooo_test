﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa33.aspx.cs" Inherits="user_qa33" %>

<%@ Register Src="~/user/control/qa_class.ascx" TagPrefix="uc1" TagName="qa_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 限時團購內頁 -->
    <link rel="stylesheet" href="assets/css/qa.css">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--  product breadcrumb（商品頁麵包屑） star-->
    <uc1:qa_class runat="server" ID="qa_class" />
    <!--  products breadcrumb（商品頁麵包屑） end-->

    <section class="am-container qa-wrapper">
        <!-- qa左邊導覽列 qa-nav start -->
        <div class="qa-nav">
            <h4 class="qa-height q-navtitle">分類</h4>

            <div class="am-panel-group qa-nav-panel" id="accordion">
                <div class="am-panel">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-1'}">客戶服務
                        <i class="am-fr am-icon-angle-down"></i>
                        </h4>
                    </div>
                    <div id="qa-tab-1" class="am-panel-collapse am-collapse">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa11.aspx">如何加入會員？</a></li>
                                <li><a href="qa12.aspx">如何訂購商品？</a></li>
                                <li><a href="qa13.aspx">如何線上付款？</a></li>
                                <li><a href="qa14.aspx">物流派送規則</a></li>
                                <li><a href="qa15.aspx">折扣券說明</a></li>
                                <li><a href="qa16.aspx">Ha幣說明</a></li>
                                <li><a href="qa17.aspx">與台灣原價說明</a></li>
                                <li><a href="qa18.aspx">訂單狀態說明</a></li>
                                <li><a href="qa19.aspx">其他常見問題Q&A</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
   
                <div class="am-panel">
                    <div class="am-panel-hd">
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-3'}">條款說明
                          <i class="am-fr am-icon-angle-down"></i>
                        </h4>
                    </div>
                    <div id="qa-tab-3" class="am-panel-collapse am-collapse am-in">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa31.aspx">服務條款</a></li>
                                <li><a href="qa32.aspx">貨運條款</a></li>
                                <li class="active"><a href="qa33.aspx">退貨條款</a></li>
                                <li><a href="qa34.aspx">隱私權</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- qa左邊導覽列 qa-nav end -->
        <!-- 右方內容 qa-content start -->
        <div class="qa-content">
            <h4 class="qa-height qa-maintitle">退貨條款</h4>
            <div class="qa-main">
                <img src="https://www.hawooo.com/user/img/about/%E9%80%80%E8%B2%A8%E6%A2%9D%E6%AC%BE.jpg">
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
                <p class="qa-time">星期一 - 星期五(except public holiday)9.00AM - 6.00PM</p>
            </div>
        </div>
        <!-- 右方內容 qa-content end -->
    </section>


</asp:Content>

