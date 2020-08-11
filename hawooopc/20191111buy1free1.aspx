<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191111buy1free1.aspx.cs" Inherits="user_static_20191111buy1free1" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191111after_party.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="am-margin-vertical-lg">
            <section class="shop-block-wrap am-container">
                <div class="banner-box  am-text-center  am-padding-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191112/bbn_03.png" %>' alt="bbn_03" style="width: 100%;" />
                </div>
                <div class="shop-block-bg am-padding-sm shop-block " id="products">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="Buy1Free1Products" />

                        <%--<asp:Repeater ID="rptBuy1Free1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl ">
                                    <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
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
                        </asp:Repeater>--%>
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <script>
        $(function () {
            $("#products li").attr("class", "am-fl  hvr-float");
        });

    </script>
</asp:Content>

