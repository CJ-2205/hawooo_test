<%@ Control Language="C#" AutoEventWireup="true" CodeFile="memberleftclass.ascx.cs" Inherits="usercode_control_memberleftclass" %>
<!--  左邊導覽 -->
<div class="am-fl member-sidemenu">
    <ul class="memeber-sidetab">
        <a href="member_card.aspx">
            <li>
                <img src="icon/member-profile.png" />
                <span class="txtRsc" data-id="m040">我的會員卡</span></li>
        </a>
        <a href="memberinfo.aspx">
            <li>
                <img src="icon/member-profile.png" />
                <span class="txtRsc" data-id="m009">我的資訊</span></li>
        </a>
        <a href="memberorder.aspx">
            <li>
                <img src="icon/member-order.png" />
                <span class="txtRsc" data-id="m010">我的訂單</span> </li>
        </a>
        <a href="memberhacoin.aspx">
            <li>
                <img src="icon/member-ha.png">
                <span class="txtRsc" data-id="m011">我的HA幣</span>
                <span class="member-bonus-left"></span></li>
        </a>
        <a href="membergold.aspx">
            <li>
                <img src="icon/member-balance.png">
                <span class="txtRsc" data-id="m012">我的購物金</span>
                <span class="member-bonus-left"></span></li>
        </a>
        <a href="membercoupon.aspx">
            <li>
                <img src="icon/member-vouchers.png">
                <span class="txtRsc" data-id="m013">我的折扣卷</span>
            </li>
        </a>
        <%-- <a href="member_love.aspx">
            <li>
                <img src="icon/member-view.png">我的最愛</li>
        </a>--%>
        <a href="qa.aspx">
            <li>
                <img src="icon/member-qa.png">
                <span class="txtRsc" data-id="m014">常見問題</span>
            </li>
        </a>
    </ul>
    <%-- <div class="member-sidepic">
        <a href="https://www.hawooo.com/user/20170921.aspx">
            <img src="../images/adimgs/o20170925094915508.png"></a>
    </div>--%>
    <%--  <div class="member-sidepic">
        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8833">
            <img src="../images/adimgs/o20170712095559749.png"></a>
    </div>--%>
    <div class="member-sidepic">
        <a href="http://www.hawooo.com/user/calander.aspx">
            <img src="../images/adimgs/o20170117100057889.png"></a>
    </div>
</div>
