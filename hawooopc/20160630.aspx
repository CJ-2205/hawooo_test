<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160630.aspx.cs" Inherits="user_20160630" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <style type="text/css">
        /*body {
            margin: 0;
            padding: 0;
        }*/

        .minbox {
            width: 1180px;
            background-color: #f2f1f0;
        }

        .content {
            margin: 0 auto;
            padding: 0;
            width: 1034px;
        }

        .listbox-all {
            float: left;
            display: block;
            font-size: 0;
            margin: 0;
            width: 1034px;
        }

            .listbox-all img {
                float: left;
                display: block;
                margin: 0;
                padding: 0;
                font-size: 0;
            }

        .listbox-two {
            float: left;
            display: block;
            width: 517px;
            margin: 0;
            font-size: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="minbox">
        <div class="content">
            <div class="listbox-all">
                <img src="../images/events/20160630/images/pc_page_01.png" alt="当大马部落客Tiffany遇见台湾最在的女生塑身品牌V.VIENNA微微安娜">
            </div>
            <div class="listbox-all">
                <a href="#linkA" target="_blank" title="NewIN">
                    <img src="../images/events/20160630/images/pc_page_02.png" alt="NewIN" style="width: 259px;"></a>
                <a href="#linkB" target="_blank" title="Sport 运动">
                    <img src="../images/events/20160630/images/pc_page_03.png" alt="Sport 运动" style="width: 258px;"></a>
                <a href="#linkC" target="_blank" title="Skinny 塑身">
                    <img src="../images/events/20160630/images/pc_page_04.png" alt="Skinny 塑身" style="width: 225px;"></a>
                <a href="#linkD" target="_blank" title="BED TIME 夜寝">
                    <img src="../images/events/20160630/images/pc_page_05.png" alt="BED TIME 夜寝" style="width: 292px;"></a>
            </div>
            <div class="listbox-all">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2326" target="_blank" title="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套">
                    <img src="../images/events/20160630/images/pc_page_06.png" alt="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套"></a>
            </div>
            <div class="listbox-all">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2326" target="_blank" title="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套">
                    <img src="../images/events/20160630/images/pc_page_07.png" alt="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套"></a>
            </div>
            <div class="listbox-all">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2011" target="_blank" title="V.VIENNA微微安娜 Girls Light 輕美型細肩無痕運動內衣">
                    <img src="../images/events/20160630/images/pc_page_08.png" id="linkA" alt="V.VIENNA微微安娜 Girls Light 輕美型細肩無痕運動內衣"></a>
            </div>
            <div class="listbox-all">
                <img src="../images/events/20160630/images/pc_page_09.png" alt="V.VIENNA 微微安娜 Girls light">
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2328" target="_blank" title="V.VIENNA 微微安娜 Girls Light顯瘦涼感排汗七分褲">
                    <img src="../images/events/20160630/images/pc_page_10.png" alt="V.VIENNA 微微安娜 Girls Light顯瘦涼感排汗七分褲"></a>
            </div>
            <div class="listbox-two">
                <img src="../images/events/20160630/images/pc_page_11.png" id="linkB" alt="V.VIENNA 微微安娜 運動系列">
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2328" target="_blank" title="V.VIENNA 微微安娜 Girls Light顯瘦涼感排汗七分褲">
                    <img src="../images/events/20160630/images/pc_page_12.png" alt="V.VIENNA 微微安娜 Girls Light顯瘦涼感排汗七分褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2327" target="_blank" title="V.VIENNA 微微安娜 Girls light抗UV涼感不走光運動短褲">
                    <img src="../images/events/20160630/images/pc_page_13.png" alt="V.VIENNA 微微安娜 Girls light抗UV涼感不走光運動短褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2011" target="_blank" title="V.VIENNA微微安娜 Girls Light 輕美型細肩無痕運動內衣">
                    <img src="../images/events/20160630/images/pc_page_14.png" alt="V.VIENNA微微安娜 Girls Light 輕美型細肩無痕運動內衣"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2327" target="_blank" title="V.VIENNA 微微安娜 Girls light抗UV涼感不走光運動短褲">
                    <img src="../images/events/20160630/images/pc_page_15.png" alt="V.VIENNA 微微安娜 Girls light抗UV涼感不走光運動短褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2011" target="_blank" title="V.VIENNA微微安娜 Girls Light 輕美型細肩無痕運動內衣">
                    <img src="../images/events/20160630/images/pc_page_16.png" alt="V.VIENNA微微安娜 Girls Light 輕美型細肩無痕運動內衣"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2324" target="_blank" title="V.VIENNA 微微安娜 Girls light零度C挖背涼感運動背心">
                    <img src="../images/events/20160630/images/pc_page_17.png" alt="V.VIENNA 微微安娜 Girls light零度C挖背涼感運動背心"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2326" target="_blank" title="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套">
                    <img src="../images/events/20160630/images/pc_page_18.png" alt="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2324" target="_blank" title="V.VIENNA 微微安娜 Girls light零度C挖背涼感運動背心">
                    <img src="../images/events/20160630/images/pc_page_19.png" alt="V.VIENNA 微微安娜 Girls light零度C挖背涼感運動背心"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2326" target="_blank" title="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套">
                    <img src="../images/events/20160630/images/pc_page_20.png" alt="V.VIENNA 微微安娜 Girls light抗UV防皺空氣感運動外套"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1768" target="_blank" title="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲">
                    <img src="../images/events/20160630/images/pc_page_21.png" alt="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲"></a>
            </div>
            <div class="listbox-two">
                <img src="../images/events/20160630/images/pc_page_22.png" alt=""></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1768" target="_blank" title="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲">
                    <img src="../images/events/20160630/images/pc_page_23.png" alt="V.VIENNA 微微安娜 Girls Light 翹臀深曲線壓力運動褲"></a>
            </div>
            <div class="listbox-all">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2323" target="_blank" title="V.VIENNA 微微安娜 纖腰翹臀高腰輕塑褲">
                    <img src="../images/events/20160630/images/pc_page_24.png" id="linkC" alt="V.VIENNA 微微安娜 纖腰翹臀高腰輕塑褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2323" target="_blank" title="V.VIENNA 微微安娜 纖腰翹臀高腰輕塑褲">
                    <img src="../images/events/20160630/images/pc_page_25.png" alt="V.VIENNA 微微安娜 纖腰翹臀高腰輕塑褲"></a>
            </div>
            <div class="listbox-two">
                <img src="../images/events/20160630/images/pc_page_26.png" alt="塑身系列">
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2323" target="_blank" title="V.VIENNA 微微安娜 纖腰翹臀高腰輕塑褲">
                    <img src="../images/events/20160630/images/pc_page_27.png" alt="V.VIENNA 微微安娜 纖腰翹臀高腰輕塑褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2126" target="_blank" title="V.VIENNA 微微安娜 立即顯瘦360D聖杯級塑身褲">
                    <img src="../images/events/20160630/images/pc_page_28.png" alt="V.VIENNA 微微安娜 立即顯瘦360D聖杯級塑身褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1765" target="_blank" title="V.VIENNA 微微安娜 280D 輕機能塑身細肩帶平口背心">
                    <img src="../images/events/20160630/images/pc_page_29.png" alt="V.VIENNA 微微安娜 280D 輕機能塑身細肩帶平口背心"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2126" target="_blank" title="V.VIENNA 微微安娜 立即顯瘦360D聖杯級塑身褲">
                    <img src="../images/events/20160630/images/pc_page_30.png" alt="V.VIENNA 微微安娜 立即顯瘦360D聖杯級塑身褲"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1765" target="_blank" title="V.VIENNA 微微安娜 280D 輕機能塑身細肩帶平口背心">
                    <img src="../images/events/20160630/images/pc_page_31.png" alt="V.VIENNA 微微安娜 280D 輕機能塑身細肩帶平口背心"></a>
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2469" target="_blank" title="V.VIENNA 微微安娜 180D 美胸平腹機能美體背心裙">
                    <img src="../images/events/20160630/images/pc_page_32.png" alt="V.VIENNA 微微安娜 180D 美胸平腹機能美體背心裙"></a>
            </div>
            <div class="listbox-two">
                <img src="../images/events/20160630/images/pc_page_33.png" alt="">
            </div>
            <div class="listbox-two">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2469" target="_blank" title="V.VIENNA 微微安娜 180D 美胸平腹機能美體背心裙">
                    <img src="../images/events/20160630/images/pc_page_34.png" alt="V.VIENNA 微微安娜 180D 美胸平腹機能美體背心裙"></a>
            </div>
            <div class="listbox-all">
                <img src="../images/events/20160630/images/pc_page_35.png" alt="V.VIENNA 微微安娜 夜寢系列">
            </div>
            <div class="listbox-all">
                <img src="../images/events/20160630/images/pc_page_36.png" id="linkD" alt="V.VIENNA 微微安娜 夜寢系列">
            </div>
            <div class="listbox-all">
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2130" target="_blank" title="V.VIENNA 微微安娜 輕機夜寢條紋塑腿襪/推脂塑腿襪">
                    <img src="../images/events/20160630/images/pc_page_37.png" alt="V.VIENNA 微微安娜 輕機夜寢條紋塑腿襪/推脂塑腿襪" style="width: 363px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=2131" target="_blank" title="V.VIENNA 微微安娜 一夜輕機塑腿翹臀襪">
                    <img src="../images/events/20160630/images/pc_page_38.png" alt="V.VIENNA 微微安娜 一夜輕機塑腿翹臀襪" style="width: 308px;"></a>
                <a href="http://www.hawooo.com/user/productdetail.aspx?id=1946" target="_blank" title="V.VIENNA微微安娜 睡眠專用推脂塑腿襪">
                    <img src="../images/events/20160630/images/pc_page_39.png" alt="V.VIENNA微微安娜 睡眠專用推脂塑腿襪" style="width: 363px;"></a>
            </div>
            <div class="listbox-all">
                <img src="../images/events/20160630/images/pc_page_40.png" alt="Hawooo聯絡資料" usemap="#Map">
                <map name="Map">
                    <area shape="rect" coords="804,38,844,75" href="https://www.facebook.com/hawooohawooo" target="_blank" alt="Hawooo好物飛行 Facebook">
                    <area shape="rect" coords="854,37,889,77" href="http://myhawooo.blogspot.tw" target="_blank" alt="Hawooo好物飛行 Blogger">
                    <area shape="rect" coords="899,38,938,77" href="https://www.instagram.com/hawooo_shopping" target="_blank" alt="Hawooo好物飛行 Instagramns">
                </map>
            </div>
        </div>
    </div>
</asp:Content>

