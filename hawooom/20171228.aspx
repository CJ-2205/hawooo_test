<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171228.aspx.cs" MasterPageFile="~/mobile/mobile.master" Inherits="mobile_20171228" %>


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
                <img alt="12月發新日" src="https://www.hawooo.com/images/ftp/20171228/edmm_01.png" style="float: left; display: block; width: 100%;" /></li>



            <!--第一塊開始-->
            <li>
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%; background-color: black">


                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=12" target="_blank">
                            <img alt="bhks" src="https://www.hawooo.com/images/ftp/20171228/edmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>
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
                            <%-- <li style="margin: 0;"><a href="page1.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>--%>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <!--Part2Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: black;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=117" target="_blank">
                            <img alt="nature tree" src="https://www.hawooo.com/images/ftp/20171228/edmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>
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
                        <%-- <li style="margin: 0;"><a href="page2.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>--%>
                    </ul>
                </div>
            </li>

            <li>
                <!--Part3Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: black;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=168" target="_blank">
                            <img alt="櫻桃爺爺" src="https://www.hawooo.com/images/ftp/20171228/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <!--Part3商品-->
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
                        <%-- <li style="margin: 0;"><a href="page3.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>--%>
                    </ul>
                </div>
            </li>
            <li>
                <!--Part4Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: black;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=176" target="_blank">
                            <img alt="Plenty" src="https://www.hawooo.com/images/ftp/20171228/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

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
                        <%--   <li style="margin: 0;"><a href="page4.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" /></li>--%>
                    </ul>
                </div>
            </li>

            <li>
                <!--Part5Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: black;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=170" target="_blank">
                            <img alt="KGcheck" src="https://www.hawooo.com/images/ftp/20171228/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <!--Part4商品-->
                        <li>
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
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
                        </li>
                        <%-- <li style="margin: 0;"><a href="page4.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" /></li>--%>
                    </ul>
                </div>
            </li>

            <li>
                <!--Part6Banner-->
                <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: black;">
                    <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                        <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=184" target="_blank">
                            <img alt="妍霓絲" src="https://www.hawooo.com/images/ftp/20171228/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <!--Part4商品-->
                        <li>
                            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
                                    <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                        <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
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
                        <%-- <li style="margin: 0;"><a href="page4.aspx" target="_blank">
                            <img alt="看更多" src="https://www.hawooo.com/images/ftp/20171226/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

                        <li style="margin: 0;">
                            <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" /></li>--%>
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
