<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160720.aspx.cs" Inherits="user_20160720" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">
                <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="全館3件免運">
                    <img src="../images/events/20160720/images/pc_page_01.png" alt="全館3件免運"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=34" target="_blank" title="票選10大男友最愛小褲褲,Anden Hud 台灣狂賣，每3秒賣一件">
                    <img src="../images/events/20160720/images/pc_page_02.png" alt="票選10大男友最愛小褲褲,Anden Hud 台灣狂賣，每3秒賣一件"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3229" target="_blank" title="Anden Hud 點點控．低腰三角褲2入(裸/黑點 + 米/黑點)">
                    <img src="../images/events/20160720/images/pc_page_03.png" alt="Anden Hud 點點控．低腰三角褲2入(裸/黑點 + 米/黑點)" style="width: 454px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3253" title="Anden Hud  夏的綻放．中腰三角褲2入 水藍-花叢" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_04.png" alt="Anden Hud  夏的綻放．中腰三角褲2入 水藍-花叢" style="width: 364px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3254" title="Anden Hud  流星陣雨．中腰三角褲2入 螢光粉-流星雨" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_05.png" alt="Anden Hud  流星陣雨．中腰三角褲2入 螢光粉-流星雨" style="width: 362px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3217" title="Anden Hud 簡約中腰三角褲 淺紫2入" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_06.png" alt="Anden Hud 簡約中腰三角褲 淺紫2入" style="width: 364px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3251" title="Anden Hud  末日狂歡．V蕾絲低腰三角褲2入 (黑-水母+藏青-閃電)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_07.png" alt="Anden Hud  末日狂歡．V蕾絲低腰三角褲2入 (黑-水母+藏青-閃電)" style="width: 362px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3213" title="Anden Hud 簡約低腰三角褲 黑 2入" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_08.png" alt="Anden Hud 簡約低腰三角褲 黑 2入" style="width: 454px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3255" title="Anden Hud  V蕾絲中腰三角褲2入 (桃粉+丈青)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_09.png" alt="Anden Hud  V蕾絲中腰三角褲2入 (桃粉+丈青)" style="width: 364px;"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=34" title="Anden Hud 條紋控．抓皺蕾絲低腰三角褲2入 (藏青/白細條+米/藏青條)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_10.png" alt="Anden Hud 條紋控．抓皺蕾絲低腰三角褲" style="width: 362px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3257" title="Anden Hud  點點控．蕾絲低腰三角褲 2入" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_11.png" alt="Anden Hud  點點控．蕾絲低腰三角褲 2入" style="width: 364px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3246" title="Anden Hud 幾何樂園．後片蕾絲低腰三角褲2入(白-線條幾何+桃桔-三角幾何)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_12.png" alt="Anden Hud 幾何樂園．後片蕾絲低腰三角褲2入(白-線條幾何+桃桔-三角幾何)" style="width: 362px;"></a>
                <img src="../images/events/20160720/images/pc_page_13.png" alt="Anden Hud 精選組合商品">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3225" title="Anden Hud 三入組．小清新蕾絲邊低腰三角褲 (桃粉/黑/淺紫)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_14.gif" alt="Anden Hud 三入組．小清新蕾絲邊低腰三角褲 (桃粉/黑/淺紫)" style="width: 393px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3615" title="Anden Hud 低腰三角褲 6入 (隨機出貨)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_15.gif" alt="Anden Hud 低腰三角褲 6入 (隨機出貨)" style="width: 394px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3226" title="Anden Hud 三入組．小清新蕾絲邊低腰三角褲 (淺麻灰/藏青/淺粉)" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_16.gif" alt="Anden Hud 三入組．小清新蕾絲邊低腰三角褲 (淺麻灰/藏青/淺粉)" style="width: 393px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?cid=5" title="Living/生活" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_17.png" alt="Living/生活" style="width: 393px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?cid=4" title="Beauty/美妝" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_18.png" alt="Beauty/美妝" style="width: 394px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?cid=8" target="_blank" title="Shoes/鞋子">
                    <img src="../images/events/20160720/images/pc_page_19.png" alt="Shoes/鞋子" style="width: 393px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?cid=12" title="Food/食品" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_20.png" alt="Food/食品" style="width: 393px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?cid=7" title="Bag/包包" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_21.png" alt="Bag/包包" style="width: 394px;"></a>
                <a href="http://www.hawooo.com/user/market.aspx" title="New/新品" target="_blank">
                    <img src="../images/events/20160720/images/pc_page_22.png" alt="New/新品" style="width: 393px;"></a>
                <img src="../images/events/20160720/images/pc_page_23.png" alt="聯絡HAWOOO" usemap="#Map">
                <map name="Map">
                    <area shape="rect" coords="983,56,1033,103" href="https://www.facebook.com/hawooohawooo" target="_blank" alt="Hawooo好物飛行 Facebook" style="outline: none;">
                    <area shape="rect" coords="1047,56,1097,104" href="http://myhawooo.blogspot.tw" target="_blank" alt="Hawooo好物飛行 Blogger" style="outline: none;">
                    <area shape="rect" coords="1112,55,1163,104" href="https://www.instagram.com/hawooostyle" target="_blank" alt="Hawooo好物飛行 Instagramns" style="outline: none;">
                    <area shape="rect" coords="45,79,292,102" href="mailto:service@hawooo.com" target="_blank" alt="mail給Hawooo">
                </map>
            </div>
        </div>
    </div>
</asp:Content>

