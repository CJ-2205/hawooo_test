<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa22.aspx.cs" Inherits="mobile_qa22" %>

<%--<%@ Register Src="~/mobile/control/aboutmenu2.ascx" TagPrefix="uc1" TagName="aboutmenu2" %>--%>
<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<%@ Register Src="member_center_class.ascx" TagPrefix="uc1" TagName="member_center_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 會員專區專用（所有會員的都塞在裡面） -->
    <link rel="stylesheet" href="assets/css/member2.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <uc1:member_class runat="server" ID="member_class" />

    <!-- 麵包屑 Start-->

    <section class="am-container">
        <div class="qa-wrapper">
            <a href="qa.aspx" class="qa-back"><i class="am-icon-angle-left"></i>回上頁</a>
            <div class="qa-content">
                <h4 class="qa-title"><i class="am-icon-caret-right"></i>如何付款？</h4>
                <h5 class="qa-step">STEP 1<p class="qa-step-title">訂單完成後，畫面會自動跳到填寫付款資料。</p>
                </h5>

                <h5 class="qa-step">STEP 2<p class="qa-step-title">填寫資料完成後，按「Pay Online」。</p>
                </h5>

                <hr>
                <h4 class="qa-title"><i class="am-icon-caret-right"></i>如果刷卡失敗，可以再次付款嗎？</h4>
                <h5 class="qa-step">STEP 1<p class="qa-step-title">訂單完成。</p>
                </h5>

                <h5 class="qa-step">STEP 2<p class="qa-step-title">若是刷卡失敗，請點進訂單查詢，點下您未刷卡完成的訂單編號。</p>
                </h5>

                <h5 class="qa-step">STEP 3<p class="qa-step-title">請點"重新付款"。</p>
                </h5>

                <h5 class="qa-step">STEP 4<p class="qa-step-title">即可有第二次刷卡機會。請輸入相關資訊後，點"Pay Online" 即可完成二次刷卡。</p>
                </h5>
                <h5 class="qa-step">STEP 5<p class="qa-step-title">即若二次刷卡還是未完成，此訂單需要麻煩您透過匯款方式付款</p>
                </h5>
                <p class="qa-text">
                    Bank: Public Ban<br>
                    Account Name: Peoples Map Sdn Bhd<br>
                    Account No: 3201174410<br>
                    <br>
                    CIMB BANK
                    <br>
                    PEOPLES MAP SDN. BHD.
                    <br>
                    80-0327458-9<br>
                    <br>
                    若還是需求molapy刷卡付款，請再次成立訂單，並連繫線上客服協助取消訂單。
            (若訂單有使用折扣優惠即無法取消，請透過匯款方式付款)
                </p>
            </div>
        </div>
    </section>


    <uc1:member_center_class runat="server" ID="member_center_class" />


    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
        })
    </script>


</asp:Content>

