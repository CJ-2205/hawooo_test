<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170906.aspx.cs" Inherits="user_20170906" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
            float: left;
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
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20170906mobile.aspx";
                }
            }
        }
         )
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

                <a href="#" target="_blank">
                    <img alt="Ha幣上線啦，消費就轉1%回饋" src="https://www.hawooo.com/images/ftp/20170901/edm_01.png" style="width: 1180px;" /></a>

                <a href="#" target="_blank">
                    <img alt="買RM1就送1Ha幣" src="https://www.hawooo.com/images/ftp/20170901/edm_02.PNG" style="width: 590px;" /></a>

                <a href="https://www.hawooo.com/user/20170906hacoin.aspx" target="_blank">
                    <img alt="慶祝新版上線，直接送你1500Ha幣" src="https://www.hawooo.com/images/ftp/20170901/edm_03.png" style="width: 590px;" /></a>

                <!--Ha幣2倍送-->

                <a href="https://www.hawooo.com/user/20170906pageA.aspx" target="_blank">
                    <img alt="Ha幣回饋2倍送" src="https://www.hawooo.com/images/ftp/20170901/edm_04.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9207" target="_blank">
                    <img alt="戀家小舖 【MORITA的閃閃星空】100%精梳棉 雙人床包+兩件枕套" src="https://www.hawooo.com/images/ftp/20170901/edm_05.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9435" target="_blank">
                    <img alt="Miss Hana 花娜小姐 美肌控光師氣墊CC棒 30g SPF50" src="https://www.hawooo.com/images/ftp/20170901/edm_06.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9379" target="_blank">
                    <img alt="nature tree 天天漂亮精華組(60ml*5)" src="https://www.hawooo.com/images/ftp/20170901/edm_07.png" style="width: 201px; height: 267px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9094" target="_blank">
                    <img alt="Laler菈楽 日日輕控＆夜夜爆燃(30顆/盒)" src="https://www.hawooo.com/images/ftp/20170901/edm_08.png" style="width: 200px; height: 267px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170901/edm_09.png" style="width: 47px%;" />

                <a href="https://www.hawooo.com/user/20170906pageA.aspx" target="_blank">
                    <img alt="Ha幣回饋2倍送 看更多" src="https://www.hawooo.com/images/ftp/20170901/edm_10.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9440" target="_blank">
                    <img alt="JuliArt 希沛絲賦活洗髮精220ml" src="https://www.hawooo.com/images/ftp/20170901/edm_11.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=7256" target="_blank">
                    <img alt="BHK's 奢潤 逆痕錠(30顆/袋) 1袋/2袋組" src="https://www.hawooo.com/images/ftp/20170901/edm_12.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=7865" target="_blank">
                    <img alt="LA BEAU SYN-AKE 類蛇毒抗皺緊緻精華 30ml" src="https://www.hawooo.com/images/ftp/20170901/edm_13.png" style="width: 200px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=5387&eid=185" target="_blank">
                    <img alt="My Bra AINIA 側推集中 多穿法側扣內衣褲組 經典條紋 B-C" src="https://www.hawooo.com/images/ftp/20170901/edm_14.png" style="width: 201px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170901/edm_15.png" style="width: 47px;" />

                <!--Ha幣3倍送-->


                <a href="https://www.hawooo.com/user/20170906pageB.aspx" target="_blank">
                    <img alt="Ha幣回饋3倍送" src="https://www.hawooo.com/images/ftp/20170901/edm_16.png" style="width: 354px;" /></a>

              <%--  <a href="https://www.hawooo.com/user/productdetail.aspx?id=4153" target="_blank">
                    <img alt="BHK's 植萃酵素 (30顆/袋) 3袋/6袋組" src="https://www.hawooo.com/images/ftp/20170901/edm_17.png" style="width: 189px;" /></a>--%>

                  <a href="https://www.hawooo.com/user/productdetail.aspx?id=1837" target="_blank">
                    <img alt="BHK's 葉黃素" src="https://www.hawooo.com/images/ftp/20170901/edm_17.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9228" target="_blank">
                    <img alt="La-boos 新三圓盤組（台灣黑熊、莫氏樹蛙、冠羽畫眉）" src="https://www.hawooo.com/images/ftp/20170901/edm_18.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9253" target="_blank">
                    <img alt="清檜＊檜木洗碗精 500ml" src="https://www.hawooo.com/images/ftp/20170901/edm_19.png" style="width: 201px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9210" target="_blank">
                    <img alt="陽光菓菓 來年紅-紅火果乾禮盒 370g" src="https://www.hawooo.com/images/ftp/20170901/edm_20.png" style="width: 200px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170901/edm_21.png" style="width: 47px%;" />

                <a href="https://www.hawooo.com/user/20170906pageB.aspx" target="_blank">
                    <img alt="Ha幣回饋3倍送 看更多" src="https://www.hawooo.com/images/ftp/20170901/edm_22.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9157" target="_blank">
                    <img alt="【Fa Laiya】法婡雅-巴黎多重唇頰彩(3色可選)" src="https://www.hawooo.com/images/ftp/20170901/edm_23.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9408" target="_blank">
                    <img alt="Yoho Power LP28敏立清益生菌-青蘋果多多(酵素添加版) 30條入/盒" src="https://www.hawooo.com/images/ftp/20170901/edm_24.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8852" target="_blank">
                    <img alt="INNER SKIN 茶樹控油胺基酸潔膚皂 100g" src="https://www.hawooo.com/images/ftp/20170901/edm_25.png" style="width: 200px; height: 249px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=3615" target="_blank">
                    <img alt="Anden Hud 低腰三角褲6入 (隨機出貨)" src="https://www.hawooo.com/images/ftp/20170901/edm_26.png" style="width: 201px; height: 249px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170901/edm_27.png" style="width: 47px;" />


                <!--footer-->

                <a href="https://www.hawooo.com/user/20170906hacoin.aspx" target="_blank">
                    <img alt="領取Ha幣1500" src="https://www.hawooo.com/images/ftp/20170901/edm_28.png" style="width: 1180px;" /></a>

            </div>
        </div>
    </div>



</asp:Content>

