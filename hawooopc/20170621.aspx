<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20170621.aspx.cs" Inherits="user_20170621" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20170621.aspx";
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
                    <img alt="AndenHud 三件免運" src="http://edm.hawooo.com/20170622/edm_01.png" style="width: 1180px;" /></a>

                <a href="#" target="_blank">
                    <img alt="RM10 off use code: AH99" src="http://edm.hawooo.com/20170622/edm_02.png" style="width: 1180px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=3615&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Anden Hud 低腰三角褲六入 (隨機出貨)" src="http://edm.hawooo.com/20170622/edm_03.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=3613&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Anden Hud 中腰三角褲6入 (隨機出貨) " src="http://edm.hawooo.com/20170622/edm_04.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8435&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="My Girl．蕾絲中腰生理褲(淺橘-冰棒)+蕾絲中腰生理褲(黑-白貓)" src="http://edm.hawooo.com/20170622/edm_05.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8437&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="My Girl．蕾絲中腰生理褲(裸/黑點)+蕾絲中腰生理褲(淺麻灰-墨西哥)" src="http://edm.hawooo.com/20170622/edm_06.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8439&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="透明夜．V蕾絲中腰三角褲(深灰紫)+V蕾絲中腰三角褲(深藍紫)" src="http://edm.hawooo.com/20170622/edm_07.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=7642&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Anden Hud LOVE & LOVE / 星星下午茶．低腰生理褲 2入組" src="http://edm.hawooo.com/20170622/edm_08.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8436&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="搗蛋女孩．中腰生理褲(淺麻灰-骷顱愛心)+小火花．中腰生理褲(薄荷綠-虛線)" src="http://edm.hawooo.com/20170622/edm_09.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8445&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="抗菌系列．V蕾絲低腰三角褲(藏青)+V蕾絲低腰三角褲(黑/白條)" src="http://edm.hawooo.com/20170622/edm_10.png" style="width: 295px;" /></a>



                <a href="#" target="_blank">
                    <img alt="台灣同步限量組合" src="http://edm.hawooo.com/20170622/edm_11.png" style="width: 1180px;" /></a>



                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8446&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="夏天！早安．居家棉短褲(薄荷綠-夏日風情)" src="http://edm.hawooo.com/20170622/edm_12.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8438&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="夏天！早安．居家棉短褲(粉白條-星星)" src="http://edm.hawooo.com/20170622/edm_13.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8444&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Cross Road．交叉美臀低腰三角褲(薄荷綠-夏日風情)+交叉美臀低腰三角褲(米-香蕉)" src="http://edm.hawooo.com/20170622/edm_14.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8443&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Cross Road．交叉美臀低腰三角褲(白-爆米花假期)+交叉美臀低腰三角褲(藏青-印地安)" src="http://edm.hawooo.com/20170622/edm_15.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8442&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="俏麗女孩．花邊中腰三角褲(水藍-BABBLE)+花邊中腰三角褲(白-爆米花假期)" src="http://edm.hawooo.com/20170622/edm_16.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8441&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Party Night．網狀蕾絲中腰三角褲(藏青/白點)+網狀蕾絲中腰三角褲(米-豹紋)" src="http://edm.hawooo.com/20170622/edm_17.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=8440&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="簡約網狀蕾絲中腰三角褲(黑色)+簡約網狀蕾絲中腰三角褲(淺灰紫)" src="http://edm.hawooo.com/20170622/edm_18.png" style="width: 295px;" /></a>

                <a href="https://www.hawooo.com/user/productdetail.aspx?id=7641&utm_source=mail&utm_medium=edm&utm_content=AH0622L" target="_blank">
                    <img alt="Anden Hud 暮光之吻．低腰生理褲 2入組" src="http://edm.hawooo.com/20170622/edm_19.png" style="width: 295px;" /></a>

                <a href="#" target="_blank">
                    <img alt="AndenHud" src="http://edm.hawooo.com/20170622/edm_20.png" style="width: 1180px;" /></a>

            </div>
        </div>
    </div>

</asp:Content>

