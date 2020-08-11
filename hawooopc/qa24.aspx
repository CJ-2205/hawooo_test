<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa24.aspx.cs" Inherits="user_qa24" %>

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
                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#qa-tab-2'}">團購服務
                        <i class="am-fr am-icon-angle-down"></i>
                        </h4>
                    </div>
                    <div id="qa-tab-2" class="am-panel-collapse am-collapse am-in">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa21.aspx">團購流程說明</a></li>
                                <li><a href="qa22.aspx">團購線上付款</a></li>
                                <li><a href="qa23.aspx">團購費用規則</a></li>
                                <li class="active"><a href="qa24.aspx">團購物流說明</a></li>
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
                    <div id="qa-tab-3" class="am-panel-collapse am-collapse">
                        <div class="am-panel-bd qa-list">
                            <ul>
                                <li><a href="qa31.aspx">服務條款</a></li>
                                <li><a href="qa32.aspx">貨運條款</a></li>
                                <li><a href="qa33.aspx">退貨條款</a></li>
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
            <h4 class="qa-height qa-maintitle">物流規則？</h4>
            <div class="qa-main">
                <p class="qa-text">產品都是台灣直送，5 - 15 個工作天內會送到。</p>
                <hr>
                <h4 class="qa-subtitle">怎麼退貨？</h4>
                <p class="qa-text">所有限時團購商品皆是原廠正品，並有專人驗貨確保瑕疵品等問題。本區無提供退換貨服務，敬請諒解。</p>
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

