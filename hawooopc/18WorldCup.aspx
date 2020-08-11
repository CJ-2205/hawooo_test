<%@ Page Language="C#" AutoEventWireup="true" CodeFile="18WorldCup.aspx.cs" Inherits="_18WorldCup" MasterPageFile="~/user/user.master" %>

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
            width: 810px;
            background-color: #a273df;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 810px;
            background-color: #042107;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
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
        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }

        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
            }

        /*---預設國家樣式*/
        .before {
            border: solid 3px rgba(122,122,122,0.75);
            background-color: rgba(122,122,122,0.75);
            padding: 2%;
            margin: 1% 1%;
        }
        /*---已選取國家*/
        .choose {
            border: solid 3px yellow;
            background-color: #3a3bf5;
            padding: 2%;
            margin: 1% 1%;
        }
        /*---第二波新增*/
        .goodbye {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
        }

        .select {
            position: absolute;
            left: 0px;
            top: 0px;
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
                                    confirm2url(response.d,"https://www.hawooo.com/user/18worldcup.aspx");    
                                },
                                error:
                                function (response) {
                                    alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫", "https://www.hawooo.com/user/18worldcup.aspx");         
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
                    doLogin("https://www.hawooo.com/user/18worldcup.aspx");      
            }
            else
            {
                alert("投注時間已結束咯~");
            }
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:HiddenField ID="HFRemain" runat="server" />
        <asp:HiddenField ID="HFCountry" runat="server" />

        <!--神奇圖層區開始-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
            <img id="gotop" src="https://www.hawooo.com/images/ftp/20180706/edm_01.png" alt="Play&Win 最高得RM55" style="width: 100%" />
            <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                <a href="https://www.hawooo.com/user/WorldCupSpin.aspx" target="_blank">
                    <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180620/32/btn_01.png" alt="加碼送" style="position: absolute; top: 79%; margin: auto; width: 70%; left: 10%;" />
                </a>
                <a href="https://www.hawooo.com/user/wordcupsales2.aspx" target="_blank">
                    <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180620/32/btn_02.png" alt="搶好康" style="position: absolute; top: 79%; margin: auto; width: 70%; left: 80%;" />
                </a>
            </div>
        </div>

        <!--放你還有幾次機會-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#d137ca" style="padding-top: 0px; max-height: 55px;"></td>
                        <td width="90%" bgcolor="#d137ca" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;"><span style="font-size: 20px; color: white">
                            <asp:Literal ID="Literal1" runat="server" Text="立刻登入參加預測"></asp:Literal></span></td>
                        <td width="5%" bgcolor="#d137ca" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>
                    </tr>
                </tbody>
            </table>
            <img src="https://www.hawooo.com/images/ftp/20180706/edm_02.png" alt="預告" style="width: 100%; float: left;">
        </div>

        <!--預測開始-->


        <div style="width: 900px; margin: 0 auto; background-color: #000b04;">
            <div class="am-cf sale2">
                <div style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
                    <ul class="am-avg-sm-4">
                        <!--第1排-->





                        <li id="France" class="am-fl hvr-float before" style="width: 23%;">
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/012.png" style="width: 100%;" alt="France" />
                        </li>





                        <!--出局排-->
                        <li id="Belgium" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/005.png" style="width: 100%;" alt="Denmark" />
                        </li>
                        <li id="Croatia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/009.png" style="width: 100%;" alt="Denmark" />
                        </li>

                        <li id="England" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/017.png" style="width: 100%;" alt="Denmark" />
                        </li>









                        <li id="Brazil" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/002.png" style="width: 100%;" alt="Denmark" />
                        </li>


                        <li id="Uruguay" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/021.png" style="width: 100%;" alt="Denmark" />
                        </li>


                        <li id="Sweden" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/026.png" style="width: 100%;" alt="Denmark" />
                        </li>

                        <li id="Russia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/015.png" style="width: 100%;" alt="Denmark" />
                        </li>



                        <li id="Denmark" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/001.png" style="width: 100%;" alt="Denmark" />
                        </li>

                        <li id="Japan" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/004.png" style="width: 100%;" alt="Japan" />
                        </li>

                        <li id="Spain" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/008.png" style="width: 100%;" alt="Spain" />
                        </li>

                        <li id="Argentina" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/008.png" style="width: 100%;" alt="Argentina" />
                        </li>

                        <li id="Colombia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/018.png" style="width: 100%;" alt="Colombia" />
                        </li>

                        <li id="Switzerland" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/025.png" style="width: 100%;" alt="Switzerland" />
                        </li>

                        <li id="Protugal" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/027.png" style="width: 100%;" alt="Protugal" />
                        </li>


                        <li id="Mexico" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/030.png" style="width: 100%;" alt="Mexico" />
                        </li>










                        <li id="Senegal" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/023.png" style="width: 100%;" alt="Senegal" />
                        </li>

                        <li id="Serbia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/024.png" style="width: 100%;" alt="Serbia" />
                        </li>

                        <li id="Korea" class="am-fl  before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/032.png" style="width: 100%;" alt="Korea" />
                        </li>

                        <li id="Germany" class="am-fl  before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/028.png" style="width: 100%;" alt="Germany" />
                        </li>

                        <li id="Poland" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/013.png" style="width: 100%;" alt="Poland" />
                        </li>

                        <li id="Tunisia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/016.png" style="width: 100%;" alt="Tunisia" />
                        </li>

                        <li id="Panama" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/003.png" style="width: 100%;" alt="Panama" />
                        </li>

                        <li id="Iran" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/006.png" style="width: 100%;" alt="Iran" />
                        </li>

                        <li id="Iceland" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/007.png" style="width: 100%;" alt="Iceland" />
                        </li>

                        <li id="SaudiArabia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/010.png" style="width: 100%;" alt="SaudiArabia" />
                        </li>

                        <li id="Nigeria" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/011.png" style="width: 100%;" alt="Nigeria" />
                        </li>

                        <li id="CostaRica" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/019.png" style="width: 100%;" alt="CostaRica" />
                        </li>

                        <li id="Egypt" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/020.png" style="width: 100%;" alt="Egypt" />
                        </li>

                        <li id="Australia" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/031.png" style="width: 100%;" alt="Australia" />
                        </li>

                        <li id="Morrocco" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/029.png" style="width: 100%;" alt="Morrocco" />
                        </li>

                        <li id="Peru" class="am-fl before" style="width: 23%; position: relative;">
                            <div class="select">
                                <img src="https://www.hawooo.com/images/ftp/test/byebye.png" style="width: 100%;" alt="Bye" />
                            </div>
                            <img src="https://www.hawooo.com/images/ftp/20180620/32/022.png" style="width: 100%;" alt="Peru" />
                        </li>
                    </ul>
                </div>
            </div>

        </div>

        <div style="width: 100%; position: relative; width: 900px; margin: 0 auto">

            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="8%" bgcolor="#000000"></td>

                        <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 20px">Play & Win World Cup活動辦法<br>
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

                        <td width="8%" bgcolor="#000000"></td>

                    </tr>
                </tbody>
            </table>
            <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
        </div>

        <!-- 一個看不見的div 高度0-->
        <div class="invisible" style="z-index: 50;">
            <!-- box是固定的nav-->
            <div class="box">
                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

                <a href="https://www.hawooo.com/user/wordcupsales2.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="世足加碼送"></a>

                <a href="https://www.hawooo.com/user/worldcupspin.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="世足搶好康 優惠商品"></a>

                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/32/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
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
    </script>
</asp:Content>
