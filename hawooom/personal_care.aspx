<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="personal_care.aspx.cs" Inherits="mobile_static_personal_care" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mom_baby_free_shipping.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="am-g  main-contain am-padding-vertical-lg">
        <div class="am-container am-padding-vertical-lg">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/m_b02.png" %>' alt="" style="width: 100%;" />
            </div>
            <div class="mb-shop-block mb-shop-block1">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" ID="products" />
                </ul>
            </div>
        </div>
    </section>
</asp:Content>

