﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="ValueBuy.aspx.cs" Inherits="user_static_ValentinesDay_ValueBuy" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2019ValentinesDay.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-container  am-padding-vertical-lg" id="valueBuy">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_v.png" %>' alt="banner" style="width: 100%;" />
        </div>
        <section class="shop-block shop-block1">
            <ul class="am-avg-sm-4  am-padding-sm">
                <uc1:products runat="server" id="products" />
            </ul>
        </section>
    </div>
    <script>
        $(function () {
            $("#valueBuy li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>
</asp:Content>

