<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180209.aspx.cs" Inherits="_180209" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <link rel="stylesheet" href="assets/css/newyearmom.css">
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

        /*a {
       color: #535252;}*/
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-6 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180209/secM_01.png" style="width: 100%" alt="美體保養"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180209/secM_02.png" style="width: 100%;" alt="時尚彩妝"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180209/secM_03.png" style="width: 100%;" alt="保健食品"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale4')">
                    <img src="https://www.hawooo.com/images/ftp/20180209/secM_04.png" style="width: 100%" alt="服裝內衣"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale5')">
                    <img src="https://www.hawooo.com/images/ftp/20180209/secM_05.png" style="width: 100%" alt="生活類品"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale6')">
                    <img src="https://www.hawooo.com/images/ftp/20180209/secM_06.png" style="width: 100%" alt="媽咪寶貝"></a></li>

        </ul>
    </div>

    <!--活動開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li><a href="https://www.hawooo.com/mobile/2018cnyregister.aspx">
                <img alt="禮多人不怪" src="https://www.hawooo.com/images/ftp/20180209/edmm_01.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li>
                <img alt="消費滿188" src="https://www.hawooo.com/images/ftp/20180209/edmm_02.png" style="float: left; display: block; width: 100%;" /></li>

            <li>
                <img alt="消費滿288" src="https://www.hawooo.com/images/ftp/20180209/edmm_03.png" style="float: left; display: block; width: 100%;" /></li>

            <li>
                <img alt="消費滿388" src="https://www.hawooo.com/images/ftp/20180209/edmm_04.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>


    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffdb00">
        <a id="gosale1">
            <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180209/edmm_05.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <h4 class="slogan">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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

    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffdb00">

        <a id="gosale2">
            <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180209/edmm_07.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <h4 class="slogan">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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

    <!--第三塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffdb00">
        <a id="gosale3">
            <img alt="家裡就有髮型師" src="https://www.hawooo.com/images/ftp/20180209/edmm_09.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">

            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <h4 class="slogan">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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

    <!--第四塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffdb00">
        <a id="gosale4">
            <img alt="春節除舊佈新" src="https://www.hawooo.com/images/ftp/20180209/edmm_11.png" style="float: left; display: block; width: 100%;" /></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <h4 class="slogan">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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

    <!--第五塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffdb00">
        <a id="gosale5">
            <img alt="春節除舊佈新" src="https://www.hawooo.com/images/ftp/20180209/edmm_13.png" style="float: left; display: block; width: 100%;" /></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <h4 class="slogan">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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

    <!--第六塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ffdb00">
        <a id="gosale6">
            <img alt="春節除舊佈新" src="https://www.hawooo.com/images/ftp/20180209/edmm_15.png" style="float: left; display: block; width: 100%;" /></a>
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <h4 class="slogan">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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


        <img alt="100%" src="https://www.hawooo.com/images/ftp/20171212/noticeM.png" style="float: left; display: block; width: 100%;" />
        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">好礼9选1<br>
                            <span style="color: white;">• 会员需于9/2(Fri.)-21/2(Wed.)内完成订购，单笔订单金额符合以下门槛且于22/2前完成付款⽅可参加好礼登记活动。未于活动期间内完成付款/退换货或/未于活动期间内完成登录并选择赠品者均视同放弃，不得逾期要求补登。<br>
                                <span style="color: yellow;">• 单笔满RM188｜</span>可登记参加以下赠品3选1：Heme小心机变色润唇膏3g(市值RM39.9)、Heme蛋化毛孔紧致泥膜50g(市值RM27)、NEWART红宝石能量瞬护隔离霜 30ml(市值RM49.9)。<br>

                                <span style="color: yellow;">• 单笔满RM288｜</span>可登记参加以下赠品或180的满额赠品6选1：Nicedoctor玫瑰蜗牛保湿香氛冻膜180g(市值RM59.9)、Nature tree保湿浓缩精华液250ml(市值RM68.9)、法婡雅 会说话的唇露(市值RM59.9)。<br>

                                <span style="color: yellow;">• 单笔满RM388｜</span>可登记参加以下赠品或180/280的满额赠品9选1：UNT 轻裸光透CC霜SPF36 PA++ 30ml(市值RM58.9)、LA BEAU净肤淡斑美白菁华30ml(市值RM89.9)、BHK‘s璨研维他命B群+铁(60颗/瓶)＋奢光净白面膜5入(市值RM119.8)。<br>
                                 •确认符合资格者，好物飞行将于该笔订单出货时一并寄送赠品，如遇赠品缺货时或其他不可抗力之因素，好物飞行有权以购物金替补，180满额赠赠品将以RM25替代，280满额赠赠品将以RM50替代，380满额赠赠品将以RM80替代，统一归户时间为5/3，恕不逐一通知。<br>
                             <span style="color: yellow;">• 西马99免运 东马199免运｜</span>活动期间内订购好物官网商品者，即可享有『西马99免运东马199免运』，是否符合免运资格均是以最终订单金额为准，最终订单金额系为扣除所有Ha币/折扣券/购物金后的实际付款金额。<br>
                              
                            
                            </span>
                            <br>
                            其他<span style="color: white;"><br>
                                •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span> </td>

                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>




        <img alt="hawooo.com" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 100 }, 500);
        }

        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>

</asp:Content>

