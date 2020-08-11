<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200402super_brands2.aspx.cs" Inherits="mobile_static_200402super_brands2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/200402hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bbn_01m.png" %>' alt="main-banner" />
        </div>

        <div id="bb">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_01m.png" %>' alt="bb_01m" style="width: 100%;" />
        </div>


        <%--======================= Slider1  Start =========================--%>
        <section class="am-margin-top-sm" id="s1">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_02m.png" %>' alt="bb_02m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container1">
                    <ul class="swiper-wrapper super-brand-slider" id="ul1">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                        <label for='<%# Eval("BID") %>' class="vote-label choose-vote rp1" id="<%# "rp1-" + Eval("BID") %>" onclick="clickBrand('.rp1','#rp1-<%# Eval("BID") %>');"/>
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID") %>' class="vote-input v01" style="display: none;" name="vote1" value='<%# Eval("BID") %>' />
                                        </label>
                                    </div>
                                    <div class="super-brand-item" data-id='<%# Eval("BID2") %>'>
                                        <label for='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-label choose-vote rp1" id="<%# "rp1-" + Eval("BID2") %>" onclick="clickBrand('.rp1','#rp1-<%# Eval("BID2") %>')";/>
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg2") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-input v01" style="display: none;" name="vote1" value='<%# Eval("BID2") %>' />
                                        </label>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>

        <%--==================== Slider1   End============================--%>


        <%--======================= Slider2  Start =========================--%>
        <section class="am-margin-top-sm" id="s2">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_03m.png" %>' alt="bb_03m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container2">
                    <ul class="swiper-wrapper super-brand-slider" id="ul2">
                        <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                        <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v02" style="display: none;" name="vote2" value='<%# Eval("BID") %>' />
                                        </label>
                                    </div>
                                    <div class="super-brand-item" data-id='<%# Eval("BID2") %>'>
                                        <label for='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg2") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-input v02" style="display: none;" name="vote2" value='<%# Eval("BID2") %>' />
                                        </label>
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
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_04m.png" %>' alt="bb_04m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container3">
                    <ul class="swiper-wrapper super-brand-slider" id="ul3">
                        <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                        <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v03" style="display: none;" name="vote3" value='<%# Eval("BID") %>' />
                                        </label>
                                    </div>
                                    <div class="super-brand-item" data-id='<%# Eval("BID2") %>'>
                                        <label for='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg2") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-input v03" style="display: none;" name="vote3" value='<%# Eval("BID2") %>' />
                                        </label>
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
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_05m.png" %>' alt="bb_05m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container4">
                    <ul class="swiper-wrapper super-brand-slider" id="ul4">
                        <asp:Repeater ID="rp4" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                        <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID") %>-<%# Eval("VGroup") %>' class="vote-input v04" style="display: none;" name="vote4" value='<%# Eval("BID") %>' />
                                        </label>
                                    </div>
                                    <div class="super-brand-item" data-id='<%# Eval("BID2") %>'>
                                        <label for='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg2") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-input v04" style="display: none;" name="vote4" value='<%# Eval("BID2") %>' />
                                        </label>
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
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200402/bb_06m.png" %>' alt="bb_06m" style="width: 100%;" />
            </div>
            <div class="mb-slider-product bg1">
                <div class="swiper-container swiper-container5">
                    <ul class="swiper-wrapper super-brand-slider" id="ul5">
                        <asp:Repeater ID="rp5" runat="server">
                            <ItemTemplate>
                                <li class="am-fl swiper-slide">
                                    <div class="super-brand-item" data-id='<%# Eval("BID") %>'>
                                        <label for='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID") %>-<%#Eval("VGroup") %>' class="vote-input v05" style="display: none;" name="vote5" value='<%# Eval("BID") %>' />
                                        </label>
                                    </div>
                                    <div class="super-brand-item" data-id='<%# Eval("BID2") %>'>
                                        <label for='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-label choose-vote" />
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "ftp/20200402/" + Eval("BLogoImg2") %>' alt="" />
                                        <input type="radio" id='<%# Eval("BID2") %>-<%#Eval("VGroup2") %>' class="vote-input v05" style="display: none;" name="vote5" value='<%# Eval("BID2") %>' />
                                        </label>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>
        <%--==================== Slider5   End============================--%>


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

    <script src="assets/js/swiper.min.js"></script>

    <script type="text/javascript">
        var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
        var _vote1;
        var _vote2;
        var _vote3;
        var _vote4;
        var _vote5;

        function clickBrand(className, itemId) {
            //$(className).addClass('choose-vote').removeClass('item-voted');
            //$(itemId).addClass('item-voted').removeClass('choose-vote');
            //$(className).each(function () { $(this).addClass('choose-vote').removeClass('item-voted'); });
            var ary = document.getElementsByClassName("rp1");
            for (i = 0; i < ary.length; i++) {
                ary[i].classList.remove('item-voted');
                ary[i].classList.add('choose-vote');
            }
            $(itemId).addClass('item-voted').removeClass('choose-vote');
        }
        $(function () {
            setThem();
            setFirstRadio();
            var $ua = navigator.userAgent;
            var $event = ($ua.match(/(iPod|iPhone|iPad)/i)) ? "touchstart" : "click";

            //$(document).on($event, function (ev) {
            //    $('.vote-input').on('click', function () {
            //        if (this.checked) {
            //            var allLabel = $(this).closest('ul').find('.vote-label'),
            //                thisLabel = $(this).closest('.vote-label');
            //            //console.log(thisLabel);
            //            allLabel.removeClass('item-voted').addClass('choose-vote');
            //            thisLabel.removeClass('choose-vote').addClass('item-voted');
            //        }
            //    })
            //});


            if (u == null) {
                $(".main-contain").click(function () {
                    var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                    if (u == null) {
                        location.href = 'login.aspx?rurl=200402super_brands.aspx';
                    }
                });
            }
            else {
                //$('.vote-input').on('click', function () {
                //    if (this.checked) {
                //        var allLabel = $(this).closest('ul').find('.vote-label'),
                //            thisLabel = $(this).closest('.vote-label');
                //        allLabel.removeClass('item-voted').addClass('choose-vote');
                //        thisLabel.removeClass('choose-vote').addClass('item-voted');
                //    }
                //})

                //$("#ul2 .vote-input").on("click", function (e) {

                //    var par_label = $(this).parent();
                //    if (this.checked) {
                //        $("#ul2 .vote-label").removeClass("item-voted").addClass("choose-vote");
                //        par_label.removeClass("choose-vote").addClass("item-voted");
                //    } else {
                //    }
                //});

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
                        autoplay: false,
                        iOSEdgeSwipeDetection: true,
                        iOSEdgeSwipeThreshold: 50,
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
                        //onSetTransition: function (swiper) {
                        //    swiper.disableTouchControl();
                        //},
                        //onTransitionEnd: function (swiper) {
                        //    swiper.enableTouchControl();
                        //},
                        //autoplay: false
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
                location.href = 'login.aspx?rurl=200402super_brands.aspx';
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

