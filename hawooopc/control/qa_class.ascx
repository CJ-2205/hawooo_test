<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qa_class.ascx.cs" Inherits="qa_class" %>

<!-- 限時團購內頁 -->
<link rel="stylesheet" href="assets/css/qa.css">
<!-- 通用＋menu -->


<!--  product breadcrumb（商品頁麵包屑） star-->
<section class="product-breadcrumb-section">
    <div class="am-container product-breadcrumb-wrapper">
        <ul class="am-u-sm-12 am-cf">
            <li class="am-fl product-breadcrumb">
                <a href="#">HaWooo</a>
            </li>
            <li class="am-fl product-breadcrumb">
                <a href="qa.aspx">F&Q</a>
            </li>
            <li class="am-fl product-breadcrumb">
                <a href="#">
                    <asp:Literal ID="lit_class_txt" runat="server"></asp:Literal></a>
            </li>
        </ul>
    </div>
</section>
