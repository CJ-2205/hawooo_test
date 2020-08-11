<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="new_arrival3.aspx.cs" Inherits="user_static_new_arrival3" MaintainScrollPositionOnPostback="true" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/new_arrival3.min.css?ver=201911071724" rel="stylesheet" />
    <style>
        .money_txt_style {
            color: #EE5984;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g">
        <div class="am-container new-bg am-padding-top">
            <div class="banner-box am-g">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20191031/bn_01.png" %>' alt="" style="width: 100%" />
            </div>
            <%--=====================精選品牌帶品 Start ========================--%>
            <div class="am-u-sm-6 brand-block am-fl">
                <div class="block-shadow">
                    <div class="brandImg">
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <a href="<%#Eval("url")%>" target="_blank">
                                    <img src='<%#Eval("img") %>'>
                                </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    <div id="product-make1">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel brandPanel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString().Replace("-","-RM")) %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%-- <li>
                                <div class="am-panel brandPanel">
                                    <div class="imgContain">
                                        <a href="#!">
                                            <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190319094737477.jpg" data-src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190319094737477.jpg" class="am-img-responsive lazyautosizes lazyloaded">
                                        </a>
                                    </div>
                                    <div class="am-panel-bd">
                                        <div class="gallery-title">
                                            <a href="https://www.hawooo.com/user/productdetail.aspx?id=19723&amp;bid=230#&amp;name=TTM-Aqua-Hydra-Soothing-Moisturizing-Mask-piece">TTM 新極輕絲 Aqua極潤長效保濕面膜 單片
                                            </a>
                                        </div>
                                        <div class="gallery-detail">
                                            <span class="money_txt_style">RM &nbsp;
                                                                    13.00</span>
                                        </div>
                                    </div>
                                </div>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-u-sm-6 brand-block am-fl">
                <div class="block-shadow">
                    <div class="brandImg">
                        <asp:ListView ID="ListView2" runat="server">
                            <ItemTemplate>
                                <a href="<%#Eval("url")%>" target="_blank">
                                    <img src='<%#Eval("img") %>'>
                                </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    <div id="product-make2">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel brandPanel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString().Replace("-","-RM")) %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-u-sm-6 brand-block am-fl">
                <div class="block-shadow">
                    <div class="brandImg">
                        <asp:ListView ID="ListView3" runat="server">
                            <ItemTemplate>
                                <a href="<%#Eval("url")%>" target="_blank">
                                    <img src='<%#Eval("img") %>'>
                                </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    <div id="product-make3">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater3" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel brandPanel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString().Replace("-","-RM")) %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="am-u-sm-6 brand-block am-fl ">
                <div class="block-shadow">
                    <div class="brandImg">
                        <asp:ListView ID="ListView4" runat="server">
                            <ItemTemplate>
                                <a href="<%#Eval("url")%>" target="_blank">
                                    <img src='<%#Eval("img") %>'>
                                </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    <div id="product-make5">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater4" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel brandPanel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString().Replace("-","-RM")) %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
            <%--=====================精選品牌帶品 End ========================--%>
            <%--=====================商品排序 Start ==========================--%>
            <div class="goods-filter am-fr">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <span class="txtRsc" data-id="">商品排序</span>
                            </td>
                            <td>：
                            </td>
                            <td>

                                <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
                                    <asp:ListItem Value="0" Text="熱門程度優先"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="價格由低至高"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="價格由高至低"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <%--=====================商品排序 End ==========================--%>
            <section class="new-goods-block am-padding-bottom-xl" id="products">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products1" />
                    <%--<li class="am-fl  hvr-float">
                        <a href="#">
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                    <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                </div>
                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                        Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                    </div>
                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                        <div class="am-fl">
                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">RM 268.90
                                            </span>
                                        </div>
                                        <div class="am-fr">
                                            <span style="vertical-align: bottom; font-size: 12px;">-RM70.00
                                            </span>
                                        </div>
                                    </div>
                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                        <div class="am-fl">
                                            <span style="font-size: 13px;">
                                                <i class="far am-icon-eye"></i>Viewed 6.7K
                                            </span>
                                        </div>
                                        <div class="am-fr" style="">
                                            <span class="product-items-tag">
                                                <img src="../images/icon/免運.svg" style="width: 20px">免運</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>--%>
                </ul>
            </section>
        </div>

    </div>


    <script type="text/javascript">

        $(function () {
            $("#products li").attr("class", "am-fl  hvr-float");
        });

    </script>

</asp:Content>

