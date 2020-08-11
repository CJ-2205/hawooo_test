<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="user_about" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-u-sm-12" style="padding: 20px 0px 20px 0px; font-size: 0px">
            <a id="top"></a>
            <div>
                <img src="../images/aboutus/bg.png" />
                <div id="airplane">
                    <a href="#tairplane">
                        <img src="../images/aboutus/airplane.png" data-am-popover="{content: '貨運條款', trigger: 'hover focus'}" /></a>
                </div>
                <div id="shopping">
                    <a href="#tshopping">
                        <img src="../images/aboutus/shopping.png" data-am-popover="{content: '購物說明', trigger: 'hover focus'}" /></a>
                </div>
                <div id="bank">
                    <a href="#tbank">
                        <img src="../images/aboutus/bank.png" data-am-popover="{content: '付款說明', trigger: 'hover focus'}" /></a>
                </div>
                <div id="redhouse">
                    <a href="#tabout">
                        <img src="../images/aboutus/redhouse.png" data-am-popover="{content: '關於好物', trigger: 'hover focus'}" /></a>
                </div>
                <div id="box">
                    <a href="#tbox">
                        <img src="../images/aboutus/box.png" data-am-popover="{content: '退貨說明', trigger: 'hover focus'}" /></a>
                </div>
                <div id="contact">
                    <a href="#tcontact">
                        <img src="../images/aboutus/contact.png" data-am-popover="{content: '聯絡我們', trigger: 'hover focus'}" /></a>
                </div>
            </div>
            <a id="tabout" style="padding-top: 100px;"></a>
            <table id="Table_02" width="1180" height="475" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td rowspan="2">
                        <img src="../images/aboutus/0908_about-us-03_01.jpg" width="1100" height="475" alt="">
                    </td>
                    <td><a href="#container">
                        <img src="../images/aboutus/0908_about-us-03_02.jpg" width="80" height="80" alt=""></a></td>
                </tr>
                <tr>
                    <td>
                        <img src="../images/aboutus/0908_about-us-03_03.jpg" width="80" height="395" alt="">
                    </td>
                </tr>
            </table>
            <a id="tshopping" style="margin-top: 100px"></a>
            <table id="Table_03" width="1180" height="475" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td rowspan="2">
                        <img src="../images/aboutus/0908_about-us-07_01.jpg" width="1100" height="475" alt="">
                    </td>
                    <td><a href="#container">
                        <img src="../images/aboutus/0908_about-us-07_02.jpg" width="80" height="80" alt=""></a></td>
                </tr>
                <tr>
                    <td>
                        <img src="../images/aboutus/0908_about-us-07_03.jpg" width="80" height="395" alt="">
                    </td>
                </tr>
            </table>
            <a id="tairplane" style="padding-top: 100px"></a>
            <table id="Table_04" width="1180" height="475" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td rowspan="2">
                        <img src="../images/aboutus/0910_about-us-05_01.jpg" width="1100" height="475" alt="">
                    </td>
                    <td><a href="#container">
                        <img src="../images/aboutus/0910_about-us-05_02.jpg" width="80" height="80" alt=""></a></td>
                </tr>
                <tr>
                    <td>
                        <img src="../images/aboutus/0910_about-us-05_03.jpg" width="80" height="395" alt="">
                    </td>
                </tr>
            </table>
            <a id="tbank" style="padding-top: 100px"></a>
            <table id="Table_05" height="475" border="0" cellpadding="0" cellspacing="0" width="1180">
                <tbody>
                    <tr>
                        <td rowspan="2">
                            <img src="../images/aboutus/0911_about-us-text-06_01.jpg" alt="" height="475" width="1100"></td>
                        <td><a href="#container">
                            <img src="../images/aboutus/0911_about-us-text-06_02.jpg" alt="" height="80" width="80"></a></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../images/aboutus/0911_about-us-text-06_03.jpg" alt="" height="395" width="80"></td>
                    </tr>
                </tbody>
            </table>
            <a id="tbox" style="padding-top: 100px"></a>
            <table id="Table_06" height="608" border="0" cellpadding="0" cellspacing="0" width="1180">
                <tbody>
                    <tr>
                        <td rowspan="2">
                            <img src="../images/aboutus/0911_about-us-text-04_01.jpg" alt="" height="608" width="1100"></td>
                        <td><a href="#container">
                            <img src="../images/aboutus/0911_about-us-text-04_02.jpg" alt="" height="80" width="80"></a></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../images/aboutus/0911_about-us-text-04_03.jpg" alt="" height="528" width="80"></td>
                    </tr>
                </tbody>
            </table>
            <a id="tcontact" style="padding-top: 100px"></a>
            <table id="Table_07" width="1181" height="475" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="3" rowspan="2">
                        <img src="../images/aboutus/0908_about-us-02_01.jpg" width="1101" height="175" alt="">
                    </td>
                    <td><a href="#container">
                        <img src="../images/aboutus/0908_about-us-02_02.jpg" width="79" height="80" alt=""></a></td>
                </tr>
                <tr>
                    <td rowspan="3">
                        <img src="../images/aboutus/0908_about-us-02_03.jpg" width="79" height="395" alt="">
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">
                        <img src="../images/aboutus/0908_about-us-02_04.jpg" width="508" height="300" alt="">
                    </td>
                    <td><a href="mailto:service@hawooo.com">
                        <img src="../images/aboutus/0908_about-us-02_05.jpg" width="305" height="83" alt=""></a></td>
                    <td rowspan="2">
                        <img src="../images/aboutus/1116_about-us-02_06.jpg" width="288" height="300" alt="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="../images/aboutus/1116_about-us-02_07.jpg" width="305" height="217" alt="">
                    </td>
                </tr>
            </table>
            <!-- End Save for Web Slices -->
        </div>

    </div>

    <!-- End Save for Web Slices -->
    <script>
        $(document).ready(function () {
            $('a[href^="#"]').on('click', function (e) {
                e.preventDefault();

                var target = this.hash;
                var $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top - 100
                }, 900, 'swing', function () {
                    window.location.hash = target;
                });
            });
        });

        $(function () {
            setJump('airplane');
            setMove('shopping');
        });
        function setJump(_id) {
            var interval = '';
            $("#" + _id + "").hover(function () {
                interval = setInterval("jump('" + _id + "')", 500);
            }, function () {
                clearInterval(interval);
                $("#" + _id + "").animate({ marginTop: "10px", marginBottom: "1px" }, 500)
            });
        }
        function setMove(_id) {
            var interval = '';
            $("#" + _id + "").hover(function () {
                interval = setInterval("move('" + _id + "')", 500);
            }, function () {
                clearInterval(interval);
                $("#" + _id + "").animate({ marginLeft: "10px", marginRight: "1px" }, 500)
            });
        }
        function jump(_id) {
            $("#" + _id + "").animate({ marginTop: "0px", marginBottom: "20px" }, 250, function () { $("#" + _id + "").animate({ marginTop: "20px", marginBottom: "0px" }, 250) });
        }
        function move(_id) {
            $("#" + _id + "").animate({ marginLeft: "0px", marginRight: "20px" }, 250, function () { $("#" + _id + "").animate({ marginLeft: "20px", marginRight: "0px" }, 250) });
        }
    </script>
</asp:Content>

