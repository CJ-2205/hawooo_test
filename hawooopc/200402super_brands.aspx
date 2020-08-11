<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200402super_brands.aspx.cs" Inherits="user_static_200402super_brands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200402hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div id="top">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bbn_01.png" %>' alt="主banner" />
        </div>

        <div class="am-container">
            <div class="am-margin-vertical-lg">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_01.png" %>' alt="" />
            </div>
            <%--===================== Best Skin Care Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="p1">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_02.png" %>' alt="bb_02" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider" id="div1">
                    <div class="swiper-container swiper-container1" id="logo-01">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp1" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl swiper-slide vote-box">
                                        <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                            <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                            <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v05" style="display: none;" name="vote1" value='<%# Eval("BID") %>' />
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
            <%--===================== Best Skin Care End ===========================--%>

            <%--===================== Best Home& Living&Mum Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="p2">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_03.png" %>' alt="bb_03" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider" id="div-02">
                    <div class="swiper-container swiper-container2" id="logo-02">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp2" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl swiper-slide vote-box">
                                        <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                            <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                            <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v05" style="display: none;" name="vote2" value='<%# Eval("BID") %>' />
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
            <%--===================== Best Home& Living&Mum End =====================--%>

            <%--===================== Best Supplement Start =========================--%>
            <section class="block1 am-margin-vertical-lg" id="p3">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_04.png" %>' alt="bb_04" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider" id="div-03">
                    <div class="swiper-container swiper-container3" id="logo-03">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp3" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl swiper-slide vote-box">
                                        <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                            <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                            <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v05" style="display: none;" name="vote3" value='<%# Eval("BID") %>' />
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
            <%--===================== Best Supplement End =====================--%>
            <%--===================== Best Cosmetic Start ======================--%>
            <section class="block1 am-margin-vertical-lg" id="p4">
                <div>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_05.png" %>' alt="bb_05" />
                    </a>
                </div>
                <div class="am-padding-sm brands-slider" id="div-04">
                    <div class="swiper-container swiper-container4" id="logo-04">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp4" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl swiper-slide vote-box">
                                        <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                            <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                            <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v05" style="display: none;" name="vote4" value='<%# Eval("BID") %>' />
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
            <%--===================== Best Cosmetic End ============ ======--%>
            <%--===================== Best Food Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="p5">
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_06.png" %>' alt="bb_06" />
                </div>

                <div class="am-padding-sm brands-slider" id="div-05">
                    <div class="swiper-container swiper-container5" id="logo-05">
                        <ul class="swiper-wrapper">
                            <asp:Repeater ID="rp5" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl swiper-slide vote-box">
                                        <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                            <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                            <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                            <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v05" style="display: none;" name="vote5" value='<%# Eval("BID") %>' />
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


            <%--===================== Best Food End =====================--%>
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

        $(function () {
            setThem();
            setFirstRadio();

            if (u == null) {
                $(".main-contain,.swiper-wrapper").click(function () {
                    if (u == null) {
                        //location.href = 'login.aspx?rurl=200402super_brands.aspx';
                        doLogin('200402super_brands.aspx');
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

            _vote1 = $("input[name='vote1']:checked").val(); //radio 取值
            _vote2 = $("input[name='vote2']:checked").val(); //radio 取值
            _vote3 = $("input[name='vote3']:checked").val(); //radio 取值
            _vote4 = $("input[name='vote4']:checked").val(); //radio 取值
            _vote5 = $("input[name='vote5']:checked").val(); //radio 取值
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

            //console.log(_vote1, _vote2, _vote3, _vote4, _vote5);
        });

        function SubmitVote() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                doLogin('200402super_brands.aspx');
            } else {

                //var val = "{'userID':'" + u + "'}";
                $.ajax({
                    type: "POST",
                    url: "200402super_brands.aspx/GetVote",
                    data: '{userID:"' + u + '", bID1:"' + _vote1 + '", bID2:"' + _vote2 + '", bID3:"' + _vote3 + '", bID4:"' + _vote4 + '", bID5:"' + _vote5 + '"}',
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

