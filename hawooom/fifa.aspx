<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fifa.aspx.cs" Inherits="fifa" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <link rel="stylesheet" href="assets/css/d11.css" />

    <style type="text/css">
        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
        }

        /*飄-上下*/
        .uptodown-play {
            -webkit-animation: uptodown-play 1.5s ease-in-out infinite alternate;
            animation: uptodown-play 1.5s ease-in-out infinite alternate;
        }

        @-webkit-keyframes uptodown-play {
            0% {
                -webkit-transform: translate(0,-20px);
            }

            100% {
                -webkit-transform: translate(0,0);
            }
        }

        @keyframes uptodown-play {
            0% {
                transform: translate(0,-20px);
            }

            100% {
                transform: translate(0,0);
            }
        }

        /*心跳B*/
        .heartbeat-play2 {
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-name: heartbeat-play2;
            animation-name: heartbeat-play2;
            -webkit-animation-iteration-count: infinite;
            animation-iteration-count: infinite; /* -webkit-animation-direction: alternate;animation-direction: alternate;*/
        }

        @-webkit-keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }

        @keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 
       <script>
        $(function () {
            hiddenFooterMenu();     //藏menu bar
            $(window).scroll(function () {
                $("#gotop").hide()
            });         //藏gotop的icon
        })
    </script>
    
       <!--4大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="#" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180620/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="猜八強拿獎金 押注頁"></a></li>

            <li class="am-fl">
                <a href="#" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180620/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="世足搶好康 優惠商品"></a></li>

            <li class="am-fl">
                <a href="#" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180620/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="RM10加碼送 商品頁"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="Top"></a></li>



        </ul>
    </div>
    <!--4大類別小選單再見-->

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; overflow: hidden">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180620/m01.png" alt="ha幣足球賽" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">




            <img class="" src="https://www.hawooo.com/images/ftp/20180620/playnow.png" alt="Play now" style="position: absolute; top: 81%; margin: auto; width: 63%; right: -52%;" />

            <img class="uptodown-play" src="https://www.hawooo.com/images/ftp/20180620/people.png" alt="守門員" style="position: absolute; top: 57%; margin: auto; width: 46%; right: -46%;" />

            <img class="heartbeat-play2" src="https://www.hawooo.com/images/ftp/20180620/footerball.png" alt="ha幣足球賽" style="position: absolute; top: 4%; margin: auto; width: 92%; right: -50%;" />

            <img src="https://www.hawooo.com/images/ftp/20180620/leg.png" alt="黃金右腳" style="position: absolute; top: 73%; margin: auto; width: 48%; right: 30%;" />


        </div>

    </div>


    <!--神奇圖層區掰掰-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <img alt="all you can win" src="https://www.hawooo.com/images/ftp/20180620/edmm_02.gif" style="float: left; display: block; width: 100%;" />


    </div>


    <!-- 禮物內容區 START -->

    <div class="page-main" style="margin: 0 auto; text-align: center">


        <section class="am-container2" style="margin: 0 auto">
            <div class="d11-table-wrapper" style="width: 100%; margin: 0 auto; float: none; display: block; max-width: 650px;">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th colspan="2">日期</th>
                            <th>活動門檻</th>
                            <th>贈品</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="d11-number">
                                <img alt="Hawooo推薦商品 再搶好康 聖誕第一波" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;" /></td>
                            <td>12/12</td>
                            <td>
                                <p>全站消費滿RM 280，現折20折價券。</p>
                            </td>
                            <td>RM 20折價券x1</td>
                        </tr>
                        <tr>
                            <td>
                                <img alt="Hawooo推薦商品 再搶好康 聖誕第一波" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;" /></td>
                            <td>14/12</td>
                            <td>
                                <p>全站消費滿RM 280，現折20折價券。</p>
                            </td>
                            <td>RM 20折價券x1</td>
                        </tr>
                        <tr>
                            <td class="d11-number">
                                <img alt="Hawooo推薦商品 再搶好康 聖誕第一波" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;" /></td>
                            <td>15/12</td>
                            <td>
                                <p>全站消費滿RM 280，現折20折價券。</p>
                            </td>
                            <td>RM 20折價券x1</td>
                        </tr>
                        <tr>
                            <td>
                                <img alt="Hawooo推薦商品 再搶好康 聖誕第一波" src="https://www.hawooo.com/images/ftp/20171212/gift-icon2.png" style="float: left; display: block; width: 20px;" /></td>
                            <td>20/12</td>
                            <td>
                                <p>全站消費滿RM 280，現折20折價券。</p>
                            </td>
                            <td>RM 20折價券x1</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </section>
    </div>





    <div style="max-width: 650px; margin: 0 auto;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: normal;">累积消费赛<br>
                        <span style="color: white;">• 参加会员需于10/11-11/11内完成订购，且于12/11前完成付款⽅可参加，如未完成付款流程者或退换货者均视同放弃。<br>
                            • 排名参考当下订购单累积的⾦额，但活动结算后将⾃动排除未付款订单⾦额，实际得奖名次将于11/16公布。<br>
                            • 如遇同⾦额者，将依据付款完成时间先后顺序，恕不重复提供并列之奖项。<br>
                            •Top 1赠品为iPhone X (64G)的提供时间将视⾺来⻄亚实际上市时间⽽定，得奖者必须于15/12配合签回并寄达完整赠品领取单后才会寄送赠品，暂定15/1前寄送赠品，得奖⼈不得选择赠品颜⾊，如无法配合者视同放弃。<br>
                            •Top 2-Top 5的Ha币赠将于11/30前完成归户，请于使用期限至2018/2/28，请于期限内使用完毕，逾期恕不补发。</span><br>
                        <br>
                        其他<span style="color: white;"><br>
                            •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                            • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span> </td>

                    <td width="5%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>

    </div>
</asp:Content>
