<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180807.aspx.cs" Inherits="_180807" MasterPageFile="~/mobile/mobile.master" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
     
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <script>
        $(function () {
            hiddenFooterMenu();     //藏menu bar
            $(window).scroll(function () {
                $("#gotop").hide()
            });         //藏gotop的icon
        })
    </script>--%>

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; margin: 0 auto;">
        <img src="https://www.hawooo.com/images/ftp/20180807/edmm_01.png" style="width: 100%" alt="票選商品top10">

        <a href="https://www.hawooo.com/mobile/product.aspx?id=15423" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_02.png" style="width: 100%" alt="【艾黎亞】黑瓷亮白美齒貼片+牙膏">
        </a>

        <a href="https://www.hawooo.com/mobile/product.aspx?id=15076" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_03.png" style="width: 100%" alt="Toothfilm】T-SPRAY Kids 兒童含鈣健齒噴霧(含棉棒) 3種口味可選">
        </a>

        <a href="https://www.hawooo.com/mobile/product.aspx?id=10227" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_04.png" style="width: 100%" alt="YohoPower買就送】YOYO敏立清益生菌(60條/盒)－Yakult原味">
        </a>


        <a href="https://www.hawooo.com/mobile/product.aspx?id=14259" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_05.png" style="width: 100%" alt="賈靜雯代言【醇養妍】升級版">
        </a>


        <a href="https://www.hawooo.com/mobile/product.aspx?id=13046" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_06.png" style="width: 100%" alt="【大樹藥局】享食尚滴雞精">
        </a>


        <a href="https://www.hawooo.com/mobile/product.aspx?id=12737" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_07.png" style="width: 100%" alt="【KGCHECK凱綺萃】高纖飽足沖泡餐(任選6盒組)">
        </a>

        <a href="https://www.hawooo.com/mobile/product.aspx?id=14951" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_08.png" style="width: 100%" alt="【嚴總 ‧ 嚴選】雪薊白青春錠">
        </a>

        <a href="http://www.hawooo.com/mobile/product.aspx?id=9850" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_09.png" style="width: 100%" alt="【ICON愛康】抗菌衛生棉16包">
        </a>

        <a href="https://www.hawooo.com/mobile/product.aspx?id=15556" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_10.png" style="width: 100%" alt="舒妃SOFEI 植萃添加護髮染髮霜-601霧感鉛筆灰">
        </a>

        <a href="http://www.hawooo.com/mobile/product.aspx?id=9351" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180807/edmm_11.png" style="width: 100%" alt="【清檜】天然防蟑螂螞蟻噴劑">
        </a>



    </div>




    <%--    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>


    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 80 }, 500);
        }
    </script>--%>
</asp:Content>


