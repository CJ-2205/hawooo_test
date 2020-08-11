<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171226.aspx.cs" MasterPageFile="~/mobile/mobile.master" Inherits="_17_12_17_NewYear_Mobile_20171226" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="2018要你一直發 50% off" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_01.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;">
                <img alt="滿額現折" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_02.png" style="float: left; display: block; width: 50%;" /></li>

            <li style="margin: 0;">
                <img alt="免運門檻" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_03.png" style="float: left; display: block; width: 50%;" /></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/20180104.aspx" target="_blank">
                <img alt="2018星座運勢" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_04.png" style="float: left; display: block; width: 50%;" /></a></li>

            <li style="margin: 0;"><a href="20180110.aspx">
                <img alt="新年禮籃188起" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_05.png" style="float: left; display: block; width: 50%;" /></a></li>

            <!--第一塊開始-->
            <li>
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #1e0576">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%; background-color: #1e0576">

                        <li style="margin: 0;"><a href="page1.aspx" target="_blank">
                            <img alt="禮盒最熱賣" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>
                        <li>
                            <!--part1商品-->
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #1e0576">
                                        <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
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
                        </li>
                        <li style="margin: 0;"><a href="page1.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>

                    </ul>
                </div>
            </li>
            <li>
                <!--Part2Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #700569;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a href="page2.aspx">
                            <img alt="保健最超值" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>
                        <!--Part2商品-->
                        <li>

                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                        <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
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

                        </li>
                        <li style="margin: 0;"><a href="page2.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>

                    </ul>
                </div>
            </li>
            <li>
                <!--Part3Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #1e0576">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%; background-color: #1e0576">

                        <li style="margin: 0;"><a href="page3.aspx" target="_blank">
                            <img alt="美麗小心機" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>
                        <!--Part3商品-->
                        <li>
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #1e0576">
                                        <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
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
                        </li>
                        <li style="margin: 0;"><a href="page3.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>

                    </ul>
                </div>
            </li>
            <!--Part4Banner-->
            <li>
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #700569;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%; background-color: #700569;">

                        <li style="margin: 0;"><a href="page4.aspx">
                            <img alt="穿搭我最正" src="https://www.hawooo.com/images/ftp/20180104/168/0104edmm_15.png" style="float: left; display: block; width: 100%;" /></a></li>
                        <!--Part4商品-->
                        <li>
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                        <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
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
                        </li>
                        <li style="margin: 0;"><a href="page4.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" /></li>


                    </ul>
                </div>
            </li>
        </ul>
    </div>

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171128.js"></script>
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
