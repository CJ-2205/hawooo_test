<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="EditorChoice.aspx.cs" Inherits="user_static_EditorChoice" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/YesTaiwanSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-container">

        <div class="banner-box">
            <img   src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_02c.png" %>' alt="" style="width: 100%;" />
        </div>

        <section class="bg-color1">
            <div class="product-block" id="product-make31">
                <ul class="am-avg-sm-4  am-padding-sm">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
    </div>


</asp:Content>

