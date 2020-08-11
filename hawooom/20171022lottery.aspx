<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171022lottery.aspx.cs" Inherits="mobile_20171022lottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_10.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_16.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_19.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="好物週年慶 禮物天天抽" src="https://www.hawooo.com/images/ftp/20171023/edmmmm_01.png" style="float: left; display: block; width: 100%;" /></li>

            <asp:Panel ID="Panel1" runat="server">
                <li style="margin: 0;"><a href="http://www.hawooo.com/user/search.aspx?stxt=INNER%20SKIN" target="_blank">
                    <img alt="innerskin" src="https://www.hawooo.com/images/ftp/20171023/edmmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=7098" target="_blank">
                    <img alt="INNER SKIN 毛孔緊緻調理精華50ml" src="https://www.hawooo.com/images/ftp/20171023/edmmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>



                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=7091" target="_blank">
                    <img alt="INNERSKIN淨化不息煥膚水凝膜110ml" src="https://www.hawooo.com/images/ftp/20171023/edmmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>


                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8854" target="_blank">
                    <img alt="INNER SKIN 茶樹控油收斂化妝水 150ml" src="https://www.hawooo.com/images/ftp/20171023/edmmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=394" target="_blank">
                    <img alt="INNER SKIN 8不得 修護凝膠10ml" src="https://www.hawooo.com/images/ftp/20171023/edmmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8856" target="_blank">
                    <img alt="INNER SKIN 茶樹控油礦物保養蜜粉 8g" src="https://www.hawooo.com/images/ftp/20171023/edmmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>
            </asp:Panel>
        </ul>
    </div>




    <%--    第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="UNT coming soon" src="https://www.hawooo.com/images/ftp/20171023/edmmm_08new.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">


                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="UNT" src="https://www.hawooo.com/images/ftp/20171023/edmmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="玻尿酸長效保濕化妝水 150ml+玻尿酸長效保濕精華液 35ml " src="https://www.hawooo.com/images/ftp/20171023/edmmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="抗痘煥膚調理精華液 35ml+UNT｜抗痘凝乳 10ml" src="https://www.hawooo.com/images/ftp/20171023/edmmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="狠狠吻我玫瑰絲絨唇釉 5g+甜心女孩唇頰彩 2.2g" src="https://www.hawooo.com/images/ftp/20171023/edmmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="魔幻水指彩之魔幻變妝技 5" src="https://www.hawooo.com/images/ftp/20171023/edmmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>




                <li style="margin: 0;"><a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
                    <img alt="傳明酸清透煥白保濕乳液 60ml+傳明杏仁酸急效美白精華液 35ml " src="https://www.hawooo.com/images/ftp/20171023/edmmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>
    </asp:Panel>




    <!--footer開始-->

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="禮物天天抽 備註說明" src="https://www.hawooo.com/images/ftp/20171023/edmmm_14.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="20171012lottery.aspx" target="_blank">
                <img alt="禮物天天抽第1波 回顧看看" src="https://www.hawooo.com/images/ftp/20171023/edmmm_15.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="hawooo2yearspart2.aspx" target="_blank">
                <img alt="點我逛週年慶第二波" src="https://www.hawooo.com/images/ftp/20171023/edmmm_16.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;">
                <img alt="禮物天天抽第三波 敬請期待" src="https://www.hawooo.com/images/ftp/20171023/edmmm_17.png" style="float: left; display: block; width: 100%;" /></li>


        </ul>
    </div>


    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>

</asp:Content>
