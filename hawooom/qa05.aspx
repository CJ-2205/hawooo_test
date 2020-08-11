<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa05.aspx.cs" Inherits="mobile_qa05" %>

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

    <div style="margin-top: 20px" id="zhPanel" runat="server">
        <section class="am-container member-margin">
            <div class="qa-wrapper">
                <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a>如何使用Ha幣和購物金？</h4>
                <hr style="margin: 0">

                <div class="qa-content">


                    <h5 class="qa-step">‧<p class="qa-step-title">下單時請留意以下資訊：<br>
                        「使用Ha幣」點選所要使用的折抵方式：1500點折抵運費 or 全額折抵訂單金額。<br>
                        「使用購物金」輸入所要使用的金額。</p>
                    </h5>

                    <h5 class="qa-step">‧<p class="qa-step-note">(備註:使用後，請確認金額是否扣除)</p>
                    </h5>

                </div>
            </div>
        </section>

        <h4 class="qa-wantmore">還有其他問題嗎？</h4>

        <section class=" am-panel-default qa-wantmore-section qa-wantmore-section-hw">

            <div class="am-panel-hd">

                <a href="">
                    <div class="am-g am-g-collapse" style="margin: .4em 0">
                        <div class="am-u-sm-1">
                            <i class="am-icon-volume-down qa-wantmore-iconphone"></i>
                        </div>
                        <div class="am-u-sm-11">
                            <p class="qa-wantmore-text" style="text-align: left"><b>Phone</b><br>
                                +603-23866096</p>

                        </div>
                    </div>
                </a>

            </div>



            <div class="am-panel-hd" style="margin-top: .5em;">

                <a href="">
                    <div class="am-g am-g-collapse" style="margin: .4em 0">
                        <div class="am-u-sm-1">
                            <i class="am-icon-at qa-wantmore-iconmail"></i>
                        </div>
                        <div class="am-u-sm-11">
                            <p class="qa-wantmore-text" style="text-align: left"><b>e-mail</b><br>
                                service@hawooo.com</p>

                        </div>
                    </div>
                </a>

            </div>
        </section>
    </div>


    <div style="margin-top: 20px" id="enPanel" runat="server">
        <section class="am-container member-margin">
            <div class="qa-wrapper">
                <h4 class="qa-title"><a href="qa.aspx"><i class="am-icon-angle-left qa-angle-back"></i></a>How to use Ha Coin and HaWooo shopping credit?</h4>
                <hr style="margin: 0">

                <div class="qa-content">


                    <h5 class="qa-step">‧<p class="qa-step-title">There are Ha Coin and shopping credit column at the checkout page. The total amount will deducted once the Ha Coin or/and shopping credit used.</p>
                    </h5>



                </div>
            </div>
        </section>

        <h4 class="qa-wantmore">Need further clarifications?</h4>

        <section class=" am-panel-default qa-wantmore-section qa-wantmore-section-hw" >

            <div class="am-panel-hd">

                <a href="">
                    <div class="am-g am-g-collapse" style="margin: .4em 0">
                        <div class="am-u-sm-1">
                            <i class="am-icon-volume-down qa-wantmore-iconphone"></i>
                        </div>
                        <div class="am-u-sm-11">
                            <p class="qa-wantmore-text" style="text-align: left"><b>Phone</b><br>
                                +603-23866096</p>

                        </div>
                    </div>
                </a>

            </div>



            <div class="am-panel-hd" style="margin-top: .5em;">

                <a href="">
                    <div class="am-g am-g-collapse" style="margin: .4em 0">
                        <div class="am-u-sm-1">
                            <i class="am-icon-at qa-wantmore-iconmail"></i>
                        </div>
                        <div class="am-u-sm-11">
                            <p class="qa-wantmore-text" style="text-align: left"><b>e-mail</b><br>
                                service@hawooo.com</p>

                        </div>
                    </div>
                </a>

            </div>
        </section>
    </div>
    <uc1:member_center_class runat="server" ID="member_center_class" />


    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
            $('#member-order-tab-wrapper_en').tabs();
        })
    </script>
</asp:Content>

