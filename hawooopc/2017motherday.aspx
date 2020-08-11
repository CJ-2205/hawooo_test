<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2017motherday.aspx.cs" Inherits="user_2017motherday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            background-color: #f5cd49;
        }
    </style>
    <link href="../2017motherday/assets/css/newyear.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        body {
            background-color: #f5cd49;
        }
    </style>
    <!-- 页面内容 -->
    <div class="am-show-md-up">
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170502/01.png" alt="Supermama Day2"></a>
        </div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="http://edm.hawooo.com/20170502/01m.png" alt="Supermama Day2">
        </div>
    </div>
    <div class="am-show-md-up">
        <div class="fullBanner">
            <a href="" target="_blank">
                <img src="http://edm.hawooo.com/20170502/02.png" alt="Supermama Day2"></a>
        </div>
    </div>
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="http://edm.hawooo.com/20170502/02m.png" alt="Supermama Day2">
        </div>
    </div>
    <div class="am-show-md-up" style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 2000px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;">
                <img alt="折價卷專區" src="http://edm.hawooo.com/20170502/03.png" style="float: left; display: block; width: 30%;" /></li>
            <li style="margin: 0;">
                <img alt="點我領Rm15" src="http://edm.hawooo.com/20170502/04.gif" style="float: left; display: block; width: 15%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','f5758d68-54c3-4210-9354-de345e47fa75');" />
            </li>
            <li style="margin: 0;">
                <img alt="點我領Rm30" src="http://edm.hawooo.com/20170502/05.gif" style="float: left; display: block; width: 15%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','a4f6eda9-3c03-47e1-9766-eaea195c1cdb');" />
            </li>
            <li style="margin: 0;">
                <img alt="折價卷專區" src="http://edm.hawooo.com/20170502/06.png" style="float: left; display: block; width: 40%;" /></li>

        </ul>
    </div>
    <div class="am-show-sm">
        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;">
                    <img alt="點我領RM15" src="http://edm.hawooo.com/20170502/03m.gif" style="float: left; display: block; width: 50%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','f5758d68-54c3-4210-9354-de345e47fa75');" /></li>
                <li style="margin: 0;">
                    <img alt="點我領RM30" src="http://edm.hawooo.com/20170502/04m.gif" style="float: left; display: block; width: 50%;" onclick="GetCoupone('2017-05-02 00:00','2017-05-17 00:00','a4f6eda9-3c03-47e1-9766-eaea195c1cdb');" /></li>
            </ul>
        </div>
    </div>
    <div class="am-container am-show-md-up" style="margin-top: 20px;">
        <div class="am-u-md-5 mx3BannerL">
            <a href="2017motherdaydetail.aspx?type=A" target="_blank">
                <img src="http://edm.hawooo.com/20170502/a.png" alt="美麗保健媽媽" style="max-height: 786px"></a>
        </div>
        <div class="am-u-md-7 mx3BannerR">
            <a href="2017motherdaydetail.aspx?type=B" target="_blank">
                <img src="http://edm.hawooo.com/20170502/b.png" style="margin-bottom: 10px;" alt="保養媽媽"></a>
            <a href="2017motherdaydetail.aspx?type=C" target="_blank">
                <img src="http://edm.hawooo.com/20170502/c.png" style="margin-bottom: 25px;" alt="美妝媽媽"></a>
        </div>
        <!--     hello     -->

        <div class="am-u-md-6 advBannerL">
            <a href="2017motherdaydetail.aspx?type=D" target="_blank">
                <img src="http://edm.hawooo.com/20170502/d.png" alt="時尚媽媽"></a>
        </div>
        <div class="am-u-md-6 advBannerR">

            <a href="2017motherdaydetail.aspx?type=E" target="_blank">
                <img src="http://edm.hawooo.com/20170502/e.png" alt="生活達人媽"></a>
        </div>
        <!--     hello     -->
        <div class="am-u-sm-12 fullBanner">

            <a href="2017motherdaydetail.aspx?type=F" target="_blank">
                <img src="http://edm.hawooo.com/20170502/f.png" style="margin-bottom: 25px;" alt="勤儉持家媽"></a>
        </div>
    </div>

    <div class="am-show-sm">
        <div class="fullBanner">
            <a href="2017motherdaydetail.aspx?type=A" target="_blank">
                <img src="http://edm.hawooo.com/20170502/am.png" alt="美麗保健媽媽"></a>
        </div>

        <div class="fullBanner">
            <a href="2017motherdaydetail.aspx?type=B" target="_blank">
                <img src="http://edm.hawooo.com/20170502/bm.png" alt="保養媽媽"></a>
        </div>
        <div class="fullBanner">
            <a href="2017motherdaydetail.aspx?type=C" target="_blank">
                <img src="http://edm.hawooo.com/20170502/cm.png" alt="美妝媽媽"></a>
        </div>
        <div class="fullBanner">
            <a href="2017motherdaydetail.aspx?type=D" target="_blank">
                <img src="http://edm.hawooo.com/20170502/dm.png" alt="生活達人媽"></a>
        </div>
        <div class="fullBanner">
            <a href="2017motherdaydetail.aspx?type=A" target="_blank">
                <img src="http://edm.hawooo.com/20170502/em.png" alt="BHK's 時尚媽媽"></a>
        </div>
        <div class="fullBanner">
            <a href="pageF.html" target="_blank">
                <img src="http://edm.hawooo.com/20170502/fm.png" alt="勤儉持家媽"></a>
        </div>
    </div>
    <footer class="fullBanner am-show-md-up">
        <img src="http://edm.hawooo.com/20170502/07.png" alt="Supermama Day犒賞自己不需要理由">
    </footer>
    <footer class="fullBanner am-show-sm">
        <img src="http://edm.hawooo.com/20170502/07m.png" alt="Supermama Day犒賞自己不需要理由">
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin('2017motherday.aspx');
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>
</asp:Content>

