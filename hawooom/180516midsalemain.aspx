<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180516midsalemain.aspx.cs" Inherits="_180516midsalemain" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--3大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="多1元多1件"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="現折300"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="國際免運"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180517/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="top"></a></li>

        </ul>
    </div>
    <!--3大類別小選單再見-->


    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: black;">
        <img id="gotop" alt="midterm sale" src="https://www.hawooo.com/images/ftp/20180517/edmm_01.png" style="float: left; display: block; width: 100%;" />
    </div>

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <img src="https://www.hawooo.com/images/ftp/20180517/edmm_02.png" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <a href="180516midsalebrand.aspx?tid=gosale1">
                <img src="https://www.hawooo.com/images/ftp/20180517/MB_01.png" alt="女人我最大" style="position: absolute; top: 0; margin: auto; width: 50%; left: 0;" />
            </a>
            <a href="180516midsalebrand.aspx?tid=gosale3">
                <img src="https://www.hawooo.com/images/ftp/20180517/MB_03.png" alt="台灣人最愛" style="position: absolute; top: 0; margin: auto; width: 52%; left: 99.5%;" />
            </a>
            <a href="180516midsalebrand.aspx?tid=gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180517/MB_02.png" alt="桃花朵朵開" style="position: absolute; top: 0; margin: auto; width: 53%; left: 51.5%;" />
            </a>
        </div>
    </div>
    <!--神奇圖層區掰掰-->

    <!--第1塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #a272de">
        <img id="gosale1" alt="多1元多1件" src="https://www.hawooo.com/images/ftp/20180517/edmm_03.png" style="float: left; display: block; width: 100%;" />
        <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第2塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #d979cd">
        <img id="gosale2" alt="現折300" src="https://www.hawooo.com/images/ftp/20180517/edmm_05.png" style="float: left; display: block; width: 100%;" />
        <div id="div2" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第3塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #a272de">
        <img id="gosale3" alt="國際免運" src="https://www.hawooo.com/images/ftp/20180517/edmm_07.png" style="float: left; display: block; width: 100%;" />
        <div id="div3" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>


    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img alt="footer" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>

    <script src="assets/js/jquery.url.js"></script>
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
