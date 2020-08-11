<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="LifeChoice.aspx.cs" Inherits="mobile_static_LifeChoice" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/YesTaiwanSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-box">
        <img src="https://www.hawooo.com/images/ftp/20190717/bn_04cm.png" alt="banner" style="width: 100%;" />
    </div>


    <div class="am-g bg-color3">

        <div class="mb-product-block">
            <ul class="am-avg-sm-2 am-avg-md-3  product-item-box am-center">
                <uc1:products runat="server" ID="products" />
            </ul>
        </div>
    </div>
</asp:Content>

