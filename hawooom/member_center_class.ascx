<%@ Control Language="C#" AutoEventWireup="true" CodeFile="member_center_class.ascx.cs" Inherits="member_center_class" %>

  <!-- 會員專區專用（所有會員的都塞在裡面） -->
  <link rel="stylesheet" href="assets/css/member2.css"/>


<section class="am-panel am-panel-default member-center-section" id="member-center-section">
    <header class="am-panel-hd">
        <h3 class="am-panel-title txtRsc" data-id="hal001">會員中心</h3>
    </header>
    <div class="am-panel-bd">
        <ul class="am-avg-sm-2">
            <li>
                <a href="https://www.hawooo.com/mobile/memberinfo.aspx">
                    <div class="am-g am-g-collapse member-center-row">
                        <div class="am-u-sm-3">
                            <img src="images/member-profile.png" alt="" class="member-center-icon">
                        </div>
                        <div class="am-u-sm-9 member-center-subTitle-col">
                            <span class="member-center-subTitle txtRsc" data-id="m009">我的資訊</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://www.hawooo.com/mobile/memberorder.aspx">
                    <div class="am-g am-g-collapse member-center-row">
                        <div class="am-u-sm-3">
                            <img src="images/member-order.png" alt="" class="member-center-icon">
                        </div>
                        <div class="am-u-sm-9 member-center-subTitle-col">
                            <span class="member-center-subTitle txtRsc" data-id="m010">我的訂單</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://www.hawooo.com/mobile/membergold.aspx">
                    <div class="am-g am-g-collapse">
                        <div class="am-g am-g-collapse member-center-row">
                            <div class="am-u-sm-3">
                                <img src="images/member-balance.png" alt="" class="member-center-icon">
                            </div>
                            <div class="am-u-sm-9 member-center-subTitle-col">
                                <span class="member-center-subTitle txtRsc" data-id="m012">我的購物金</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://www.hawooo.com/mobile/membercoin.aspx">
                    <div class="am-g am-g-collapse">
                        <div class="am-g am-g-collapse member-center-row">
                            <div class="am-u-sm-3">
                                <img src="images/member-ha.png" alt="" class="member-center-icon">
                            </div>
                            <div class="am-u-sm-9 member-center-subTitle-col">
                                <span class="member-center-subTitle txtRsc" data-id="m011">我的HA幣</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://www.hawooo.com/mobile/membercoupon.aspx">
                    <div class="am-g am-g-collapse">
                        <div class="am-g am-g-collapse member-center-row">
                            <div class="am-u-sm-3">
                                <img src="images/member-vouchers.png" alt="" class="member-center-icon">
                            </div>
                            <div class="am-u-sm-9 member-center-subTitle-col">
                                <span class="member-center-subTitle txtRsc" data-id="m013">我的折扣券</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>

            <li>
                <a href="https://www.hawooo.com/mobile/qa.aspx">
                    <div class="am-g am-g-collapse">
                        <div class="am-g am-g-collapse member-center-row">
                            <div class="am-u-sm-3">
                                <img src="images/member-qa.png" alt="" class="member-center-icon">
                            </div>
                            <div class="am-u-sm-9 member-center-subTitle-col">
                                <span class="member-center-subTitle txtRsc" data-id="m014">常見問題</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <%-- <li>
                    <a href="#">
                        <div class="am-g am-g-collapse">
                            <div class="am-g am-g-collapse member-center-row">
                                <div class="am-u-sm-3">
                                    <img src="images/member-view.png" alt="" class="member-center-icon">
                                </div>
                                <div class="am-u-sm-9 member-center-subTitle-col">
                                    <span class="member-center-subTitle">我的最愛</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <div class="am-g am-g-collapse">
                            <div class="am-g am-g-collapse member-center-row">
                                <div class="am-u-sm-3">
                                   
                                </div>
                                <div class="am-u-sm-9 member-center-subTitle-col">
                                   
                                </div>
                            </div>
                        </div>
                    </a>
                </li>--%>
        </ul>
    </div>
</section>
