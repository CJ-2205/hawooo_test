<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200402super_items.aspx.cs" Inherits="user_static_200402super_items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200402hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bbn_02.png" %>' alt="主banner" />
        </div>

        <div class="am-container">
            <div class="am-margin-vertical-lg">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_00.png" %>' alt="" />
            </div>

            <%--===================== Best Toner Start ====================--%>
            <section class="block1 am-margin-vertical-lg " id="b1">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_01.png" %>' alt="nn_01" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container1">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp1" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote1" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn1 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn1 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--===================== Best Toner End =====================--%>

            <%--===================== Best Essence Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b2">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_02.png" %>' alt="nn_02" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container2">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp2" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote2" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn2 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn2 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--===================== Best Essence End ====================--%>

            <%--===================== Best Mask Start  =====================--%>
            <section class="block1 am-margin-vertical-lg" id="b3">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_03.png" %>' alt="nn_03" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container3">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp3" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote3" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn3 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn3 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--======================Best Mask End =====================--%>

            <%--======================Best Cleanser Start ==================--%>
            <section class="block1 am-margin-vertical-lg" id="b4">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_04.png" %>' alt="nn_04" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container4">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp4" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote4" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn4 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn4 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--======================Best Cleanser End ===================--%>

            <%--===================Best Home&Living&Mum Start ===============--%>
            <section class="block1 am-margin-vertical-lg" id="b5">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_05.png" %>' alt="nn_05" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container5">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp5" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote5" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn5 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn5 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--================== Best Home&Living&Mum End ================--%>

            <%--================== Best Daily Essential Start ==================--%>
            <section class="block1 am-margin-vertical-lg" id="b6">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_06.png" %>' alt="nn_06" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container6">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp6" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote6" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn6 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn6 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--================== Best Daily Essential End ===================--%>

            <%--================== Best Beauty Care Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b7">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_07.png" %>' alt="nn_07" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container7">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp7" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote7" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn7 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn7 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--================== Best Beauty Care End ====================--%>

            <%--================== Best Health Care Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b8">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_08.png" %>' alt="nn_08" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container8">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp8" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote8" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn8 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn8 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--================== Best Health Care End ====================--%>

            <%--================== Best Foundation Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b9">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_09.png" %>' alt="nn_09" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container9">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp9" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote9" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn9 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn9 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--================== Best Foundation End ====================--%>

            <%--================== Best Cosmetic Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b10">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_10.png" %>' alt="nn_010" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container5">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp10" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote10" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn10 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn10 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--================== Best Cosmetic End ====================--%>

            <%--===================== Best Food Start ===================--%>
            <section class="block1 am-margin-vertical-lg" id="b11">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_11.png" %>' alt="nn_011" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container11">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp11" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl  swiper-slide vote-box">
                                        <div class="super-brand-item">
                                            <div class="item-text am-padding-xs">
                                                <h6><%#Eval("WP02") %></h6>
                                            </div>
                                            <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                                <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                                <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote11" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                                 <div>
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                                </div>
                                            </label>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="prev-btn11 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn11 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>
            <%--===================== Best Food End ====================--%>
            <%--===================== Best Noodles Start =================--%>
            <%-- <section class="block1 am-margin-vertical-lg" id="b12">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_12.png" %>' alt="nn_12" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider super-items-slider">
                    <div class="swiper-container swiper-container12">
                        <ul class="swiper-wrapper">
                        </ul>
                    </div>
                    <div class="prev-btn12 prev-btn">
                        <span class="am-icon-chevron-left"></span>
                    </div>
                    <div class="next-btn12 next-btn">
                        <span class="am-icon-chevron-right"></span>
                    </div>
                </div>
            </section>--%>
            <%--===================== Best Noodles End ==================--%>
            <div class="am-u-sm-2 am-u-sm-centered  am-margin-vertical-lg">
                <a href="#!" onclick="SubmitVote()">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/vote.png" %>' alt="" />
                </a>
            </div>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
        <div class="am-container">
            <p>
                Terms & Conditions<br />
                HaWooo Star Award<br />
                1. Voting period: 1st April 2020 12:00 - 8th April 2020 23:59<br />
                2. Member must login to vote. Each member can submit their vote once per day<br />
                3. Two members who vote  will be selected randomly, each will be given RM500 Shopping Coins. The lucky winners will be annouced on Hawooo Facebook Page on 13/4/2020<br />
                4. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>
    <script src="assets/js/swiper.min.js"></script>
    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
        var _vote1;
        var _vote2;
        var _vote3;
        var _vote4;
        var _vote5;
        var _vote6;
        var _vote7;
        var _vote8;
        var _vote9;
        var _vote10;
        var _vote11;



        $(function () {
            setThem();
            setFirstRadio();

            if (u == null) {
                $(".main-contain").click(function () {
                    if (u == null) {
                        //location.href = 'login.aspx?rurl=200402super_brands.aspx';
                        doLogin('200402super_items.aspx');
                    }
                });
            }
            else {
                $('.vote-input').on('click', function () {
                    if (this.checked) {
                        var allLabel = $(this).closest('ul').find('.vote-label'),
                            thisLabel = $(this).closest('.vote-label');
                        //console.log(thisLabel);
                        allLabel.removeClass('item-voted').addClass('choose-vote');
                        thisLabel.removeClass('choose-vote').addClass('item-voted');
                    }
                })
            }
        });

        function setFirstRadio() {
            $('input[name="vote1"]').first().prop('checked', true)
            var Label1 = $('input[name="vote1"]').first().parent();
            Label1.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote2"]').first().prop('checked', true)
            var Label2 = $('input[name="vote2"]').first().parent();
            Label2.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote3"]').first().prop('checked', true)
            var Label3 = $('input[name="vote3"]').first().parent();
            Label3.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote4"]').first().prop('checked', true)
            var Label4 = $('input[name="vote4"]').first().parent();
            Label4.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote5"]').first().prop('checked', true)
            var Label5 = $('input[name="vote5"]').first().parent();
            Label5.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote6"]').first().prop('checked', true)
            var Label6 = $('input[name="vote6"]').first().parent();
            Label6.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote7"]').first().prop('checked', true)
            var Label7 = $('input[name="vote7"]').first().parent();
            Label7.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote8"]').first().prop('checked', true)
            var Label8 = $('input[name="vote8"]').first().parent();
            Label8.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote9"]').first().prop('checked', true)
            var Label9 = $('input[name="vote9"]').first().parent();
            Label9.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote10"]').first().prop('checked', true)
            var Label10 = $('input[name="vote10"]').first().parent();
            Label10.removeClass('choose-vote').addClass('item-voted');

            $('input[name="vote11"]').first().prop('checked', true)
            var Label11 = $('input[name="vote11"]').first().parent();
            Label11.removeClass('choose-vote').addClass('item-voted');

            _vote1 = $("input[name='vote1']:checked").val(); //radio 取值
            _vote2 = $("input[name='vote2']:checked").val(); //radio 取值
            _vote3 = $("input[name='vote3']:checked").val(); //radio 取值
            _vote4 = $("input[name='vote4']:checked").val(); //radio 取值
            _vote5 = $("input[name='vote5']:checked").val(); //radio 取值
            _vote6 = $("input[name='vote6']:checked").val(); //radio 取值
            _vote7 = $("input[name='vote7']:checked").val(); //radio 取值
            _vote8 = $("input[name='vote8']:checked").val(); //radio 取值
            _vote9 = $("input[name='vote9']:checked").val(); //radio 取值
            _vote10 = $("input[name='vote10']:checked").val(); //radio 取值
            _vote11 = $("input[name='vote11']:checked").val(); //radio 取值

        };


        function setThem() {
            var i;
            var cnt = 11; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 5,
                        slidesPerGroup: 3,
                        //loop: true, 
                        spaceBetween: 10,
                        lazy: true,
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },

                    });
                });
            };
        };


        $('[type="radio"]').click(function () {
            _vote1 = $("input[name='vote1']:checked").val(); //radio 取值
            _vote2 = $("input[name='vote2']:checked").val(); //radio 取值
            _vote3 = $("input[name='vote3']:checked").val(); //radio 取值
            _vote4 = $("input[name='vote4']:checked").val(); //radio 取值
            _vote5 = $("input[name='vote5']:checked").val(); //radio 取值
            _vote6 = $("input[name='vote6']:checked").val(); //radio 取值
            _vote7 = $("input[name='vote7']:checked").val(); //radio 取值
            _vote8 = $("input[name='vote8']:checked").val(); //radio 取值
            _vote9 = $("input[name='vote9']:checked").val(); //radio 取值
            _vote10 = $("input[name='vote10']:checked").val(); //radio 取值
            _vote11 = $("input[name='vote11']:checked").val(); //radio 取值

            //console.log(_vote1, _vote2, _vote3, _vote4, _vote5, _vote6, _vote7, _vote8, _vote9, _vote10, _vote11);
        });

        function SubmitVote() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                doLogin('200402super_items.aspx');
            } else {

                //var val = "{'userID':'" + u + "'}";
                $.ajax({
                    type: "POST",
                    url: "200402super_items.aspx/GetVote",
                    data: '{userID:"' + u + '", pID1:"' + _vote1 + '", pID2:"' + _vote2 + '", pID3:"' + _vote3 + '", pID4:"' + _vote4 + '", pID5:"' + _vote5 + '", pID6:"' + _vote6 + '", pID7:"' + _vote7 + '", pID8:"' + _vote8 + '", pID9:"' + _vote9 + '", pID10:"' + _vote10 + '", pID11:"' + _vote11 + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    //async: true,
                    success: function (msg) {

                        var rmsg = JSON.parse(msg.d)[0].rmsg;
                        if (rmsg === "OK") {
                            alert("Congrats! You've voted today, vote again tomorrow!");

                        }
                        else {
                            alert2url(rmsg, "200401stay_home_shop.aspx");
                        }

                    },
                    error: function () {
                        alert('Ajax ERROR');
                    }
                });
            }
        };
    </script>
</asp:Content>

