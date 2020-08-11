<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="hotsale.aspx.cs" Inherits="mobile_hotsale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/gruop_buying.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- 上方big slider star -->
   <%-- <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{&quot;directionNav&quot;:false}'>
        <ul class="am-slides">
            <asp:Repeater ID="rp_slides" runat="server">
                <ItemTemplate>
                    <li>
                        <a href='<%# Eval("F04").ToString() %>'>
                            <img src='<%# Eval("F14").ToString() %>' alt='<%# Eval("F05").ToString() %>'></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>--%>
    <!-- 上方big slider end -->

    <section class="am-container">
        <div class="am-u-sm-12 group-buying-wrapper">
            <div class="am-u-sm-12 group-buying-title whats-hot-title">
                <h4>What's Hot</h4>
                <h5>精選活動</h5>
            </div>
            <!-- 團購類別 開始 -->
            <div class="am-u-sm-12 gb-catagory">
                <ul>
                    <asp:Repeater ID="rp_group" runat="server">
                        <ItemTemplate>
                            <li class="am-u-sm-12 am-u-md-6 am-fl">
                                <a href="hotsale_detail.aspx?id=<%# Eval("SPM01") %>">
                                    <img src='<%# "../images/adimgs/" + Eval("SPI04").ToString() %>'>
                                    <div class="whats-hot-text am-cf">
                                        <h5 class="am-fl"><%# Eval("SPM02") %></h5>
                                        <%--<h4 class="am-fr">RM100<span>up</span></h4>--%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <!-- 團購類別 結束 -->
        </div>
    </section>

    <section class="am-g am-g-collapse" id="section-company-promises">
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_01.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises">100%海外正品</span><br>
                    <!-- <span class="subtitle-company-promises">100% Authentic</span> -->
                </div>
            </div>
        </div>
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_02.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises">RM 199免郵</span><br>
                    <!-- <span class="subtitle-company-promises">RM 249 Free Shipping</span> -->
                </div>
            </div>
        </div>
        <div class="am-u-sm-4 container-company-promises">
            <div class="am-g am-g-collapse">
                <div class="am-u-sm-12 img-container-company-promises">
                    <img src="images/icon-company-quality_03.png" alt="" class="img-company-promises">
                </div>
                <div class="am-u-sm-12 title-container-company-promises">
                    <span class="title-company-promises">3-10天到貨</span><br>
                    <!-- <span class="subtitle-company-promises">Fast Delivery</span> -->
                </div>
            </div>
        </div>

    </section>
</asp:Content>

