<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa.aspx.cs" Inherits="mobile_qa" %>

<%--<%@ Register Src="~/mobile/control/aboutmenu2.ascx" TagPrefix="uc1" TagName="aboutmenu2" %>--%>
<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <uc1:member_class runat="server" ID="member_class" />
    <!-- 麵包屑 Start-->

    <section class="member-order-tab-section member-margin" id="zhPanel" runat="server" style="margin-top: 0">
        <div class="am-tabs" id="member-order-tab-wrapper">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <li class="am-active"><a href="javascript:void(0)">客戶服務</a></li>
                <li><a href="javascript:void(0)">條款說明</a></li>
            </ul>
            <div class="am-tabs-bd">
                <!-- 客戶服務 開始-->
                <div class="am-tab-panel am-active qa-tab">
                    <ul>
                        <a href="qa11.aspx">
                            <li>如何註冊帳號?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa16.aspx">
                            <li>什麼是Ha幣?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa03.aspx">
                            <li>什麼是購物金?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa04.aspx">
                            <li>查看Ha幣和購物金<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa05.aspx">
                            <li>使用Ha幣和購物金<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <a href="qa12.aspx">
                            <li>購物流程說明<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <a href="qa13.aspx">
                            <li>如何付款？<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa06.aspx">
                            <li>刷卡失敗如何重新付款？<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <a href="qa14.aspx">
                            <li>如何計算運費？<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa07.aspx">
                            <li>消費滿額多少免運？<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa08.aspx">
                            <li>多久會收到商品？<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa09.aspx">
                            <li>查詢出貨狀態<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa10.aspx">
                            <li>查詢訂單狀態<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa15.aspx">
                            <li>如何取消訂單<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <a href="qa17.aspx">
                            <li>是否能退換貨<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa18.aspx">
                            <li>如何退換商品<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa19.aspx">
                            <li>什麼是買貴通報?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                    </ul>
                </div>
                <!-- 客戶服務 結束-->

                <!-- 條款說明 開始-->
                <div class="am-tab-panel qa-tab">
                    <ul>
                        <a href="qa31.aspx">
                            <li>服務條款<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa34.aspx">
                            <li>隱私權條款<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                    </ul>
                </div>
                <!-- 條款說明 結束-->
            </div>
        </div>
    </section>


    <section class="member-order-tab-section member-margin" id="enPanel" runat="server" style="margin-top: 0">
        <div class="am-tabs" id="member-order-tab-wrapper">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <li class="am-active"><a href="javascript:void(0)">FAQ</a></li>
                <li><a href="javascript:void(0)">Terms</a></li>
            </ul>
            <div class="am-tabs-bd">
                <!-- 客戶服務 開始-->
                <div class="am-tab-panel am-active qa-tab-eng">
                    <ul>
                        <a href="qa11.aspx">
                            <li>How to register an account?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa16.aspx">
                            <li>What is Ha Coin?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa03.aspx">
                            <li>What is HaWooo shopping credit?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa04.aspx">
                            <li>How can I check the Ha Coin and HaWooo shopping credit?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa05.aspx">
                            <li>How to use Ha Coin and HaWooo shopping credit?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--orders-->
                        <a href="qa12.aspx">
                            <li>How to place an order?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--payments-->
                        <a href="qa13.aspx">
                            <li>What are the payment methods available?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa06.aspx">
                            <li>How to repay my order, if I have yet to pay it?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--Shipping & Delivery-->
                        <a href="qa14.aspx">
                            <li>Shipping fees<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa07.aspx">
                            <li>How do get free shipping?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa08.aspx">
                            <li>When will I receive my parcel?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa09.aspx">
                            <li>How to track my shipment?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa10.aspx">
                            <li>How to differentiate the order status?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa15.aspx">
                            <li>How do I cancel my order?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--Returns & Refunds-->
                        <a href="qa17.aspx">
                            <li>Can I return my purchase?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa18.aspx">
                            <li>How to exchange or return the item?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--Price Comparison-->
                        <a href="qa19.aspx">
                            <li>What is HaWooo Price Comparison Service?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                    </ul>
                </div>
                <!-- 客戶服務 結束-->

                <!-- 條款說明 開始-->
                <div class="am-tab-panel qa-tab">
                    <ul>
                        <a href="qa31.aspx">
                            <li>Terms of Service<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa34.aspx">
                            <li>Privacy Policy<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                    </ul>
                </div>
                <!-- 條款說明 結束-->
            </div>
        </div>
    </section>


    <%-- <section class="member-order-tab-section member-margin" id="enPanel" runat="server" style="margin-top: 0">
        <div class="am-tabs" id="member-order-tab-wrapper_en">
            <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify member-order-tab">
                <li class="am-active"><a href="javascript:void(0)">FAQ</a></li>
                <li><a href="javascript:void(0)">Terms</a></li>
            </ul>
            <div class="am-tabs-bd">
                <!-- 客戶服務 開始-->
                <div class="am-tab-panel am-active qa-tab-eng">
                    <ul>
                        <a href="qa11.aspx">
                            <li>How to register an account?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa16.aspx">
                            <li>What is Ha Coin?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa03.aspx">
                            <li>What is HaWooo shopping credit?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa04.aspx">
                            <li>How can I check the Ha Coin and HaWooo shopping credit?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa05.aspx">
                            <li>How to use Ha Coin and HaWooo shopping credit?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--orders-->
                        <a href="qa12.aspx">
                            <li>How to place an order?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--payments-->
                        <a href="qa13.aspx">
                            <li>What are the payment methods available?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa06.aspx">
                            <li>How to repay my order, if I have yet to pay it?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--Shipping & Delivery-->
                        <a href="qa14.aspx">
                            <li>Shipping fees<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa07.aspx">
                            <li>How do get free shipping?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa08.aspx">
                            <li>When will I receive my parcel?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa09.aspx">
                            <li>How to track my shipment?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa10.aspx">
                            <li>How to differentiate the order status?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa15.aspx">
                            <li>How do I cancel my order?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--Returns & Refunds-->
                        <a href="qa17.aspx">
                            <li>Can I return my purchase?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa18.aspx">
                            <li>How to exchange or return the item?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                        <!--Price Comparison-->
                        <a href="qa19.aspx">
                            <li>What is HaWooo Price Comparison Service?<i class="am-icon-angle-right am-fr"></i></li>
                        </a>

                    </ul>
                </div>
                <!-- 客戶服務 結束-->

                <!-- 條款說明 開始-->
                <div class="am-tab-panel qa-tab">
                    <ul>
                        <a href="qa31.aspx">
                            <li>Terms of Service<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                        <a href="qa34.aspx">
                            <li>Privacy Policy<i class="am-icon-angle-right am-fr"></i></li>
                        </a>
                    </ul>
                </div>
                <!-- 條款說明 結束-->
            </div>
        </div>
    </section>--%>
    <uc1:member_center_class runat="server" ID="member_center_class" />


    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
            $('#member-order-tab-wrapper_en').tabs();
        })
    </script>
</asp:Content>

