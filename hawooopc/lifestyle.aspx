<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="lifestyle.aspx.cs" Inherits="user_static_mycybersale_lifestyle" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mycybersale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="am-container  am-padding-vertical-lg main-contain">
            <section class="shop-block-wrap  am-padding-vertical-lg am-margin-vertical-lg">
                <div class="banner-box am-text-center ">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_07.png" %>' alt="Banner" style="width: 100%;" />
                </div>
                <div class="shop-block  shop-theme-pag am-padding" id="product-make1">
                    <ul class="am-avg-sm-4  am-padding-sm">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <script>
        $(function () {
            $("#product-make1 li").attr("class", "am-fl hvr-float");
        });
    </script>
</asp:Content>

