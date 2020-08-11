<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20161219.aspx.cs" Inherits="user_20161219" %>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="minbox">
                <div class="content-full">
                    <div class="listbox-full">
                        <a href="http://www.hawooo.com" target="_blank" title="HAWOOO好物飛行">
                            <img alt="HAWOOO" src="../images/events/20161219/images/pc_page_01.png" style="width: 1180px;" /></a>
                        <a href="http://www.hawooo.com/user/shop.aspx" target="_blank" title="謝謝聖誕讓關心多一個藉口">
                            <img alt="HAWOOO" src="../images/events/20161219/images/pc_page_02.png" style="width: 1180px;" /></a>
                        <img alt="HAWOOO" src="../images/events/20161219/images/pc_page_02-1.png" style="width: 398px;" />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/events/20161219/images/pc_page_02-2.gif" Style="width: 192px; float: left;" OnClick="ImageButton1_Click" />
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/events/20161219/images/pc_page_02-3.gif" Style="width: 180px; float: left;" OnClick="ImageButton2_Click" />
                        <img alt="" src="../images/events/20161219/images/pc_page_02-4.png" style="width: 410px;" />
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=6615" target="_blank" title="BHK'S超級美白組（奢光錠 一瓶 + 奢光面膜 5片）">
                            <img alt="BHK'S超級美白組（奢光錠 一瓶 + 奢光面膜 5片）" src="../images/events/20161219/images/pc_page_03.png" style="width: 590px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=6617" target="_blank" title="紅石榴青春加強組 (紅石榴青春女人霜 x1＋紅石榴濃縮錠 (30錠/盒) )">
                            <img alt="紅石榴青春加強組 (紅石榴青春女人霜 x1＋紅石榴濃縮錠 (30錠/盒) )" src="../images/events/20161219/images/pc_page_04.png" style="width: 590px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=6620" target="_blank" title="Dr.Douxi 全蛋深層洗顏皂聖誕限定組 (蛋黃皂x1 (這個還沒上架) +卵殼皂x1)">
                            <img alt="Dr.Douxi 全蛋深層洗顏皂聖誕限定組 (蛋黃皂x1 (這個還沒上架) +卵殼皂x1)" src="../images/events/20161219/images/pc_page_05.png" style="width: 870px;" /></a>
                        <img alt="" src="../images/events/20161219/images/pc_page_06.png" style="width: 310px;" />
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=6619" target="_blank" title="BHK's 維他命 B+C 組 (維他命C 二瓶 + 璀璨B群 二瓶)">
                            <img alt="BHK's 維他命 B+C 組 (維他命C 二瓶 + 璀璨B群 二瓶)" src="../images/events/20161219/images/pc_page_07.png" style="width: 694px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=5445" target="_blank" title="台灣 TS6 護一生 私密粉嫩淡色呵護組">
                            <img alt="台灣 TS6 護一生 私密粉嫩淡色呵護組" src="../images/events/20161219/images/pc_page_08.png" style="width: 486px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=6621" target="_blank" title="滿鍋香聖誕聚餐組 (香辣x1+濃香x1+孜然x1)">
                            <img alt="滿鍋香聖誕聚餐組 (香辣x1+濃香x1+孜然x1) " src="../images/events/20161219/images/pc_page_09.png" style="width: 1180px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=1667" target="_blank" title="LSY林三益 X 柳燕 淨顏刷&粉刺刷組">
                            <img alt="LSY林三益 X 柳燕 淨顏刷&粉刺刷組" src="../images/events/20161219/images/pc_page_10.png" style="width: 590px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=5255" target="_blank" title="【Beauty小舖】SPORT動動膠囊">
                            <img alt="【Beauty小舖】SPORT動動膠囊" src="../images/events/20161219/images/pc_page_11.png" style="width: 590px;" /></a>
                        <img alt="" src="../images/events/20161219/images/pc_page_12.png" style="width: 1180px;" />
                        <img alt="不只聖誕，每天都要美美der" src="../images/events/20161219/images/pc_page_13.png" style="width: 1180px;" />
                        <img alt="" src="../images/events/20161219/images/pc_page_14.png" style="width: 50px;" />
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=5900" target="_blank" title="MKUP 美咖 完美三色精華遮瑕膏">
                            <img alt="MKUP 美咖 完美三色精華遮瑕膏" src="../images/events/20161219/images/pc_page_15.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=6345" target="_blank" title="花娜小姐 X CHOO CHOO CAT 滾珠香水筆10ml 花漾甜蜜/清新小蒼蘭">
                            <img alt="花娜小姐 X CHOO CHOO CAT 滾珠香水筆10ml 花漾甜蜜/清新小蒼蘭" src="../images/events/20161219/images/pc_page_16.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=4579" target="_blank" title="MICCOSMO 胎盤素白肌瞬效面膜">
                            <img alt="MICCOSMO 胎盤素白肌瞬效面膜" src="../images/events/20161219/images/pc_page_17.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=4297" target="_blank" title="Dr.Douxi 朵璽 賦活緊緻卵殼眼部精華">
                            <img alt="Dr.Douxi 朵璽 賦活緊緻卵殼眼部精華" src="../images/events/20161219/images/pc_page_18.png" style="width: 272px;" /></a>
                        <img alt="" src="../images/events/20161219/images/pc_page_19.png" style="width: 42px;" />
                        <img alt="好啦，你們都愛BHK's，那聖誕節就來「限時降價」吧！" src="../images/events/20161219/images/pc_page_20.png" style="width: 1180px;" />
                        <img alt="" src="../images/events/20161219/images/pc_page_21.png" style="width: 50px;" />
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=5692" target="_blank" title="BHK's 極致美白凍齡組（奢光＋逆痕）">
                            <img alt="BHK's 極致美白凍齡組（奢光＋逆痕）" src="../images/events/20161219/images/pc_page_22.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=1839" target="_blank" title="BHK's 葉黃素(3袋、6袋入)">
                            <img alt="BHK's 葉黃素(3袋、6袋入) " src="../images/events/20161219/images/pc_page_23.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=1849" target="_blank" title="BHK's B群+鐵">
                            <img alt="BHK's B群+鐵" src="../images/events/20161219/images/pc_page_24.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=5356" target="_blank" title="BHK's 胎盤膠囊">
                            <img alt="BHK's 胎盤膠囊" src="../images/events/20161219/images/pc_page_25.png" style="width: 272px;" /></a>
                        <img alt="" src="../images/events/20161219/images/pc_page_26.png" style="width: 42px;" />
                        <img alt="台灣藝人也瘋狂的單品，快趁聖誕帶回家吧！" src="../images/events/20161219/images/pc_page_27.png" style="width: 1180px;" />
                        <img alt="" src="../images/events/20161219/images/pc_page_28.png" style="width: 50px;" />
                        <a href="http://www.hawooo.com/user/search.aspx?stxt=%E5%85%A8%E7%9C%9F%E7%9A%AE%E5%A5%A2%E8%8F%AF%E9%96%83%E9%91%BD%E9%80%8F%E8%86%9A%E7%B6%B2%E7%B4%97%E5%8E%9A%E5%BA%95%E4%BC%91%E9%96%92%E9%9E%8B" target="_blank" title="全真皮奢華閃鑽透膚網紗厚底休閒鞋">
                            <img alt="全真皮奢華閃鑽透膚網紗厚底休閒鞋" src="../images/events/20161219/images/pc_page_29.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=3615" target="_blank" title="Anden Hud 低腰三角褲六入 (隨機出貨)">
                            <img alt="Anden Hud 低腰三角褲六入 (隨機出貨) " src="../images/events/20161219/images/pc_page_30.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/productdetail.aspx?id=5266" target="_blank" title="天藍小舖-雙面撞色流蘇束口包-共2色">
                            <img alt="天藍小舖-雙面撞色流蘇束口包-共2色" src="../images/events/20161219/images/pc_page_31.png" style="width: 272px;" /></a>
                        <a href="http://www.hawooo.com/user/search.aspx?stxt=%E5%81%B4%E6%8E%A8%E9%9B%86%E4%B8%AD%20%E5%A4%9A%E7%A9%BF%E6%B3%95%E5%81%B4%E6%89%A3%E5%85%A7%E8%A1%A3%E8%A4%B2%E7%B5%84" target="_blank" title="AINIA 側推集中 多穿法側扣內衣褲組">
                            <img alt="AINIA 側推集中 多穿法側扣內衣褲組" src="../images/events/20161219/images/pc_page_32.png" style="width: 272px;" /></a>
                        <img alt="" src="../images/events/20161219/images/pc_page_33.png" style="width: 42px;" />
                        <img alt="" src="../images/events/20161219/images/pc_page_34.png" style="width: 1180px;" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

