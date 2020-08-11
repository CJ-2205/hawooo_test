<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160714.aspx.cs" Inherits="user_20160714" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
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
                <a href="http://www.hawooo.com/user/brands.aspx?bid=33" title="度假吧！穿上美美的my Bra泳衣" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_01.png" alt="度假吧！穿上美美的my Bra泳衣"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=33" title="買myBra結帳時輸入折扣券號現折RM20(低消RM100)" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_02.png" alt="買my Bra結帳時輸入折扣券號現折RM20(低消RM198)"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3183" title="Pulau Sipadan 跟你在海灘漫步,【連身美背】偷偷來一點性感,編織性感,舞孃綁帶式連身泳裝" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_03.png" alt="Pulau Sipadan 跟你在海灘漫步,【連身美背】偷偷來一點性感編織性感,舞孃綁帶式連身泳裝"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3180" title="My Bra AINIA 夏意盎然 呢喃花語小紗裙連身泳衣 嫵媚粉" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_04.png" alt="My Bra AINIA 夏意盎然 呢喃花語小紗裙連身泳衣 嫵媚粉"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3212" title="My Bra AINIA 熱帶水果連身圓裙鋼圈泳衣 白" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_05.png" alt="My Bra AINIA 熱帶水果連身圓裙鋼圈泳衣 白"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3186" title="My Bra AINIA 裙擺搖搖 簍空美背纖腰連身兩件式鋼圈泳衣 黑" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_06.png" alt="My Bra AINIA 裙擺搖搖 簍空美背纖腰連身兩件式鋼圈泳衣 黑"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2945" title="My Bra AINIA 性感維多 顯瘦連身鋼圈比基尼 白" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_07.png" alt="My Bra AINIA 性感維多 顯瘦連身鋼圈比基尼 白"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3076" title="Pulau Tioman 潛水天堂【Bikini】跟魚兒們一起游泳" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_08.png" alt="Pulau Tioman 潛水天堂【Bikini】跟魚兒們一起游泳,My Bra AINIA 流蘇不羈 個性時尚設計兩件式泳衣 迷幻藍"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3091" title="My Bra AINIA 甜美荷葉鋼圈兩件式比基尼泳衣 橘" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_09.png" alt="My Bra AINIA 甜美荷葉鋼圈兩件式比基尼泳衣 橘"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3088" title="My Bra AINIA 優美貝殼 半罩爆乳性感鋼圈比基尼 紅" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_10.png" alt="My Bra AINIA 優美貝殼 半罩爆乳性感鋼圈比基尼 紅"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3072" title="My Bra AINIA 波光粼粼瑰麗勾環綁帶兩件式比基尼 誘惑黑" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_11.png" alt="My Bra AINIA 波光粼粼瑰麗勾環綁帶兩件式比基尼 誘惑黑"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3084" title="My Bra AINIA 椰林風情 針織流蘇無鋼圈比基尼 白" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_12.png" alt="My Bra AINIA 椰林風情 針織流蘇無鋼圈比基尼 白"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2965" title="Pulau Redang 夏日的麼麼茶,【兩件/三件式】來場浪漫的海島戀愛" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_13.png" alt="Pulau Redang 夏日的麼麼茶,【兩件/三件式】來場浪漫的海島戀愛,My Bra AINIA 強勢回歸 鋼圈UPUP比基尼三件式 華麗藍"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3029" title="My Bra AINIA 搶眼花漾 亮眼美胸鋼圈四件式泳衣 橘" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_14.png" alt="My Bra AINIA 搶眼花漾 亮眼美胸鋼圈四件式泳衣 橘"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3081" title="My Bra AINIA 徜徉清新 淺藏鋼圈小心機二件式泳衣 南島紅" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_15.png" alt="My Bra AINIA 徜徉清新 淺藏鋼圈小心機二件式泳衣 南島紅"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3028" title="My Bra AINIA 搶眼花漾 亮眼美胸鋼圈四件式泳衣 黃" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_16.png" alt="My Bra AINIA 搶眼花漾 亮眼美胸鋼圈四件式泳衣 黃"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2969" title="My Bra AINIA 閃耀巨星 深V爆美綁帶三件式泳衣 絕色黑" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_17.png" alt="My Bra AINIA 閃耀巨星 深V爆美綁帶三件式泳衣 絕色黑"></a>
                <a href="http://www.hawooo.com/user/market.aspx" title="全館3件免運" target="_blank">
                    <img src="../images/events/20160714/images/pc_page_18.png" alt="全館3件免運"></a>
            </div>
        </div>
    </div>
</asp:Content>

