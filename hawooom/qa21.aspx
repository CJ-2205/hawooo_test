<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa21.aspx.cs" Inherits="mobile_qa21" %>

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
          <h4 class="qa-title"><i class="am-icon-caret-right"></i>要如何團購？</h4>
          <p class="qa-text">至限時團購頁面 > 挑選商品 > 選擇規格與數量 > 加入購物車 > 完成！
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

