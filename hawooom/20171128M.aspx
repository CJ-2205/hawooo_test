<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171128M.aspx.cs" Inherits="mobile_20171128" %>

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
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
    <div>


        <!--edm開始-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;">
                    <img alt="Xmas狂送Gift" src="https://www.hawooo.com/images/ftp/20171201/edmm_01.png" style="float: left; display: block; width: 100%;" /></li>

                <li style="margin: 0;">
                    <img src="https://www.hawooo.com/images/ftp/20171201/edmm_02.png" style="float: left; display: block; width: 25%;" /></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift2')">
                    <img alt="送BHK's Q10" src="https://www.hawooo.com/images/ftp/20171201/edmm_03.png" style="float: left; display: block; width: 50%;" /></a></li>

                <li style="margin: 0;">
                    <img src="https://www.hawooo.com/images/ftp/20171201/edmm_04.png" style="float: left; display: block; width: 25%;" /></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift4')">
                    <img alt="送軟糖+LP28敏立清" src="https://www.hawooo.com/images/ftp/20171201/edmm_05.png" style="float: left; display: block; width: 40%" /></a></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift1')">
                    <img alt="送美蕃了泥膜" src="https://www.hawooo.com/images/ftp/20171201/edmm_06.png" style="float: left; display: block; width: 40%;" /></a></li>

                <li style="margin: 0;">
                    <img src="https://www.hawooo.com/images/ftp/20171201/edmm_07.png" style="float: left; display: block; width: 20%;" /></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift5')">
                    <img alt="送3C收納包" src="https://www.hawooo.com/images/ftp/20171201/edmm_08.png" style="float: left; display: block; width: 50%;" /></a></li>

                <li style="margin: 0;"><a href="javascript:void(0)" onclick="GoID('gift3')">
                    <img alt="送 黑糖桂圓" src="https://www.hawooo.com/images/ftp/20171201/edmm_09.gif" style="float: left; display: block; width: 50%;" /></a></li>

            </ul>

        </div>


        <!--part1Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="gift1.aspx" id="gift1">
                    <img alt="gift1 跑趴我最正" src="https://www.hawooo.com/images/ftp/20171201/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--part1商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20171201/edm_11.png" style="width: 100%">
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

                <li style="margin: 0;"><a href="gift2.aspx" id="gift2">
                    <img alt="gift2 越吃越美麗" src="https://www.hawooo.com/images/ftp/20171201/edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--Part2商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_13.png" style="width: 100%">
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

                <li style="margin: 0;"><a href="gift3.aspx" id="gift3">
                    <img alt="gift4 吃貨最挑嘴" src="https://www.hawooo.com/images/ftp/20171201/edmm_14.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>



        <!--Part3商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_15.png" style="width: 100%">
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

                <li style="margin: 0;"><a href="gift4.aspx" id="gift4">
                    <img alt="gift4 心肝寶貝最愛" src="https://www.hawooo.com/images/ftp/20171201/edmm_16.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part4商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_11.png" style="width: 100%">
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

                <li style="margin: 0;"><a href="gift5.aspx" id="gift51">
                    <img alt="gift5 伸展台穿搭" src="https://www.hawooo.com/images/ftp/20171201/edmm_18.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part5商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_13.png" style="width: 100%">
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
                    <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171201/edmm_20.png" style="float: left; display: block; width: 100%;" /></li>

            </ul>
        </div>

    </div>
     <script src="../user/assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>

</asp:Content>
