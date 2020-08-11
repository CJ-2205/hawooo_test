<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200402super_items.aspx.cs" Inherits="mobile_static_200402super_items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/js/swiper.min.js"></script>
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200402hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bbn_02m.png" %>' alt="main-banner" />
        </div>

        <div id="nn">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_00m.png" %>' alt="nn_00mm" style="width: 100%;" />
        </div>


        <%--======================= Slider1  Start =========================--%>
        <section class="am-margin-top-sm" id="s1">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_01m.png" %>' alt="nn_01m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote1" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%-- <li class="am-fl swiper-slide ">
                            <label for="item1-2" class="vote-label choose-vote ">
                                <img class="swiper-lazy" src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20191111/more.png" data-src="https://www.hawooo.com/images//webimgs/n20200115023836885.jpg" alt="" /><span class="swiper-lazy-preloader"></span>
                                <input id="item1-2" type="radio" name="vote1" class="vote-input" style="display: none;" />
                            </label>
                            <div class="item-text am-padding-xs">
                                <h6>開賣商品單圖跟名稱</h6>
                            </div>
                        </li>--%>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider1   End============================--%>


        <%--======================= Slider2  Start =========================--%>
        <section class="am-margin-top-sm" id="s2">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_02m.png" %>' alt="nn_02m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container2">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote2" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider2   End============================--%>

        <%--======================= Slider3  Start =========================--%>
        <section class="am-margin-top-sm" id="s3">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_03m.png" %>' alt="nn_03m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote3" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider3   End============================--%>

        <%--======================= Slider4  Start =========================--%>
        <section class="am-margin-top-sm" id="s4">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_04m.png" %>' alt="nn_04m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container4">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp4" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote4" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider4   End============================--%>

        <%--======================= Slider5  Start =========================--%>
        <section class="am-margin-top-sm" id="s5">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_05m.png" %>' alt="nn_05m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp5" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote5" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider5   End============================--%>


        <%--======================= Slider6  Start =========================--%>
        <section class="am-margin-top-sm" id="s6">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_06m.png" %>' alt="nn_06m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container6">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp6" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote6" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider6   End============================--%>

        <%--======================= Slider7  Start =========================--%>
        <section class="am-margin-top-sm" id="s7">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_07m.png" %>' alt="nn_07m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container7">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp7" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote7" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider7   End============================--%>

        <%--======================= Slider8  Start =========================--%>
        <section class="am-margin-top-sm" id="s8">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_08m.png" %>' alt="nn_08m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container8">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp8" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote8" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider8   End============================--%>

        <%--======================= Slider9  Start =========================--%>
        <section class="am-margin-top-sm" id="s9">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_09m.png" %>' alt="nn_09m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container9">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp9" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote9" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider9  End============================--%>


        <%--======================= Slider10  Start =========================--%>
        <section class="am-margin-top-sm" id="s10">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_10m.png" %>' alt="nn_10m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container10">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp10" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote10" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider10  End============================--%>

        <%--======================= Slider11  Start =========================--%>
        <section class="am-margin-top-sm" id="s11">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_11m.png" %>' alt="nn_11m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container11">
                    <ul class="swiper-wrapper">
                        <asp:Repeater ID="rp11" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide ">
                                    <label for='<%# Eval("PID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote ">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' alt="" />
                                        <input id='<%# Eval("PID") %>-<%#Eval("VGroup") %>' type="radio" name="vote11" class="vote-input" style="display: none;" value='<%# Eval("PID") %>' />
                                        <div>
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/vote.svg" class="vote-img">
                                            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200402/voted.svg" class="voted-img">
                                        </div>
                                    </label>
                                    <div class="item-text am-padding-xs">
                                        <h6><%#Eval("WP02") %></h6>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider11  End============================--%>

        <%--======================= Slider12  Start =========================--%>
        <%-- <section class="am-margin-top-sm" id="s12">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/nn_12m.png" %>' alt="nn_12m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container12">
                    <ul class="swiper-wrapper">
                    </ul>
                </div>
            </div>
        </section>--%>

        <%--==================== Slider12  End============================--%>


        <div class="am-u-sm-5 am-u-md-4 am-u-sm-centered  am-margin-vertical-lg">
            <a href="#!" onclick="SubmitVote()">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/vote.png" %>' alt="" />
            </a>
        </div>



        <%--======================= Footer=== Start ========================--%>
        <footer class="am-padding-xl activity-method">
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
        <%--=======================Footer===End==========================--%>
    </div>

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
                        location.href = 'login.aspx?rurl=200402super_items.aspx';
                    }
                });
            }
            else {
                $('.vote-input').on('click', function () {
                    if (this.checked) {
                        var allLabel = $(this).closest('ul').find('.vote-label'),
                            thisLabel = $(this).closest('.vote-label');
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
            var cnt = 13; //swiper個數
            for (i = 1; i <= cnt; i++) {
                //這邊先產生 class name +數字 的字串後面方便使用
                var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
                $('.swiper-container').each(function (index, value) {
                    var classCall = str1 + i;
                    var next_slider = 'next-btn' + i;
                    var prev_slider = 'prev-btn' + i;
                    new Swiper(
                        classCall, {
                        slidesPerView: 3.2,
                        slidesPerGroup: 3,
                        spaceBetween: 10,
                        loop: false, //循環
                        lazy: true,
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },
                        breakpoints: {
                            640: {
                                slidesPerView: 2.2,
                                spaceBetween: 5,
                                slidesPerGroup: 2
                            }
                        }
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
                location.href = 'login.aspx?rurl=200402super_items.aspx';

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

