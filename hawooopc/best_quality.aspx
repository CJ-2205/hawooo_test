<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="best_quality.aspx.cs" Inherits="user_static_best__quality_" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mit_mega_sale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="am-container  am-padding-vertical-lg main-contain" id="block">
            <section class="shop-block-wrap  am-padding-vertical-lg am-margin-vertical-lg">
                <div class="banner-box am-text-center ">
                    <a href="best_quality.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190912/bn_2.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>
                <div class="shop-block shop-block1 am-padding" id="product-make1">
                    <ul class="am-avg-sm-4  am-padding-sm">
                        <uc1:products runat="server" ID="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>

    <script>
        $(function () {
            $("#block li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>
</asp:Content>

