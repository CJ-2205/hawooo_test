<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="best_quality.aspx.cs" Inherits="mobile_static_best__quality_" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mit_mega_sale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container am-padding-vertical-lg">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_2m.png" %>' alt="" style="width: 100%;" />
            </div>
            <section class="shop-block-wrap">
                <div class="mb-shop-block mb-shop-block1">
                    <ul class="am-avg-sm-2 am-avg-md-3 ">
                        <uc1:products runat="server" ID="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

