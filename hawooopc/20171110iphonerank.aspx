<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="20171110iphonerank.aspx.cs" Inherits="user_20171110iphonerank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171110iphonerank.aspx";
                }
            }
        }
        )
    </script>
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
            top: 30%;
            width: 100px;
            height: 600px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">
            <li style="margin: 0;"><a href="20171111part2.aspx">
                <img alt="單身購物節11-10/11" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-pc_01.png"
                    style="float: left; display: block; width: 20%;" /></a></li>
            <li style="margin: 0;">
                <img alt="10號限定" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-pc_02.png"
                    style="float: left; display: block; width: 80%;" /></li>
            <li style="margin: 0;">
                <img alt="限時整點特賣會" src="https://www.hawooo.com/images/ftp/20171110/1108_iphoneBN-pc_03.png"
                    style="float: left; display: block; width: 100%;" /></li>
            <!--BN下面那塊 告訴你在哪裡-->
            <div>
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
            </div>
            <!--表格-->
            <!-- table -->
            <section>
                <div class="d11-table-wrapper">
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
                </div>
                <div class="d11-table-wrapper" style="display: none">
                    <table class="d11-table">
                        <thead>
                            <tr>
                                <th></th>
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
                                        <td><i style="padding-left: 5px" class="am-icon-star"></i></td>
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
            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="活動詳細說明" src="https://www.hawooo.com/images/ftp/20171110/note.png" style="float: left; display: block; width: 100%;" /></a></li>
            <!--公告下面那塊-->
            <div>
                <table width="900" border="0" cellspacing="0" cellpadding="0">
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
                                    •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实，
                                    本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                    • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span>
                            </td>
                            <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </ul>
    </div>
    <!-- 一個看不見的div 高度0 -->
    <div class="invisible">
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
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>
    <script type="text/javascript">

</script>
</asp:Content>
