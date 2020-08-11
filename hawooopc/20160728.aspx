<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160728.aspx.cs" Inherits="user_20160728" %>

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
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="大馬IG紅人，推薦小物清單">
                    <img src="../images/events/20160728/images/pc_page_01.png" alt="大馬IG紅人，推薦小物清單"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="有這些歐美系名模氣質get,ELEGANCE">
                    <img src="../images/events/20160728/images/pc_page_02.png" alt="有這些歐美系名模氣質get,ELEGANCE"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="有這些歐美系名模氣質get,ELEGANCE">
                    <img src="../images/events/20160728/images/pc_page_03.png" alt="有這些歐美系名模氣質get,ELEGANCE"></a>
                <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="全館3件免運">
                    <img src="../images/events/20160728/images/pc_page_04.png" alt="全館3件免運"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2321" target="_blank" title="BELLUCY 甜蜜愛戀造型束口水桶包">
                    <img src="../images/events/20160728/images/pc_page_05.png" alt="BELLUCY 甜蜜愛戀造型束口水桶包" style="width: 442px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1852" target="_blank" title="BHK's 奢光錠 穀胱甘太 (60顆瓶裝)">
                    <img src="../images/events/20160728/images/pc_page_06.png" alt="BHK's 奢光錠 穀胱甘太 (30顆鋁袋裝)" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=273" target="_blank" title="Miss Hana 三色立體唇膏">
                    <img src="../images/events/20160728/images/pc_page_07.png" alt="Miss Hana 三色立體唇膏" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1756" target="_blank" title="Miss Hana 輕透持妝蜜粉">
                    <img src="../images/events/20160728/images/pc_page_08.png" alt="Miss Hana 輕透持妝蜜粉" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="生活小清新,健康新時尚,ENERGETIC">
                    <img src="../images/events/20160728/images/pc_page_09.png" alt="生活小清新,健康新時尚,ENERGETIC"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="生活小清新,健康新時尚,ENERGETIC">
                    <img src="../images/events/20160728/images/pc_page_10.png" alt="生活小清新,健康新時尚,ENERGETIC"></a>
                <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="全館3件免運">
                    <img src="../images/events/20160728/images/pc_page_11.png" alt="全館3件免運"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2857" target="_blank" title="BELLUCY 斜背包 韓系夢幻十字鎖扣小方包">
                    <img src="../images/events/20160728/images/pc_page_12.png" alt="BELLUCY 斜背包 韓系夢幻十字鎖扣小方包" style="width: 442px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1849" target="_blank" title="BHK's 璨研維他命B群+鐵 (60顆/瓶)">
                    <img src="../images/events/20160728/images/pc_page_13.png" alt="BHK's 璨研維他命B群+鐵 (60顆/瓶)" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3481" target="_blank" title="Miss Hana 花娜小姐 持久超抗暈眼線液筆 0.6g 兩色可選">
                    <img src="../images/events/20160728/images/pc_page_14.png" alt="" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2915" target="_blank" title="韓國 innisfree 生機花妍唇膏 3.5g 鳳仙花/玫瑰花">
                    <img src="../images/events/20160728/images/pc_page_15.png" alt="" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="愛自己的女生最有魅力,CHARMING">
                    <img src="../images/events/20160728/images/pc_page_16.png" alt="愛自己的女生最有魅力,CHARMING"></a>
                <a href="http://www.hawooo.com/user/shop.aspx?eid=22" target="_blank" title="愛自己的女生最有魅力,CHARMING">
                    <img src="../images/events/20160728/images/pc_page_17.png" alt="愛自己的女生最有魅力,CHARMING"></a>
                <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="全館3件免運">
                    <img src="../images/events/20160728/images/pc_page_18.png" alt="全館3件免運"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=28" target="_blank" title="天藍小舖">
                    <img src="../images/events/20160728/images/pc_page_19.png" alt="天藍小舖 韓版skyblue原創設計三夾層質感斜背包" style="width: 442px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=638" target="_blank" title="BHK's 紅萃蔓越莓益生菌(60顆/瓶)">
                    <img src="../images/events/20160728/images/pc_page_20.png" alt="BHK's 紅萃蔓越莓益生菌瓶裝" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1224" target="_blank" title="台漢生技 - 台灣漢藥 纖活藤黃果飲">
                    <img src="../images/events/20160728/images/pc_page_21.png" alt="台漢生技 - 台灣漢藥 纖活藤黃果飲" style="width: 246px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3482" target="_blank" title="Miss Hana 花娜小姐 淨潤無瑕金屬粉餅15g">
                    <img src="../images/events/20160728/images/pc_page_22.png" alt="Miss Hana 花娜小姐 淨潤無瑕金屬粉餅15g" style="width: 246px;"></a>
                <img src="../images/events/20160728/images/pc_page_23.png" alt="聯絡HAWOOO" usemap="#Map">
                <map name="Map">
                    <area shape="rect" coords="957,31,1007,78" href="https://www.facebook.com/hawooohawooo" target="_blank" alt="Hawooo好物飛行 Facebook" style="outline: none;">
                    <area shape="rect" coords="1009,32,1059,80" href="http://myhawooo.blogspot.tw" target="_blank" alt="Hawooo好物飛行 Blogger" style="outline: none;">
                    <area shape="rect" coords="1062,32,1113,81" href="https://www.instagram.com/hawooostyle" target="_blank" alt="Hawooo好物飛行 Instagramns" style="outline: none;">
                    <area shape="rect" coords="152,77,399,100" href="mailto:service@hawooo.com" target="_blank" alt="mail給Hawooo">
                </map>
            </div>
        </div>
    </div>
</asp:Content>

