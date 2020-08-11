<%@ Control Language="C#" AutoEventWireup="true" CodeFile="20181111menu.ascx.cs" Inherits="Hawooo_ascx" %>
<style>
    .invisible {
        z-index: 10;
        position: fixed;
    }

    .box {
        position: fixed;
        top: 15%;
        right: 6%;
        width: 100px;
    }
</style>
<!-- 小選單開始-->
<div class="invisible" style="z-index: 50;">
    <div class="box" id="index">
        <a href="20181111.aspx">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page" />
        </a>
        <a href="20181111preorder.aspx" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="flash sale" /></a>
        <a href="20181111redenvelope.aspx" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="beautiful life" /></a>
        <a href="20181111.aspx?tid=p1" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="elegant life" /></a>
        <a href="20181111sales.aspx?did=1" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="easy life" /></a>
        <a href="20181111brand.aspx" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="easy life" /></a>
        <a href="20181111rank.aspx" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="easy life" /></a>
        <a href="javascript:void(0);" onclick="GoTop()">
            <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="KOL" /></a>
    </div>
</div>

<!-- 小選單掰掰-->
<script>
    function GoTop() {
        $("html,body").animate({ scrollTop: 0 }, 500);

    };
</script>
