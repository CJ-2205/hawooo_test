<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="choose.aspx.cs" Inherits="user_choose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(function () {
            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/choose.aspx";
                }
            }
        }
         )
    </script>

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
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 500px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <li style="margin: 0;">
                <img alt="請選擇你要的優惠" src="https://www.hawooo.com/images/ftp/20171113member/choose_011.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="#">
                <img alt="RM 15 off" src="https://www.hawooo.com/images/ftp/20171113member/choose_02.png" style="float: left; display: block; width: 50%;" /></a></li>

            <li style="margin: 0;"><a href="#">
                <img alt="Free shipping" src="https://www.hawooo.com/images/ftp/20171113member/choose_022.png" style="float: left; display: block; width: 50%;" /></a></li>

            <!--QA開始了-->
            <div>
                <table width="500" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#e7e1e5" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: black; padding: 10px 0px; max-height: 55px; padding: 20px 0px;">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>How To Use?</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div>
                <table width="500" border="0" cellspacing="0" cellpadding="0">
                    <tbody>

                        <tr>
                            <td width="5%" bgcolor="white" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="white" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold; text-transform: uppercase; color: #777777; padding: 10px 0px; max-height: 55px;">

                                <span style="color: #fc5b80; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">Step 1</span> 將您喜歡的商品放入購物車(ADD TO CART)或點選直接購買(BUY NOW)。<br>
                            </td>

                            <td width="5%" bgcolor="white" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <!--QA第一張圖-->

            <li style="margin: 0;">
                <img alt="選擇你要的商品" src="https://www.hawooo.com/images/ftp/20171113member/choose_04.png" style="float: left; display: block; width: 100%;" /></li>

            <!--step 2開始-->
            <div>
                <table width="500" border="0" cellspacing="0" cellpadding="0">
                    <tbody>

                        <tr>
                            <td width="5%" bgcolor="white" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="white" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold; text-transform: uppercase; color: #777777; padding: 10px 0px; max-height: 55px;">

                                <span style="color: #fc5b80; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">Step 2</span> 請點選右上角購物車前往結帳，系統將預設你所選的優惠(RM15off or Free Shipping)，並且直接抵免。<br>
                            </td>

                            <td width="5%" bgcolor="white" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>

            <!--QA第二張圖-->

            <li style="margin: 0;">
                <img alt="進入購物車，選擇Ha幣優惠，直接抵免" src="https://www.hawooo.com/images/ftp/20171113member/choose_06.png" style="float: left; display: block; width: 100%;" /></li>


            <!--第二題開始-->
            <div>
                <table width="500" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#e7e1e5" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: black; padding: 10px 0px; max-height: 55px; padding: 20px 0px;">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>如何更改已選擇的優惠？</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div>
                <table width="500" border="0" cellspacing="0" cellpadding="0">
                    <tbody>

                        <tr>
                            <td width="5%" bgcolor="white" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="white" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold; text-transform: uppercase; color: #777777; padding: 10px 0px; max-height: 55px;">

                                <span style="color: #fc5b80; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">Step 1</span> 在購物車頁面「HA幣使用」選項，點擊你所想要更換的優惠內容(RM15off or Free Shipping)，即可更改。<br>
                            </td>

                            <td width="5%" bgcolor="white" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <!--QA第一張圖-->

            <li style="margin: 0;">
                <img alt="選擇你要的優惠" src="https://www.hawooo.com/images/ftp/20171113member/choose_08.png" style="float: left; display: block; width: 100%;" /></li>


            <!--底部-->
            <div>
                <table width="500" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#f7588c" style="max-height: 55px; padding: 5px 0px;"></td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </ul>
    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>
</asp:Content>
