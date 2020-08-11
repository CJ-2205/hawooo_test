<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="new_arrival3.aspx.cs" Inherits="mobile_static_new_arrival3" MaintainScrollPositionOnPostback="true" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/new_arrival3.min.css?ver=201911071724" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g new-bg">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20191031/bn_01m.png" %>' alt="top_bn" style="width: 100%;" />
        </div>

        <div class="am-container am-padding-top-xs">
            <%--=====================精選品牌帶品 Start ========================--%>


            <div class="am-u-sm-12 brand-block am-fl">
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
                    <div id="product-make2">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel mb-brand-panel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' data-src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190319094737477.jpg" class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %></span>
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

            <div class="am-u-sm-12 brand-block am-fl">
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
                    <div id="product-make1">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel mb-brand-panel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' data-src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190319094737477.jpg" class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %></span>
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

            <div class="am-u-sm-12 brand-block am-fl">
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
                                        <div class="am-panel mb-brand-panel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' data-src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190319094737477.jpg" class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %></span>
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

            <div class="am-u-sm-12 brand-block am-fl">
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
                    <div id="product-make4">
                        <ul class="am-avg-sm-3">
                            <asp:Repeater ID="Repeater4" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel mb-brand-panel">
                                            <div class="imgContain">
                                                <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                                    <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' data-src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190319094737477.jpg" class="am-img-responsive lazyautosizes lazyloaded">
                                                </a>
                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>"><%# Eval("WP02").ToString() %>
                                                    </a>
                                                </div>
                                                <div class="gallery-detail">
                                                    <span class="money_txt_style am-fl">RM<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                                    <span class="discount am-fr"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).Replace("RM","") %></span>
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

            <%--=====================商品排序 Start ==========================--%>
            <div class="goods-filter am-fr">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <span class="txtRsc goods-sort">商品排序</span>
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
        </div>
        <section class="am-padding-bottom-lg">
            <div class="mb-shop-block" id="product-make5">
                <asp:HiddenField runat="server" ID="hfPosition" Value="" />
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products1" />

                    <%-- <li class="am-fl">
                        <a href="#">
                            <div class="product_item_pic">
                                <img data-sizes="auto" src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20190627061254083.jpg">
                            </div>
                            <div class="product_item_text">
                                <div class="product_item_block am-cf">
                                    <h3 class="am-fl">福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml福釀坊 台南梅嶺梅子醋 250ml</h3>
                                </div>
                                <div class="product_item_block am-cf">

                                    <h4 class="am-fl">RM 31.840</h4>
                                    <span class="product_item_dis">-RM20.040</span>
                                </div>
                                <div class="product_item_block am-cf">
                                    <p class="am-fl"><i class="far am-icon-eye"></i>viewed 177</p>
                                    <p class="am-fr" style="">
                                        <span class="product-items-tag">
                                            <img src="../image/熱品.svg" draggable="false">買就送
                                        </span>
                                    </p>
                                </div>
                            </div>
                        </a>
                    </li>--%>
                </ul>
            </div>
        </section>
    </div>
    <script type="text/javascript">
        $(function () {
            var f = $("#<%=hfPosition.ClientID%>");
            window.onload = function () {
                var position = parseInt(f.val());
                if (!isNaN(position)) {
                    $(window).scrollTop(position);
                }
            };
            window.onscroll = function () {
                var position = $(window).scrollTop();
                f.val(position);
            };
        });
    </script>
</asp:Content>

