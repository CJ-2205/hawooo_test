<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180305Lottery.aspx.cs" Inherits="_180305Lottery" MasterPageFile="~/user/user.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>

        $(document).ready(
            function go() {
                var c = $("#<%= LotNumCHF.ClientID %>").val();
                var d = $("#<%= LotNumDHF.ClientID %>").val();

                var total1 = $("#<%= TotalOrder1HF.ClientID %>").val();
                var total2 = $("#<%= TotalOrder2HF.ClientID %>").val();

                var arrayC = c.split(",").map(function (item) {
                    return parseInt(item);
                });
                var arrayD = d.split(",").map(function (item) {
                    return parseInt(item);
                });

                for (var i = 1; i <= 38; i++) {

                    if (arrayC != null) {

                        if (jQuery.inArray(i, arrayC) == -1)     //表示在array裡沒有找到
                        {
                            if (i < 10) {
                                $('#imgdivC').append('<img id=0' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b0' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180322\'' + ',\'ContentPlaceHolder1_PlayRemain3HF\' , \'' + total1 + '\')" />')
                            }
                            else {
                                $('#imgdivC').append('<img id=' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180322\'' + ',\'ContentPlaceHolder1_PlayRemain3HF\' , \'' + total1 + '\')" />')
                            }
                        }
                        else  ///Array裡有找到這個數字
                        {
                            if (i < 10) {
                                $('#imgdivC').append('<img id=0' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b0' + i + 'b.png" class="lotterynumber" />')
                            }
                            else {
                                $('#imgdivC').append('<img id=' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b' + i + 'b.png" class="lotterynumber" />')

                            }
                        }
                    }
                    if (arrayD != null) {

                        if (jQuery.inArray(i, arrayD) == -1)     //表示在array裡沒有找到
                        {
                            if (i < 10) {
                                $('#imgdivD').append('<img id=0' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b0' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180329\'' + ',\'ContentPlaceHolder1_PlayRemain4HF\' , \'' + total2 + '\')" />')
                            }
                            else {
                                $('#imgdivD').append('<img id=' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b' + i + '.png" class="lotterynumber" onclick="check(' + i + ',\'week180329\'' + ',\'ContentPlaceHolder1_PlayRemain4HF\' , \'' + total2 + '\')" />')
                            }
                        }
                        else  ///Array裡有找到這個數字
                        {
                            if (i < 10) {
                                $('#imgdivD').append('<img id=0' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b0' + i + 'b.png" class="lotterynumber" />')
                            }
                            else {
                                $('#imgdivD').append('<img id=' + i + 'B src="https://www.hawooo.com/images/ftp/20180308/b' + i + 'b.png" class="lotterynumber" />')

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
                                window.location.href = "https://www.hawooo.com/user/180305Lottery.aspx";
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
                doLogin('180305Lottery.aspx')
            }
        }

    </script>

    <style type="text/css">
        body {
            position: relative;
            height: auto;
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
            top: 12%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1180px;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .buy1 {
            background-color: #838383;
            background-size: 100%;
            margin: 5px auto;
            padding: 0px;
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

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 20px;
            line-height: 20px;
            color: black;
            text-align: center;
            font-family: Constantia, "Lucida Bright", "DejaVu Serif", Georgia, "serif";
        }

        .pricedetail {
            margin: 5px 0 0 0;
            font-size: 16px;
            color: #535252;
            text-align: center;
            font-weight: 200;
        }

        .paynumber {
            margin: 10px 5px;
            height: 40px;
            font-size: 16px;
            line-height: 20px;
            color: #535252;
            text-align: center;
        }

        .lotterynumber {
            width: 10%;
            margin: 0 0 10px 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField ID="LotNumCHF" runat="server" />
    <asp:HiddenField ID="LotNumDHF" runat="server" />

    <asp:HiddenField ID="PlayRemain3HF" runat="server" />
    <asp:HiddenField ID="PlayRemain4HF" runat="server" />

    <asp:HiddenField ID="TotalOrder1HF" runat="server" />
    <asp:HiddenField ID="TotalOrder2HF" runat="server" />

    <div id="gotop" style="margin: 0 auto; display: block; width: 900px; background-color: red; z-index: 10; position: relative;">

        <img alt="38婦女節 lottery" src="https://www.hawooo.com/images/ftp/20180308/edm_01.png" style="float: left; display: block; width: 100%;" />

        <img alt="活動說明" src="https://www.hawooo.com/images/ftp/20180308/edm_02.png" style="float: left; display: block; width: 100%;" />
    </div>


    <!--試試看吧-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 900px; position: relative;">
        <div class="buy1 am-cf" style="width: 100%;">
            <div style="padding: 20px 20px;">


                <ul class="am-avg-sm-2">

                    <li class="am-fl" style="background: white; padding: 25px; margin: 20px 20px 0 0; width: 420px; z-index: 10">

                        <img src="https://www.hawooo.com/images/ftp/20180321/week3.png" style="width: 80%; margin: 0 36px;" />
                        <h4 class="paynumber">本週已付款訂單:<span style="color: #0096E5">共<span style="text-decoration-line: underline"><asp:Literal ID="LitWeek3" runat="server">__</asp:Literal></span>筆</span> ｜ 你還有<asp:Literal ID="LitplayRemain3" runat="server">_</asp:Literal>次投注機會</h4>
                        <div id="imgdivC"></div>

                        <div>
                        </div>
                    </li>

                    <li class="am-fl" style="background: white; padding: 25px; margin: 20px 0 0 0; width: 420px;">

                        <img src="https://www.hawooo.com/images/ftp/20180321/week4.png" style="width: 80%; margin: 0 36px;" />
                        <h4 class="paynumber">本週已付款訂單:<span style="color: #0096E5">共<span style="text-decoration-line: underline"><asp:Literal ID="LitWeek4" runat="server">__</asp:Literal></span>筆</span> ｜ 你還有<asp:Literal ID="LitplayRemain4" runat="server">_</asp:Literal>次投注機會</h4>
                        <div id="imgdivD"></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!--公佈答案-->
    <div style="margin: 0 auto; display: block; width: 900px; background-color: #838383; z-index: 10; position: relative; height: 100px">

        <div style="width: 100%; margin: -5px auto; display: block; width: 450px; background-color: #ff5252; float: left; height: 170px;">
            <p style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                <span style="font-size: 20px; color: white">Week 3開獎號碼：</span><span style="font-size: 20px; color: yellow; font-weight: bold;">38</span><br>
                <br />
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
            </p>

        </div>


        <div style="width: 100%; margin: -5px auto; display: block; width: 450px; background-color: #02AEC5; float: left; height: 170px;">
            <p style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                <span style="font-size: 20px; color: white"><%--Week 4開獎號碼：--%>Week 4開獎時間：</span><span style="font-size: 20px; color: yellow; font-weight: bold;">6/4(五) 3pm 粉專直播開獎</span><br>
                <%--(中獎帳號:)--%>
            </p>

        </div>


    </div>



    <!--看看上週-->
    <div style="margin: 0 auto; display: block; width: 900px; z-index: 10; position: relative;">
        <img src="https://www.hawooo.com/images/ftp/20180321/edm_03.png" style="width: 100%;" />
    </div>

    <!--Week 1&2 公佈答案-->
    <div style="margin: 0 auto; display: block; width: 900px; background-color: #838383; z-index: 10; position: relative; height: 100px">

        <div style="width: 100%; margin: -5px auto; display: block; width: 450px; background-color: #ff5252; float: left; height: 150px;">
            <p style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                <span style="font-size: 20px; color: white">Week 1開獎號碼：</span><span style="font-size: 20px; color: yellow; font-weight: bold;">18</span><br>
                <br />
                中獎帳號:siik*******@****mail.com,
                <br />
                jass******@****mail.com,Meiy******@****mail.my,
                  <br />
                kimm******@****mail.com,ms.k******@****mail.com, 
                <br />
                tans******@****hoo.com,sher******@****mail.com,
                <br />
                beec******@****hoo.com,mok******@****mail.com
            </p>
        </div>


        <div style="width: 100%; margin: -5px auto; display: block; width: 450px; background-color: #02AEC5; float: left; height: 150px;">
            <p style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                <%-- padding: 10px 0px;--%>
                <span style="font-size: 20px; color: white">Week 2開獎號碼：</span><span style="font-size: 20px; color: yellow; font-weight: bold;">18</span><br>
                <br />
                中獎帳號:
                       <br />
                zeny******@****mail.com,eooc******@****mail.com,
                <br />
                cher******@****mail.com,slla******@****mail.com,               
                  <br />
                pyws******@****hoo.com,limm******@****hoo.com,           
                     <br />
                trac******@****mail.com,wend******@****hoo.com     
            </p>
        </div>

    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 900px; background-color: #838383;">
        <a href="https://www.hawooo.com/user/180319womenday.aspx" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180321/edm_04.png" style="float: left; display: block; width: 100%;" />
        </a>
    </div>

    <!--公佈答案結束-->


    <!--活動辦法-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 900px;">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; line-height: 16px; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">詳細活動規則文字說明：<br>
                        <span style="color: white;">•8/3—4/4期間凡消費一筆訂單，於消費隔天付款完成後即可享有抽獎資格（1筆訂單為1次投注機會），選號後將不得修改號碼。
                            <br>
                            •RM 1000獎金將以HAWOOO購物金的方式提供，若多人同時中獎，獎金採四捨五入平分，購物無使用期限且可於HAWOOO官網消費時全額折抵使用。
                            <br>
                            •如遇得奖人从缺，奖金将累积到下期开奖活动。
                            <br>
                            •HAWOOO將於每週五（30/3、6/4）3pm，於官網粉絲團直播開獎，並公佈得獎者資訊，開獎後3天內以簡訊/EMAIL等方式通知，敬請留意相關資訊。
                             <br>
                            •13/4 前逾期未正式回覆並完成領取流程者，視同放棄。
                            <br>
                        </span>
                        <br />
                        其他<span style="color: white;"><br>
                            •參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性​​之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。
                             <br>
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。
                        </span>
                    </td>

                    <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                </tr>
            </tbody>
        </table>
    </div>


    <!--footer-->

    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_00.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

            <a href="https://www.hawooo.com/user/180319womenday.aspx?tid=gosale1" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保健"></a>

            <a href="https://www.hawooo.com/user/180319womenday.aspx?tid=gosale2" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="內衣"></a>

            <a href="https://www.hawooo.com/user/180319womenday.aspx?tid=gosale3" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="保養"></a>

            <a href="https://www.hawooo.com/user/180319womenday.aspx?tid=gosale4" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
        </div>
    </div>

    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }
    </script>
</asp:Content>

