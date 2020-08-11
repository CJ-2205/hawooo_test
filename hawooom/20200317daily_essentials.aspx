<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20200317daily_essentials.aspx.cs" Inherits="mobile_static_20200317daily_essentials" %>
<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets/css/20200317life_style_festival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_04m.png" %>' alt="bn_04m" style="width: 100%;" />
            </div>
            <section>
                <div class="mb-shop-block bg2 goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-4">
                <li>
                    <a href="20200317life_style_festival.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_01m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20200317household_items.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_02m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_03m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20200317life_style_festival.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_04m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>

</asp:Content>

