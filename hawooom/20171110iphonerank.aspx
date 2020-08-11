<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171110iphonerank.aspx.cs" Inherits="mobile_20171110iphonerank" %>

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
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">
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
    </div>
    <!--三大類別小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
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
    </div>
    <!--BN下面那塊 告訴你在哪裡-->



    <!-- 內容區 START -->

    <div class="page-main" style="margin-top: -5px;">

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
    </div>


    <div class="page-main" style="margin-top: -5px; display: none;">


        <section class="am-container">
            <div class="d11-table-wrapper" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th colspan="2">名次</th>
                            <th>帳號/e-mail/電話</th>
                            <th>總消費金額</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><i class="am-icon-star"></i></td>
                                    <td><%#Eval("RANK") %></td>
                                    <td>
                                        <p><%#Eval("EMAIL") %></p>
                                        <%#Eval("PHONE") %></td>
                                    <td><%#Eval("MONEY") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </section>
    </div>


    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="100%" src="https://www.hawooo.com/images/ftp/20171110/timeM1_14.png" style="float: left; display: block; width: 100%;" /></li>


            <!--公告上面那塊-->

            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">累积消费赛<br>
                                <span style="color: white;">•参加会员需于10/11-11/11内完成订购，且于12/11前完成付款⽅可参加，如未完成付款流程者或退换货者均视同放弃。<br>
                                    •排名参考当下订购单累积的⾦额，但活动结算后将⾃动排除未付款订单⾦额，实际得奖名次将于16/11公布。<br>
                                    •如遇同消费⾦额相同者，将依据付款完成时间先后顺序，恕不重复提供并列之奖项。<br>
                                    •Top 1赠品为iPhone X (64G)的提供时间将视⾺来⻄亚实际上市时间⽽定，得奖者必须于15/12配合签回并寄达完整赠品领取单后才会寄送赠品，暂定15/1前寄送赠品，得奖⼈不得选择赠品颜⾊，如无法配合者视同放弃。<br>
                                    •Top 2-Top 5的Ha币赠将于30/11前完成归户，请于28/2前使用完毕，逾期恕不补发。</span><br>
                                <br>
                                其他<span style="color: white;"><br>
                                    •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
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
