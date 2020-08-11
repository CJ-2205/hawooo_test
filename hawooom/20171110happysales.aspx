<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171110happysales.aspx.cs" Inherits="mobile_20171110happysales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--三大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">
        <ul class="am-avg-sm-3 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="20171111part2.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171110/sec-M_01.png" style="width: 100%;" alt="單身購物節"></a></li>

            <li class="am-fl">
                <a href="20171110iphonerank.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171110/sec-M_02.png" style="width: 100%;" alt="累積消費賽"></a></li>

            <li class="am-fl">
                <a href="20171110cash.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171110/sec-M_03.png" style="width: 100%;" alt="送購物金"></a></li>


        </ul>
    </div>
    <!--三大類別小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a href="#" target="_blank">
                <img alt="雙11單身購物節" src="https://www.hawooo.com/images/ftp/20171110/timeM1_01.png" style="float: left; display: block; width: 25%;" /></a></li>

            <li style="margin: 0;">
                <img alt="10/11 限時特賣會" src="https://www.hawooo.com/images/ftp/20171110/timeM1_02.png" style="float: left; display: block; width: 75%;" /></li>

            <li style="margin: 0;">
                <img alt="10/11 限時特賣會" src="https://www.hawooo.com/images/ftp/20171110/timeM1_03.png" style="float: left; display: block; width: 100%;" /></li>
            <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp1_ItemDataBound" OnItemCommand="rp1_ItemCommand">
                <ItemTemplate>

                    <asp:HiddenField ID="hfvb" runat="server" Value='<%#Eval("btnvb") %>' />
                    <asp:HiddenField ID="hfeb" runat="server" Value='<%#Eval("btneb") %>' />
                    <li style="margin: 0; float: left; display: block; width: 100%;"><a href='<%#Eval("link") %>' target="_blank">
                        <img alt='<%#Eval("name").ToString() %>' width='<%#Eval("width").ToString() %>' src='<%#"https://www.hawooo.com/images/ftp/20171110/"+Eval("img").ToString()+".png"%>' <%--style="float: left; display: block; width: 20%;"--%> /></a>

                        <asp:LinkButton ID="lb1" runat="server" Visible="false" CommandName="getcp" CommandArgument='<%#Eval("id") %>'><img alt='<%#Eval("name").ToString()+" 點我領" %>' width="50%" src='<%#"https://www.hawooo.com/images/ftp/20171110/"+Eval("btnimg").ToString()+".png" %>' /></asp:LinkButton></li>
                </ItemTemplate>
            </asp:Repeater>


        </ul>
    </div>



    <!--公告開始喔-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="100%" src="https://www.hawooo.com/images/ftp/20171110/timeM1_14.png" style="float: left; display: block; width: 100%;" /></li>


            <!--公告上面那塊-->

            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">特卖会:<span style="color: white;"><br>
                                (1).每个品牌折扣时段与幅度不同，各品牌可能有部分商品无法参加，请依官网公告或网站商品为准，逾时不候。折扣商品数量有限，如欲订购完毕请各位见谅。<br>
                                (2).同笔订单折扣券不得同时使用多张，请会员订购时务必谨慎选取。</span><br>
                                免运门槛:<span style="color: white;"><br>
                                    活动期间，⻄马运费RM 19,满额RM 99免运。东马运费RM 29，满额RM 199免运。</span></td>

                            <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                        </tr>
                    </tbody>
                </table>
            </div>


            <!--公告下面那塊-->

            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="5%" bgcolor="#23000b" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#23000b" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 15px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">– 参加者参加本活动即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                – 其他明显违反活动公平性之⽅式， 意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                – 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</td>

                            <td width="5%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

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


        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }

        //function autoImgWidth(e) {
        //    document.getElementById(e).style.width = '50%';
        //    console.log("123");
        //}

    </script>

</asp:Content>
