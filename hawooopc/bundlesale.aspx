<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="bandlesale.aspx.cs" Inherits="user_static_merdeka_sale_bandle_sale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/merdekasale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-container  am-padding-vertical-lg" id="bandle-sale">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190822/b_01.png" %>' alt="主banner" style="width: 100%;" />
        </div>
        <section class="shop-block shop-block5">
            <ul class="am-avg-sm-4  am-padding-sm" style="background-color: #f5e3c8">
                <uc1:products runat="server" id="products" />
            </ul>
        </section>
    </div>
    <script>
        $(function () {
            $("#bandle-sale li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>
</asp:Content>

