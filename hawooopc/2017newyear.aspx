<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2017newyear.aspx.cs" Inherits="user_2017newyear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../2017year/assets/css/newyear.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--<!-- 页面内容 -->
    <div class="am-show-md-up">
        <div class="fullBanner">
            <img src="http://edm.hawooo.com/20170112/index-top_1.png">
        </div>
        <div class="fullBanner">
            <img src="http://edm.hawooo.com/20170112/index-top_2_top.png">
        </div>
        <div class="redBanner">
            <div class="am-u-md-5 am-u-sm-centered time">
                <span class="timeBox" id="t1">
                    <b id="day"></b><i>天</i>
                    <b id="hour"></b><i>時</i>
                    <b id="min"></b><i>分</i>
                    <b id="sec"></b><i>秒</i>
                </span>
            </div>
            <img src="http://edm.hawooo.com/20170112/index-top_2_time.png">
        </div>
        <div class="redBanner">
            <div class="am-u-md-5 bonus">
                <a href="" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/index-top_2_01.png" style="width: 30%"></a>
                <a href="" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/index-top_2_02.png" style="width: 40%"></a>
                <a href="" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/index-top_2_03.png" style="width: 30%"></a>
            </div>
            <img src="http://edm.hawooo.com/20170112/index-top_2.png">
        </div>
    </div>--%>
    <!--<div class="am-show-sm">
        <div class="fullBanner"><img src="http://edm.hawooo.com/20170112/index-top-m_1.png"></div>
        <div class="fullBanner"><img src="http://edm.hawooo.com/20170112/index-top-m_2_1.png"></div>
        <div class="fullBanner">
            <div class="am-u-sm-8 time-m">
                <span class="timeBox" id="t1">
                    <b id="t1"></b><i>天</i>
                    <b id="hour"></b><i>時</i>
                    <b id="min"></b><i>分</i>
                    <b id="sec"></b>
                </span>
            </div>
            <img src="http://edm.hawooo.com/20170112/index-top-m_time.png">
        </div>
        <div class="fullBanner"><a href="" target="_blank"><img src="http://edm.hawooo.com/20170112/index-top-m_2_2.png"></a></div>
        <div class="fullBanner"><a href="" target="_blank"><img src="http://edm.hawooo.com/20170112/index-top-m_2_3.png"></a></div>
        <div class="fullBanner"><a href="" target="_blank"><img src="http://edm.hawooo.com/20170112/index-top-m_2_4.png"></a></div>
    </div>-->
    <div class="am-container am-show-md-up" style="margin-top: 20px;">
        <div class="am-u-md-6 mx3BannerL">
            <a href="2017newyeardetail.aspx?type=A" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerA.png"></a>
        </div>
        <div class="am-u-md-6 mx3BannerR">
            <img src="http://edm.hawooo.com/20170112/index-bannerB.png" style="margin-bottom: 10px;">
            <a href="2017newyeardetail.aspx?type=C" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerC.png" style="margin-bottom: 25px;"></a>
        </div>
        <div class="am-u-sm-12  fullBanner">
            <a href="2017newyeardetail.aspx?type=D" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerD.png"></a>
        </div>
        <div class="am-u-md-6 advBannerL">
            <a href="2017newyeardetail.aspx?type=E" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerE.png"></a>
        </div>
        <div class="am-u-md-6 advBannerL">
            <a href="2017newyeardetail.aspx?type=F" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerF.png"></a>
        </div>
        <div class="am-u-md-6 advBannerL">
            <a href="2017newyeardetail.aspx?type=G" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerG.png"></a>
        </div>
        <div class="am-u-md-6 advBannerL">
            <a href="2017newyeardetail.aspx?type=H" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerH.png"></a>
        </div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageA_banner_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/index-bannerB_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageC_banner_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageD_banner_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageE_banner_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageF_banner_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageG_banner_m.png"></a>
        </div>
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170112/pageH_banner_m.png"></a>
        </div>
    </div>
    <%--  <footer class="fullBanner am-show-md-up" style="margin-top: 20px">
        <img src="http://edm.hawooo.com/20170112/index-footer.png">
    </footer>
    <footer class="fullBanner am-show-sm">
        <img src="http://edm.hawooo.com/20170112/index-footer-m.png">
    </footer>--%>

    <script src="../2017year/js/jquery-timer-min.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            var start = new Date($.now());
            setTime(start, "2017-02-01 00:00", t1, hour, min, sec);
        })
        function setTime(stime, etime, tt, hid, mid, sid) {
            var spantime = (Date.parse(etime) - Date.parse(stime)) / 1000;
            timeEvent(tt, spantime, hid, mid, sid);
        }
        function timeEvent(tt, spantime, hid, mid, sid) {
            $(tt).everyTime('1s', function (i) {
                spantime--;
                var d = Math.floor(spantime / (24 * 3600));
                var h = Math.floor((spantime % (24 * 3600)) / 3600);
                var m = Math.floor((spantime % 3600) / (60));
                var s = Math.floor(spantime % 60);
                if (spantime > 0) {
                    $("#day").text(d);
                    $("#hour").text(h);
                    $("#min").text(m);
                    $("#sec").text(s);
                } else {
                    $("#day").text(0);
                    $("#hour").text(0);
                    $("#min").text(0);
                    $("#sec").text(0);
                }
            })
        }
        function success(result, context, method) {      
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin('2017newyear.aspx');
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>
</asp:Content>

