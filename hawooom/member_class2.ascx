<%@ Control Language="C#" AutoEventWireup="true" CodeFile="member_class2.ascx.cs" Inherits="member_class2" %>


<%--<div class="page-menu-Box">
    <p class="pagelink">
        會員中心 >
        <asp:Literal ID="lit_class_txt" runat="server"></asp:Literal>
    </p>
    <nav data-am-widget="menu" class="am-menu  am-menu-dropdown1" data-am-menu-collapse>
        <a href="javascript: void(0)" class="am-menu-toggle">
            <span class="am-menu-toggle-title">項目選擇</span>
            <i class="am-menu-toggle-icon am-icon-angle-right"></i>
        </a>
        <ul class="am-menu-nav am-avg-sm-1 am-collapse">
            <li class="am-parent">
                <a href="#" class="">資料管理</a>
                <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
                    <li>
                        <a href="memberinfo.aspx">基本資料</a>
                    </li>
                    <li>
                        <a href="memberpw.aspx">密碼修改</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="memberorder.aspx" class="">訂單管理</a>
            </li>
            <li>
                <a href="memberborder.aspx" class="">代購單管理</a>
            </li>
            <li>
                <a href="membercoin.aspx" class="">Ha幣管理</a>
            </li>
            <li>
                <a href="membergold.aspx" class="">購物金紀錄</a>
            </li>
            <li>
                <a href="membercoupon.aspx" class="">折扣卷紀錄</a>
            </li>
         
            <li>
                <a href="logout.aspx" class="">會員登出</a>
            </li>
        </ul>
    </nav>
</div>--%>

<%--首頁用--%>
<link rel="stylesheet" href="assets/css/brand2.css">

<section class="am-g brand-catalog-title-w" style="z-index:9999">
    <div class="brand-catalog-title  am-cf">
        <button class="am-btn am-btn-primary b-collapse-title am-collapsed" data-am-collapse="{target: '#brands-nav'}" onclick="event.returnValue=false;">
            <h3 class="am-fl">
                <asp:Literal ID="lit_class_txt" runat="server"></asp:Literal></h3>
            <i class="am-icon-caret-down am-fr"></i>
        </button>
    </div>
    <nav class="brand-catalog-nav">
        <ul id="brands-nav" class="am-nav am-collapse" style="height: 0px;">
            <li><a href="memberinfo.aspx">會員資訊</a></li>
            <li><a href="memberorder.aspx">訂單管理</a></li>
            <li><a href="membergold.aspx">購物金管理</a></li>
            <li><a href="membercoupon.aspx">折扣券管理</a></li>
            <li><a href="about06.aspx">常見問題</a></li>
            <li><a href="logout.aspx">會員登出</a></li>
        </ul>
    </nav>
</section>
