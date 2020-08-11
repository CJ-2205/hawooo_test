<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="20181111rank.aspx.cs" Inherits="user_20181111rank" %>

<%@ Register TagPrefix="mn" TagName="mn1" Src="~/user/control/20181111menu.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20181111rank.aspx";
                }
            }
        }
        )
    </script>--%>
    <link rel="stylesheet" href="assets/css/d11.css">
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


        .d11-table tr:nth-child(11) {
            background-color: white;
        }

        .d11-table tr:nth-child(12) {
            background-color: white;
        }

        .d11-table tr:nth-child(13) {
            background-color: white;
        }

        .d11-table tr:nth-child(14) {
            background-color: white;
        }

        .d11-table tr:nth-child(15) {
            background-color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <mn:mn1 ID="mn" runat="server" />
    <div>
        <img src="https://www.hawooo.com/images/ftp/20181101/rk_01.png" width="100%" />
    </div>
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <%--        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">
            <li style="margin: 0;"><a href="20171111part2.aspx">
                <img alt="單身購物節11-10/11" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-pc_01.png"
                    style="float: left; display: block; width: 20%;" /></a></li>
            <li style="margin: 0;">
                <img alt="10號限定" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-pc_02.png"
                    style="float: left; display: block; width: 80%;" /></li>
            <li style="margin: 0;">
                <img alt="限時整點特賣會" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-pc_03.png"
                    style="float: left; display: block; width: 100%;" /></li>
        </ul>--%>



        <!--BN下面那塊 告訴你在哪裡-->

        <%--      <div>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#23000b" style="padding-top: 0px; max-height: 55px;"></td>
                        <td width="90%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                            <span style="font-size: 20px; color: white">本活動已結束，實際排名將於16/11號公佈</span><span style="font-size: 20px; color: yellow; font-weight: bold;"><asp:Literal ID="LtSumMoney" runat="server"></asp:Literal>
                            </span>
                            <asp:Literal ID="LtUpdateTime" runat="server"></asp:Literal>
                        </td>
                        <td width="5%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>
                    </tr>
                </tbody>
            </table>
        </div>--%>

        <!--表格-->
        <!-- table -->
        <section>
            <%--          <div class="d11-table-wrapper">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>名次</th>
                            <th>姓名</th>
                            <th>電話</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><i class="am-icon-star"></i></td>
                            <td>1</td>
                            <td>Kuan huey leng
                            </td>
                            <td>IPhone X</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>
                            <td>2</td>
                            <td>Shinly Low
                            </td>
                            <td>HA幣10000</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>
                            <td>3</td>
                            <td>Ong Bee LingHA
                            </td>
                            <td>HA幣5000</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>
                            <td>4</td>
                            <td>Rebecca Chin
                            </td>
                            <td>HA幣3000</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>
                            <td>5</td>
                            <td>Bee Chuan
                            </td>
                            <td>HA幣2000</td>
                        </tr>
                    </tbody>
                </table>
            </div>--%>
            <%--   <div class="d11-table-wrapper" style="display: none">--%>
            <div class="d11-table-wrapper">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th></th>
                            <%--   <th></th>--%>
                            <th>名次</th>
                            <th>帳號/e-mail</th>
                            <th>電話</th>
                            <th>總消費金額</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td style="position: relative">
                                        <img src='<%#Eval("IMG") %>' />
                                        <p><%#Eval("NOTE") %></p>
                                    </td>
                                    <%--    <td><i style="padding-left: 5px" class="am-icon-star"></i></td>--%>
                                    <td><%#Eval("RANK") %></td>
                                    <td><%#Eval("EMAIL") %></td>
                                    <td><%#Eval("PHONE") %></td>
                                    <td><%#Eval("MONEY") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </section>
        <!--公告開始-->
        <div style="margin: 0;">
            <a href="#" target="_blank">
                <img alt="活動詳細說明" src="https://www.hawooo.com/images/ftp/20171110/note.png" style="float: left; display: block; width: 100%;" /></a>
        </div>
        <!--公告下面那塊-->
        <div>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr id="ch" runat="server" visible="false">

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold;  color: #f8d1dd; padding: 10px 50px 10px 50px; max-height: 55px;">消费排名赛活动办法<br>
                            <span style="color: white;">在活动时间1/11-11/11于HaWooo.com购物就可累积消费金额参加排名赛，买愈多愈有机会把大奖带回家!<br />
                                有机会获得「台北飞马来西亚」双人来回机票，1人中奖2人同行!<br />
                                此活动所有会员都能参加，系统每30分钟更新一次成绩，别忘了时常观注你的名次<br />
                                活动奖项<br />
                                * 第一名：马来西亚飞台北双人来回机票 (一人中奖，二人同行，市值RM2,500)<br />
                                * 第二名：好物购物金RM1,000<br />
                                * 第三名：好物购物金RM700<br />
                                * 第四名：Dr. Cink 钻石还原美白限定组 (市值RM350)<br />
                                * 第五名：清桧家用清洁5件组 (市值RM265)<br />
                                * 第六至十名： 好物购物金 RM50<br />
                                * 第十一至十五名：好物购物金 RM30<br />
                                <br />
                                <br />
                                ‧参加会员需于1/11-11/11内完成订购，且于11/12 23:59:59前完成付款，如未完成付款流程者或退换货者均视同放弃。<br />
                                ‧排名可参考当下订购单累积的⾦额，但活动结算后将⾃动排除未付款订单⾦额，实际得奖名次将于15/11周四于HaWooo facebook fan page公布。<a href="https://www.facebook.com/hawooohawooo/">https://www.facebook.com/hawooohawooo/</a>
                                <br />
                                ‧如遇同消费⾦额相同者，将依据付款完成时间决定排名先后，不重复提供并列之奖项。<br />
                                ‧机票及奖品奖项，15/11后会由客服人员与得奖者联系<br />
                                ‧好物购物金奖项，将于30/11前转进得奖者的好物会员帐号，请于28/2前使用完毕，逾期恕不补发。<br />
                            </span>
                            <br>
                            <br>
                            其他<span style="color: white;"><br>
                                ‧参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。<br />
                                ‧其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br />
                                ‧本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span> </td>

                    </tr>
                    <tr id="en" runat="server" visible="false">
                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold;  color: #f8d1dd; padding: 10px 50px 10px 50px; max-height: 55px;">Top spending competition activity:<br>
                            <span style="color: white;">~Within the date of  1/11 to 11/11, you can accumulate spending amount to participate the spending competition at HaWooo.com. Buy more have a higher chance to
                                    <br />
                                win the amazing prize! You will get a return flight ticket to Taipei. A winner can get 2 persons fly ticket.<br />
                                ~All members can participate this activity. The system will update the results every 30 minutes. Don't forget to check your rankings from time to time.<br />
                                <br />
                                <br />
                            </span>
                            Prize of Activity :<br />
                            <span style="color: white;">* First place: Return flight ticket to Taipei (A winner can get 2 persons fly ticket with the market value of RM2,500)
                                    <br />
                                * Second place: Hawooo credits of RM1,000<br />
                                * Third place: Hawooo credits of RM700<br />
                                * Fourth place: 【DR.CINK】Extract Whitening Essence Set (market value RM350)<br />
                                * Fifth place: 【Hinokl Life】household cleaning 5 pcs set (market value RM265)<br />
                                * Sixth to Tenth places : Hawooo credits of RM50<br />
                                * 11th to 15th places : Hawooo credits of RM30<br />
                                <br />
                                Participating members must successfully place order within 1 / 11 to 11 / 11 and done payment before 12/11 23:59:59. For those who have not yet complete the
                                    <br />
                                payment or return purchased products will be deemed to be given up.<br />
                                The ranking can refer to the accumulated amount of the current purchase order. After the end of activity, the unpaid order amount will be excluded. The actual winner will
                                    <br />
                                be announced on the HaWooo Facebook fan page on 15/11 (Thursday)‧<a href="https://www.facebook.com/hawooohawooo/">https://www.facebook.com/hawooohawooo/</a><br />
                                If the same accumulated amount happened, the ranking will be determined according to the payment completion time, and the prize will not be repeated.<br />
                                For flight ticket and prize awards, the customer service staff will contact the winners after the date of  15/11.<br />
                                Hawooo credit awards will be transferred to the winners’ Hawooo account before the date of 30/11. Please use the credits before the date of 28/2. It will not be reissued
                                    <br />
                                after the deadline.<br />
                            </span>
                            <br>
                            <br>
                            Others<span style="color: white;"><br>
                                ‧Participants means to agree to the rules, terms and conditions of this activity. If there is any violation of the rules, terms and condition of this activity, the company may
                                    <br />
                                cancel its participation or exchange qualification, and retain the right to legal prosecution for any act that undermines this activity.<br />
                                ‧ For those who clearly violate the fairness of the activity and intend to confuse or influence the results of the activity, once the company discovers or verified by the third
                                    <br />
                                party, the company has the right to immediately cancel the qualification of the prize. Beside of recovery of the prize, the right to legal prosecution is retained for any act
                                    <br />
                                that undermines the activity.<br />
                                ‧Hawooo reserves the right to change activities or prizes and modify or cancel this activity without prior notice, and has the final interpretation and decision on all matters
                                    <br />
                                related to this activity.
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        </ul>
    </div>
    <!-- 一個看不見的div 高度0 -->
    <%--   <div class="invisible">
        <!-- box是固定的nav -->
        <div class="box">
            <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_01.png" style="width: 100px; margin-bottom: -1px">
            <a href="20171111part2.aspx">
                <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_03.png" style="width: 100px; margin-bottom: -1px"
                    alt="單身購物節"></a> <a href="https://www.hawooo.com/user/shop.aspx?eid=276">
                        <img src="https://www.hawooo.com/images/ftp/20171110/1110_pc-section_07.png" style="width: 100px; margin-bottom: -1px"
                            alt="送111購物金"></a> <a href="20171110happysales.aspx">
                                <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_05.png" style="width: 100px; margin-bottom: -1px"
                                    alt="限時特賣"></a>
        </div>
    </div>--%>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>
    <script type="text/javascript">

    </script>
</asp:Content>
