<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Instant_noodles.aspx.cs" Inherits="user_static_Instant_noodles" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/taiwan_food_festival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <section class="shop-block-wrap am-container  am-padding-vertical-lg am-margin-vertical-lg">
            <div class="banner-box am-text-center am-g">
                <a href="Instant_noodles.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191004/bn_04.png" %>' alt="Banner" style="width: 100%;" />
                </a>
            </div>

            <div>
                <div class="shop-block-bg am-padding shop-block" id="productBlock">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" ID="products" />
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <script>
        $(function () {
            $("#productBlock li").attr("class", "am-fl  hvr-float");
        });
    </script>
</asp:Content>

