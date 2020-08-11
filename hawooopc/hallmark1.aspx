<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="hallmark1.aspx.cs" Inherits="user_hallmark1" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }

        .product-items-tag {
            padding: 2px 6px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: bottom;
            border-radius: 12px;
            display: inline-block;
        }

            /*.product-items-tag {
            padding: 2px 6px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: bottom;
            border-radius: 12px;
        }*/


            .product-items-tag img {
                display: inline;
            }


        .product-block li .gallery-title {
            font-size: 16px;
            height: 48px !important;
        }

        .product-block li {
            padding: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 1180px; margin: 0 auto; position: relative; background-color: #FEF0C1">
        <div class="am-padding-lg">
            <a href="https://www.hawooo.com/user/brands.aspx?bid=318">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/200409hm_event/Hallmark03.jpg" %>' style="margin: 0 auto; width: 100%" />
            </a>
        </div>
        <div class="am-padding-lg">
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=27203">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/200409hm_event/Hallmark01.jpg" %>' style="margin: 0 auto; width: 100%" />
            </a>
        </div>
        <!--品牌區塊-->
        <div class="product-block">
            <ul class="am-avg-md-3 am-padding-lg">
                <uc1:products runat="server" id="products" />
            </ul>
        </div>

    </div>
</asp:Content>
