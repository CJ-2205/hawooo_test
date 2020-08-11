<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171208.aspx.cs" Inherits="user_20171208" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171208M.aspx";
                }
            }
        }
         )
    </script>

    <style type="text/css">
        body {
            position: relative;
            height: 900vh;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 900px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .gift1 {
            background-color: #4aa940;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-color: #767892;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift3 {
            background-color: #dc4d3f;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift4 {
            background-color: #767892;
            background-size: 100%;
            height: 596px;
            margin: 0px auto;
            padding: 0px;
        }

        .gift5 {
            background-color: #767892;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .finfo_menu {
            width: 680px;
            height: 35px;
            line-height: 35px;
            color: rgb(255, 255, 255);
            font-size: 15px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <!--神奇圖層區開始-->
            <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
                <img src="https://www.hawooo.com/images/ftp/20171207/1207edm_01.png" alt="限時搖滾價" style="width: 100%">



                <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


                    <a href="javascript:void(0)" onclick="GoID('sale1')">
                        <img src="https://www.hawooo.com/images/ftp/20171207/air1.png" alt="99西馬免運" style="position: absolute; top: 40%; margin: auto; width: 23%; left: 4%;" />
                    </a>

                    <a href="javascript:void(0)" onclick="GoID('sale4')">
                        <img src="https://www.hawooo.com/images/ftp/20171207/1207air2.png" alt="加碼399 抽1500" style="position: absolute; top: 10%; right: 48%; left: 0; margin: auto; width: 25%;" />
                    </a>

                    <a href="javascript:void(0)" onclick="GoID('sale1')">
                        <img src="https://www.hawooo.com/images/ftp/20171207/1207air3.png" alt="满399折25 满499折50" style="position: absolute; top: 18%; right: 0; left: 4%; margin: auto; width: 27%;" />
                    </a>

                </div>
            </div>
            <!--神奇圖層區掰掰-->

        </ul>

    </div>


    <!--Gift 1開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="sale1"></a>
                <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20171207/edm_02.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift1 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>


            </li>
        </ul>
    </div>
    <!--商品結束-->


    <!--Gift 2開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a id="sale2"></a>
                <img alt="25% off 單件也超殺" src="https://www.hawooo.com/images/ftp/20171207/edm_04.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>



    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift2 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>


            </li>
        </ul>
    </div>

    <!--商品結束-->

    <!--Gift 3開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="sale3"></a>
                <img alt="回饋1500 立馬抽旅遊金" src="https://www.hawooo.com/images/ftp/20171207/edm_06.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift3 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>


            </li>
        </ul>
    </div>
    <!--商品結束-->


    <!--Gift 4開始帶商品-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a id="sale4"></a>
                <img alt="回饋1500" src="https://www.hawooo.com/images/ftp/20171207/edm_08.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>

    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift4 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">


                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>

            </li>
        </ul>
    </div>
    <!--商品結束-->

    <!--footer-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171201/edm_23.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>

        <div>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

            <td width="90%" bgcolor="#000000" style="text-align:left;font-family:Arial,Helvetica,sans-serif;font-size:12px;font-weight:bold;text-transform:uppercase;color:#f8d1dd;padding:10px 0px;max-height: 55px;">特惠商品<br>
              <span style="color:white;">
每个品牌折扣时段与金额不同，且部分商品没有优惠价格，请依官网公告的商品价格为准，逾时不候。折扣商品数量有限，售完为止，敬请见谅。<br></span>

<br>抢旅游金RM1500<span style="color:white;"><br>
7/12-25/12期间单笔订单消费满399即可获得一次抽奖资格(不可累计多笔订单金额)，且于26/12前完成付款流程，将有机会可获得旅游金RM1500，Hawooo将于5/1统一抽出中奖者并公布于Hawooo官网，并于15/1前以简讯/电子邮件等方式通知，敬请留意相关资讯，31/1前逾期未正式回覆并完成领取流程者，视同放弃。此旅游金将以现金券方式提供，必须于马来西亚Golden deluxe travel进行兑换，若选择之机票或团体旅游行程不足RM1500恕不退款，若超过者则可自行补足差额即可使用，使用期至31/10/2018，请中奖人至HaWooo马来西亚总部完成领取。</span> <br>

<br>免运门槛<span style="color:white;"><br>
活动期间，西马运费RM 19，满额RM 99免运;东马运费RM 25，满额RM 199免运。</span><br>

<br>其他<span style="color:white;"><br>
参加者参加本活动即同意受本活动办法及注意事项规范，如有违反本活动办法及注意事项，本公司取消其参加或兑换资格，并对任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之寮式，意图混淆或影响活动结果的人，⼀经本公司发现或经第三方检验经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对任何破坏本活动之⾏为保留法律追诉权。本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span> 
  
 </td>

                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script type="text/javascript" src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var url = $.url;


            if ($.url.param("tid") != "") {

                var tagid = $.url.param("tid");
                if (tagid != '') {
                    GoID(tagid);
                }
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        //$(function () {
        //    var tagid = $.url.param("tid");
        //    if (tagid != '') {
        //        GoID(tagid);
        //    }
        //})
        //function GoID(id) {
        //    $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        //}


    </script>

    <%--<script>
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
    </script>
    <style>
        [class*=am-u-] + [class*=am-u-]:last-child {
            float: left;
        }
    </style>--%>
</asp:Content>
