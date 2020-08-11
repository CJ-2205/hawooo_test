<%@ Page Language="C#" AutoEventWireup="true" CodeFile="helloday.aspx.cs" Inherits="helloday" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-3 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/week1/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="頂級精華專家"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/week1/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="囤貨狂一定要有"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/week1/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="李國毅強力推薦"></a></li>
        </ul>
    </div>
    <!--四大類別小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=solone" target="_blank">
            <img id="gosale1" alt="Dr.cink" src="https://www.hawooo.com/images/ftp/week1/edmm_01.png" style="float: left; display: block; width: 100%;" /></a>
    </div>

    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #f49c98">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #f49c98">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
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


    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #bfbfbf">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=%E9%9C%B2%E5%A5%87%E4%BA%9E" target="_blank">
            <img id="gosale2" src="https://www.hawooo.com/images/ftp/week1/edmm_02.png" alt="台酒TTL" style="width: 100%;"></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #bfbfbf">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
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

    <!--第三塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #638c0b">

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=202" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/week1/edmm_03.png" alt="嗜．香氛" style="width: 100%;"></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #638c0b">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>

                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
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


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 80 }, 500);
        }
    </script>

</asp:Content>
