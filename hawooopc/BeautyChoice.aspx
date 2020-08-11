<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="BeautyChoice.aspx.cs" Inherits="user_static_BeautyChoice" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link href="assets/css/YesTaiwanSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="am-container">

        <div class="banner-box">
            <img   src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_03c.png" %>'   alt="" style="width: 100%;" />
        </div>

        <section class="bg-color2">
            <div class="product-block">
                <ul class="am-avg-sm-4  am-padding-sm">             
                            <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>

    </div>

</asp:Content>

