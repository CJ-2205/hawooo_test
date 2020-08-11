<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="202003new_arrival.aspx.cs" Inherits="mobile_static_202003new_arrival" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/202003new_arrival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g new-arrival-bg">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_01m.png"%>' style="width: 100%" />
            <%--  <span class="clock clock-m">
                        <span>01</span>:
                        <span>23</span>:
                        <span>45</span>:
                        <span>67</span>
                    </span>--%>
        </div>
        <section class="new-arrival-wrapper new-arrival-wrappe1 am-padding-bottom">
            <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_02m.png"%>' alt="主banner" style="width: 100%;" />
            </div>
            <asp:UpdatePanel runat="server" UpdateMode="conditional">
                <ContentTemplate>
                    <asp:HiddenField ID="hf_pc01" runat="server" ClientIDMode="Static" />
                    <asp:Button ID="btn_get_one_coupon" runat="server" Text="Button" Style="display: none" ClientIDMode="Static" OnClick="btn_get_one_coupon_OnClick" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <div>
                <ul class="product-item-box am-padding-left-0  am-avg-md-3 am-avg-sm-2">
                    <asp:Repeater ID="rp_plist" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="product-item">
                                    <a class="product-img" href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
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
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank" class="buy-btn ">BUY</a>
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
        <%--                    <li>
                        <div class="product-item">
                            <a class="product-img">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20180518050242689.jpg" />
                                <div class="already-sold-p">
                                    1100
                                <span class="hot-p am-text-center">sold</span>
                                </div>
                            </a>
                            <div class="product-text-box">
                                <div class="product-item-block">
                                    <h3 class="product-name">【FreshO2】Stay with me 為妳停留霧面唇蜜</h3>
                                </div>
                                <div class="product-item-block">
                                    <div class="product-price-block am-fl">
                                        <h4 class="product-price am-margin-0"><span>RM 49.90</span></h4>
                                        <p class="original-price  ">RM 100</p>
                                    </div>
                                    <div class="sele-off am-fr"><span>50%OFF</span></div>
                                </div>

                                <div class="product-item-block">
                                    <div class="product-coupon-box am-text-center ">
                                        <div class="product-coupon am-fl">
                                            <div class="am-cf coupon-box">
                                                <div class="am-fl coupon">
                                                    <span>coupon</span>
                                                </div>
                                                <div class="am-fl discount">
                                                    <span>RM 5</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-buy-btn am-fr am-u-sm-5">
                                            <a href="#" class="buy-btn ">BUY</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>--%>


        <section class="new-arrival-wrapper new-arrival-wrappe2 am-padding-bottom">
            <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_03m.png"%>' alt="主banner" style="width: 100%;" />
            </div>
            <div>
                <ul class="product-item-box am-padding-left-0  am-avg-md-3 am-avg-sm-2">
                    <uc1:products runat="server" id="products1" />
                </ul>
            </div>

            <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_04m.png"%>' alt="主banner" style="width: 100%;" />
            </div>

            <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%">
                <a href="https://www.hawooo.com/mobile/202003hot_deal.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200302/bn_05m.png"%>' alt="主banner" style="width: 100%;" />
                </a>
            </div>
        </section>
    </div>

    <script>

        function GetOneCoupon(pc01) {
            $("#hf_pc01").val(pc01);
            $("#btn_get_one_coupon").click();
        }
    </script>
</asp:Content>

