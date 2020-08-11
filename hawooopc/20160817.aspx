<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160817.aspx.cs" Inherits="user_20160817" %>

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
            <div id="edm" class="listbox-full">
              <%--  <a href="http://www.hawooo.com/user/brands.aspx?bid=33" target="_blank" title="美胸祕訣大公開，妳想成為男友心中的女神嗎？">
                    <img id="t1" src="../images/events/20160817/images/pc_page_01_1.png" alt="美胸祕訣大公開，妳想成為男友心中的女神嗎？" style="width: 1160px; float: right; display: none;"></a>--%>
                <a href="http://www.hawooo.com/user/brands.aspx?bid=33" target="_blank" title="美胸祕訣大公開，妳想成為男友心中的女神嗎？">
                    <img id="t2" src="../images/events/20160817/images/pc_page_01_2.png" alt="美胸祕訣大公開，妳想成為男友心中的女神嗎？" style="width: 1160px; float: right;"></a>
            </div>
            <div class="listbox-full">
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E7%8E%89%E5%A6%82%E9%98%BF%E5%A7%A8%20%E7%94%9C%E6%BC%BE%E7%8E%AB%E7%91%B0%E5%85%A7%E8%A1%A3" target="_blank" title="玉如阿姨 甜漾玫瑰內衣">
                    <img src="../images/events/20160817/images/pc_page_02.png" alt="玉如阿姨 甜漾玫瑰內衣" style="width: 1180px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E7%8E%89%E5%A6%82%E9%98%BF%E5%A7%A8%20%E6%99%82%E5%B0%9A%E9%9A%B1%E7%97%95%E5%85%A7%E8%A1%A3" target="_blank" title="玉如阿姨 時尚隱痕內衣">
                    <img src="../images/events/20160817/images/pc_page_03.png" alt="玉如阿姨 時尚隱痕內衣" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E7%8E%89%E5%A6%82%E9%98%BF%E5%A7%A8%20%E7%BE%8E%E8%87%80%E6%9B%B2%E7%B7%9A%E4%BF%AE%E9%A3%BE%E8%A4%B2" target="_blank" title="玉如阿姨 美臀曲線修飾褲">
                    <img src="../images/events/20160817/images/pc_page_04.png" alt="玉如阿姨 美臀曲線修飾褲" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E7%8E%89%E5%A6%82%E9%98%BF%E5%A7%A8%20%E6%A8%82%E6%B4%BB%E7%94%9C%E5%BF%83%E5%85%A7%E8%A1%A3" target="_blank" title="玉如阿姨 樂活甜心內衣">
                    <img src="../images/events/20160817/images/pc_page_05.png" alt="玉如阿姨 樂活甜心內衣" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=%E7%8E%89%E5%A6%82%E9%98%BF%E5%A7%A8%20%E7%B7%A8%E7%B9%94%E6%83%85%E4%BA%BA%E7%84%A1%E7%97%95%E8%A4%B2" target="_blank" title="玉如阿姨 編織情人無痕褲">
                    <img src="../images/events/20160817/images/pc_page_06.png" alt="玉如阿姨 編織情人無痕褲" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=My%20Bra%20anSubRosa%20%E8%96%94%E8%96%87%E9%A6%99%E6%B0%9B%20%E8%B6%85%E7%88%86%E4%B9%B3%E6%B0%B4%E8%A2%8B%E6%AD%90%E9%A2%A8%E5%85%A7%E8%A1%A3" target="_blank" title="My Bra anSubRosa 薔薇香氛 超爆乳水袋歐風內衣">
                    <img src="../images/events/20160817/images/pc_page_07.png" alt="My Bra anSubRosa 薔薇香氛 超爆乳水袋歐風內衣 " style="width: 1180px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=My%20Bra%20anSubRosa%20%E8%8A%B1%E6%BC%BE%E8%AA%98%E6%83%91%20%E9%9B%86%E4%B8%AD%E5%8C%85%E8%A6%86%E7%94%9C%E7%BE%8E%E5%85%A7%E8%A1%A3%E8%A4%B2%E7%B5%84" target="_blank" title="My Bra anSubRosa 花漾誘惑 集中包覆甜美內衣褲組">
                    <img src="../images/events/20160817/images/pc_page_08.png" alt="My Bra anSubRosa 花漾誘惑 集中包覆甜美內衣褲組" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=My%20Bra%20anSubRosa%20%E6%B3%95%E5%BC%8F%E8%8A%B1%E7%A5%9E%20%E6%8F%90%E8%87%80%E4%BD%8E%E8%85%B0%E4%B8%89%E8%A7%92%E8%A4%B2" target="_blank" title="My Bra anSubRosa 法式花神 提臀低腰三角褲">
                    <img src="../images/events/20160817/images/pc_page_09.png" alt="My Bra anSubRosa 法式花神 提臀低腰三角褲" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=My%20Bra%20anSubRosa%20%E6%B3%95%E5%BC%8F%E8%8A%B1%E7%A5%9E%20%E7%AB%8B%E9%AB%94%E7%BE%8E%E8%83%B8%E5%A1%91%E5%9E%8B%E5%85%A7%E8%A1%A3" target="_blank" title="My Bra anSubRosa 法式花神 立體美胸塑型內衣">
                    <img src="../images/events/20160817/images/pc_page_10.png" alt="My Bra anSubRosa 法式花神 立體美胸塑型內衣" style="width: 295px"></a>
                <a href="http://www.hawooo.com/user/search.aspx?stxt=My%20Bra%20anSubRosa%20%E7%84%A1%E7%97%95%E7%B5%95%E7%BE%8E%20J%E5%9E%8B%E9%8B%BC%E5%9C%88%E7%BE%8E%E8%83%B8%E5%85%A7%E8%A1%A3%E8%A4%B2%E7%B5%84" target="_blank" title="My Bra anSubRosa 無痕絕美 J型鋼圈美胸內衣褲組 ">
                    <img src="../images/events/20160817/images/pc_page_11.png" alt="My Bra anSubRosa 無痕絕美 J型鋼圈美胸內衣褲組 " style="width: 295px"></a>
                <img src="../images/events/20160817/images/pc_page_12.png" alt="" style="width: 1180px">
                <a href="mailto:service@hawooo.com" target="_blank" title="Hawooo聯絡資料">
                    <img src="../images/events/20160817/images/pc_page_13.png" alt="" style="width: 985px;"></a>
                <a href="https://www.facebook.com/hawooohawooo" target="_blank" title="Hawooo好物飛行 FACEBOOk">
                    <img src="../images/events/20160817/images/pc_page_14.png" alt="Hawooo好物飛行 FACEBOOk" style="width: 65px;"></a>
                <a href="http://myhawooo.blogspot.tw/" target="_blank" title="Hawooo好物飛行 Blogger">
                    <img src="../images/events/20160817/images/pc_page_15.png" alt="awooo好物飛行 Blogger" style="width: 65px;"></a>
                <a href="https://www.instagram.com/hawooostyle/" target="_blank" title="HawoooStyle Instagram">
                    <img src="../images/events/20160817/images/pc_page_16.png" alt="HawoooStyle Instagram" style="width: 65px;"></a>
            </div>
        </div>
    </div>

   <%-- <script>
        $(function () {
            var now = new Date().getTime();
            if (now < '2016-08-19') {
                $("#t2").show();
                $("#t1").hide();
            }
            else {
                $("#t2").hide();
                $("#t1").show();
            }
        })
    </script>--%>
</asp:Content>

