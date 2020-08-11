<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171111.aspx.cs" Inherits="mobile_20171111" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <style type="text/css">
        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .rm110 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_09.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .off30 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_11.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .off20 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .hotsale {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_15.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
    <div>


        <!--五大類別小選單開始-->
        <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">


            <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
                <li class="am-fl">
                    <a data-id="#gobuy1" onclick="getThisId(this)" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_01.png" style="width: 100%;" alt="買一送一"></a>
                </li>

                <li class="am-fl">
                    <a data-id="#go110" onclick="getThisId(this)" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_02.png" style="width: 100%;" alt="現折RM110"></a>
                </li>

                <li class="am-fl">
                    <a data-id="#go30" onclick="getThisId(this)" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_03.png" style="width: 100%;" alt="30% off"></a>
                </li>
                <li class="am-fl">
                    <a data-id="#go20" onclick="getThisId(this)" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_04.png" style="width: 100%;" alt="20% off"></a>
                <li class="am-fl">
                    <a data-id="#gosale" onclick="getThisId(this)" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_05.png" style="width: 100%;" alt="暢銷單品"></a>
                </li>
            </ul>

        </div>
        <!--五大類別小選單再見-->

        <!--edm開始-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;">
                    <img alt="單身購物節" src="https://www.hawooo.com/images/ftp/20171031/edmm_01.gif" style="float: left; display: block; width: 100%;" /></li>

                <li style="margin: 0;">
                    <a href="http://www.hawooo.com/mobile/product.aspx?id=8350">
                        <img alt="降溫香水滿額送" src="https://www.hawooo.com/images/ftp/20171031/edmm_02.png" style="float: left; display: block; width: 50%;" /></a></li>

                <li style="margin: 0;">
                    <img alt="限時99免運" src="https://www.hawooo.com/images/ftp/20171031/edmm_03.png" style="float: left; display: block; width: 50%;" /></li>


                <li style="margin: 0;">
                    <img alt="整點特賣會 即將開放" src="https://www.hawooo.com/images/ftp/20171031/edmm_04.png" style="float: left; display: block; width: 50%;" /></li>


                <li style="margin: 0;">
                    <img alt="iPhone X 即將開放" src="https://www.hawooo.com/images/ftp/20171031/edmm_05.png" style="float: left; display: block; width: 50%;" /></li>

            </ul>
        </div>


        <!--part1Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gobuy1" href="20171111page1.aspx">
                    <img alt="買一送一 賠錢交朋友" src="https://www.hawooo.com/images/ftp/20171031/edmm_06.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--part1商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
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



        <!--Part2Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go110" href="20171111page2.aspx">
                    <img alt="最高現折 Rm110" src="https://www.hawooo.com/images/ftp/20171031/edmm_08.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--Part2商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
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


        <!--Part3Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go30" href="20171111page3.aspx">
                    <img alt="30%" src="https://www.hawooo.com/images/ftp/20171031/edmm_10.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>



        <!--Part3商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
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



        <!--Part4Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go20" href="20171111page4.aspx">
                    <img alt="20%" src="https://www.hawooo.com/images/ftp/20171031/edmm_12.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part4商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
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


        <!--Part5Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gosale" href="20171111page5.aspx">
                    <img alt="暢銷單品hot sale" src="https://www.hawooo.com/images/ftp/20171031/edmm_14.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part5商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                    <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
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



        <!--footer-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;">
                    <img alt="30%" src="https://www.hawooo.com/images/ftp/20171031/edmm_16.png" style="float: left; display: block; width: 100%;" /></li>

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
