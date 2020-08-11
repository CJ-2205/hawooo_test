<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="buy1free1.aspx.cs" Inherits="mobile_static_buy1free1" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/4th_birthday.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container am-padding-vertical-lg">
            <div class="banner-box">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191010/bn_03m.png" alt="bn_03m" style="width: 100%;" />
            </div>
            <section class="shop-block-wrap am-margin-top-sm">
                <div class="mb-shop-block mb-shop-bg goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

