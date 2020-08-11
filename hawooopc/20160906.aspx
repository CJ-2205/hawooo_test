<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160906.aspx.cs" Inherits="user_20160906" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">
                <a href="http://www.hawooo.com/user/shop.aspx?type=new" target="_blank" title="從裡到外都要你美美的，全館3件免運"><img src="../images/events/20160907/images/pc_page_01.png" alt="從裡到外都要你美美的，全館3件免運" style="width:1180px;"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=8" target="_blank" title="FM SHOES女鞋新品"><img src="../images/events/20160907/images/pc_page_02.png" alt="FM SHOES女鞋新品" style="width:295px"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=31" target="_blank" title="Bonbons女鞋新品"><img src="../images/events/20160907/images/pc_page_03.png" alt="Bonbons女鞋新品" style="width:295px"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=33" target="_blank" title="MyBRA內衣新品"><img src="../images/events/20160907/images/pc_page_04.png" alt="MyBRA內衣新品" style="width:295px"></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=34" target="_blank" title="AndenHud內褲新品"><img src="../images/events/20160907/images/pc_page_05.png" alt="AndenHud內褲新品" style="width:295px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4991" target="_blank" title="英倫雅痞皮革繫帶低跟牛津鞋"><img src="../images/events/20160907/images/pc_page_06.png" alt="英倫雅痞皮革繫帶低跟牛津鞋" style="width:1180px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5022" target="_blank" title="訂製款-柔美粉嫩輕巧可彎折豆豆鞋-"><img src="../images/events/20160907/images/pc_page_07.png" alt="訂製款-柔美粉嫩輕巧可彎折豆豆鞋" style="width:590p"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4990" target="_blank" title="正韓-心機時尚超輕魔鬼氈楔型休閒涼鞋 白"><img src="../images/events/20160907/images/pc_page_08.png" alt="正韓-心機時尚超輕魔鬼氈楔型休閒涼鞋 白" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E8%B6%85%E8%88%92%E9%81%A9%E8%B1%86%E8%B1%86%E5%BF%83%E6%A9%9F%E6%AC%BE%E5%8B%95%E7%89%A9%E7%B4%8B%E7%9C%9F%E9%A6%AC%E6%AF%9B%E5%85%A7%E5%A2%9E%E9%AB%98%E9%9E%8B" target="_blank" title="【Bonbons】超舒適豆豆心機款動物紋真馬毛內增高鞋"><img src="../images/events/20160907/images/pc_page_09.png" alt="【Bonbons】超舒適豆豆心機款動物紋真馬毛內增高鞋" style="width:1180px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4905" target="_blank" title="【Bonbons】全真皮性感女伶十字高跟鞋 (甜美粉)"><img src="../images/events/20160907/images/pc_page_10.png" alt="【Bonbons】全真皮性感女伶十字高跟鞋 (甜美粉)" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E8%B6%85%E8%88%92%E9%81%A9%E8%B1%86%E8%B1%86%E5%BF%83%E6%A9%9F%E6%AC%BE%E5%90%8D%E5%AA%9B%E5%B0%8F%E9%A6%99%E9%A2%A8%E5%85%A7%E5%A2%9E%E9%AB%98%E9%9E%8B" target="_blank" title="【Bonbons】超舒適豆豆心機款名媛小香風內增高鞋"><img src="../images/events/20160907/images/pc_page_11.png" alt="【Bonbons】超舒適豆豆心機款名媛小香風內增高鞋" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4924" target="_blank" title="Anden Hud 醬果冰茶/ Pet School 低腰三角褲 2入"><img src="../images/events/20160907/images/pc_page_12.png" alt="Anden Hud 醬果冰茶/ Pet School 低腰三角褲 2入" style="width:1180px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4934" target="_blank" title="Anden Hud 彩虹夏日．中腰三角褲 2入"><img src="../images/events/20160907/images/pc_page_13.png" alt="Anden Hud 彩虹夏日．中腰三角褲 2入" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4938" target="_blank" title="Anden Hud 印花基因/ 波爾多點點 低腰三角褲 2入"><img src="../images/events/20160907/images/pc_page_14.gif" alt="Anden Hud 印花基因/ 波爾多點點 低腰三角褲 2入" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4931" target="_blank" title="Anden Hud 邂逅心跳/彩色幻覺 腰帶交叉低腰三角褲"><img src="../images/events/20160907/images/pc_page_15.gif" alt="Anden Hud 邂逅心跳/彩色幻覺 腰帶交叉低腰三角褲" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4929" target="_blank" title="Anden Hud 印花基因．腰帶交叉低腰三角褲"><img src="../images/events/20160907/images/pc_page_16.png" alt="Anden Hud 印花基因．腰帶交叉低腰三角褲" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5089" target="_blank" title="My Bra AINIA 甜蜜夢境 J型集中成套內衣褲組"><img src="../images/events/20160907/images/pc_page_17.png" alt="My Bra AINIA 甜蜜夢境 J型集中成套內衣褲組" style="width:1180px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E5%8F%8A%E8%97%A4%E8%94%93%20%E5%81%B4%E9%82%8A%E6%94%B6%E8%A6%86%E6%A9%9F%E8%83%BD%E5%85%A7%E8%A1%A3" target="_blank" title="My Bra anSubRosa 埃及藤蔓 側邊收覆機能內衣"><img src="../images/events/20160907/images/pc_page_18.png" alt="My Bra anSubRosa 埃及藤蔓 側邊收覆機能內衣" style="width:590px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E4%BF%8F%E9%BA%97%E7%94%9C%E5%BF%83%20%E5%B9%B3%E5%8F%A3%E8%95%BE%E7%B5%B2%E6%8A%B9%E8%83%B8%E6%88%90%E5%A5%97%E5%85%A7%E8%A1%A3%E8%A4%B2" target="_blank" title="My Bra AINIA 俏麗甜心 平口蕾絲抹胸成套內衣褲組"><img src="../images/events/20160907/images/pc_page_19.png" alt="My Bra AINIA 俏麗甜心 平口蕾絲抹胸成套內衣褲組" style="width:590px"></a>
                <a href="mailto:service@hawooo.com" target="_blank" title="Hawooo聯絡資料"><img src="../images/events/20160907/images/pc_page_20.png" alt="" style="width:944px;"></a>
                <a href="https://www.facebook.com/hawooohawooo" target="_blank" title="Hawooo好物飛行 FACEBOOk"><img src="../images/events/20160907/images/pc_page_21.png" alt="Hawooo好物飛行 FACEBOOk" style="width:79px;"></a>
                <a href="http://myhawooo.blogspot.tw/" target="_blank" title="Hawooo好物飛行 Blogger"><img src="../images/events/20160907/images/pc_page_22.png" alt="awooo好物飛行 Blogger" style="width:78px;"></a>
                <a href="https://www.instagram.com/hawooostyle/" target="_blank" title="HawoooStyle Instagram"><img src="../images/events/20160907/images/pc_page_23.png" alt="HawoooStyle Instagram" style="width:79px;"></a>
            </div>
        </div>
    </div>
</asp:Content>

