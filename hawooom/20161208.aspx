<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20161208.aspx.cs" Inherits="mobile_20161208" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin: 0 auto; padding: 120px 0px 0px 0px; width: 100%; max-width: 650px">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a href="http://www.hawooo.com" target="_blank">
                <img alt="HAWOOO好物飛行" src="http://edm.hawooo.com/20161209/edm_img_01.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/shop.aspx" target="_blank">
                <img alt="謝謝聖誕，讓關心多一個藉口" src="http://edm.hawooo.com/20161209/edm_img_02.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="http://edm.hawooo.com/20161209/edm_img_03.png" Style="float: left; display: block; width: 40%;" OnClick="ImageButton1_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>

            </li>
            <li style="margin: 0;">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="http://edm.hawooo.com/20161209/edm_img_04.png" Style="float: left; display: block; width: 30%;" OnClick="ImageButton2_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161209/edm_img_05.png" style="float: left; display: block; width: 30%;" /></li>
            <li style="margin: 0;">
                <img alt="限量秒殺組合,保證最低" src="http://edm.hawooo.com/20161209/edm_img_06.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=2162" target="_blank">
                <img alt="減齡彈力美顏組 (奢光錠＋Q10＋膠原蛋白）" src="http://edm.hawooo.com/20161209/edm_img_07.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="" target="_blank">
                <img alt="Ts6 私密呵護全套組" src="http://edm.hawooo.com/20161209/edm_img_08.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5371" target="_blank">
                <img alt="愛麗姿 Propolinse 蜂膠/櫻花/勁涼黑/潔白 漱口水 四瓶組" src="http://edm.hawooo.com/20161209/edm_img_09.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="好禮四重送" src="http://edm.hawooo.com/20161209/edm_img_10.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="" target="_blank">
                <img alt="領取聖誕禮金" src="http://edm.hawooo.com/20161209/edm_img_11.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="免費獲得聖誕好禮" src="http://edm.hawooo.com/20161209/edm_img_12.png" style="float: left; display: block; width: 50%;" /><</li>
            <li style="margin: 0;">
                <img alt="抽聖誕願望獎" src="http://edm.hawooo.com/20161209/edm_img_13.png" style="float: left; display: block; width: 50%;" /></li>
            <li style="margin: 0;">
                <img alt="熱銷商品,全面回饋價" src="http://edm.hawooo.com/20161209/edm_img_14.png" style="float: left; display: block; width: 50%;" /></li>
            <li style="margin: 0;">
                <img alt="聖誕精選組合" src="http://edm.hawooo.com/20161209/edm_img_15.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6139" target="_blank">
                <img alt="KA'FEN 蝸牛極緻洗護優惠組" src="http://edm.hawooo.com/20161209/edm_img_16.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5414" target="_blank">
                <img alt="Dr.Douxi 卵殼深層修護保養組，台灣最紅蛋殼保養術，炎亞綸代言系列" src="http://edm.hawooo.com/20161209/edm_img_17.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6473" target="_blank">
                <img alt="皺紋黑斑的橡皮擦，LA BEAU 雙重緊緻美白組" src="http://edm.hawooo.com/20161209/edm_img_18.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6477" target="_blank">
                <img alt="大姨媽28天生理期呵護組" src="http://edm.hawooo.com/20161209/edm_img_19.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6056" target="_blank">
                <img alt="時間無法倒退，但肌齡可以，BHK'S金三角逆齡保養組 (胎盤膠囊＋膠原蛋白+ 逆痕錠)" src="http://edm.hawooo.com/20161209/edm_img_20.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6055" target="_blank">
                <img alt="KAFEN 我的專屬麥克風" src="http://edm.hawooo.com/20161209/edm_img_21.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6479" target="_blank">
                <img alt="SHE、吳宗憲最愛拌麵，老媽拌麵聖誕組" src="http://edm.hawooo.com/20161209/edm_img_22.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=3615" target="_blank">
                <img alt="5秒賣一件，台灣內褲銷售傳奇，Anden Hud 低腰三角褲六入" src="http://edm.hawooo.com/20161209/edm_img_23.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=3615" target="_blank">
                <img alt="5秒賣一件，台灣內褲銷售傳奇，Anden Hud 低腰三角褲六入" src="http://edm.hawooo.com/20161209/edm_img_24.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161209/edm_img_25.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;">
                <img alt="聖誕就是那樣美" src="http://edm.hawooo.com/20161209/edm_img_26.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6480" target="_blank">
                <img alt="Miss Hana花娜小姐 X CHOO CHOO CAT 經典眼膠筆" src="http://edm.hawooo.com/20161209/edm_img_27.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5901" target="_blank">
                <img alt="MKUP 美咖 完美遮瑕控油氣墊粉餅" src="http://edm.hawooo.com/20161209/edm_img_28.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="保護自己，照顧他" src="http://edm.hawooo.com/20161209/edm_img_29.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5830" target="_blank">
                <img alt="BHK's GSH奢光淨白面膜" src="http://edm.hawooo.com/20161209/edm_img_30.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6003" target="_blank">
                <img alt="【LI-ZEY萊思】光速白牙膏" src="http://edm.hawooo.com/20161209/edm_img_31.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="用吃的呵護" src="http://edm.hawooo.com/20161209/edm_img_32.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=2169" target="_blank">
                <img alt="BHK's 光萃維他命C" src="http://edm.hawooo.com/20161209/edm_img_33.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=2569" target="_blank">
                <img alt="BHK's 白高顆 膠囊食品" src="http://edm.hawooo.com/20161209/edm_img_34.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="這件單品，好適合你" src="http://edm.hawooo.com/20161209/edm_img_35.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5801" target="_blank">
                <img alt="FM shoes 細絨踝綁帶魚口高跟涼鞋" src="http://edm.hawooo.com/20161209/edm_img_36.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=1768" target="_blank">
                <img alt="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲" src="http://edm.hawooo.com/20161209/edm_img_37.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="最私密的關心" src="http://edm.hawooo.com/20161209/edm_img_38.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brands.aspx?bid=34&cid=325" target="_blank">
                <img alt="Anden Hud 搗蛋女孩，中腰三角褲" src="http://edm.hawooo.com/20161209/edm_img_39.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E7%84%A1%E6%89%80%E4%B8%8D%E5%9C%A8%20%E7%84%A1%E9%8B%BC%E5%9C%88%E7%AB%B9%E7%82%AD" target="_blank">
                <img alt="My Bra AINIA 無所不在 無鋼圈竹炭加厚集中內衣 " src="http://edm.hawooo.com/20161209/edm_img_40.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="生活如果複雜，就讓我幫你變得簡單" src="http://edm.hawooo.com/20161209/edm_img_41.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5451" target="_blank">
                <img alt="Realwoman 黑魔法 黑白擦天然去污粉" src="http://edm.hawooo.com/20161209/edm_img_42.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6326" target="_blank">
                <img alt="Realwoman 黑魔法 第二代超黏力連黏樂除塵器（手持式）" src="http://edm.hawooo.com/20161209/edm_img_43.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="吃吃喝喝過聖誕" src="http://edm.hawooo.com/20161209/edm_img_44.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6102" target="_blank">
                <img alt="媽拌麵 麻辣口味" src="http://edm.hawooo.com/20161209/edm_img_45.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=4940" target="_blank">
                <img alt="滿鍋香 養生鍋底-香辣風味" src="http://edm.hawooo.com/20161209/edm_img_46.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161209/edm_img_47.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>
</asp:Content>

