<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="choose.aspx.cs" Inherits="mobile_choose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <%-- <style type="text/css">
        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .rm110 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_09.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .off30 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_11.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .off20 {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .hotsale {
            background: url(https://www.hawooo.com/images/ftp/20171031/edmm_15.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; /*max-width: 650px;*/">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="第一次購物想要哪種優惠呢" src="https://www.hawooo.com/images/ftp/20171113member/chooseM_01.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="#">
                <img alt="RM15 off" src="https://www.hawooo.com/images/ftp/20171113member/chooseM_02.png" style="float: left; display: block; width: 50%;" /></a></li>

            <li style="margin: 0;"><a href="#">
                <img alt="Free Shipping" src="https://www.hawooo.com/images/ftp/20171113member/chooseM_03.png" style="float: left; display: block; width: 50%;" /></a></li>



            <!--我貼-->
            <!--QA開始了-->
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#e7e1e5" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 20px; font-weight: bold; text-transform: uppercase; color: black; padding: 10px 0px; max-height: 55px; padding: 20px 0px;">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>How To Use?</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>

                        <tr>
                            <td width="10%" bgcolor="white" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="80%" bgcolor="white" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; text-transform: uppercase; color: #777777; padding: 10px 0px; max-height: 55px;">

                                <span style="color: #fc5b80; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">Step 1</span> 將您喜歡的商品放入購物車(ADD TO CART)或點選直接購買(BUY NOW)。<br>
                            </td>

                            <td width="10%" bgcolor="white" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <!--QA第一張圖-->

            <li style="margin: 0;">
                <img alt="選擇你要的商品" src="https://www.hawooo.com/images/ftp/20171113member/chooseM_05.png" style="float: left; display: block; width: 100%;" /></li>

            <!--step 2開始-->
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>

                        <tr>
                            <td width="10%" bgcolor="white" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="80%" bgcolor="white" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; text-transform: uppercase; color: #777777; padding: 10px 0px; max-height: 55px;">

                                <span style="color: #fc5b80; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">Step 2</span> 請點選右上角購物車前往結帳，系統將預設你所選的優惠(RM15off or Free Shipping)，並且直接抵免。<br>
                            </td>

                            <td width="10%" bgcolor="white" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>

            <!--QA第二張圖-->

            <li style="margin: 0;">
                <img alt="進入購物車，選擇Ha幣優惠，直接抵免" src="https://www.hawooo.com/images/ftp/20171113member/chooseM_07.png" style="float: left; display: block; width: 100%;" /></li>


            <!--第二題開始-->
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#e7e1e5" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 20px; font-weight: bold; text-transform: uppercase; color: black; padding: 10px 0px; max-height: 55px; padding: 20px 0px;">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>如何更改已選擇的優惠？</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>

                        <tr>
                            <td width="10%" bgcolor="white" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="80%" bgcolor="white" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; text-transform: uppercase; color: #777777; padding: 10px 0px; max-height: 55px;">

                                <span style="color: #fc5b80; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">Step 1</span> 在購物車頁面「HA幣使用」選項，點擊你所想要更換的優惠內容(RM15off or Free Shipping)，即可更改。<br>
                            </td>

                            <td width="10%" bgcolor="white" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>

            <!--QA第三張圖-->

            <li style="margin: 0;">
                <img alt="進入購物車，選擇Ha幣優惠，直接抵免" src="https://www.hawooo.com/images/ftp/20171113member/chooseM_11.png" style="float: left; display: block; width: 100%;" /></li>


            <!--底部-->
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#f7588c" style="max-height: 55px; padding: 5px 0px;"></td>
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
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }


        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }
    </script>

</asp:Content>
