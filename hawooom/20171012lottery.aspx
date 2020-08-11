<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171012lottery.aspx.cs" Inherits="mobile_20171012lottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_10.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_16.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_19.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="好物週年慶 禮物天天抽" src="https://www.hawooo.com/images/ftp/20171013/edmm_01.png" style="float: left; display: block; width: 100%;" /></li>

            <asp:Panel ID="Panel1" runat="server">

                <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/shop.aspx?eid=238" target="_blank">
                    <img alt="miss hana花娜小姐" src="https://www.hawooo.com/images/ftp/20171013/edmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9435" target="_blank">
                    <img alt="Miss Hana 花娜小姐 美肌控光師氣墊CC棒 30g SPF50+***" src="https://www.hawooo.com/images/ftp/20171013/edmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>



                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                    <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 01紫/粉-蠟黃肌" src="https://www.hawooo.com/images/ftp/20171013/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>


                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                    <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 02綠/藍-泛紅肌" src="https://www.hawooo.com/images/ftp/20171013/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                    <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 03橘/黃-黯沉肌" src="https://www.hawooo.com/images/ftp/20171013/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9431" target="_blank">
                    <img alt="Miss Hana 花娜小姐 雙頭校色光燦眼彩棒 01綠野深棕" src="https://www.hawooo.com/images/ftp/20171013/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>
            </asp:Panel>
        </ul>
    </div>




    <%--    第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="快車肉乾coming soon" src="https://www.hawooo.com/images/ftp/20171013/edmm_08new.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">


                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="快車肉乾" src="https://www.hawooo.com/images/ftp/20171013/edmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="原味肉紙x2＋黑胡椒豬肉乾x1＋原味元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="芝麻肉紙x2＋黑胡椒豬肉乾x1＋原味元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="海苔肉紙x2＋蜜汁豬肉乾x1＋黑胡椒元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="黑胡椒肉紙x2＋蜜汁豬肉乾x1＋黑胡椒元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>




                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                    <img alt="櫻花蝦肉紙x2＋蜜汁豬肉乾x1＋黑胡椒元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>
    </asp:Panel>




    <!--footer開始-->

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="禮物天天抽 備註說明" src="https://www.hawooo.com/images/ftp/20171013/edmm_14.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;">
                <img alt="禮物天天抽第二波 敬請期待" src="https://www.hawooo.com/images/ftp/20171013/edmm_15.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/hawooo2years.aspx" target="_blank">
                <img alt="點我逛週年慶第一波" src="https://www.hawooo.com/images/ftp/20171013/edmm_16.png" style="float: left; display: block; width: 100%;" /></a></li>



        </ul>
    </div>


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
    </script>

</asp:Content>
