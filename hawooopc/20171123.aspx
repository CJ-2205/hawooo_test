<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171123.aspx.cs" Inherits="user_20171123" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171123.aspx";
                }
            }
        }
         )
    </script>

    <style type="text/css">
        .mian {
            background-color: #e5e3e5;
            background-size: 100%;
            height: 1620px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div style="margin: 0 auto; float: center; display: block; width: 1180px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <li style="margin: 0;">
                <img alt="台灣明星拌麵" src="https://www.hawooo.com/images/ftp/20171123/mianPC.png" style="float: left; display: block; width: 100%;" /></li>


            <!--帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1180px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px;">
                    <li style="margin: 0;">
                        <div class="mian am-cf" style="width: 100%;">
                            <div style="padding: 0; margin-top: 20px">
                                <ul class="am-avg-sm-4">

                                    <asp:Repeater ID="rp1" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(25% - 15px); background: white; padding: 10px; margin: 10px 5px 10px 10px;">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                    </p>
                                                </a>
                                            </li>

                                        </ItemTemplate>
                                    </asp:Repeater>


                                </ul>
                                <!--商品結束-->

                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </ul>
    </div>






    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>
   <%-- <script type="text/javascript">



        function getThisId(e) {
            var thisHref = $(e).attr("data-id");
            var thisDivTop = $("body").find(thisHref).offset().top - 120;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }



        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }

        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })
    </script>--%>

</asp:Content>
