<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20161208.aspx.cs" Inherits="user_20161208" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
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
                <a href="http://www.hawooo.com" target="_blank" title="HAWOOO好物飛行">
                    <img alt="HAWOOO" src="../images/events/20161208/images/pc_page_01.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="謝謝聖誕，讓關心多一個藉口">
                    <img alt="謝謝聖誕，讓關心多一個藉口" src="../images/events/20161208/images/pc_page_02.png" style="width: 1180px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_03.png" style="width: 581px;" />
                <iframe width="337" height="192" src="https://www.youtube.com/embed/bNba5iZr-Yo" frameborder="0" allowfullscreen style="float: left;"></iframe>
                <img alt="" src="../images/events/20161208/images/pc_page_05.png" style="width: 262px;" />
                <a href="" target="_blank" title="限量秒殺組合,保證最低">
                    <img alt="限量秒殺組合,保證最低" src="../images/events/20161208/images/pc_page_06.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=758" target="_blank" title="減齡彈力美顏組 (奢光錠＋Q10＋膠原蛋白）">
                    <img alt="減齡彈力美顏組 (奢光錠＋Q10＋膠原蛋白）" src="../images/events/20161208/images/pc_page_07.png" style="width: 279px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6554" target="_blank" title="愛麗姿 Propolinse 蜂膠/櫻花/勁涼黑/潔白 漱口水 四瓶組">
                    <img alt="愛麗姿 Propolinse 蜂膠/櫻花/勁涼黑/潔白 漱口水 四瓶組" src="../images/events/20161208/images/pc_page_08.png" style="width: 280px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6471" target="_blank" title="Ts6 私密呵護全套組">
                    <img alt="Ts6 私密呵護全套組" src="../images/events/20161208/images/pc_page_09.png" style="width: 279px;" /></a>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ImageButton ID="img_event1" runat="server" ImageUrl="../images/events/20161208/images/pc_page_10.gif" Width="342px" OnClick="img_event1_Click" />

                        <asp:ImageButton ID="img_event2" runat="server" ImageUrl="../images/events/20161208/images/pc_page_11.gif" Width="342px" OnClick="img_event2_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>


                <img alt="好禮四重送" src="../images/events/20161208/images/pc_page_12.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_13.png" style="width: 304px;" />
                <a href="" target="_blank" title="領取聖誕禮金">
                    <img alt="領取聖誕禮金" src="../images/events/20161208/images/pc_page_14.png" style="width: 203px;" /></a>
                <img alt="免費獲得聖誕好禮" src="../images/events/20161208/images/pc_page_15.png" style="width: 203px;" />
                <img alt="抽聖誕願望獎" src="../images/events/20161208/images/pc_page_16.png" style="width: 203px;" />
                <img alt="熱銷商品,全面回饋價" src="../images/events/20161208/images/pc_page_17.png" style="width: 203px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_18.png" style="width: 64px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6139" target="_blank" title="KA'FEN 蝸牛極緻洗護優惠組">
                    <img alt="KA'FEN 蝸牛極緻洗護優惠組" src="../images/events/20161208/images/pc_page_19.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5414" target="_blank" title="Dr.Douxi 卵殼深層修護保養組">
                    <img alt="Dr.Douxi 卵殼深層修護保養組，台灣最紅蛋殼保養術，炎亞綸代言系列" src="../images/events/20161208/images/pc_page_20.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6473" target="_blank" title="LA BEAU 雙重緊緻美白組">
                    <img alt="LA BEAU 雙重緊緻美白組" src="../images/events/20161208/images/pc_page_21.png" style="width: 590px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6477" target="_blank" title="大姨媽28天生理期呵護組">
                    <img alt="大姨媽28天生理期呵護組" src="../images/events/20161208/images/pc_page_22.png" style="width: 590px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6056" target="_blank" title="金三角逆齡保養組 (胎盤膠囊＋膠原蛋白+ 逆痕錠)">
                    <img alt="金三角逆齡保養組 (胎盤膠囊＋膠原蛋白+ 逆痕錠)" src="../images/events/20161208/images/pc_page_23.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6055" target="_blank" title="KAFEN 我的專屬麥克風">
                    <img alt="KAFEN 我的專屬麥克風" src="../images/events/20161208/images/pc_page_24.png" style="width: 590px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6479" target="_blank" title="SHE、吳宗憲最愛拌麵，老媽拌麵聖誕組">
                    <img alt="SHE、吳宗憲最愛拌麵，老媽拌麵聖誕組" src="../images/events/20161208/images/pc_page_25.png" style="width: 590px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=3615" target="_blank" title="Anden Hud 低腰三角褲六入">
                    <img alt="Anden Hud 低腰三角褲六入" src="../images/events/20161208/images/pc_page_26.png" style="width: 1180px;" /></a>
                <img alt="聖誕就要那樣美" src="../images/events/20161208/images/pc_page_27.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_28.png" style="width: 80px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6480" target="_blank" title="Miss Hana花娜小姐 X CHOO CHOO CAT 經典眼膠筆">
                    <img alt="Miss Hana花娜小姐 X CHOO CHOO CAT 經典眼膠筆" src="../images/events/20161208/images/pc_page_29.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5901" target="_blank" title="MKUP 美咖 完美遮瑕控油氣墊粉餅">
                    <img alt="MKUP 美咖 完美遮瑕控油氣墊粉餅" src="../images/events/20161208/images/pc_page_30.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5634" target="_blank" title="MKUP 美咖 超抗暈2mm眉筆">
                    <img alt="MKUP 美咖 超抗暈2mm眉筆" src="../images/events/20161208/images/pc_page_31.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_32.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_33.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5412" target="_blank" title="Kaili Jumei 花瓣金箔果凍唇膏">
                    <img alt="Kaili Jumei 花瓣金箔果凍唇膏" src="../images/events/20161208/images/pc_page_34.png" style="width: 532px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5431" target="_blank" title="Realwoman 睫妮絲魔睫賦活精華睫毛滋養液">
                    <img alt="Realwoman 睫妮絲魔睫賦活精華睫毛滋養液" src="../images/events/20161208/images/pc_page_35.png" style="width: 504px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_36.png" style="width: 64px;" />
                <img alt="保養自己照顧他" src="../images/events/20161208/images/pc_page_37.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_38.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5810" target="_blank" title="LA BEAU 心機妹媚緊緻潤澤凝膠">
                    <img alt="LA BEAU 心機妹媚緊緻潤澤凝膠" src="../images/events/20161208/images/pc_page_39.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1812" target="_blank" title="Dr.Douxi DNA特潤亮眼修護素">
                    <img alt="Dr.Douxi DNA特潤亮眼修護素" src="../images/events/20161208/images/pc_page_40.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6003" target="_blank" title="【LI-ZEY萊思】光速白牙膏">
                    <img alt="【LI-ZEY萊思】光速白牙膏" src="../images/events/20161208/images/pc_page_41.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_42.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_43.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5830" target="_blank" title="BHK's GSH奢光淨白面膜">
                    <img alt="BHK's GSH奢光淨白面膜" src="../images/events/20161208/images/pc_page_44.png" style="width: 518px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1379" target="_blank" title="LA BEAU 美白精華">
                    <img alt="LA BEAU 美白精華" src="../images/events/20161208/images/pc_page_45.png" style="width: 518px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_46.png" style="width: 64px;" />
                <img alt="用吃的呵護" src="../images/events/20161208/images/pc_page_47.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_48.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5446" target="_blank" title="Realwoman 婦儷堂®Soler孅窈素膠囊">
                    <img alt="Realwoman 婦儷堂®Soler孅窈素膠囊" src="../images/events/20161208/images/pc_page_49.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2169" target="_blank" title="BHK's 光萃維他命C">
                    <img alt="BHK's 光萃維他命C" src="../images/events/20161208/images/pc_page_50.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4024" target="_blank" title="i-KiREi 彈力机密 蜜桃波波凍 ">
                    <img alt="i-KiREi 彈力机密 蜜桃波波凍 " src="../images/events/20161208/images/pc_page_51.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_52.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_53.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1754" target="_blank" title="BHK's 卡妮丁 L-肉鹼">
                    <img alt="BHK's 卡妮丁 L-肉鹼" src="../images/events/20161208/images/pc_page_54.png" style="width: 518px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2569" target="_blank" title="BHK's 白高顆 膠囊食品">
                    <img alt="BHK's 白高顆 膠囊食品" src="../images/events/20161208/images/pc_page_55.png" style="width: 518px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_56.png" style="width: 64px;" />
                <img alt="這件單品好適合你" src="../images/events/20161208/images/pc_page_57.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_58.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5801" target="_blank" title="FM shoes 細絨踝綁帶魚口高跟涼鞋">
                    <img alt="FM shoes 細絨踝綁帶魚口高跟涼鞋" src="../images/events/20161208/images/pc_page_59.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1768" target="_blank" title="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲">
                    <img alt="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲" src="../images/events/20161208/images/pc_page_60.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6481" target="_blank" title="天藍小舖 skyblue自訂優雅淑女側背包">
                    <img alt="天藍小舖 skyblue自訂優雅淑女側背包" src="../images/events/20161208/images/pc_page_61.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_62.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_63.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5726" target="_blank" title="Bonny&Read 花火的悄悄話耳環">
                    <img alt="Bonny&Read 花火的悄悄話耳環" src="../images/events/20161208/images/pc_page_64.png" style="width: 518px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5710" target="_blank" title="Bonny&Read 永恆玫瑰色雙圈項鍊">
                    <img alt="Bonny&Read 永恆玫瑰色雙圈項鍊" src="../images/events/20161208/images/pc_page_65.png" style="width: 518px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_66.png" style="width: 64px;" />
                <img alt="最私密的關心" src="../images/events/20161208/images/pc_page_67.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_68.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E7%8E%89%E5%A6%82%E9%98%BF%E5%A7%A8%20%E5%B0%8F%E5%B0%BB%E7%BE%8E%E8%87%80%E9%AA%A8%E7%9B%86%E5%B8%B6" target="_blank" title="玉如阿姨 小尻美臀骨盆帶">
                    <img alt="玉如阿姨 小尻美臀骨盆帶" src="../images/events/20161208/images/pc_page_69.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E5%A5%B3%E7%8E%8B%E9%A8%8E%E5%A3%AB%20%E7%84%A1%E7%97%95%E7%84%A1%E9%8B%BC%E5%9C%88%E5%AE%8C%E7%BE%8E%E9%A3%BD%E6%BB%BF%E5%85%A7%E8%A1%A3" target="_blank" title="My Bra anSubRosa 女王騎士 無痕無鋼圈完美飽滿內衣 寶石藍">
                    <img alt="My Bra anSubRosa 女王騎士 無痕無鋼圈完美飽滿內衣 寶石藍" src="../images/events/20161208/images/pc_page_70.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=A%20%E7%84%A1%E6%89%80%E4%B8%8D%E5%9C%A8%20%E7%84%A1%E9%8B%BC%E5%9C%88%E7%AB%B9%E7%82%AD" target="_blank" title="My Bra AINIA 無所不在 無鋼圈竹炭加厚集中內衣 ">
                    <img alt="My Bra AINIA 無可取代 無鋼圈超舒適包覆內衣褲組 " src="../images/events/20161208/images/pc_page_71.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_72.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_73.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/brands.aspx?bid=34&cid=325" target="_blank" title="Anden Hud 中腰三角褲">
                    <img alt="Anden Hud 搗蛋女孩，中腰三角褲" src="../images/events/20161208/images/pc_page_74.png" style="width: 518px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=34&cid=425" target="_blank" title="Anden Hud 中腰生理褲">
                    <img alt="Anden Hud 中腰生理褲" src="../images/events/20161208/images/pc_page_75.png" style="width: 518px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_76.png" style="width: 64px;" />
                <img alt="生活如果複雜，就讓我幫你變得簡單" src="../images/events/20161208/images/pc_page_77.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_78.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5451" target="_blank" title="Realwoman 黑魔法 黑白擦天然去污粉">
                    <img alt="Realwoman 黑魔法 黑白擦天然去污粉" src="../images/events/20161208/images/pc_page_79.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5695" target="_blank" title="inova eWater 我拭水">
                    <img alt="inova eWater 我拭水" src="../images/events/20161208/images/pc_page_80.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6326" target="_blank" title="Realwoman 黑魔法 第二代超黏力連黏樂除塵器（手持式）">
                    <img alt="Realwoman 黑魔法 第二代超黏力連黏樂除塵器（手持式）" src="../images/events/20161208/images/pc_page_81.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_82.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_83.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6036" target="_blank" title="KA'FEN 印象 保濕洗髮精">
                    <img alt="KA'FEN 印象 保濕洗髮精" src="../images/events/20161208/images/pc_page_84.png" style="width: 518px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=673" target="_blank" title="木酢達人 防蹣抗菌噴劑">
                    <img alt="木酢達人 防蹣抗菌噴劑" src="../images/events/20161208/images/pc_page_85.png" style="width: 518px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_86.png" style="width: 64px;" />
                <img alt="吃吃喝喝過聖誕" src="../images/events/20161208/images/pc_page_87.png" style="width: 1180px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_88.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=6102" target="_blank" title="">
                    <img alt="老媽拌麵 麻辣口味" src="../images/events/20161208/images/pc_page_89.png" style="width: 345px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4894" target="_blank" title="蘭山麵 五款口味">
                    <img alt="蘭山麵 五款口味" src="../images/events/20161208/images/pc_page_90.png" style="width: 346px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1969" target="_blank" title="歐可茶葉 英式真奶茶-經典款">
                    <img alt="歐可茶葉 英式真奶茶-經典款" src="../images/events/20161208/images/pc_page_91.png" style="width: 345px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_92.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_93.png" style="width: 80px;" />
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4940" target="_blank" title="滿鍋香 養生鍋底-香辣風味">
                    <img alt="滿鍋香 養生鍋底-香辣風味" src="../images/events/20161208/images/pc_page_94.png" style="width: 518px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2898" target="_blank" title="愛上新鮮 綜合水果脆片">
                    <img alt="愛上新鮮 綜合水果脆片" src="../images/events/20161208/images/pc_page_95.png" style="width: 518px;" /></a>
                <img alt="" src="../images/events/20161208/images/pc_page_96.png" style="width: 64px;" />
                <img alt="" src="../images/events/20161208/images/pc_page_97.png" style="width: 1180px;" />
            </div>
        </div>
    </div>
</asp:Content>

