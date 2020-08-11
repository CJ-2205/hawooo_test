<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191111buy1free1.aspx.cs" Inherits="mobile_static_20191111buy1free1" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191111after_party.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container am-padding-vertical-lg">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bbn_03m.png" %>' alt="" style="width: 100%;" />
            </div>
            <section class="shop-block-wrap am-margin-top-sm">
                <div class="mb-shop-block shop-block-bg goods-items3" id="product-make1">
                    <ul class="am-avg-sm-3">
                        <asp:Repeater ID="rptBuy1Free1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl ">
                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                        <div class="discount-tag">-<%# Eval("PERSENT").ToString() %></div>
                                        <div class="goods-img">
                                            <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                        </div>
                                        <div class="goods-info">
                                            <div class="goods-neme">
                                                <h3><%# Eval("WP02").ToString() %></h3>
                                            </div>

                                            <div class="goods-price">
                                                <h2>RM <%# Eval("WPA06").ToString() %></h2>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

