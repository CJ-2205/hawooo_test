<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="202003new_arrival.aspx.cs" Inherits="user_static_202003new_arrival" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/202003new_arrival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g">
        <div class="am-container new-arrival-bg">

            <%--=====================Top Banner start==========================--%>
            <div class="banner-box  am-g">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_01.png"%>' alt="" style="width: 100%;" />
                <%--<span class="clock">
                    <span>00</span>:
                    <span>00</span>:
                    <span>00</span>:
                    <span>00</span>
                </span>--%>
            </div>

            <%--=====================Top Banner End==========================--%>

            <%--=====================new-arrival-wrappe1  start==========================--%>

            <section class="new-arrival-wrapper new-arrival-wrappe1">
                <div class="banner-box am-padding-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_02.png"%>' alt="主banner" style="width: 100%;" />
                </div>
                <asp:UpdatePanel runat="server" UpdateMode="conditional">
                    <ContentTemplate>
                        <asp:HiddenField ID="hf_pc01" runat="server" ClientIDMode="Static" />
                        <asp:Button ID="btn_get_one_coupon" runat="server" Text="Button" Style="display: none" ClientIDMode="Static" OnClick="btn_get_one_coupon_OnClick" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="product-item-block" id="product-make1">
                    <ul class="am-avg-sm-4 product-item-box">
                        <asp:Repeater ID="rp_plist" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="product-item">
                                        <a class="product-img" href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' />
                                            <div class="already-sold-p">
                                                <%# Eval("SPD07").ToString() %>
                                                <span class="hot-p am-text-center">sold</span>
                                            </div>
                                        </a>
                                        <div class="product-text-box">
                                            <div class="product-item-block">
                                                <h3 class="product-name"><%# Eval("WP02").ToString() %></h3>
                                            </div>
                                            <div class="product-item-block">
                                                <div class="product-price-block am-fl">
                                                    <h4 class="product-price am-margin-0"><span>RM <%# Eval("WPA06").ToString() %></span></h4>
                                                    <p class="original-price  ">RM <%# Eval("WPA10").ToString() %></p>
                                                </div>
                                                <div class="sele-off am-fr"><span><%# Eval("PERSENT").ToString() %></span></div>
                                            </div>

                                            <div class="product-item-block">
                                                <div class="product-coupon-box am-text-center ">
                                                    <div class="product-coupon am-fl" onclick="GetOneCoupon('<%# Eval("PC01") %>');">
                                                        <div class="am-cf coupon-box">
                                                            <div class="am-fl coupon">
                                                                <span>coupon</span>
                                                            </div>
                                                            <div class="am-fl discount">
                                                                <span><%# Eval("COUPON") %></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-buy-btn am-fr am-u-sm-5">
                                                        <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank" class="buy-btn ">BUY</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--=====================hot-deal-wrapper1  End ==========================--%>

            <%--=====================hot-deal-wrapper2  start==========================--%>

            <section class="new-arrival-wrapper new-arrival-wrappe2">
                <div class="banner-box am-padding-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_03.png"%>' alt="主banner" style="width: 100%;" />
                </div>
                <div class="product-item-block">
                    <ul class="am-avg-sm-4 product-item-box" id="pd">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>

                <div class="banner-box am-padding-vertical-sm">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_04.png"%>' alt="主banner" style="width: 100%;" />
                </div>

                <div class="banner-box am-padding-vertical-sm">
                    <a href="https://www.hawooo.com/user/202003hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_05.png"%>' alt="主banner" style="width: 100%;" />
                    </a>
                </div>
            </section>
            <%--=====================hot-deal-wrapper2  End ==========================--%>
        </div>
    </div>
    <script>

        function GetOneCoupon(pc01) {
            $("#hf_pc01").val(pc01);
            $("#btn_get_one_coupon").click();
        }

        $(window).load(function () {
            $("#pd li .am-u-sm-12:first span").css({ "color": "#ff0036", "font-size": "18px", "font-weight": "bold" });
        });
    </script>

</asp:Content>

