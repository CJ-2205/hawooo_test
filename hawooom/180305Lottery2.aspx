<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180305Lottery2.aspx.cs" Inherits="_180305Lottery" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>

        $(document).ready(
            function go() {

                var a = $("#<%= LotNumAHF.ClientID %>").val();
                var b = $("#<%= LotNumBHF.ClientID %>").val();

                var total1 = $("#<%= TotalOrder1HF.ClientID %>").val();
                var total2 = $("#<%= TotalOrder2HF.ClientID %>").val();

                var arrayA = a.split(",").map(function (item) {
                    return parseInt(item);
                });
                var arrayB = b.split(",").map(function (item) {
                    return parseInt(item);
                });

                for (var i = 1; i <= 38; i++) {
                    if (arrayA != null) {

                        if (jQuery.inArray(i, arrayA) == -1)     //表示在array裡沒有找到
                        {
                            if (i < 10) {
                                $('#imgdivA').append('<img id=0' + i + 'A src="https://www.hawooo.com/images/ftp/20180308/b0' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180322\'' + ',\'ContentPlaceHolder1_PlayRemain1HF\', \'' + total1 + '\')" />')
                            }
                            else {
                                $('#imgdivA').append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180308/b' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180322\'' + ',\'ContentPlaceHolder1_PlayRemain1HF\', \'' + total1 + '\')" />')
                            }
                        }
                        else  ///Array裡有找到這個數字
                        {
                            if (i < 10) {
                                $('#imgdivA').append('<img id=0' + i + 'A src="https://www.hawooo.com/images/ftp/20180308/b0' + i + 'b.png" class="lotterynumber" onclick="" />')
                            }
                            else {
                                $('#imgdivA').append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180308/b' + i + 'b.png" class="lotterynumber" onclick="" />')
                            }
                        }
                    }

                    if (arrayB != null) {

                        if (jQuery.inArray(i, arrayB) == -1)     //表示在array裡沒有找到
                        {
                            if (i < 10) {
                                $('#imgdivB').append('<img id=0' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b0' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180329\'' + ',\'ContentPlaceHolder1_PlayRemain2HF\' , \'' + total2 + '\')" />')
                            }
                            else {
                                $('#imgdivB').append('<img id=' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180329\'' + ',\'ContentPlaceHolder1_PlayRemain2HF\' , \'' + total2 + '\')" />')
                            }
                        }
                        else  ///Array裡有找到這個數字
                        {
                            if (i < 10) {
                                $('#imgdivB').append('<img id=0' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b0' + i + 'b.png" class="lotterynumber" />')
                            }
                            else {
                                $('#imgdivB').append('<img id=' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b' + i + 'b.png" class="lotterynumber" />')

                            }
                        }
                    }
                }
            })
    </script>

    <script>
        function check(LotNum, Code, playRemain, total) {
            var bool = '<%= Session["Login"] %>';
            if (bool == 'true') {
                var remain = Number($('#' + playRemain).val());

                if (remain > 0) {
                    var msg = "Are you sure ？ 選定號碼 \'" + LotNum + "\' 後就不能更改了喔～"

                    if (confirm(msg) == true) {
                        $.ajax({
                            type: 'post',                   //請求方式，POST/GET。(預設為GET)
                            url: '180305Lottery.aspx/InsertLottery',      //指定要進行呼叫的位址
                            data: '{LotNumber:"' + LotNum + '", lotCode:"' + Code + '",total:"' + total + '"}',        //傳送至Server的資料，必須為Key/Value格式，GET請求中將附加在URL後面。
                            datatype: "json",
                            contentType: "application/json; charset=utf-8",
                            success: function (response) {
                                confirm(response.d);
                                window.location.href = "https://www.hawooo.com/mobile/180305Lottery.aspx";
                            },
                            error:
                            function (response) {
                                alert("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫");
                            }
                        })

                    }
                }
                else {
                    alert("你的投注機會已用完咯~");
                }
            }
            else {
                window.location = "login.aspx?rurl=180305Lottery.aspx";
            }
        }

    </script>


    <style type="text/css">
        .slogan {
            margin: 5px 5px;
            height: 58px;
            overflow: hidden;
            font-size: large;
            line-height: 145%;
            color: #535252;
            text-align: center;
        }


        .lotterynumber {
            width: 15%;
            margin: 0 0 2% 3.5%;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField ID="LotNumAHF" runat="server" />
    <asp:HiddenField ID="LotNumBHF" runat="server" />
    <asp:HiddenField ID="PlayRemain1HF" runat="server" />
    <asp:HiddenField ID="PlayRemain2HF" runat="server" />
    <asp:HiddenField ID="TotalOrder1HF" runat="server" />
    <asp:HiddenField ID="TotalOrder2HF" runat="server" />

    <!--四小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180319womenday.aspx?tid=gosale1" target="_blank" />
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="寵愛女人節"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180319womenday.aspx?tid=gosale2" target="_blank" />
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="內衣"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180319womenday.aspx?tid=gosale3" target="_blank" />
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="美食"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180319womenday.aspx?tid=gosale4" target="_blank" />
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="媽咪"></a></li>
        </ul>
    </div>
    <!--四小選單結束-->



    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #838383;">

        <img alt="VIP" src="https://www.hawooo.com/images/ftp/20180308/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <img alt="img" src="https://www.hawooo.com/images/ftp/20180308/edmm_02.png" style="float: left; display: block; width: 100%;" />

        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 100%; list-style-type: none; margin: 0px 5%; padding: 0; background-color: #1e0576">

                    <li class="am-fl" style="width: calc(100% - 10px); background: white; padding: 5%; margin: 5px; height: calc(100% - 20px);">

                        <img src="https://www.hawooo.com/images/ftp/20180321/week4.png" style="width: 90%; margin: 0 6%">
                        <h4 class="slogan">本週已付款訂單:<span style="color: #0096E5">共<span style="text-decoration-line: underline"><asp:Literal ID="LitWeek2" runat="server">__</asp:Literal></span>筆</span><br />
                            你還有<asp:Literal ID="LitplayRemain2" runat="server">__</asp:Literal>次投注機會</h4>

                        <div id="imgdivB"></div>
                    </li>

                </ul>
            </div>
        </div>
        <!--公佈答案week2-->
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                    <tr>
                        <td width="2%" bgcolor="#02AEC5" style="padding-top: 0px;"></td>

                        <td width="96%" bgcolor="#02AEC5" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; color: #f8d1dd; padding: 5% 0;"><span style="font-size: 24px; color: white"><%--Week 4開獎號碼：--%>Week 4開獎時間：</span><span style="font-size: 24px; color: yellow; font-weight: bold;">6/4(五) 3pm 粉專直播開獎</span>
                            <br>
                            <%--(中獎帳號:)--%></td>

                        <td width="2%" bgcolor="#02AEC5" style="padding-top: 0px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>

        <div style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
            <img src="https://www.hawooo.com/images/ftp/20180321/edmm_03.png" style="width: 100%;" />
        </div>
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                    <tr>
                        <td width="2%" bgcolor="#ff5252" style="padding-top: 0px;"></td>

                        <td width="96%" bgcolor="#ff5252" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; color: #f8d1dd; padding: 5% 0;"><span style="font-size: 24px; color: white">Week 3開獎號碼：</span><span style="font-size: 24px; color: yellow; font-weight: bold;">38</span>
                            <br>
                            中獎帳號:        
                            <br />
                            llin******@****hoo.com,2811******@****mail.com,               
                            <br />
                            yunn******@****mail.com,cher******@****mail.com,                 
                            <br />
                            shin******@****mail.com,nico******@****mail.com,                    
                            <br />
                            Clov******@****mail.com,Ahyi******@****mail.com, 
                            <br />
                            syel******@****mail.com,mei_******@****mail.com

                        </td>

                        <td width="2%" bgcolor="#ff5252" style="padding-top: 0px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                    <tr>
                        <td width="2%" bgcolor="#02AEC5" style="padding-top: 0px;"></td>

                        <td width="96%" bgcolor="#02AEC5" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; color: #f8d1dd; padding: 5% 0;"><span style="font-size: 24px; color: white">Week 2開獎號碼：</span><span style="font-size: 24px; color: yellow; font-weight: bold;">18</span>
                            <br>
                            中獎帳號:        
                            <br />
                            zeny******@****mail.com,eooc******@****mail.com,
                <br />
                            cher******@****mail.com,slla******@****mail.com,               
                  <br />
                            pyws******@****hoo.com,limm******@****hoo.com,           
                     <br />
                            trac******@****mail.com,wend******@****hoo.com  </td>

                        <td width="2%" bgcolor="#02AEC5" style="padding-top: 0px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                    <tr>
                        <td width="2%" bgcolor="#ff5252" style="padding-top: 0px;"></td>

                        <td width="96%" bgcolor="#ff5252" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; color: #f8d1dd; padding: 5% 0;"><span style="font-size: 24px; color: white">Week 1開獎號碼：</span><span style="font-size: 24px; color: yellow; font-weight: bold;">18</span>
                            <br>
                            中獎帳號:siik*******@****mail.com,
                <br />
                            jass******@****mail.com,Meiy******@****mail.my,
                  <br />
                            kimm******@****mail.com,ms.k******@****mail.com, 
                <br />
                            tans******@****hoo.com,sher******@****mail.com,
                <br />
                            beec******@****hoo.com,mok******@****mail.com

                        </td>

                        <td width="2%" bgcolor="#ff5252" style="padding-top: 0px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>







        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #838383;">
            <a href="https://www.hawooo.com/user/180319womenday.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180321/edmm_04.png" style="float: left; display: block; width: 100%;" />
            </a>

        </div>

    </div>



    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <!--公告上面那塊-->

        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px;">詳細活動規則文字說明：<br>
                            <span style="color: white;">•8/3—4/4期間凡消費一筆訂單，於消費隔天付款完成後即可享有抽獎資格（1筆訂單為1次投注機會），選號後將不得修改號碼。
                                <br>
                                •RM 1000獎金將以HAWOOO購物金的方式提供，若多人同時中獎，獎金採四捨五入方式均分，購物無使用期限且可於HAWOOO官網消費時全額折抵使用。
                                <br>
                                •如遇得奖人从缺，奖金将累积到下期开奖活动。
                                <br>
                                •HAWOOO將於每週五（30/3、6/4）3pm，於官網粉絲團直播開獎，並公佈得獎者資訊，開獎後3天內以簡訊/EMAIL等方式通知，敬請留意相關資訊。
                                  <br>
                                •13/4 前逾期未正式回覆並完成領取流程者，視同放棄。   
                                <br />
                                其他<span style="color: white;"><br>
                                    •參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性​​之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。
                                    <br>
                                    • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                        </td>

                        <td width="5%" bgcolor="#000000" style="padding-top: 0px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</asp:Content>
