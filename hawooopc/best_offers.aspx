<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="best_offers.aspx.cs" Inherits="user_static_best_offers" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/malaysia_day_sale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="am-g main-contain">
        <div class="am-container  am-padding-vertical-lg main-contain">
            <section class="shop-block-wrap  am-padding-vertical-lg am-margin-vertical-lg">
                <div class="banner-box am-text-center ">
                    <a href="best_offers.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190913/BN_02.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="shop-block shop-block1 am-padding" id="product-make1">
                    <ul class="am-avg-sm-4  am-padding-sm">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>

</asp:Content>

