<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171122.aspx.cs" Inherits="mobile_20171122" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="11月發新日" src="https://www.hawooo.com/images/ftp/20171123/edmmail_01.png" style="float: left; display: block; width: 100%;" /></li>


        </ul>
    </div>

    <!--labeau開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=labeau">
                <img alt="labeau" src="https://www.hawooo.com/images/ftp/20171123/edmmail_02.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>


    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

        <img src="https://www.hawooo.com/images/ftp/20171123/edm_bg.png" style="width: 100%">
        <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                <asp:Repeater ID="rp1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                            <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                            </a></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                RM<span style="font-size: medium; letter-spacing: -2px;">
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                            </a></li>
                    </ItemTemplate>
                </asp:Repeater>

            </ul>
        </div>
    </div>

    <!--UNT開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=154">
                <img alt="UNT" src="https://www.hawooo.com/images/ftp/20171123/edmmail_05.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>


    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

        <img src="https://www.hawooo.com/images/ftp/20171123/edm_bg.png" style="width: 100%">
        <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                <asp:Repeater ID="rp2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                            <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                            </a></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                RM<span style="font-size: medium; letter-spacing: -2px;">
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                            </a></li>
                    </ItemTemplate>
                </asp:Repeater>



            </ul>
        </div>
    </div>

    <!--nicedoctor開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=164">
                <img alt="nicedoctor" src="https://www.hawooo.com/images/ftp/20171123/edmmail_08.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>


    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

        <img src="https://www.hawooo.com/images/ftp/20171123/edm_bg.png" style="width: 100%">
        <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                <asp:Repeater ID="rp3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                            <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                            </a></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                RM<span style="font-size: medium; letter-spacing: -2px;">
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                            </a></li>
                    </ItemTemplate>
                </asp:Repeater>


            </ul>
        </div>
    </div>
    <!--寧記開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=175">
                <img alt="寧記" src="https://www.hawooo.com/images/ftp/20171123/edmmail_11.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>


    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

        <img src="https://www.hawooo.com/images/ftp/20171123/edm_bg.png" style="width: 100%">
        <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                <asp:Repeater ID="rp4" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                            <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                            </a></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                RM<span style="font-size: medium; letter-spacing: -2px;">
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                            </a></li>
                    </ItemTemplate>
                </asp:Repeater>



            </ul>
        </div>
    </div>

    <!--橘子開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=158">
                <img alt="橘子工坊" src="https://www.hawooo.com/images/ftp/20171123/edmmail_14.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>


    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

        <img src="https://www.hawooo.com/images/ftp/20171123/edm_bg.png" style="width: 100%">
        <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                <asp:Repeater ID="rp5" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                            <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                            </a></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                RM<span style="font-size: medium; letter-spacing: -2px;">
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                            </a></li>
                    </ItemTemplate>
                </asp:Repeater>


            </ul>
        </div>
    </div>

    <!--messa開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=169">
                <img alt="messa" src="https://www.hawooo.com/images/ftp/20171123/edmmail_17.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>


    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

        <img src="https://www.hawooo.com/images/ftp/20171123/edm_bg.png" style="width: 100%">
        <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                <asp:Repeater ID="rp6" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                            <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                            </a></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                RM<span style="font-size: medium; letter-spacing: -2px;">
                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                        <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                            </p>
                            </a></li>
                    </ItemTemplate>
                </asp:Repeater>


            </ul>
        </div>
    </div>


    <script type="text/javascript" src="171027.js"></script>
    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }


        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }
    </script>

</asp:Content>
