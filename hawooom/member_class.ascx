<%@ Control Language="C#" AutoEventWireup="true" CodeFile="member_class.ascx.cs" Inherits="member_class" %>




<%--首頁用--%>
<link rel="stylesheet" href="assets/css/brand2.css">

<section class="am-g brand-catalog-title-w" style="z-index: 999">
    <div class="brand-catalog-title  am-cf">
        <button class="am-btn am-btn-primary b-collapse-title am-collapsed" data-am-collapse="{target: '#brands-nav'}" onclick="event.returnValue=false;">
            <h3 class="am-fl">
                <asp:Literal ID="lit_class_txt" runat="server"></asp:Literal></h3>
            <i class="am-icon-caret-down am-fr"></i>
        </button>
    </div>
    <nav class="brand-catalog-nav" style="top: 45px">
        <ul id="brands-nav" class="am-nav am-collapse" style="height: 0px;">
            <li><a href="memberorder.aspx">
                <span class="txtRsc" data-id="m010">我的訂單</span>
            </a></li>
            <li><a href="memberinfo.aspx">
                <span class="txtRsc" data-id="m009">我的資訊</span>
            </a></li>
            <li><a href="membercoin.aspx">
                <span class="txtRsc" data-id="m011">我的Ha幣</span>
            </a></li>
            <li><a href="membergold.aspx">
                <span class="txtRsc" data-id="m012">我的購物金</span>
            </a></li>
            <li><a href="membercoupon.aspx">
                <span class="txtRsc" data-id="m013">我的折扣券</span>
            </a></li>
            <li><a href="track.aspx">
                <span class="txtRsc" data-id="mb009">收藏商品</span>
            </a></li>
            <li><a href="qa.aspx">
                <span class="txtRsc" data-id="mb010">常見問題</span>
            </a></li>
            <li><a href="logout.aspx">
                <span class="txtRsc" data-id="hal004">登出</span>
            </a></li>
        </ul>
    </nav>

</section>
