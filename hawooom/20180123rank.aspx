<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180123rank.aspx.cs" Inherits="_20180123rank" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/d11.css">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!--  -->
    <link rel="stylesheet" type="text/css" href="assets/css/d11.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--四大類別小選單開始-->
        <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; padding: 0;">
            <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
                <li class="am-fl">

                    <a href="20180116.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_01.png" style="width: 100%" alt="新年紅包 回主頁"></a></li>

                <li class="am-fl">
                    <a href="angpao1.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_02.png" style="width: 100%;" alt="年貨大街"></a></li>

                <li class="am-fl">
                    <a href="angpao2.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_03.png" style="width: 100%;" alt="桃花氣色好"></a></li>

                <li class="am-fl">
                    <a href="angpao3.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_04.png" style="width: 100%" alt="頭髮運勢好"></a></li>

                <li class="am-fl">
                    <a href="angpao4.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_05.png" style="width: 100%" alt="春節除舊佈新"></a></li>

            </ul>
        </div>
    <!--四大類別小選單再見-->

    <!--edm開始-->

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <img alt="10/11 限時特賣會" src="https://www.hawooo.com/images/ftp/20180123/edmm_01.gif" style="float: left; display: block; width: 100%;" />
    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">

        <!--試試看-->
        <table max-width="650" border="0" cellspacing="0" cellpadding="0" width="100%">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#7f47dd" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#7f47dd" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; max-height: 55px;"><span style="font-size: 15px; color: white">
                        <asp:Label Style="font-size: 20px; color: white" runat="server" ID="LbMoneyText"></asp:Label></span>
                        <span style="font-size: 15px; color: yellow; font-weight: bold;">
                            <asp:Literal ID="LtSumMoney" runat="server"></asp:Literal></span>
                        <a style="font-size: 15px; color: yellow; font-weight: bold;" href="login.aspx?rurl=20180123rank.aspx">
                            <asp:Literal ID="LtLogin" runat="server"></asp:Literal>
                        </a>
                        <br>
                        <asp:Literal ID="LtUpdateTime" runat="server"></asp:Literal></td>

                    <td width="5%" bgcolor="#7f47dd" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                </tr>
            </tbody>
        </table>
    </div>
    <!--BN下面那塊 告訴你在哪裡-->



    <!-- 內容區 START -->
    <div style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <section class="">
            <div class="d11-table-wrapper" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th colspan="2" style="font-size:small">名次</th>
                            <th style="font-size:small">E-Mail/電話</th>
                            <th style="font-size:small">總消費金額</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><i class="am-icon-star"></i></td>
                                    <td style="font-size:small"><%#Eval("RANK") %></td>
                                    <td style="text-align: center;font-size:small">
                                        <p><%#Eval("EMAIL") %></p>
                                        <%#Eval("PHONE") %></td>
                                    <td style="font-size:small">RM<%#Eval("MONEY") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </section>
    </div>

    <div style="position: relative; max-width: 650px; margin: 0 auto;">
        <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

            <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #eb3a27">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">

                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
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

           <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;background-color:#F9201F;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="100%" src="https://www.hawooo.com/images/ftp/20171212/noticeM.png" style="float: left; display: block; width: 100%;" /></li>


            <!--公告上面那塊-->

            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">累积消费赛<br>
                                <span style="color: white;">• 参加会员需于24 / 1~29 / 1内完成订购，且于30/1前完成付款⽅可参加，如未完成付款流程者或退换货者均视同放弃。<br>
                                    • 排名参考当下订购单累积的⾦额，但活动结算后将⾃动排除未付款订单⾦额，实际得奖名次将于5/2公布。<br>
                                    • 如遇同消费⾦额相同者，将依据付款完成时间先后顺序，恕不重复提供并列之奖项。<br>
                                    •排名赛各名次奖项如下：<br>
                                    •TOP 1~TOP 3奖项分别为RM888 / RM588 / RM388购物金，可于Hawooo官网折抵消费使用，无消费金额门槛限制，但不得兑换现金。TOP 4~TOP10奖项分别为【樱桃爷爷】土凤梨酥10入/盒（市价RM69.9），并将于下下订单成立时一并寄送，建议领取期间为5/2〜5/3。</span><br>
                                <br>
                                其他<span style="color: white;"><br>
                                    •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                    • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span> </td>

                            <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>





        </ul>
    </div>





    <script type="text/javascript" src="171027.js"></script>
    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>

        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }

    </script>

</asp:Content>
