<%@ Control Language="C#" AutoEventWireup="true" CodeFile="20181111menum.ascx.cs" Inherits="Hawooo_20181111menum" %>
<!--8大類別小選單開始-->
<div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
    <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
        <li class="am-fl">
            <a href="20181111.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
        </li>

        <li class="am-fl">
            <a href="20181111sales.aspx?did=1">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="48hrs sale"></a>
        </li>

        <li class="am-fl">
            <a href="20181111redenvelope.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="KOL"></a>
        </li>

        <li class="am-fl">
            <%--  <a href="javascript:void(0)" onclick="GoId('p1')">--%>
            <a href="20181111.aspx?tid=p1">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Top brands"></a>
        </li>

        <li class="am-fl">
            <a href="20181111sales.aspx?did=1">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
        </li>

        <li class="am-fl">
            <a href="20181111brand.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="life1"></a>
        </li>

        <li class="am-fl">
            <a href="20181111rank.aspx">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="life2"></a>
        </li>

        <li class="am-fl">
            <a href="javascript:void(0)" onclick="GoTop()">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="life3"></a>
        </li>


    </ul>
</div>
<!--8大類別小選單再見-->
<script>
    function GoTop() {
        $("html,body").animate({ scrollTop: 0 }, 500);

    };
</script>
