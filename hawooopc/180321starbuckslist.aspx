<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180321starbuckslist.aspx.cs" Inherits="_180321starbuckslist" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .deleteprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
        }

        .sale1 {
            width: 900px;
            background-color: #53000F;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #F61C68;
            text-align: center;
        }

        .slogan1 {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
            text-align: center;
            font-weight: normal;
            text-decoration-line: underline;
        }

        /*心跳跳*/
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





    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/20180322/edm_011new.png" alt="一鍵全領底圖" style="width: 100%;">
        <a id="gotop"></a>


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <div class="heartbeat-play2">
                <img src="https://www.hawooo.com/images/ftp/20180222/cflogo.png" alt="coupons fever" style="position: absolute; margin: auto; width: 72%; right: 1%;" />
            </div>

            <img src="https://www.hawooo.com/images/ftp/20180322/itscomingnow.png" alt="一鍵全領" style="position: absolute; top: 80%; margin: auto; width: 86%; right: -16%;" />




        </div>

    </div>
    <!--神奇圖層區掰掰-->






    <div class="am-cf sale1">

        <div style="padding: 0 0px; float: left; width: 100%;">
            <ul class="am-avg-sm-4">
                <!--第一組-->
                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">狗年不鏽鋼TOGO水杯</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_01.png" style="width: 100%;">
                    <h4 class="pname">car***neyii***3@gm-ail.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">135.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>

                <!--第二組-->
                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">金狗獻瑞冷水壺</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_02.png" style="width: 100%;">
                    <h4 class="pname">kel**wsp**n@hotmai-l.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">70.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>

                <!--第三組-->
                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">旺旺來福隨行杯</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_03.png" style="width: 100%;">
                    <h4 class="pname">ms.h**ey**g@hotmai-l.my</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">65.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>


                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">旺旺來福隨行杯</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_03.png" style="width: 100%;">
                    <h4 class="pname">bo**on@hotmail.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">65.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>

                <!--第四組-->
                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">旺旺來福隨身瓶</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_04.png" style="width: 100%;">
                    <h4 class="pname">je**.s*o@namlee-cheong.com.my</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">200.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>


                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">旺旺來福隨身瓶</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_04.png" style="width: 100%;">
                    <h4 class="pname">la**ca*_0*07@outloo-k.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">200.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>

                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">旺旺來福隨身瓶</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_04.png" style="width: 100%;">
                    <h4 class="pname">r*b*_8**8@yahoo.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">200.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>


                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">台灣新年限定款保溫杯</h4>
                    <h4 class="slogan">旺旺來福隨身瓶</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_04.png" style="width: 100%;">
                    <h4 class="pname">es**le**7@yahoo.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">200.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>

                <!--第五組-->
                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">ALICE+OLIVIA聯名款</h4>
                    <h4 class="slogan">AOHEARTS 雙層馬克杯</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_05.png" style="width: 100%;">
                    <h4 class="pname">an**l8**im@yahoo.co.uk</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">140.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>


                <li class="am-fl" style="width: 23%; background: white; padding: 15px; border-radius: 30px; margin: 1% 1%">
                    <h4 class="slogan1">ALICE+OLIVIA聯名款</h4>
                    <h4 class="slogan">AOHEARTS 雙層馬克杯</h4>
                    <img src="https://www.hawooo.com/images/ftp/20180322/cup_05.png" style="width: 100%;">
                    <h4 class="pname">ai**en_*w@yahoo.com</h4>
                    <p class="discountprice">市價RM<span style="font-size: 20px; letter-spacing: -2px;">140.00</span><span class="am-fr deleteprice">共1組</span></p>
                </li>
            </ul>
        </div>
    </div>







    <!--footer-->
    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; z-index: 10;">

        <table width="900" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: 600; line-height: 24px; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">

                        <span style="text-decoration: underline;">全站滿額抽  台灣限定款Starbucks<br>
                        </span>
                        <span style="color: white;">• 參加滿額抽會員需於22/2-28/2內完成訂購，單筆訂單金額符合以下門檻且於1/3前完成付款流程⽅符合滿額抽獎資格，預計於20/3抽出10名得獎者，抽獎順序依據以下贈品順序，並於21/3公佈得獎名單，每人限得一次，不可重複獲獎。未於活動期間內完成付款或退換貨者均視同放棄，不得要求參加抽獎。<br>
                            <span style="color: #FFE406">• 單筆滿RM299：</span>
                            狗年不鏽鋼Togo冷水杯(台灣新年限定款保溫杯，市價RM135，共1組)、金狗獻瑞冷水壺(台灣新年限定款保溫杯，市價RM70，共1組)、旺旺來福隨行杯(台灣新年限定款保溫杯，市價RM65，共2組)。<br>
                            <span style="color: #FFE406">• 單筆滿RM399：</span>
                            旺旺來福隨身瓶(台灣新年限定款保溫杯，市價RM200，共4組)、AOHEARTS 雙層馬克杯(全球時尚品牌Alice+Olivia聯名款手繪真金杯口馬克杯，市價RM140，共2組)。<br>
                            •確認中獎人資格後，好物飛行將於於10/4前寄出滿額禮，如遇贈品缺貨時或其他不可抗力之因素，好物飛行有權以購物金遞補，RM299滿額贈贈品將以RM70替代，399滿額贈贈品將以RM140替代，恕不逐一通知。<br>
                        </span>
                        <br>
                        <span style="text-decoration: underline;">其他<br>
                        </span>
                        <span style="color: white;">•參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                    </td>

                    <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                </tr>
            </tbody>
        </table>
    </div>


</asp:Content>
