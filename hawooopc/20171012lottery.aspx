<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171012lottery.aspx.cs" Inherits="user_20171012lottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />

    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>


     <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171012lottery.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/app.css" />
    <link rel="stylesheet" href="assets/css/newyearmom.css" />

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        .minbox {
            margin: 0 auto;
            width: 1180px;
        }

        .content-full {
            margin: 0 auto;
            padding: 0;
            width: 1180px;
        }

        .listbox-full {
            float: center;
            display: block;
            font-size: 0;
            margin: 0;
            width: 1180px;
        }

            .listbox-full img {
                float: left;
                display: block;
                margin: 0;
                padding: 0;
                font-size: 0;
            }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">
                <img alt="好禮天天抽第一波" src="https://www.hawooo.com/images/ftp/20171013/edm_01.png" style="width: 1180px;" />

                <asp:Panel ID="Panel1" runat="server">
                    <a href="https://www.hawooo.com/user/shop.aspx?eid=238" target="_blank">
                        <img alt="miss hana 花娜小姐" src="https://www.hawooo.com/images/ftp/20171013/edm_02.PNG" style="width: 1180px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9435" target="_blank">
                        <img alt="Miss Hana 花娜小姐 美肌控光師氣墊CC棒 30g SPF50+***" src="https://www.hawooo.com/images/ftp/20171013/edm_03.png" style="width: 236px;" /></a>


                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                        <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 01紫/粉-蠟黃肌" src="https://www.hawooo.com/images/ftp/20171013/edm_04.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                        <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 02綠/藍-泛紅肌" src="https://www.hawooo.com/images/ftp/20171013/edm_05.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9433" target="_blank">
                        <img alt="Miss Hana 花娜小姐 馬卡龍妝前校色飾底筆 03橘/黃-黯沉肌" src="https://www.hawooo.com/images/ftp/20171013/edm_06.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9431" target="_blank">
                        <img alt="Miss Hana 花娜小姐 雙頭校色光燦眼彩棒 01綠野深棕" src="https://www.hawooo.com/images/ftp/20171013/edm_07.png" style="width: 236px;" /></a>
                </asp:Panel>
            </div>
        </div>
    </div>



    <%-- 第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="快車肉乾" src="https://www.hawooo.com/images/ftp/20171013/edm_08new_08.png" style="width: 1180px;" /></a>
                </div>
            </div>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="快車肉乾" src="https://www.hawooo.com/images/ftp/20171013/edm_08.png" style="width: 1180px;" /></a>

                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="原味肉紙x2＋黑胡椒豬肉乾x1＋原味元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edm_09.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="芝麻肉紙x2＋黑胡椒豬肉乾x1＋原味元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edm_10.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="海苔肉紙x2＋蜜汁豬肉乾x1＋黑胡椒元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edm_11.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="黑胡椒肉紙x2＋蜜汁豬肉乾x1＋黑胡椒元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edm_12.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/brands.aspx?bid=131" target="_blank">
                        <img alt="櫻花蝦肉紙x2＋蜜汁豬肉乾x1＋黑胡椒元氣條x1" src="https://www.hawooo.com/images/ftp/20171013/edm_13.png" style="width: 236px;" /></a>


                </div>
            </div>
        </div>
    </asp:Panel>


    <!--下面footer開始-->
    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

                <img alt="禮物天天抽備註" src="https://www.hawooo.com/images/ftp/20171013/edm_14.png" style="width: 1180px;" />

                <img alt="第二波 禮物天天抽 敬請期待" src="https://www.hawooo.com/images/ftp/20171013/edm_15.png" style="width: 1180px;" />

                <a href="https://www.hawooo.com/user/hawooo2years.aspx" target="_blank">
                    <img alt="點我逛週年慶第一波" src="https://www.hawooo.com/images/ftp/20171013/edm_16.png" style="width: 1180px;" /></a>

            </div>
        </div>
    </div>

</asp:Content>

