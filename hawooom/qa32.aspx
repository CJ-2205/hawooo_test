<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa32.aspx.cs" Inherits="mobile_qa32" %>

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
                <h4 class="qa-title"><i class="am-icon-caret-right"></i>貨運條款</h4>
                <p class="qa-text">
                    Hawooo.com only provide shipping to Malaysia at the moment。
            <br />
                    <br />
                    All orders will be shipped after the confirmation of Hawooo.com。
            <br />
                    <br />
                    Be prepared to receive your parcel in approximately 5-15 business days！
            <br />
                    <br />
                    Please contact us at：service@hawooo.com
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

