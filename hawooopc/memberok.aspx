<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="memberok.aspx.cs" Inherits="user_memberok" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <!-- Facebook Conversion Code for Member registration complete at Hawooo.com -->
    <script>    (function () {
        var _fbq = window._fbq || (window._fbq = []);
        if (!_fbq.loaded) {
            var fbds = document.createElement('script');
            fbds.async = true;
            fbds.src = '//connect.facebook.net/en_US/fbds.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(fbds, s);
            _fbq.loaded = true;
        }
    })();
    </script>
    <noscript><img height="1" width="1" alt="" style="display:none"
src="https://www.facebook.com/tr?ev=6033539251241&amp;cd[value]=0.00&amp;cd[currency]
=MYR&amp;noscript=1" /></noscript>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class=" am-container">
        <script>
            $(function () {
                fbq('track', 'CompleteRegistration');
            })
        </script>
        <div class="am-g">
            <div style="padding-top: 15px">
                <img src="../images/userimgs/top_banner.png" />
            </div>
        </div>
        <script>

            function disapanel() {
                $("#apanel").css("display", "none");
            }

        </script>
        <div id="apanel" class="am-g" style="padding-top: 30px; text-align: center;">
            <div class="am-panel" style="width: 500px; font-size: 20px; padding: 10px; margin-left: 350px;">
                恭喜你成功加入會員！結帳時輸入
                <asp:Literal ID="lit_GA01" runat="server"></asp:Literal><br />
                ，可以馬上扣RM<asp:Literal ID="lit_GA02" runat="server"></asp:Literal>，在<a href="http://www.hawooo.com/user/membercoupon.aspx">會員中心</a> 也可以查看你的折扣券編號喔！趕快來<a href="http://www.hawooo.com"> Shopping </a>吧！
            </div>
        </div>
        <div class="am-g" style="padding-top: 30px; padding-bottom: 20px">
            <div class="am-u-sm-2">
                &nbsp;
            </div>
            <div class="am-u-sm-2">
                <a href="cart1.aspx">
                    <img src="../images/userimgs/fun1.png" />
                    <p style="padding-top: 10px; padding-left: 10px; font-size: 22px; font-weight: 800">購物車(<asp:Literal ID="lit_count" runat="server"></asp:Literal>)</p>
                </a>

            </div>
            <div class="am-u-sm-2">
                <a href="memberinfo.aspx">
                    <img src="../images/userimgs/fun2.png" style="padding-left: 10px" />
                    <p style="padding-top: 10px; padding-left: 30px; font-size: 22px; font-weight: 800">會員專區</p>
                </a>

            </div>
            <div class="am-u-sm-2">
                <a href="memberorder.aspx">
                    <img src="../images/userimgs/fun3.png" style="padding-left: 10px" />
                    <p style="padding-top: 10px; padding-left: 50px; font-size: 22px; font-weight: 800">查詢訂單</p>
                </a>
            </div>
            <div class="am-u-sm-2">
                <a href="service.aspx">
                    <img src="../images/userimgs/fun4.png" style="padding-left: 30px" />
                    <p style="padding-top: 10px; padding-left: 50px; font-size: 22px; font-weight: 800">客服專區</p>
                </a>
            </div>
            <div class="am-u-sm-2">
                &nbsp;
            </div>
        </div>

        <div class="am-g" style="padding-top: 15px; padding-bottom: 20px">
            <div style="padding-left: 100px">
                <a href="http://www.hawooo.com/user/shop.aspx?eid=7">
                    <img src="../images/userimgs/banner1.png" /></a>
                 <a href="http://www.hawooo.com/user/shopindex.aspx">
                    <img src="../images/index/20160201/s1.png" /></a>
             <%--   <a href="http://www.hawooo.com/user/shop.aspx?eid=6">
                    <img src="../images/userimgs/banner3.png" /></a>--%>
            </div>
        </div>
    </div>
</asp:Content>

