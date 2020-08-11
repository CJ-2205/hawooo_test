<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170918.aspx.cs" Inherits="user_20170918" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170918.aspx";
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
                <img alt="Ha幣上線啦，消費就轉1%回饋" src="https://www.hawooo.com/images/ftp/20170918/edm_01.png" style="width: 1180px;" />

                <img alt="買RM1就送1Ha幣" src="https://www.hawooo.com/images/ftp/20170918/edm_02.PNG" style="width: 590px;" />

                <a href="https://www.hawooo.com/user/20170906hacoin.aspx" target="_blank">
                    <img alt="慶祝新版上線，直接送你1500Ha幣" src="https://www.hawooo.com/images/ftp/20170918/edm_03.png" style="width: 590px;" /></a>

                <!--Ha幣2倍送-->

                <a href="20170918pageA.aspx" target="_blank">
                    <img alt="Ha幣回饋2倍送" src="https://www.hawooo.com/images/ftp/20170918/edm_04.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=638" target="_blank">
                    <img alt="BHK's 紅萃蔓越莓益生菌" src="https://www.hawooo.com/images/ftp/20170918/edm_05.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9431" target="_blank">
                    <img alt="Miss Hana 花娜小姐 雙頭校色光燦眼彩棒 (三色可選)" src="https://www.hawooo.com/images/ftp/20170918/edm_06.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8854" target="_blank">
                    <img alt="INNER SKIN 茶樹控油收斂化妝水 150ml" src="https://www.hawooo.com/images/ftp/20170918/edm_07.png" style="width: 201px; height: 267px;" /></a>

                <a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=2569&bid=12" target="_blank">
                    <img alt="BHK's 白高顆(30顆/袋) 3袋/6袋組" src="https://www.hawooo.com/images/ftp/20170918/edm_08.png" style="width: 200px; height: 267px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170918/edm_09.png" style="width: 47px;" />

                <a href="20170918pageA.aspx" target="_blank">
                    <img alt="Ha幣回饋2倍送 看更多" src="https://www.hawooo.com/images/ftp/20170918/edm_10.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8539" target="_blank">
                    <img alt="Polynia璞亞 紫根補水平衡面膜 150ml" src="https://www.hawooo.com/images/ftp/20170918/edm_11.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=9140&bid=104" target="_blank">
                    <img alt="Laler菈楽 冰晶野玫瑰素顏膠囊(30顆/盒)" src="https://www.hawooo.com/images/ftp/20170918/edm_12.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9142" target="_blank">
                    <img alt="【婦潔VIGILL】除毛貼片-手腳+局部用(36片超值組)" src="https://www.hawooo.com/images/ftp/20170918/edm_13.png" style="width: 200px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=6473" target="_blank">
                    <img alt="LA BEAU 雙重緊緻美白組(拉絲澎澎霜 30ml+美白菁華 30ml)" src="https://www.hawooo.com/images/ftp/20170918/edm_14.png" style="width: 201px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170918/edm_15.png" style="width: 47px;" />



                <!--Ha幣3倍送-->


                <a href="20170918pageB.aspx" target="_blank">
                    <img alt="Ha幣回饋3倍送" src="https://www.hawooo.com/images/ftp/20170918/edm_16.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9386" target="_blank">
                    <img alt="【茶山房手工皂】蘭花皂" src="https://www.hawooo.com/images/ftp/20170918/edm_17.png" style="width: 189px;" /></a>

                <a href="http://www.hawooo.com/user/productdetail.aspx?id=9636&bid=129" target="_blank">
                    <img alt="華佗扶元堂 華陀古傳滴雞精(鋁箔包)10入/盒 (65ml/入)" src="https://www.hawooo.com/images/ftp/20170918/edm_18.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9650" target="_blank">
                    <img alt="【Qmomo】涼感推推第3代_隱藏式後扣版 平口新體驗美背成套內衣(黑 A-F)" src="https://www.hawooo.com/images/ftp/20170918/edm_19.png" style="width: 201px;" /></a>

                <a href="https://www.hawooo.com/user/brandproductdetail.aspx?pid=4152&bid=12" target="_blank">
                    <img alt="BHK's 深釋型十益菌 (30顆/袋) 3袋組" src="https://www.hawooo.com/images/ftp/20170918/edm_20.png" style="width: 200px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170918/edm_21.png" style="width: 47px;" />

                <a href="20170918pageB.aspx" target="_blank">
                    <img alt="Ha幣回饋3倍送 看更多" src="https://www.hawooo.com/images/ftp/20170918/edm_22.png" style="width: 354px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9385" target="_blank">
                    <img alt="【Nature Tree】黃金賦活乳霜 30ml" src="https://www.hawooo.com/images/ftp/20170918/edm_23.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/search.aspx?stxt=Chill%20Holiday" target="_blank">
                    <img alt="Chill Holiday．低腰丁字褲 (藍白條-星星 or 藏青-印地安)" src="https://www.hawooo.com/images/ftp/20170918/edm_24.png" style="width: 189px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8904" target="_blank">
                    <img alt="【婦潔VIGILL】私密高效美白凝露 30ml" src="https://www.hawooo.com/images/ftp/20170918/edm_25.png" style="width: 200px; height: 249px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=9675" target="_blank">
                    <img alt="【中秋限定】快車肉乾買四送一超值組" src="https://www.hawooo.com/images/ftp/20170918/edm_26.png" style="width: 201px; height: 249px;" /></a>

                <img src="https://www.hawooo.com/images/ftp/20170918/edm_27.png" style="width: 47px;" />


                <!--footer-->


                <a href="https://www.hawooo.com/user/20170906hacoin.aspx" target="_blank">
                    <img alt="領取Ha幣1500" src="https://www.hawooo.com/images/ftp/20170918/edm_28.png" style="width: 1180px;" /></a>
            </div>
        </div>
    </div>


</asp:Content>

