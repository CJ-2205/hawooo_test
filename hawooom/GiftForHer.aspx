<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="GiftForHer.aspx.cs" Inherits="mobile_static_ValentinesDay_GiftForHer" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2019ValentinesDay.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container am-padding-vertical-lg" id="mb-giftForHer">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190808/bn_gm.png" %>' alt="" style="width: 100%;" />
        </div>
        <section class="shop-block-wrap  mb-shop-block-wrap2">
            <div class="mb-shop-block mb-shop-block2">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
        </section>
    </div>
</asp:Content>

