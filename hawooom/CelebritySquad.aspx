<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="CelebritySquad.aspx.cs" Inherits="mobile_static_CelebritySquad" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/MoonFestivalSale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="am-g am-padding-vertical-lg mb-main-contain" style="background-size: cover;">
        <section class="shop-block-wrap  mb-shop-block-wrap5 ">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190903/bn_02m.png" %>' alt="" style="width: 100%;" />
            </div>
            <div class="mb-shop-block mb-shop-block5 am-padding-bottom-lg">
                <ul class="am-avg-sm-2 am-avg-md-3 ">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
    </div>
    <div class="am-form-group">
        <asp:DropDownList ID="ddlType" runat="server" Width="150px" AutoPostBack="true" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
            <asp:ListItem Value="0" Text="最受歡迎商品"></asp:ListItem>
            <asp:ListItem Value="1" Text="價錢低到高"></asp:ListItem>
            <asp:ListItem Value="2" Text="價錢高到低"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <select>
        <option value="volvo">Volvo</option>
        <option value="saab">Saab</option>
        <option value="mercedes">Mercedes</option>
        <option value="audi">Audi</option>
    </select>
</asp:Content>

