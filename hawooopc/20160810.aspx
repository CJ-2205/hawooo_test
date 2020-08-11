<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20160810.aspx.cs" Inherits="user_20160810" %>

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

    <div class="content-full">
        <div class="listbox-full">
            <img src="../images/events/20160810/images/pc_page_01.png" alt="蘭山麵x歐可茶葉" style="width: 1180px;">
            <a href="http://www.hawooo.com/user/shop.aspx?bid=38" target="_blank" title="蘭山麵新品上市">
                <img src="../images/events/20160810/images/pc_page_02.png" alt="蘭山麵新品上市" style="width: 472px;"></a>
            <a href="http://www.hawooo.com/user/shop.aspx?cid=39" target="_blank" title="好物市集 美食">
                <img src="../images/events/20160810/images/pc_page_03.png" alt="好物市集 美食" style="width: 118px;"></a>
            <a href="http://www.hawooo.com/user/shop.aspx?cid=40" target="_blank" title="好物市集 飲品">
                <img src="../images/events/20160810/images/pc_page_04.png" alt="好物市集 飲品" style="width: 118px;"></a>
            <a href="http://www.hawooo.com/user/shop.aspx?cid=21" target="_blank" title="好物市集 保養">
                <img src="../images/events/20160810/images/pc_page_05.png" alt="好物市集 保養" style="width: 118px;"></a>
            <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="sale 優惠">
                <img src="../images/events/20160810/images/pc_page_06.png" alt="sale 優惠" style="width: 354px"></a>
            <a href="http://www.hawooo.com/user/shop.aspx?bid=38" target="_blank" title="接單現做-蘭山麵">
                <img src="../images/events/20160810/images/pc_page_07.png" alt="" style="width: 1180px;"></a>
            <a href="http://www.hawooo.com/user/shop.aspx?bid=38" target="_blank" title="狂賣2500000碗，唯一敢「接單現做」的手工麵">
                <img src="../images/events/20160810/images/pc_page_08.png" alt="狂賣2500000碗，唯一敢「接單現做」的手工麵" style="width: 1180px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=4091" target="_blank" title="蘭山麵 五款口味細/寬麵5包 (紅蔥油/麻油/麻醬/沙茶/椒麻)">
                <img src="../images/events/20160810/images/pc_page_09.png" alt="蘭山麵 五款口味細/寬麵5包 (紅蔥油/麻油/麻醬/沙茶/椒麻)" style="width: 1180px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=4092" target="_blank" title="蘭山麵 四款口味細麵 (紅蔥油/麻油/麻醬/沙茶">
                <img src="../images/events/20160810/images/pc_page_10.png" alt="蘭山麵 四款口味細麵 (紅蔥油/麻油/麻醬/沙茶" style="width: 393px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=4093" target="_blank" title="蘭山麵 四款口味寬麵 (紅蔥油/麻油/麻醬/沙茶)">
                <img src="../images/events/20160810/images/pc_page_11.png" alt="蘭山麵 四款口味寬麵 (紅蔥油/麻油/麻醬/沙茶)" style="width: 394px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=4094" target="_blank" title="蘭山麵 四款綜合口味 寬細麵各半 共24包 (紅蔥油/麻油/麻醬/沙茶)">
                <img src="../images/events/20160810/images/pc_page_12.png" alt="蘭山麵 四款綜合口味 寬細麵各半 共24包 (紅蔥油/麻油/麻醬/沙茶)" style="width: 393px;"></a>
            <a href="http://www.hawooo.com/user/market.aspx" target="_blank" title="大馬限定，全館特惠中">
                <img src="../images/events/20160810/images/pc_page_13.png" alt="大馬限定，全館特惠中" style="width: 1180px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=2901" target="_blank" title="歐可茶葉 《歐可冷茶》冷泡鮮綠茶 (30包/盒)">
                <img src="../images/events/20160810/images/pc_page_14.png" alt="歐可茶葉 《歐可冷茶》冷泡鮮綠茶 (30包/盒)" style="width: 787px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=2032" target="_blank" title="歐可茶葉 《歐可袋棒茶》蜜香紅茶 (15包/盒)">
                <img src="../images/events/20160810/images/pc_page_15.png" alt="歐可茶葉 《歐可袋棒茶》蜜香紅茶 (15包/盒)" style="width: 393px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=2033" target="_blank" title="歐可茶葉 《歐可袋棒茶》檸檬草綠茶 (15包/盒)">
                <img src="../images/events/20160810/images/pc_page_16.png" alt="歐可茶葉 《歐可袋棒茶》檸檬草綠茶 (15包/盒)" style="width: 393px;"></a>
            <a href="http://www.hawooo.com/user/productdetail.aspx?id=2031" target="_blank" title="歐可茶葉 《歐可袋棒茶》桂花烏龍 (15包/盒) 三入組">
                <img src="../images/events/20160810/images/pc_page_17.png" alt="歐可茶葉 《歐可袋棒茶》桂花烏龍 (15包/盒) 三入組" style="width: 393px;"></a>
            <img src="../images/events/20160810/images/pc_page_18.png" alt="" style="width: 1180px;">
            <a href="mailto:service@hawooo.com" target="_blank" title="Hawooo聯絡資料">
                <img src="../images/events/20160810/images/pc_page_19.png" alt="" style="width: 976px;"></a>
            <a href="https://www.facebook.com/hawooohawooo" target="_blank" title="Hawooo好物飛行 FACEBOOk">
                <img src="../images/events/20160810/images/pc_page_20.png" alt="Hawooo好物飛行 FACEBOOk" style="width: 68px;"></a>
            <a href="http://myhawooo.blogspot.tw/" target="_blank" title="Hawooo好物飛行 Blogger">
                <img src="../images/events/20160810/images/pc_page_21.png" alt="awooo好物飛行 Blogger" style="width: 68px;"></a>
            <a href="https://www.instagram.com/hawooostyle/" target="_blank" title="HawoooStyle Instagram">
                <img src="../images/events/20160810/images/pc_page_22.png" alt="HawoooStyle Instagram" style="width: 68px;"></a>

        </div>
    </div>

</asp:Content>

