<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171101lottery.aspx.cs" Inherits="user_20171101lottery" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20171101lottery.aspx";
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
                <img alt="好禮天天抽第三波" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_01.png" style="width: 1180px;" />

                <asp:Panel ID="Panel1" runat="server">
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                        <img alt="ICON愛康 抗菌衛生棉2包-日用型+護墊(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_02.PNG" style="width: 236px;" /></a>

                    <a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                        <img alt="ICON愛康 抗菌衛生棉2包-日用型+夜用型(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_03.png" style="width: 236px;" /></a>


                    <a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                        <img alt="ICON愛康 抗菌衛生棉2包-日用型+夜用加長型(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_04.png" style="width: 236px;" /></a>

                    <a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                        <img alt="ICON愛康 抗菌衛生棉2包-夜用型+護墊(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_05.png" style="width: 236px;" /></a>

                    <a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                        <img alt="ICON愛康 抗菌衛生棉2包-夜用型+夜用加長型(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_06.png" style="width: 236px;" /></a>




                </asp:Panel>
            </div>
        </div>
    </div>



    <%-- 第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                    <a href="http://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
                        <img alt="BHK'S" src="https://www.hawooo.com/images/ftp/20171013/w3/edmnew_07.png" style="width: 1180px;" /></a>
                </div>
            </div>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=7982&bid=12" target="_blank">
                        <img alt="BHK's 美白彈力組" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_07.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=5356" target="_blank">
                        <img alt="BHK's 胎盤膠囊(60顆/瓶) 2瓶入" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_08.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9155&bid=12" target="_blank">
                        <img alt="BHK's 奢光進階美白組" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_09.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=10228" target="_blank">
                        <img alt="BHK's 時光機凍齡組（逆痕*1瓶+膠原*1瓶）" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_10.png" style="width: 236px;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=8416&bid=12" target="_blank">
                        <img alt="BHK's 雙重減肥組" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_11.png" style="width: 236px;" /></a>


                </div>
            </div>
        </div>
    </asp:Panel>


    <!--下面footer開始-->
    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

                <img alt="禮物天天抽備註" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_12.png" style="width: 1180px;" />

                <img alt="第二波 禮物天天抽 之前的獎項" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_13.png" style="width: 393px;" />

                <a href="https://www.hawooo.com/user/20171012lottery.aspx" target="_blank">
                    <img alt="之前 12-21 Oct." src="https://www.hawooo.com/images/ftp/20171013/w3/edm_14.png" style="width: 394px;" /></a>

                <a href="https://www.hawooo.com/user/20171022lottery.aspx" target="_blank">
                    <img alt="之前 22-31 OCt." src="https://www.hawooo.com/images/ftp/20171013/w3/edm_15.png" style="width: 393px;" /></a>

                <a href="https://www.hawooo.com/user/20171111.aspx" target="_blank">
                    <img alt="點我逛週年慶第二波" src="https://www.hawooo.com/images/ftp/20171031/I03.png" style="width: 1180px;" /></a>

                <img alt="禮物天天抽 敬請期待" src="https://www.hawooo.com/images/ftp/20171013/w3/edm_17.png" style="width: 1180px;" />

            </div>
        </div>
    </div>

</asp:Content>

