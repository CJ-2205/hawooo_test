<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="brandproductdetail.aspx.cs" Inherits="user_brandproductdetail" %>

<%@ Register Src="~/user/control/shopclass.ascx" TagPrefix="uc1" TagName="shopclass" %>
<%@ Register Src="~/user/control/shoprecommed.ascx" TagPrefix="uc1" TagName="shoprecommed" %>
<%@ Register Src="~/user/control/brandclass.ascx" TagPrefix="uc1" TagName="brandclass" %>
<%@ Register Src="~/user/control/productdetail.ascx" TagPrefix="uc1" TagName="productdetail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .am-tabs-default .am-tabs-nav > .am-active a {
            color: #5F5F5F;
            background-color: #FFF;
        }

        .am-btn-default {
            background-color: #FFF;
        }
    </style>
    <link href="css/article.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-bottom: 10px">
        <asp:HiddenField ID="hf_WP06" runat="server" />
        <%-- div class="am-g" style="padding-top: 15px; padding-bottom: 5px">
           <asp:Image ID="img_B01" runat="server" CssClass="am-img-thumbnail" />
        </div>--%>
       
            <!--類別列表開始-->
            <uc1:productdetail runat="server" ID="productdetail" />

    </div>
    <script>
        $(function () {
            var _BA16 = $("#hf_BA16").val();
            $("#class_title").css("background-color", _BA16);
        })

    </script>


</asp:Content>

