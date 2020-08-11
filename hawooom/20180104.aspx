<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180104.aspx.cs" MasterPageFile="~/mobile/mobile.master" Inherits="mobile_20180104" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>

    <style>
        .slogan {
            margin: 5px 5px;
            height: 20px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #ff0060;
            text-align: center;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/20171226.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180104/0104_secmm_01.png" style="width: 100%" alt="要你一直發"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/hotsale_detail.aspx?id=343" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180104/0104_secmm_02.png" style="width: 100%;" alt="必備鞋款"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/hotsale_detail.aspx?id=340" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180104/0104_secmm_03.png" style="width: 100%;" alt="魔髮女神"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/hotsale_detail.aspx?id=345" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180104/0104_secmm_04.png" style="width: 100%" alt="美妝保養免運"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/hotsale_detail.aspx?id=321" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180104/0104_secmm_05.png" style="width: 100%" alt="寶貝我的寶貝"></a></li>

        </ul>
    </div>
    <!--四大類別小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="2018星座開運秘技" src="https://www.hawooo.com/images/ftp/20180104/edmm_01.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gofire')">
                <img alt="火象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_02.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('goearth')">
                <img alt="土象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_03.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gowater')">
                <img alt="水象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_04.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gowind')">
                <img alt="風象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_05.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;">
                <img alt="滿額贈" src="https://www.hawooo.com/images/ftp/20180104/edmm_06.png" style="float: left; display: block; width: 100%;" /></li>

            <!--第一塊開始-->
            <li>
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%; background-color: #EC008C">

                        <li style="margin: 0;"><a id="gofire">
                            <img alt="火象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="火象 小提醒" src="https://www.hawooo.com/images/ftp/20180104/edmm_08.png" style="float: left; display: block; width: 100%;" /></li>


                        <li>
                            <!--part1商品-->
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                        <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px;"><a style="color: #535252" href="product.aspx?id=<%# Eval("WP01") %>">
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
                    </ul>
                </div>
            </li>

            <li>
                <!--Part2Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #FBD000;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a id="goearth">
                            <img alt="土象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="土象小建議" src="https://www.hawooo.com/images/ftp/20180104/edmm_10.png" style="float: left; display: block; width: 100%;" /></li>
                        <!--Part2商品-->
                        <li>
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                        <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a style="color: #535252" href="product.aspx?id=<%# Eval("WP01") %>">
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

                    </ul>
                </div>
            </li>

            <li>
                <!--Part3Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #00A7BC;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a id="gowater">
                            <img alt="水象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="水象小提醒" src="https://www.hawooo.com/images/ftp/20180104/edmm_12.png" style="float: left; display: block; width: 100%;" /></li>
                        <li>
                            <!--Part3商品-->
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #1e0576">
                                        <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a style="color: #535252" href="product.aspx?id=<%# Eval("WP01") %>">
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

                    </ul>
                </div>
            </li>
            <li>
                <!--Part4Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #044389;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a id="gowind">
                            <img alt="風象星座" src="https://www.hawooo.com/images/ftp/20180104/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="風象小提醒" src="https://www.hawooo.com/images/ftp/20180104/edmm_14.png" style="float: left; display: block; width: 100%;" /></li>

                        <!--Part4商品-->
                        <li>
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                        <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                            <ItemTemplate>
                                                <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                        <h4 class="slogan"><%#Eval("WP24") %></h4>
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a style="color: #535252" href="product.aspx?id=<%# Eval("WP01") %>">
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

                    </ul>
                </div>
            </li>


            <li style="margin: 0;">
                <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171128.js"></script>
    <script>

        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

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
