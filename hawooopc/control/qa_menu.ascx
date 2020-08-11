<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qa_menu.ascx.cs" Inherits="user_control_qa_menu" %>
<!-- 限時團購內頁 -->
<link rel="stylesheet" href="assets/css/qa.css">
<!-- 通用＋menu -->
<link rel="stylesheet" href="assets/css/header.css">



<%--<section class="product-breadcrumb-section">--%>
<%--    <div class="am-container product-breadcrumb-wrapper">
        <ul class="am-u-sm-12 am-cf">
            <li class="am-fl product-breadcrumb">
                <a href="#">HaWooo</a>
            </li>
            <li class="am-fl product-breadcrumb">
                <a href="#">F&Q問與答</a>
            </li>
            <li class="am-fl product-breadcrumb">
                <a href="#">
                    <asp:Literal ID="lit_qa_txt" runat="server"></asp:Literal></a>
            </li>
        </ul>
    </div>--%>

    <!-- qa左邊導覽列 qa-nav start -->
    <div class="qa-nav">
        <h4 class="qa-height q-navtitle">分類</h4>

        <div class="am-panel-group qa-nav-panel" id="accordion">
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-1'}">會員中心
                        <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-1" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa11.aspx">如何註冊帳號？</a></li>
                            <li><a href="qa16.aspx">什麼是Ha幣？</a></li>
                            <li><a href="qa03.aspx">什麼是購物金?</a></li>
                            <li><a href="qa04.aspx">查看Ha幣和購物金</a></li>
                            <li><a href="qa05.aspx">使用Ha幣和購物金</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-2'}">訂購方式
                        <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-2" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa12.aspx">購物流程說明</a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-3'}">付款方式
                        <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-3" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa13.aspx">如何付款？</a></li>
                            <li><a href="qa06.aspx">刷卡失敗如何重新付款</a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-4'}">訂單/物流
                        <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-4" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa14.aspx">如何計算運費？</a></li>
                            <li><a href="qa07.aspx">消費滿額多少免運？</a></li>
                            <li><a href="qa08.aspx">多久會收到商品？</a></li>
                            <li><a href="qa09.aspx">查詢出貨狀態</a></li>
                            <li><a href="qa10.aspx">查詢訂單狀態</a></li>
                            <li><a href="qa15.aspx">如何取消訂單</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-5'}">退換條款
                        <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-5" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa17.aspx">是否能退換貨</a></li>
                            <li><a href="qa18.aspx">如何退換商品</a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-7'}">買貴通報
                        <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-7" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa19.aspx">什麼是買貴通報</a></li>


                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-panel">
                <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-6'}">條款說明
                          <i class="am-fr am-icon-angle-down"></i>
                    </h4>
                </div>
                <div id="qa-tab-6" class="am-panel-collapse am-collapse">
                    <div class="am-panel-bd qa-list">
                        <ul>
                            <li><a href="qa31.aspx">服務條款</a></li>
                            <li><a href="qa34.aspx">隱私權條款</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- qa左邊導覽列 qa-nav end -->
<%--</section>--%>
