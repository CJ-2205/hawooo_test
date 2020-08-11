<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="BeautyChoice.aspx.cs" Inherits="mobile_static_BeautyChoice" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/YesTaiwanSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="banner-box">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190717/bn_03cm.png" %>' alt="" style="width: 100%;" />
    </div>


    <div class="am-g bg-color2">

        <div class="mb-product-block">
            <ul class="am-avg-sm-2 am-avg-md-3  product-item-box am-center">
                <uc1:products runat="server" ID="products" />
            </ul>
        </div>
    </div>


</asp:Content>

