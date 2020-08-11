<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20161219.aspx.cs" Inherits="mobile_20161219" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin: 0 auto; padding: 120px 0px 0px 0px; width: 100%; max-width: 650px">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <li style="margin: 0;"><a href="http://www.hawooo.com" target="_blank">
                <img alt="HAWOOO好物飛行" src="http://edm.hawooo.com/20161219/mobile-01.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/shop.aspx" target="_blank">
                <img alt="HAWOOO" src="http://edm.hawooo.com/20161219/mobile-02.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;">
                <img alt="HAWOOO" src="http://edm.hawooo.com/20161219/mobile-02_1.png" style="float: left; display: block; width: 20%;" /></li>
            <li style="margin: 0;"><a href="#" target="_blank">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="http://edm.hawooo.com/20161219/mobile-02_2.png" Style="float: left; display: block; width: 20%;" OnClick="ImageButton1_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel></li>
            <li style="margin: 0;"><a href="#" target="_blank">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="http://edm.hawooo.com/20161219/mobile-02_3.png" Style="float: left; display: block; width: 30%;" OnClick="ImageButton2_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel></li>
            <li style="margin: 0;">
                <img alt="HAWOOO" src="http://edm.hawooo.com/20161219/mobile-02_4.png" style="float: left; display: block; width: 30%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6615" target="_blank">
                <img alt="BHK'S超級美白組（奢光錠 一瓶 + 奢光面膜 5片）" src="http://edm.hawooo.com/20161219/mobile-03.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6617" target="_blank">
                <img alt="紅石榴青春加強組 (紅石榴青春女人霜 x1＋紅石榴濃縮錠 (30錠/盒) )" src="http://edm.hawooo.com/20161219/mobile-04.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6620">
                <img alt="Dr.Douxi 全蛋深層洗顏皂聖誕限定組 (蛋黃皂x1 (這個還沒上架) +卵殼皂x1)" src="http://edm.hawooo.com/20161219/mobile-05.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5445">
                <img alt="台灣 TS6 護一生 私密粉嫩淡色呵護組" src="http://edm.hawooo.com/20161219/mobile-06.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=1667" target="_blank">
                <img alt="LSY林三益 X 柳燕 淨顏刷&粉刺刷組" src="http://edm.hawooo.com/20161219/mobile-07.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5255" target="_blank">
                <img alt="【Beauty小舖】SPORT動動膠囊" src="http://edm.hawooo.com/20161219/mobile-08.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6619" target="_blank">
                <img alt="BHK's 維他命 B+C 組 (維他命C 二瓶 + 璀璨B群 二瓶)" src="http://edm.hawooo.com/20161219/mobile-09.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6621">
                <img alt="滿鍋香聖誕聚餐組 (香辣x1+濃香x1+孜然x1) " src="http://edm.hawooo.com/20161219/mobile-10.png" style="float: left; display: block; width: 100%;" /></a></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-11.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-12.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5900">
                <img alt="MKUP 美咖 完美三色精華遮瑕膏" src="http://edm.hawooo.com/20161219/mobile-13.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=6345">
                <img alt="花娜小姐 X CHOO CHOO CAT 滾珠香水筆10ml 花漾甜蜜/清新小蒼蘭" src="http://edm.hawooo.com/20161219/mobile-14.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=4579">
                <img alt="MICCOSMO 胎盤素白肌瞬效面膜" src="http://edm.hawooo.com/20161219/mobile-15.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=4297" target="_blank">
                <img alt="Dr.Douxi 朵璽 賦活緊緻卵殼眼部精華" src="http://edm.hawooo.com/20161219/mobile-16.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-17.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-18.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5692" target="_blank">
                <img alt="BHK's 極致美白凍齡組（奢光＋逆痕）" src="http://edm.hawooo.com/20161219/mobile-19.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=1839" target="_blank">
                <img alt="BHK's 葉黃素(3袋、6袋入) " src="http://edm.hawooo.com/20161219/mobile-20.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=1849" target="_blank">
                <img alt="BHK's B群+鐵" src="http://edm.hawooo.com/20161219/mobile-21.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5356" target="_blank">
                <img alt="BHK's 胎盤膠囊" src="http://edm.hawooo.com/20161219/mobile-22.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-23.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-24.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E5%85%A8%E7%9C%9F%E7%9A%AE%E5%A5%A2%E8%8F%AF%E9%96%83%E9%91%BD%E9%80%8F%E8%86%9A%E7%B6%B2%E7%B4%97%E5%8E%9A%E5%BA%95%E4%BC%91%E9%96%92%E9%9E%8B">
                <img alt="全真皮奢華閃鑽透膚網紗厚底休閒鞋" src="http://edm.hawooo.com/20161219/mobile-25.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=3615">
                <img alt="Anden Hud 低腰三角褲六入 (隨機出貨) " src="http://edm.hawooo.com/20161219/mobile-26.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/product.aspx?id=5266" target="_blank">
                <img alt="天藍小舖-雙面撞色流蘇束口包-共2色" src="http://edm.hawooo.com/20161219/mobile-27.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E5%81%B4%E6%8E%A8%E9%9B%86%E4%B8%AD%20%E5%A4%9A%E7%A9%BF%E6%B3%95%E5%81%B4%E6%89%A3%E5%85%A7%E8%A1%A3%E8%A4%B2%E7%B5%84" target="_blank">
                <img alt="AINIA 側推集中 多穿法側扣內衣褲組" src="http://edm.hawooo.com/20161219/mobile-28.png" style="float: left; display: block; width: 50%;" /></a></li>
            <li style="margin: 0;">
                <img alt="#" src="http://edm.hawooo.com/20161219/mobile-29.png" style="float: left; display: block; width: 100%;" /></li>
            <li style="margin: 0;">
                <img alt="" src="http://edm.hawooo.com/20161219/mobile-30.png" style="float: left; display: block; width: 100%;" /></li>
        </ul>
    </div>
</asp:Content>

