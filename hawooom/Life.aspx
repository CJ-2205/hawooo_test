<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="life.aspx.cs" Inherits="mobile_static_life" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/malaysia_day_sale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container am-padding-vertical-lg">
            <div class="banner-box">
                <img src="https://www.hawooo.com/images/ftp/20190913/MBN_06.png" alt="" style="width: 100%;" />
            </div>
            <section class="shop-block-wrap">
                <div class="mb-shop-block mb-shop-block6">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

