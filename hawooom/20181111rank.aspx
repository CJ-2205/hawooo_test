<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20181111rank.aspx.cs" Inherits="mobile_20181111rank" %>

<%@ Register TagPrefix="mn" TagName="mn1" Src="~/mobile/control/20181111menum.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/d11.css">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--三大類別小選單開始-->
    <%-- <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">
        <ul class="am-avg-sm-3 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="20171111part2.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171110/sec-M_01.png" style="width: 100%;" alt="單身購物節"></a></li>

            <li class="am-fl">
                <a href="20171110happysales.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171110/sec-M_05.png" style="width: 100%;" alt="限時特賣會"></a></li>

            <li class="am-fl">
                <a href="20171110cash.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171110/sec-M_03.png" style="width: 100%;" alt="送購物金"></a></li>


        </ul>
    </div>--%>
    <!--三大類別小選單再見-->

    <mn:mn1 ID="mn" runat="server" />
    <%--   <div style="width:100%;min-width:400px">--%>
    <div>




        <!--edm開始-->
        <%--    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="20171111part2.aspx" target="_blank">
                <img alt="雙11單身購物節" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-M_01.png" style="float: left; display: block; width: 30%;" /></a></li>

            <li style="margin: 0;">
                <img alt="10/11 限時特賣會" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-M_02.png" style="float: left; display: block; width: 70%;" /></li>

            <li style="margin: 0;">
                <img alt="10/11 限時特賣會" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-M_03.png" style="float: left; display: block; width: 100%;" /></li>

            <!--試試看-->
            <div>
                <table max-width="650" border="0" cellspacing="0" cellpadding="0" width="100%">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#23000b" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; max-height: 55px;"><span style="font-size: 15px; color: white">本活動已結束，實際排名於16/11公佈</span><span style="font-size: 15px; color: yellow; font-weight: bold;"><asp:Literal ID="LtSumMoney" runat="server"></asp:Literal></span>
                                <br>
                                <asp:Literal ID="LtUpdateTime" runat="server"></asp:Literal></td>

                            <td width="5%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>

        </ul>
    </div>--%>
        <!--BN下面那塊 告訴你在哪裡-->



        <!-- 內容區 START -->

        <%--    <div class="page-main" style="margin-top: -5px;">

        <section class="am-container">
            <div class="d11-table-wrapper" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th>名次</th>
                            <th>姓名</th>
                            <th>獲得獎項</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><i class="am-icon-star"></i></td>

                            <td>Kuan huey leng
                            </td>
                            <td>IPhone X</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>

                            <td>Shinly Low
                            </td>
                            <td>HA幣10000</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>

                            <td>Ong Bee LingHA
                            </td>
                            <td>HA幣5000</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>

                            <td>Rebecca Chin
                            </td>
                            <td>HA幣3000</td>
                        </tr>
                        <tr>
                            <td><i class="am-icon-star"></i></td>

                            <td>Bee Chuan
                            </td>
                            <td>HA幣2000</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>--%>


        <%--  <div class="page-main" style="margin-top: -5px; display: none;">--%>
        <div class="page-main" style="margin-top: -5px;">

            <section class="am-container">

                <div style="width: 100%; margin: 0 auto; float: center; display: block; background: white">
                    <img src="https://www.hawooo.com/images/ftp/20181101/mrk_01.png" width="100%" />
                    <table class="d11-table">
                        <thead>
                            <tr>
                                <%--      <th colspan="2">名次</th>
                            <th>帳號/e-mail/電話</th>
                            <th>總消費金額</th>--%>
                                <%--   <th></th>--%>
                                <%--    <th>名次</th>
                            <th>獎項</th>--%>
                                <%--       <th colspan="2">獎項</th>
                            <th>帳號/e-mail</th>
                            <th style="text-align:left !important;padding:0">電話</th>
                            <th>總消費金額</th>--%>
                                <%--    <th>資訊</th>--%>
                                <th colspan="3" style="text-align: left">Accumulated spend ranking contest
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rp1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <%--  <td><i class="am-icon-star"></i></td>
                                    <td><%#Eval("RANK") %></td>
                                    <td>
                                        <p><%#Eval("EMAIL") %></p>
                                        <%#Eval("PHONE") %></td>
                                    <td><%#Eval("MONEY") %></td>--%>
                                        <td style="font-weight: bold; font-size: large; color: darkred"><%#Eval("RANK") %></td>
                                        <td>
                                            <img src='<%#Eval("IMG") %>' /></td>
                                        <td>
                                            <ul style="list-style: none; padding: 0; color: black; font-weight: 500">
                                                <li>獎項名稱:<%#Eval("NOTE") %></li>
                                                <li>帳號/Email:<%#Eval("EMAIL") %></li>
                                                <li>電話:<%#Eval("PHONE") %></li>
                                                <li>總消費金額:<%#Eval("MONEY") %></li>
                                            </ul>
                                            <%--    <img src='<%#Eval("IMG") %>' />--%>
                                        </td>
                                        <%--    <td>
                                        <%#Eval("NOTE") %>
                                    </td>
                 

                                    <td style="padding:0 !important"><%#Eval("EMAIL") %></td>
                                    <td><%#Eval("PHONE") %></td>
                                    <td><%#Eval("MONEY") %></td>--%>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>

    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="100%" src="https://www.hawooo.com/images/ftp/20171110/timeM1_14.png" style="float: left; display: block; width: 100%;" /></li>


            <!--公告上面那塊-->

            <li>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr id="ch" runat="server" visible="false">

                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; color: #f8d1dd; padding: 10px 50px 10px 50px; max-height: 55px;">消费排名赛活动办法<br>
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
                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; color: #f8d1dd; padding: 10px 50px 10px 50px; max-height: 55px;">Top spending competition activity:<br>
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
            </li>





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
