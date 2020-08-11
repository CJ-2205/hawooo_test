<%@ Control Language="C#" AutoEventWireup="true" CodeFile="memberclass.ascx.cs" Inherits="usercode_control_memberclass" %>
<div class="am-panel boxshadow">
    <div class="class_panel_title" style="padding-left: 10px; height: 30px; vertical-align: middle; text-align: left; font-size: 16px; padding-top: 3px"><a href="member_center.aspx"><i class="am-icon-arrow-circle-o-down"></i>&nbsp;會員中心</a></div>
    <hr style="margin: 1px;" />
    <ul class="classbar" id="brand_class">
        <li>
            <a href="member_card.aspx" id="mc11"><i class="am-icon-caret-right"></i>&nbsp;會員卡</a>
        </li>
        <li>
            <a href="memberinfo.aspx" id="mc01"><i class="am-icon-caret-right"></i>&nbsp;資料管理</a>
        </li>
        <li>
            <a href="memberorder.aspx" id="mc02"><i class="am-icon-caret-right"></i>&nbsp;訂單管理</a>
        </li>
       <%-- <li>
            <a href="memberborder.aspx" id="mc09"><i class="am-icon-caret-right"></i>&nbsp;代購單管理</a>
        </li>--%>
        <li><a href="membergold.aspx" id="mc03"><i class="am-icon-caret-right"></i>&nbsp;購物金紀錄</a></li>
        <li><a href="membercoupon.aspx" id="mc04"><i class="am-icon-caret-right"></i>&nbsp;折扣卷紀錄</a></li>
        <li><a href="memberhacoin.aspx" id="mc10"><i class="am-icon-caret-right"></i>&nbsp;Ha幣記錄</a></li>
        <li><a href="membertrack.aspx" id="mc05"><i class="am-icon-caret-right"></i>&nbsp;追蹤商品</a></li>
        <%--<li><a href="#" id="mc06"><i class="am-icon-caret-right"></i>&nbsp;討論紀錄</a></li>--%>
        <%--        <li><a href="membercommend.aspx" id="mc07"><i class="am-icon-caret-right"></i>&nbsp;推薦紀錄</a></li>
        <li><a href="membercode.aspx" id="mc08"><i class="am-icon-caret-right"></i>&nbsp;推薦連結</a></li>--%>
    </ul>
</div>
