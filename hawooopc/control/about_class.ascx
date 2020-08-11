<%@ Control Language="C#" AutoEventWireup="true" CodeFile="about_class.ascx.cs" Inherits="user_control_about_class" %>
<div data-am-sticky="{top:125}" id="about_class">
    <div style="width: 180px; margin-left: 30px; padding: 1px; background-color: #ffffff" class="boxshadow">
        <div class="class_panel_title" style="background-color: #ff8e95; height: 30px; padding-top: 5px; color: #ffffff">&nbsp;&nbsp;<i class="am-icon-bomb"></i>&nbsp;客戶服務 <span style="font-size: 12px">Events</span></div>
        <ul class="classbar" style="padding-left: 10px;">
            <li><a href="about01.aspx"><i class="am-icon-caret-right"></i>&nbsp;如何加入會員？</a></li>
            <li><a href="about02.aspx"><i class="am-icon-caret-right"></i>&nbsp;如何訂購商品？</a></li>
            <li><a href="about03.aspx"><i class="am-icon-caret-right"></i>&nbsp;如何線上付款？</a></li>
            <li><a href="about04.aspx"><i class="am-icon-caret-right"></i>&nbsp;物流派送規則 </a></li>
            <li><a href="about05.aspx"><i class="am-icon-caret-right"></i>&nbsp;折扣券說明</a></li>
            <li><a href="about11.aspx"><i class="am-icon-caret-right"></i>&nbsp;訂單狀態說明</a></li>
            <li><a href="about06.aspx"><i class="am-icon-caret-right"></i>&nbsp;常見問題Q&A</a></li>
        </ul>
        <div class="class_panel_title" style="background-color: #00d3e0; height: 30px; padding-top: 5px; color: #ffffff">&nbsp;&nbsp;<i class="am-icon-star"></i>&nbsp;代購服務 <span style="font-size: 12px">Brands</span></div>
        <ul class="classbar" style="padding-left: 1em;">
            <li><a href="about07.aspx"><i class="am-icon-caret-right"></i>&nbsp;代購流程說明</a></li>
            <li><a href="about03.aspx"><i class="am-icon-caret-right"></i>&nbsp;代購線上付款</a></li>
            <li><a href="about08.aspx"><i class="am-icon-caret-right"></i>&nbsp;代購費用規則</a></li>
            <li><a href="about09.aspx"><i class="am-icon-caret-right"></i>&nbsp;代購物流說明</a></li>
            <li><a href="about10.aspx"><i class="am-icon-caret-right"></i>&nbsp;常見問題Q&A</a></li>
        </ul>
        <div class="class_panel_title" style="background-color: #9a9a9a; height: 30px; padding-top: 5px; color: #ffffff">&nbsp;&nbsp;<i class="am-icon-star"></i>&nbsp;條款說明 <span style="font-size: 12px">Brands</span></div>
        <ul class="classbar" style="padding-left: 1em;">
            <li><a href="about15.aspx"><i class="am-icon-caret-right"></i>&nbsp;服務條款</a></li>
            <li><a href="about13.aspx"><i class="am-icon-caret-right"></i>&nbsp;貨運條款</a></li>
            <li><a href="about14.aspx"><i class="am-icon-caret-right"></i>&nbsp;退貨條款</a></li>
            <li><a href="about12.aspx"><i class="am-icon-caret-right"></i>&nbsp;隱私權</a></li>
        </ul>
    </div>
</div>
<script>
    $(window).scroll(function () {
        last = $("body").height() - $(window).height();
        if ($(window).scrollTop() >= last) {

        }
    })
</script>
