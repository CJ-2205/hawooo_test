<%@ Page Language="C#" AutoEventWireup="true" CodeFile="18WorldCup2.aspx.cs" Inherits="_18WorldCup2" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 2% 5px 5px 5px;
            height: calc(100% - 20px);
        }

        .sale1 {
            max-width: 590px;
            background-color: yellow;
            width: 100%;
            margin: 0 auto;
        }

        .highlight {
            color: #FEE322;
            text-decoration: underline;
        }

        /*---預設國家樣式*/
        .before {
            border: solid 3px rgba(122,122,122,0.75);
            background-color: rgba(122,122,122,0.75);
            padding: 5%;
            margin: 1% 1%;
            float: left;
        }
        /*---已選取國家*/
        .choose {
            border: solid 3px yellow;
            background-color: #3a3bf5;
            padding: 5%;
            margin: 1% 1%;
            float: left;
        }


        /*---第二波新增*/
        .goodbye {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
        }
    </style>

    <script>
        $(document).ready(
            function go() {
                var country = $("#<%= HFCountry.ClientID %>").val();

                if(country!=""){
                    debugger;
                    var arrayCountry = country.split(',');

                    $.each(arrayCountry, function (i, val)      //i是第幾個，val是Split出來的value
                    {
                        console.log(i + ":" + val);
                        var c = document.getElementById(val);
                        c.classList.remove("hvr-float");
                        c.classList.remove("before");   
                        $('[id="' + val + '"]').attr('onclick', '').unbind('click')     //將指定id的onclick取消
                        c.classList.add("choose");
                    })
                }

            })

        function contrastTime() {  
            var nowDate=new Date();
            var expDate= new Date('2018','07','15','00','00','00')   ;   
            if (Date.parse(nowDate) < Date.parse(expDate)) {//时间戳对比  
                return 1;  
            }   
            return 0;  
        }  


        function SelTeam(Country) {
            var d=contrastTime();

            var remain =$("#<%= HFRemain.ClientID %>").val();
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            debugger;
            if(d==1){
                if (u != null){
                    if (remain > 0) {
                        var msg = "妳最看好 \'" + Country + "\' 嗎？點選確認鍵就不能更改喲～"

                        if (confirm(msg) == true) {
                            $.ajax({
                                type: 'post',                   //請求方式，POST/GET。(預設為GET)
                                url: '18worldcup.aspx/InsertCountry',      //指定要進行呼叫的位址     
                                data: '{LotCountry:"' + Country + '"}',        //傳送至Server的資料，必須為Key/Value格式，GET請求中將附加在URL後面。      
                                datatype: "json",
                                contentType: "application/json; charset=utf-8",
                                success: function (response) {
                                    confirm2url(response.d,"https://www.hawooo.com/mobile/18worldcup.aspx");       
                                },
                                error:
                                function (response) {
                                    alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫", "https://www.hawooo.com/mobile/18worldcup.aspx");       
                                }
                            })
                        }
                    }
                    else
                    {
                        alert("趕快去下單換取更多的下注機會吧~");
                    }
                }
                else
                    window.location = "login.aspx?rurl=18worldcup.aspx";
            }
            else
            {
                alert("投注時間已結束咯~");
            }
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="HFRemain" runat="server" />
    <asp:HiddenField ID="HFCountry" runat="server" />

    <script>
        $(function () {
            hiddenFooterMenu();     //藏menu bar
            $(window).scroll(function () {
                $("#gotop").hide()
            });         //藏gotop的icon
        })
    </script>

    <!--2大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-2 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/wordcupsales2.aspx" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="世足商品"></a></li>
            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/WorldCupSpin.aspx" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="Ha幣足球賽"></a></li>

        </ul>
    </div>
    <!--小選單再見-->


    <!--edm開始-->

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180706/edmm_01.png" style="width: 100%" alt="押注賽">

        <div style="display: inline; position: absolute; z-index: 2; width: 70%; top: 7%; bottom: 0; left: 0; right: 0;">
            <a href="https://www.hawooo.com/mobile/WorldCupSpin.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180620/32/btn_01.png" alt="ha幣足球" style="position: absolute; top: 53%; margin: auto; width: 110%; left: 20%;" />
            </a>
            <a href="https://www.hawooo.com/mobile/wordcupsales2.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180629/btn_02.png" alt="商品搶好康" style="position: absolute; top: 75%; margin: auto; width: 110%; left: 25%;" />
            </a>
        </div>

    </div>


    <!--神奇圖層區掰掰-->
    <!--放你還有幾次機會-->
    <div style="width: 100%; max-width: 650px; position: relative; z-index: 1; margin: 0 auto">


        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#d137ca" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#d137ca" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                        <asp:Literal ID="Literal1" runat="server" Text="立刻登入參加預測"></asp:Literal>
                    </td>

                    <td width="5%" bgcolor="#d137ca" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                </tr>
            </tbody>
        </table>
        <img src="https://www.hawooo.com/images/ftp/20180706/edmm_02.png" alt="預告" style="width: 100%; float: left;">
    </div>

    <!--預測開始 start-->

    <div style="max-width: 650px; background-color: #000b04; margin: 0 auto;">
        <div class="am-cf" style="max-width: 585px; background-color: #042107; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 2% 4%; padding: 0;">

                <!--第1組-->


                <li id="Brazil" class="am-fl box before" style="width: 48%" onclick="SelTeam('Brazil')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/002.png" style="width: 100%;">
                </li>


                <!--第2組-->
                <li id="Belgium" class="am-fl box before" style="width: 48%" onclick="SelTeam('Belgium')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/005.png" style="width: 100%;">
                </li>

     

                <!--第3組-->
                <li id="Croatia" class="am-fl box before" style="width: 48%" onclick="SelTeam('Croatia')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/009.png" style="width: 100%;">
                </li>


                <li id="France" class="am-fl box before" style="width: 48%" onclick="SelTeam('France')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/012.png" style="width: 100%;">
                </li>

                <!--第4組-->


  

                <li id="Russia" class="am-fl box before" style="width: 48%" onclick="SelTeam('Russia')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/015.png" style="width: 100%;">
                </li>



                <!--第5組-->
                <li id="England" class="am-fl box before" style="width: 48%" onclick="SelTeam('England')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/017.png" style="width: 100%;">
                </li>

     



                <!--第6組-->
                <li id="Uruguay" class="am-fl box before" style="width: 48%" onclick="SelTeam('Uruguay')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/021.png" style="width: 100%;">
                </li>




                <!--第7組-->


                <li id="Sweden" class="am-fl box before" style="width: 48%" onclick="SelTeam('Sweden')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/026.png" style="width: 100%;">
                </li>

       


                <!--第8組-->


    




                <!----出局組-->

                
             
                <li id="Denmark" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/001.png" style="width: 100%;">
                </li>


                   <li id="Japan" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/004.png" style="width: 100%;">
                </li>
       
                         <li id="Spain" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/008.png" style="width: 100%;">
                </li>

                             <li id="Argentina" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/014.png" style="width: 100%;">
                </li>
            
         
                                     <li id="Colombia" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/018.png" style="width: 100%;">
                </li>
        

                                          <li id="Switzerland" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/025.png" style="width: 100%;">
                </li>
            

                                                <li id="Protugal" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/027.png" style="width: 100%;">
                </li>


                                                  <li id="Mexico" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/030.png" style="width: 100%;">
                </li>



          








                <li id="Senegal" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/023.png" style="width: 100%;">
                </li>


                <li id="Panama" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/003.png" style="width: 100%;">
                </li>

                <li id="Iran" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/006.png" style="width: 100%;">
                </li>

                <li id="Iceland" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/007.png" style="width: 100%;">
                </li>

                <li id="SaudiArabia" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/010.png" style="width: 100%;">
                </li>

                <li id="Nigeria" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/011.png" style="width: 100%;">
                </li>
                <li id="Poland" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/013.png" style="width: 100%;">
                </li>
                <li id="Tunisia" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/016.png" style="width: 100%;">
                </li>
                <li id="CostaRica" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/019.png" style="width: 100%;">
                </li>

                <li id="Egypt" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/020.png" style="width: 100%;">
                </li>
                <li id="Morrocco" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/029.png" style="width: 100%;">
                </li>
                <li id="Peru" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/022.png" style="width: 100%;">
                </li>
                <li id="Serbia" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/024.png" style="width: 100%;">
                </li>

                <li id="Germany" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/028.png" style="width: 100%;">
                </li>



                <li id="Australia" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/031.png" style="width: 100%;">
                </li>
                <li id="Korea" class="am-fl box before" style="width: 48%; position: relative;">
                    <div class="goodbye">
                        <img src="https://www.hawooo.com/images/ftp/test/byebye.png" alt="慢走不送" style="width: 100%;" />
                    </div>
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/032.png" style="width: 100%;">
                </li>


            </ul>
        </div>
    </div>


    <div style="max-width: 650px; margin: 0 auto;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: normal;">累积消费赛<br>
                        <span style="color: white;">活動期間：20.6.2018~14.7.2018<br />
                            <br />
                            參加資格： 
                                    <br />
                            1.	每位曾經在Hawooo購買過商品的會員都可以登入後，參考32強名單進行線上預測。<br />
                            2.	如果您在活動期間完成的<span class="highlight">每筆訂購並付款完成，也可以再多獲得預測的機會喔，一筆訂單可額外獲得一次預測機會</span>，每位會員對同一個國家只能預測一次，不得重複預測。
                        </span>

                        <br />

                        <span style="color: white;">
                            <br />
                            超強獎項：
                                    <br />
                            1.	若是預測時間於20.6~29.6，且預測的隊伍進入8強，您可獲得RM10活動購物金。之後若是您預測的隊伍進入4強，您可額外獲得RM15活動購物金。若是您預測的隊伍成為總冠軍，您可額外獲得RM25活動購物金。等於         <span class="highlight">越早參加就有機會領到越多活動購物金，最高有機會贏得RM50活動購物金</span>。
                                    <br />
                            2.	若是預測時間於30.6~05.7，若是您預測的隊伍進入4強，您可額外獲得RM15活動購物金。之後若是您預測的隊伍成為總冠軍，您可額外獲得RM25活動購物金。，最高有機會贏得RM40活動購物金。
                                    <br />
                            3.	若是預測時間於06.7~14.7，若是您預測的隊伍成為總冠軍，您可額外獲得RM25活動購物金。
                                    <br />
                            4.	越早下注，中獎金額越高！<span class="highlight">RM1活動購物金即可以RM1元抵扣消費</span>，沒有使用門檻，但不得兌換為現金喔。
                                    <br />
                        </span>
                        <br />
                        <span style="color: white;">歸戶時間：<br />
                            1.	8強RM10活動購物金將於20.7完成歸戶。<br />
                            2.	4強RM15活動購物金或冠軍RM25活動購物金則將於01.8完成歸戶<br />
                            3.	以上歸戶流程恕不逐一通知，敬請自行登入並至會員帳戶查看。<br />
                            <br />
                            其他：<br />
                            •參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br />
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。

                        </span>
                    </td>

                    <td width="5%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>


</asp:Content>
