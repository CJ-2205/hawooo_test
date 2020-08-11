<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20200319VIP_super_deals.aspx.cs" Inherits="mobile_static_20200319VIP_super_deals" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200319VIP_exclusive_sales.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bbn_01m.png" %>' alt="bbn_03m" style="width: 100%;" />
            </div>
            <section>
                <div class="mb-shop-block bg1 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

