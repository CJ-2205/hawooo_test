<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180123rank.aspx.cs" Inherits="_20180123rank" MasterPageFile="~/user/user.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>尾牙搶年終</title>
    <link rel="stylesheet" href="assets/css/d11.css">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20180123rank.aspx";
                }
            }
        }
        )
    </script>
    <style type="text/css">
        body {
            position: relative;
            height: 100vh;
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
            background-color: #EB3A27;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px;" id="gotop">


        <img alt="限時整點特賣會" src="https://www.hawooo.com/images/ftp/20180209/0209_edm_01.png" style="float: left; display: block; width: 100%;" />

        <!--BN下面那塊 告訴你在哪裡-->

        <div>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td bgcolor="#7f47dd" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;text-align:center">
                                   <span style="color: white;">    24/1~29/1排名賽得獎名單，台灣伴手禮預計將於2/21後的訂單合併出貨，敬請留意，謝謝！
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--表格-->
        <!-- table -->
        <section>
            <div class="d11-table-wrapper">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>｜名次｜</th>
                            <th>｜E-mail｜</th>
                            <th>｜聯絡電話｜</th>
                            <th>｜總消費金額｜</th>
                            <th>｜尾牙搶年終｜</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><i class="am-icon-star"></i></td>
                                    <td><%#Eval("RANK") %></td>
                                    <td><%#Eval("EMAIL") %></td>
                                    <td><%#Eval("PHONE") %></td>
                                    <td>RM<%#Eval("MONEY") %></td>
                                    <td style="color: #EE5984"><%#Eval("PRIZE") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </section>


        <!--帶商品吧-->
        <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 10;" class="gift1 am-cf">
            <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                    RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>

                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <!--商品結束-->


        <!--注意事項-->
        <div>
            <a href="#" target="_blank">
                <img alt="活動詳細說明" src="https://www.hawooo.com/images/ftp/20171212/lottery_2.png" style="float: left; display: block; width: 100%;" /></a>
        </div>

        <div>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">累积消费赛<br />
                            <span style="color: white;">• 参加会员需于24 / 1~29 / 1内完成订购，且于30/1前完成付款⽅可参加，如未完成付款流程者或退换货者均视同放弃。<br />
                                • 排名参考当下订购单累积的⾦额，但活动结算后将⾃动排除未付款订单⾦额，实际得奖名次将于5/2公布。<br />
                                • 如遇同消费⾦额相同者，将依据付款完成时间先后顺序，恕不重复提供并列之奖项。<br />
                                •排名赛各名次奖项如下：<br />
                                TOP 1~TOP 3奖项分别为RM888 / RM588 / RM388购物金，可于Hawooo官网折抵消费使用，无消费金额门槛限制，但不得兑换现金。<br />
                                TOP 4~TOP10奖项分别为【樱桃爷爷】土凤梨酥10入/盒（市价RM69.9），并将于下下订单成立时一并寄送，建议领取期间为5/2〜5/3。
                            </span>
                            <br />
                            <br />
                            其他<span style="color: white;"><br />
                                •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br />
                                • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span>
                        </td>

                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>
    </div>




    <!-- 一個看不見的div 高度0 -->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="https://www.hawooo.com/user/20180116.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="新年紅包"></a>


            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale1" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="年貨大街"></a>

            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale2" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="氣色好桃花到"></a>

            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale3" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="養髮好運旺旺"></a>

            <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale4" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="除舊佈新"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
        </div>
    </div>


    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 200 }, 500);
        }

        function GosaleID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 115 }, 500);
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


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>
</asp:Content>
