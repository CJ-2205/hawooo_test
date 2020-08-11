<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171214.aspx.cs" MasterPageFile="~/user/user.master" Inherits="_17_12_17_Christmas_event4_20171214" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171214.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/newyearmom.css">

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
            width: 900px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }


        .gift2 {
            background-color: #767892;
            background-size: 100%;
            height: auto;
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
    <div style="width: 100%; margin: 0 auto; float: center; display: block; width: 1000px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">
            <!--開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20171220/edm_001.png" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20171215/discount.png" style="float: left; display: block; width: 100%;" />
                    </li>

                </ul>
            </div>


            <!--開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="gift2 am-cf" style="width: 1000px;">
                            <div style="padding: 10px 50px 0 50px;">
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


            <!--footer-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1000px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;">
                        <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171201/edm_23.png" style="float: left; display: block; width: 100%;" /></li>

                </ul>
            </div>


            <div>
                <table width="1000" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">满额抽奖<br>
                                <span style="color: white;">• 单笔满199抽购物金RM100(20名)、单笔满299抽购物金RM200(5名)：15/12-25/12期间单笔订单消费满活动门槛即可获得一次抽奖资格(不可累计多笔订单金额)，且于26/12前完成付款流程，将有机会可获得购物金，Hawooo将于5/1统一抽出中奖者并公布于Hawooo官网，并于当日汇入得奖会员个人帐户中。    • 399抽旅游金RM1500 (1名)：7/12-25/12期间单笔订单消费满399即可获得一次抽奖资格（不可累计多笔订单金额），且于26/12前完成付款流程，将有机会可获得旅游金RM1500，Hawooo将于5/1统一抽出中奖者并公布于Hawooo官网，并于15/1前以简讯/email等方式通知，敬请留意相关资讯，31/1前逾期未正式回覆并完成领取流程者，视同放弃。此旅游金将以cash voucher方式提供，必须于马来西亚Golden deluxe travel进行兑换，若选择之机票或团体旅游行程不足RM1500恕不退款，若超过者则可自行补足差额即可使用，使用期间至31 /10/2018，请中奖人至Hawoooo马来西亚总部完成领取。<br>
                                </span>
                                <br>
                                免運門檻<span style="color: white;"><br>
                                    •活動期間，西馬運費RM 19，滿額RM 99免運；東馬運費RM 25，滿額RM 199免運    <br></span>
                                <br>
                                其他<span style="color: white;"><br>
                                    •参加者参加本活动即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                    •其他明显违反活动公平性之⽅式， 意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。             </span></td>

                            <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </ul>
    </div>

</asp:Content>
