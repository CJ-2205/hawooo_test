<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="qa23.aspx.cs" Inherits="mobile_qa23" %>

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
          <h4 class="qa-title"><i class="am-icon-caret-right"></i>團購費用規則</h4>
          <img src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_01.png">
          <img src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_02.png">
          <img src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_03.png">
          <img src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_04.png">
          <img src="https://www.hawooo.com/images/ftp/20170821hacoin/0901_buy_05.png">
          <hr>
          <h4 class="qa-title"><i class="am-icon-caret-right"></i>團購有優惠嗎？</h4>
          <p class="qa-text">買2件商品10%off；買3件80%off (趕快jio朋友一起買啊！)</p>
          <hr>
          <h4 class="qa-title"><i class="am-icon-caret-right"></i>價格怎麼算？</h4>
          <p class="qa-text">全區商品顯示價格，就是最後價格 (已包含國際運費)</p>
          <hr>
          <h4 class="qa-title"><i class="am-icon-caret-right"></i>可以使用網站其他優惠嗎？</h4>
          <p class="qa-text">此區購物車與其他專區分開，優惠不能共用哦。</p>
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

