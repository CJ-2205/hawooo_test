<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="Buy2itemsGet10OFF.aspx.cs" Inherits="mobile_static_Buy2itemsGet10OFF" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/MoonFestivalSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g am-padding-vertical-lg mb-main-contain" style="background-size: cover;">
        <section class="shop-block-wrap  mb-shop-block-wrap5 ">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_03m.png" %>' alt="" style="width: 100%;" />
            </div>
            <div class="mb-shop-block mb-shop-block5 am-padding-bottom-lg">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
    </div>
</asp:Content>

