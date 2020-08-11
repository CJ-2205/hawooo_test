<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171110happysales.aspx.cs" Inherits="user_20171110happysales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />--%>
    <%--    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171110happysales.aspx";
                }
            }
        }
         )
    </script>

    <%--    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">--%>

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
                <img alt="單身購物節11-10/11" src="https://www.hawooo.com/images/ftp/20171110/timePC2_01.png" style="float: left; display: block; width: 20%;" /></a></li>

            <li style="margin: 0;">
                <img alt="10號限定" src="https://www.hawooo.com/images/ftp/20171110/timePC2_02.png" style="float: left; display: block; width: 80%;" /></li>


            <li style="margin: 0;">
                <img alt="限時整點特賣會" src="https://www.hawooo.com/images/ftp/20171110/timePC2_03.png" style="float: left; display: block; width: 100%;" /></li>


            <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp1_ItemDataBound" OnItemCommand="rp1_ItemCommand">
                <ItemTemplate>
                    <asp:HiddenField ID="hfvb" runat="server" Value='<%#Eval("btnvb") %>' />
                    <asp:HiddenField ID="hfeb" runat="server" Value='<%#Eval("btneb") %>' />
                    <li style="margin: 0; float: left; display: block; width: 20%; height: 354px"><a href='<%#Eval("link") %>' target="_blank">
                        <img alt='<%#Eval("name").ToString() %>' src='<%#"https://www.hawooo.com/images/ftp/20171110/"+Eval("img").ToString()+".png"%>' <%--style="float: left; display: block; width: 20%;"--%> /></a>

                        <asp:LinkButton ID="lb1" runat="server" Visible="false" CommandName="getcp" CommandArgument='<%#Eval("id") %>'><img alt='<%#Eval("name").ToString()+" 點我領" %>' src='<%#"https://www.hawooo.com/images/ftp/20171110/"+Eval("btnimg").ToString()+".png" %>'<%-- style="float:left;display:block;width:20%;"--%> /></asp:LinkButton></li>
                </ItemTemplate>
            </asp:Repeater>




            <!--公告開始-->
            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="活動詳細說明" src="https://www.hawooo.com/images/ftp/20171110/timePC3_24.png" style="float: left; display: block; width: 100%;" /></a></li>


            <!--公告上面那塊-->

            <%-- <div>--%>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="15%"><a href="#" style="text-decoration: none" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20171110/timePC3_25.png" alt="Use Code" border="0" style="width: 100%; display: block;" class="CToWUd"></a></td>

                        <td width="80%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding-bottom: 10px;">特卖会:<span style="color: white;"><br>
                            (1).每个品牌折扣时段与幅度不同，各品牌可能有部分商品无法参加，请依官网公告或网站商品为准，逾时不候。折扣商品数量有限，如欲订购完毕请各位见谅。(2).同笔订单折扣券不得同时使用多张，请会员订购时务必谨慎选取。</span><br>
                            免运门槛:<span style="color: white;"><br>
                                活动期间，⻄马运费RM 19,满额RM 99免运。东马运费RM 29，满额RM 199免运。</span></td>

                        <td width="5%" bgcolor="#000000" style="padding-top: 0px;"></td>

                    </tr>
                </tbody>
            </table>
            <%--</div>--%>


            <!--公告下面那塊-->

            <%--  <div>--%>
            <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#23000b" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#23000b" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">– 参加者参加本活动即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                            – 其他明显违反活动公平性之⽅式， 意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                            – 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</td>

                        <td width="5%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
            <%-- </div>--%>
        </ul>
    </div>




    <!-- 一個看不見的div 高度0 -->
    <div class="invisible">
        <!-- box是固定的nav -->
        <div class="box">
            <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_01.png" style="width: 100px; margin-bottom: -1px">


            <a href="20171111part2.aspx">
                <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_03.png" style="width: 100px; margin-bottom: -1px" alt="單身購物節"></a>

            <a href="https://www.hawooo.com/user/shop.aspx?eid=276">
                <img src="https://www.hawooo.com/images/ftp/20171110/1110_pc-section_07.png" style="width: 100px;margin-bottom: -1px" alt="送111購物金"></a>

            <a href="20171110iphonerank.aspx">
                <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_04.png" style="width: 100px;margin-bottom: -1px" alt="iPhoneX累積消費賽"></a>




        </div>
    </div>


    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>
    <script type="text/javascript">

        //function getThisId(e) {
        //    var thisHref = $(e).attr("data-id");
        //    var thisDivTop = $("body").find(thisHref).offset().top - 120;
        //    $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        //}


        //function twoYearsSideHide(e) {
        //    var sidebottom = $(".invisible").offset().top - 100;
        //    var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
        //    if (sidebottom > yearbodybot) {
        //        $(".box").fadeOut();
        //    } else {
        //        $(".box").fadeIn();
        //    }
        //}

        //$(document).ready(function () {
        //    $(window).scroll(function () {
        //        twoYearsSideHide();
        //    })
        //})

        //function success(result, context, method) {
        //    if (method == 'GetCP') {
        //        alert(result);
        //        if (result == "請先登入會員") {
        //            doLogin(window.location.href);
        //        }
        //    }
        //}

        //function GetCoupone(stime, etime, gb01) {
        //    PageMethods.GetCP(stime, etime, gb01, success, null);
        //}

    </script>

    <%--  <style>
        [class*=am-u-] + [class*=am-u-]:last-child {
            float: left;
        }
    </style>--%>
</asp:Content>
