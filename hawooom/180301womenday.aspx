<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180301womenday.aspx.cs" Inherits="_180301womenday" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });

        function fadeDiv(fid) {
            if ($("#" + fid).css('display') == 'none') {
                $("#" + fid).toggle(200);
            }
         
            //if ($("#" + fid).find(".am-in"));
            //$("#" + fid).addClass("am-in");
        }

    </script>


    <style>
        .pricedetail {
            font-size: medium;
            color: red;
            text-align: center;
            margin: 5px 5px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gotop','')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_01.png" style="width: 100%" alt="寵愛女人節"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2','see-sale-2')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_02.png" style="width: 100%;" alt="內衣"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale6','see-sale-6')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_03.png" style="width: 100%;" alt="美食"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale7','see-sale-7')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_04.png" style="width: 100%" alt="媽咪"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale4','see-sale-4')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_05.png" style="width: 100%" alt="美妝"></a></li>


            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale5','see-sale-5')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_06.png" style="width: 100%" alt="生活"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale1','see-sale-1')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_07.png" style="width: 100%;" alt="保健"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3','see-sale-3')">
                    <img src="https://www.hawooo.com/images/ftp/20180302/sidebarM_08.png" style="width: 100%;" alt="保養"></a></li>

        </ul>
    </div>



    <!--edm開始-->
    <div id="gotop" class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img alt="寵愛女人日" src="https://www.hawooo.com/images/ftp/20180302/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <img alt="全站消費" src="https://www.hawooo.com/images/ftp/20180302/edmm_02.png" style="float: left; display: block; width: 100%;" />

        <img alt="七大名人分享生活tips" src="https://www.hawooo.com/images/ftp/20180302/edmm_03.png" style="float: left; display: block; width: 100%;" />
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <div class="am-panel-group" id="accordion">
            <!--第一塊-->

            <div class="am-panel am-panel-default" style="border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-1');">
                        <img alt="1侯佩岑" src="https://www.hawooo.com/images/ftp/20180302/edmm_04.png" style="float: left; display: block; width: 100%;" id="gosale1" /></a>
                </div>
                <div id="see-sale-1" class="am-panel-collapse am-collapse am-in" style="background-color: #ff53ad; display: none;">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div1" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!--第二塊-->

            <div class="am-panel am-panel-default" style="margin-top: 0px; border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-2');">
                        <img alt="2拐拐" src="https://www.hawooo.com/images/ftp/20180302/edmm_05.png" style="float: left; display: block; width: 100%;" id="gosale2" /></a>
                </div>
                <div id="see-sale-2" class="am-panel-collapse am-collapse" style="background-color: #fe7230; display: none">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div2" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!--第三塊-->

            <div class="am-panel am-panel-default" style="margin-top: 0px; border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-3');">
                        <img alt="3SAM老師" src="https://www.hawooo.com/images/ftp/20180302/edmm_06.png" style="float: left; display: block; width: 100%;" id="gosale3" /></a>
                </div>
                <div id="see-sale-3" class="am-panel-collapse am-collapse" style="background-color: #a267fe; display: none">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div3" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!--第四塊-->

            <div class="am-panel am-panel-default" style="margin-top: 0px; border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-4');">
                        <img alt="4宋米秦" src="https://www.hawooo.com/images/ftp/20180302/edmm_07.png" style="float: left; display: block; width: 100%;" id="gosale4" /></a>
                </div>
                <div id="see-sale-4" class="am-panel-collapse am-collapse" style="background-color: #d94ae1; display: none">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div4" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!--第五塊-->

            <div class="am-panel am-panel-default" style="margin-top: 0px; border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-5');">
                        <img alt="5修杰楷" src="https://www.hawooo.com/images/ftp/20180302/edmm_08.png" style="float: left; display: block; width: 100%;" id="gosale5" /></a>
                </div>
                <div id="see-sale-5" class="am-panel-collapse am-collapse" style="background-color: #06c5c2; display: none">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div5" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!--第六塊-->

            <div class="am-panel am-panel-default" style="margin-top: 0px; border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-6');">
                        <img alt="6黃小柔" src="https://www.hawooo.com/images/ftp/20180302/edmm_09.png" style="float: left; display: block; width: 100%;" id="gosale6" /></a>
                </div>
                <div id="see-sale-6" class="am-panel-collapse am-collapse" style="background-color: #6cd239; display: none">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div6" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!--第七塊-->

            <div class="am-panel am-panel-default" style="margin-top: 0px; border: 0px;">
                <div class="am-panel-hd" style="padding: 0;">
                    <a onclick="fadeDiv('see-sale-7');">
                        <img alt="7嚴立婷" src="https://www.hawooo.com/images/ftp/20180302/edmm_10.png" style="float: left; display: block; width: 100%;" id="gosale7" /></a>
                </div>
                <div id="see-sale-7" class="am-panel-collapse am-collapse" style="background-color: #ff53ad; display: none">
                    <div class="am-cf am-panel-bd" style="display: block;">
                        <div id="div7" style="height: auto; position: relative;">
                            <ul style="height: 50%; list-style-type: none; padding: 0;">
                                <asp:Repeater ID="rp_product_list_7" runat="server" ViewStateMode="Enabled">
                                    <ItemTemplate>
                                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                <p style="margin: 10px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                </p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

        function GoID(id, fid) {

            var v = $("#" + id);
            $("html,body").animate({ scrollTop: v.offset().top - 100 }, 500);
            fadeDiv(fid);
        };



        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        };

    </script>
</asp:Content>
