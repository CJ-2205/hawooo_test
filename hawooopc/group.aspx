﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="group.aspx.cs" Inherits="user_group" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/group_buying.css?v=20170930" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <!-- 上方slider star -->
        <section class="group_buying-slider">
            <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{slideshow: true}'>
                <ul class="am-slides">
                    <asp:Repeater ID="rp_slides" runat="server">
                        <ItemTemplate>
                            <li>
                                <a href='<%# Eval("F04").ToString() %>'>
                                    <img src='<%# "../images/adimgs/" + Eval("F14").ToString() %>' alt='<%# Eval("F05").ToString() %>'></a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <!-- 上方slider end -->

        <!-- 我是分隔線 -->
        <span class="am-container p-0 dotted-line"></span>
        <!-- 我是分隔線 -->

        <!-- 焦點代購 what's Hot star -->
        <section class="whats-hot-section">
            <div class="am-container p-0 whats-hot-wrapper">
                <!-- what's hot title star -->
                <div class="whats-hot-title">
                    <h4>What's Hot</h4>
                    <h5>焦點團購</h5>
                </div>
                <!-- what's hot title end -->
                <!-- what's hot content 商品list star -->
                <div class="whats-hot-content am-cf">
                    <ul class=" p-0 m-0">
                        <asp:Repeater ID="rp_group" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                   <a href="group_detail.aspx?id=<%# Eval("SPM01") %>">
                                       <img src='<%# "../images/adimgs/" + Eval("SPI04").ToString() %>'>
                                        <span class="whats-hot-description">
                                            <p class="promo"> <%# Eval("SPM08").ToString() %> </p>
                                           <%-- <span class="count-down">
                                                <i class="am-icon-clock-o"></i><span>30</span>天<span>14</span>小時<span>50</span>分<span>30</span>秒
                                            </span>--%>
                                        </span>
                                        <div class="whats-hot-text am-cf">
                                            <h5 class="am-fl"><%# Eval("SPM02") %></h5>
                                           <%-- <h4 class="am-fr">RM100<span>起</span></h4>--%>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <!-- what's hot content 商品list end -->
            </div>
        </section>
        <!-- 焦點代購 what's Hot end -->



        <!-- footer-good-block 頁尾三大好處的icon star -->
        <section class="footer-good-block">
            <div class="am-g" style="background: white; margin: 20px 0px; border-top: 5px solid #f7588c">
                <div class="am-container footer-good-block-wrapper">
                    <ul class="am-avg-sm-3">
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/group_free_shipping.png" id="group-quality1">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>全館免郵</h4>
                                    <p>Free Shipping</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/group_10off.png" id="group-quality2">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>本區任選兩件九折</h4>
                                    <p>10% off for two items</p>
                                </div>
                            </div>
                        </li>
                        <li class="footer-good-block-icons">
                            <div class="footer-good-block-icon am-cf">
                                <div class="icon-wrapper am-fl">
                                    <img src="icon/group_20off.png" id="group-quality3">
                                </div>
                                <div class="footer-good-block-text am-fl">
                                    <h4>本區任選三件八折</h4>
                                    <p>20% off for three items</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- footer-good-block 頁尾三大好處的icon end -->
    </section>
</asp:Content>

