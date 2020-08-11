<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20161018.aspx.cs" Inherits="user_20161018" %>

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
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43" target="_blank" title="">
                    <img alt="Bonny&Read" src="../images/events/20161018/images/pc_page_01.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43" target="_blank" title="">
                    <img alt="Bonny&Read全系列" src="../images/events/20161018/images/pc_page_02.png" style="width: 444px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43&cid=364" target="_blank" title="耳環">
                    <img alt="耳環" src="../images/events/20161018/images/pc_page_03.png" style="width: 100px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43&cid=365" target="_blank" title="項鍊">
                    <img alt="項鍊" src="../images/events/20161018/images/pc_page_04.png" style="width: 114px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43&cid=366" target="_blank" title="手環">
                    <img alt="手環" src="../images/events/20161018/images/pc_page_05.png" style="width: 118px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43&cid=367" target="_blank" title="戒指">
                    <img alt="戒指" src="../images/events/20161018/images/pc_page_06.png" style="width: 119px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43" target="_blank" title="Sale優惠">
                    <img alt="Sale優惠" src="../images/events/20161018/images/pc_page_07.png" style="width: 285px;" /></a>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=43" target="_blank" title="Bonny&Read 等著你來挑屬於你的小飾品">
                    <img alt="Bonny&Read 等著你來挑屬於你的小飾品" src="../images/events/20161018/images/pc_page_08.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4513" target="_blank" title="買Bonny&Read 就送<銀飾>小鑽系列-小圓點耳環，活動期間：10/18-10/31，，限量30組">
                    <img alt="買Bonny&Read 就送<銀飾>小鑽系列-小圓點耳環，活動期間：10/18-10/31" src="../images/events/20161018/images/pc_page_09.png" style="width: 1180px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4474" target="_blank" title="Bonny&Read [正韓] 閃亮五芒星耳環 / 3色 / 單售 / Crystal Star Earring">
                    <img alt="Bonny&Read [正韓] 閃亮五芒星耳環 / 3色 / 單售 / Crystal Star Earring" src="../images/events/20161018/images/pc_page_10.png" style="width: 362px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5720" target="_blank" title="名媛下午茶流蘇戒指 ">
                    <img alt="名媛下午茶流蘇戒指 " src="../images/events/20161018/images/pc_page_11.png" style="width: 440px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4512" target="_blank" title="Bonny&Read 祈願之心手環 / 2色 / Pray for love Bangle">
                    <img alt="Bonny&Read 祈願之心手環 / 2色 / Pray for love Bangle" src="../images/events/20161018/images/pc_page_12.png" style="width: 378px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4472" target="_blank" title="Bonny&Read [正韓] 質感流線垂墜耳環 / 3色 / Dropping Line Earrings">
                    <img alt="Bonny&Read [正韓] 質感流線垂墜耳環 / 3色 / Dropping Line Earrings" src="../images/events/20161018/images/pc_page_13.png" style="width: 362px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=5720" target="_blank" title="名媛下午茶流蘇戒指 ">
                    <img alt="名媛下午茶流蘇戒指 " src="../images/events/20161018/images/pc_page_14.png" style="width: 440px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4468" target="_blank" title="Bonny&Read [正韓] 祭典女神華麗項鍊 / 3色 / Feather Tassel Necklace">
                    <img alt="Bonny&Read [正韓] 祭典女神華麗項鍊 / 3色 / Feather Tassel Necklace" src="../images/events/20161018/images/pc_page_15.png" style="width: 378px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4503" target="_blank" title="Bonny&Read [正韓] 與眾不同星光耳環 / 4色 / Different with Earrings">
                    <img alt="Bonny&Read [正韓] 與眾不同星光耳環 / 4色 / Different with Earrings" src="../images/events/20161018/images/pc_page_16.png" style="width: 362px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4507" target="_blank" title="Bonny&Read 玫瑰金雙圈戒指 / Stay with BR Ring">
                    <img alt="Bonny&Read 玫瑰金雙圈戒指 / Stay with BR Ring" src="../images/events/20161018/images/pc_page_17.png" style="width: 440px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4494" target="_blank" title="Bonny&Read [正韓] 巴黎河畔珍珠耳環 / 3色 / Delicate Pearl Dropping Earrings">
                    <img alt="Bonny&Read [正韓] 巴黎河畔珍珠耳環 / 3色 / Delicate Pearl Dropping Earrings" src="../images/events/20161018/images/pc_page_18.png" style="width: 378px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4517" target="_blank" title="Bonny&Read [正韓] 復古流蘇珍珠晚宴耳環 / 3色 / Tassel Pearl Earrings">
                    <img alt="Bonny&Read [正韓] 復古流蘇珍珠晚宴耳環 / 3色 / Tassel Pearl Earrings" src="../images/events/20161018/images/pc_page_19.png" style="width: 362px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4507" target="_blank" title="Bonny&Read 玫瑰金雙圈戒指 / Stay with BR Ring">
                    <img alt="Bonny&Read 玫瑰金雙圈戒指 / Stay with BR Ring" src="../images/events/20161018/images/pc_page_20.png" style="width: 440px;" /></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=4464" target="_blank" title="Bonny&Read [正韓] 細緻女孩流蘇手環 / 4色 / Live in memory Bangle">
                    <img alt="Bonny&Read [正韓] 細緻女孩流蘇手環 / 4色 / Live in memory Bangle" src="../images/events/20161018/images/pc_page_21.png" style="width: 378px;" /></a>
                <a href="mailto:service@hawooo.com" target="_blank">
                    <img alt="Hawooo聯絡信箱" src="../images/events/20161018/images/pc_page_22.png" style="width: 982px;" /></a>
                <a href="https://www.facebook.com/hawooohawooo" target="_blank">
                    <img alt="Hawooo好物飛行 Facebook" src="../images/events/20161018/images/pc_page_23.png" style="width: 66px;" /></a>
                <a href="http://myhawooo.blogspot.tw/" target="_blank">
                    <img alt="Hawooo Blogger" src="../images/events/20161018/images/pc_page_24.png" style="width: 66px;" /></a>
                <a href="https://www.instagram.com/hawooostyle/" target="_blank">
                    <img alt="HawoooStyle Instagram" src="../images/events/20161018/images/pc_page_25.png" style="width: 66px;"></a>
            </div>
        </div>
    </div>
</asp:Content>

