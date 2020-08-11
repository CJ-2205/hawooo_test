<%@ Control Language="C#" AutoEventWireup="true" CodeFile="aboutmenu2.ascx.cs" Inherits="mobile_control_aboutmenu2" %>

<%--<nav data-am-widget="menu" class="am-menu  am-menu-dropdown1" data-am-menu-collapse>
    <a href="#" data-am-offcanvas="{target: '#menu'}" class="am-menu-toggle" style="color:#fd6b73">
        <span class="am-menu-toggle-title" >問答清單</span>
        <i class="am-menu-toggle-icon am-icon-reorder"></i>
    </a>
    <div id="menu" class="am-offcanvas">
        <div class="am-offcanvas-bar am-offcanvas-bar-flip">
            <div class="am-offcanvas-content">
                <ul class="am-menu-nav">
                    <li><a style="background-color: #FF8E95; color: #ffffff">客戶服務</a> </li>
                    <li><a href="about01.aspx" class="">如何加入會員？</a> </li>
                    <li><a href="about02.aspx" class="">如何訂購商品？</a> </li>
                    <li><a href="about03.aspx" class="">如何線上付款？</a> </li>
                    <li><a href="about04.aspx" class="">物流派送規則</a> </li>
                    <li><a href="about05.aspx" class="">折扣券說明</a> </li>
                    <li><a href="about06.aspx" class="">常見問題Q&A</a> </li>
                
                </ul>
            </div>
        </div>
    </div>
</nav>--%>

<%--首頁用--%>
<link rel="stylesheet" href="assets/css/brand2.css">

<section class="am-g brand-catalog-title-w" style="z-index: 999">
    <div class="brand-catalog-title  am-cf">
        <button class="am-btn am-btn-primary b-collapse-title am-collapsed" data-am-collapse="{target: '#brands-nav'}" onclick="event.returnValue=false;">
            <h3 class="am-fl">會員中心 >
              <asp:Literal ID="lit_class_txt" runat="server"></asp:Literal></h3>
            <i class="am-icon-caret-down am-fr"></i>
        </button>
    </div>
    <nav class="brand-catalog-nav">
        <ul id="brands-nav" class="am-nav am-collapse" style="height: 0px;">
            <li><a href="about01.aspx">如何加入會員?</a></li>
            <li><a href="about02.aspx">如何訂購商品?</a></li>
            <li><a href="about03.aspx">如何線上付款?</a></li>
            <li><a href="about04.aspx">物流派送規則</a></li>
            <li><a href="about05.aspx">折扣券說明</a></li>
            <li><a href="about06.aspx">常見問題Q&A</a></li>
        </ul>
    </nav>

</section>
