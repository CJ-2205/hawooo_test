<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="household_items.aspx.cs" Inherits="user_static_household_items" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mom_baby_free_shipping.min.css" rel="stylesheet" />
    <link href="assets/css/animate.css" rel="stylesheet" />
    <link href="assets/css/hover-min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="am-container  am-padding-vertical-lg main-contain">
            <section class="shop-block-wrap  am-padding-vertical-lg am-margin-vertical-lg">
                <div class="banner-box  banner-box2 am-text-center">
                    <a href="household_items.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/b03.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                    <div class="shop-obj ob-3 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob3.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                    <div class="shop-obj ob-4 hvr-wobble-top">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190918/ob4.png" %>' alt="Banner" style="width: 100%;" />
                    </div>
                </div>
                <div class="shop-block shop-block2 am-padding" id="product-make1">
                    <ul class="am-avg-sm-4  am-padding-sm">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <script>
        $(function () {
            $("#product-make1 li").attr("class", "am-fl  hvr-float am-padding-sm");
        });
    </script>
</asp:Content>

