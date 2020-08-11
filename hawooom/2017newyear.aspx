<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2017newyear.aspx.cs" Inherits="mobile_2017newyear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../2017year/assets/css/newyear.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <!-- 页面内容 -->
        <div class="am-u-sm-12" style="margin-top: 120px">
            <div class="fullBanner">
                <a href="http://www.hawooo.com/user/2017newyeardetail.aspx?type=A">
                    <img src="http://edm.hawooo.com/20170112/index-top-m_1.png"></a>
            </div>
            <div class="fullBanner">
                <img src="http://edm.hawooo.com/20170112/index-top-m_2_1.png">
            </div>
            <div class="fullBanner">
                <div class="am-u-sm-8 time-m">
                    <span class="timeBox" id="t1">
                        <b id="day"></b><i>天</i>
                        <b id="hour"></b><i>時</i>
                        <b id="min"></b><i>分</i>
                        <b id="sec"></b><i>秒</i>
                    </span>
                </div>
                <img src="http://edm.hawooo.com/20170112/index-top-m_time.png">
            </div>

            <div class="fullBanner">
                <a onclick="GetCoupone('2017-01-12 00:00', '2017-02-01 00:00', 'e401b092-c052-4406-a7d7-c3f522fa57df');" style="cursor: pointer;">
                    <img src="http://edm.hawooo.com/20170112/index-top-m_2_2.png"></a>
            </div>
            <div class="fullBanner">
                <a onclick="GetCoupone('2017-01-18 00:00', '2017-02-01 00:00', '28e575b3-042a-4b9e-8c1d-348b51fe5b6d');" style="cursor: pointer;">
                    <img src="http://edm.hawooo.com/20170112/index-top-m_2_3.png"></a>
            </div>
            <div class="fullBanner">
                <a onclick="GetCoupone('2017-01-25 00:00', '2017-02-01 00:00', '0f15ce48-3a9a-4fb1-b934-818a40b8d027');" style="cursor: pointer;">
                    <img src="http://edm.hawooo.com/20170112/index-top-m_2_4.png"></a>
            </div>
        </div>

        <div class="am-u-sm-12">
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=A" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageA_banner_m.png"></a>
            </div>
            <div class="fullBanner">
                <a>
                    <img src="http://edm.hawooo.com/20170112/index-bannerB_m.png"></a>
            </div>
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=C" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageC_banner_m.png"></a>
            </div>
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=D" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageD_banner_m.png"></a>
            </div>
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=E" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageE_banner_m.png"></a>
            </div>
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=F" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageF_banner_m.png"></a>
            </div>
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=G" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageG_banner_m.png"></a>
            </div>
            <div class="fullBanner">
                <a href="2017newyeardetail.aspx?type=H" target="_blank">
                    <img src="http://edm.hawooo.com/20170112/pageH_banner_m.png"></a>
            </div>
        </div>
        <footer class="fullBanner am-show-md-up" style="margin-top: 20px">
            <img src="http://edm.hawooo.com/20170112/index-footer.png">
        </footer>
        <footer class="fullBanner am-show-sm">
            <img src="http://edm.hawooo.com/20170112/index-footer-m.png">
        </footer>

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
                        location.href = "login.aspx?rurl=2017newyear.aspx";
                    }
                }
            }
            function GetCoupone(stime, etime, gb01) {
                PageMethods.GetCP(stime, etime, gb01, success, null);
            }
        </script>
    </div>
</asp:Content>

