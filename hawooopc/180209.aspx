<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180209.aspx.cs" Inherits="_180209" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1000px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 1000px;
            }

        .gift1 {
            background-color: #ffdb00;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #ff0060;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="margin: 0 auto; display: block; width: 900px; height: 900px;">

        <a id="gotop" href="https://www.hawooo.com/user/2018cnyregister.aspx">
            <img alt="禮多人不怪" src="https://www.hawooo.com/images/ftp/20180209/edm_01.png" style="float: left; display: block; width: 100%;" /></a>

        <img alt="消費滿188買就送" src="https://www.hawooo.com/images/ftp/20180209/edm_02.png" style="float: left; display: block; width: 100%;" />

        <img alt="消費滿288買就送" src="https://www.hawooo.com/images/ftp/20180209/edm_03.png" style="float: left; display: block; width: 100%;" />

        <img alt="消費滿388買就送" src="https://www.hawooo.com/images/ftp/20180209/edm_04.png" style="float: left; display: block; width: 100%;" />
    </div>



    <!--sale 1區塊開始-->
    <div style="position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale1">
                <img src="https://www.hawooo.com/images/ftp/20180209/edm_06.png" alt="SKINCARE" style="width: 100%" /></a>
        </div>


    </div>

    <!--開始帶商品-->

    <div class="gift1 am-cf" style="margin: 0 auto; display: block; width: 900px; padding: 0 50px 0 50px;">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->


    <!--sale 2區塊開始-->
    <div style="position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180209/edm_08.png" alt="SKINCARE" style="width: 100%" /></a>
        </div>


    </div>

    <!--開始帶商品-->
    <div class="gift1 am-cf" style="margin: 0 auto; display: block; width: 900px; padding: 0 50px 0 50px;">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--商品結束-->


    <!--sale 3區塊開始-->
    <div style="position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale3">
                <img src="https://www.hawooo.com/images/ftp/20180209/edm_10.png" alt="SKINCARE" style="width: 100%" /></a>
        </div>


    </div>

    <!--開始帶商品-->

    <div class="gift1 am-cf" style="margin: 0 auto; display: block; width: 900px; padding: 0 50px 0 50px;">

        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--商品結束-->

    <!--sale 4區塊開始-->
    <div style="position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale4">
                <img src="https://www.hawooo.com/images/ftp/20180209/edm_12.png" alt="SKINCARE" style="width: 100%" /></a>
        </div>


    </div>

    <!--開始帶商品-->

    <div class="gift1 am-cf" style="margin: 0 auto; display: block; width: 900px; padding: 0 50px 0 50px;">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <!--商品結束-->

    <!--sale 5區塊開始-->
    <div style="position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale5">
                <img src="https://www.hawooo.com/images/ftp/20180209/edm_14.png" alt="SKINCARE" style="width: 100%" /></a>
        </div>


    </div>

    <!--開始帶商品-->

    <div class="gift1 am-cf" style="margin: 0 auto; display: block; width: 900px; padding: 0 50px 0 50px;">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--商品結束-->

    <!--sale 6區塊開始-->
    <div style="position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale6">
                <img src="https://www.hawooo.com/images/ftp/20180209/edm_16.png" alt="SKINCARE" style="width: 100%" /></a>
        </div>


    </div>

    <!--開始帶商品-->

    <div class="gift1 am-cf" style="margin: 0 auto; display: block; width: 900px; padding: 0 50px 0 50px;">
        <ul class="am-avg-sm-4">
            <asp:Repeater ID="rp_product_list_6" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                        <h4 class="slogan">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>

    <!--商品結束-->
    <!--footer-->
    <div style="margin: 0 auto; display: block; width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li>
                <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171212/lottery_2.png" style="float: left; display: block; width: 100%;" /></li>

            <li>
                <table width="900" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">好礼9选1<br>
                                <span style="color: white;">• 会员需于9/2(Fri.)-21/2(Wed.)内完成订购，单笔订单金额符合以下门槛且于22/2前完成付款⽅可参加好礼登记活动。未于活动期间内完成付款/退换货或/未于活动期间内完成登录并选择赠品者均视同放弃，不得逾期要求补登。<br>
                                    <span style="color: yellow;">• 单笔满RM188｜</span>可登记参加以下赠品3选1：Heme小心机变色润唇膏3g(市值RM39.9)、Heme蛋化毛孔紧致泥膜50g(市值RM27)、NEWART红宝石能量瞬护隔离霜 30ml(市值RM49.9)。<br>

                                    <span style="color: yellow;">• 单笔满RM288｜</span>可登记参加以下赠品或180的满额赠品6选1：Nicedoctor玫瑰蜗牛保湿香氛冻膜180g(市值RM59.9)、Nature tree保湿浓缩精华液250ml(市值RM68.9)、法婡雅 会说话的唇露(市值RM59.9)。<br>

                                    <span style="color: yellow;">• 单笔满RM388｜</span>可登记参加以下赠品或180/280的满额赠品9选1：Miss Hana花娜小姐 妆素颜透亮赖床霜30ml(市值RM82.9)、LA BEAU净肤淡斑美白菁华30ml(市值RM89.9)、BHK‘s璨研维他命B群+铁(60颗/瓶)＋奢光净白面膜5入(市值RM119.8)。<br>
                                    •确认符合资格者，好物飞行将于该笔订单出货时一并寄送赠品，如遇赠品缺货时或其他不可抗力之因素，好物飞行有权以购物金替补，180满额赠赠品将以RM25替代，280满额赠赠品将以RM50替代，380满额赠赠品将以RM80替代，统一归户时间为5/3，恕不逐一通知。<br>
                                <span style="color: yellow;">• 西马99免运 东马199免运｜</span>活动期间内订购好物官网商品者，即可享有『西马99免运东马199免运』，是否符合免运资格均是以最终订单金额为准，最终订单金额系为扣除所有Ha币/折扣券/购物金后的实际付款金额。<br>
                                   
                                     </span>
                                <br>
                                其他<span style="color: white;"><br>
                                    •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                    • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span>
                            </td>
                            <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>
                        </tr>
                    </tbody>
                </table>
            </li>

            <li>
                <img class="twoyearbottom" alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" /></li>

        </ul>
    </div>

    <!-- 一個看不見的div 高度0 -->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_01.png" style="width: 150px; margin-bottom: -1px" alt="禮多人不怪" /></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_02.png" style="width: 150px; margin-bottom: -1px" alt="保養" /></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_03.png" style="width: 150px; margin-bottom: -1px" alt="彩妝" /></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_04.png" style="width: 150px; margin-bottom: -1px" alt="保健" /></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_05.png" style="width: 150px; margin-bottom: -1px" alt="內衣" /></a>

            <a href="javascript:void(0)" onclick="GoID('gosale5')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_06.png" style="width: 150px; margin-bottom: -1px" alt="生活" /></a>

            <a href="javascript:void(0)" onclick="GoID('gosale6')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_07.png" style="width: 150px; margin-bottom: -1px" alt="媽寶" /></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180209/sec_08.png" style="width: 150px; margin-bottom: -1px" alt="TOP" /></a>
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
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 170 }, 500);
        }

        function GoUrlID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }
        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })
    </script>
</asp:Content>
