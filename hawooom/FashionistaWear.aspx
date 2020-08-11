﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="FashionistaWear.aspx.cs" Inherits="mobile_static_FriendshipDaySale_FashionistaWear" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/FriendshipDaySale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="banner-box">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190722/bn_04_1cm.png" %>' alt="banner" style="width: 100%;" />
    </div>

    <div class="am-g  shop-block4">
        <div class="mb-product-block">
            <ul class="am-avg-sm-2 am-avg-md-3  product-item-box am-center">
                <uc1:products runat="server" ID="products" />
            </ul>
        </div>
    </div>
</asp:Content>
