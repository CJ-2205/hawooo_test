<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="CelebritySquad.aspx.cs" Inherits="user_static_CelebritySquad" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/MoonFestivalSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container  am-padding-vertical-lg" id="bandle-sale">
        <div class="banner-box">
            <img src="https://www.hawooo.com/images/ftp/20190903/bn_02.png" alt="banner" style="width: 100%;" />
        </div>
        <section class="shop-block shop-block5">

            <ul class="am-avg-sm-4  am-padding-sm">
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

