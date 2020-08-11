<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171101lottery.aspx.cs" Inherits="mobile_20171101lottery" %>

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
                <img alt="好物週年慶 禮物天天抽" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_01.png" style="float: left; display: block; width: 100%;" /></li>

            <asp:Panel ID="Panel1" runat="server">
                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                    <img alt="愛康 衛生棉" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                    <img alt="ICON愛康 抗菌衛生棉2包-日用型+護墊(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>



                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                    <img alt="ICON愛康 抗菌衛生棉2包-日用型+夜用型(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>


                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                    <img alt="ICON愛康 抗菌衛生棉2包-日用型+夜用加長型(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                    <img alt="ICON愛康 抗菌衛生棉2包-夜用型+護墊(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
                    <img alt="ICON愛康 抗菌衛生棉2包-夜用型+夜用加長型(台灣代購國際直送)" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>
            </asp:Panel>
        </ul>
    </div>




    <%--    第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
                    <img alt="BHKs coming soon" src="https://www.hawooo.com/images/ftp/20171013/w3/edmmnew_08.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">


                <li style="margin: 0;"><a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
                    <img alt="BHK's" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=7982&bid=12" target="_blank">
                    <img alt="BHK's 美白彈力組" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=5356" target="_blank">
                    <img alt="BHK's 胎盤膠囊(60顆/瓶) 2瓶入" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=9155&bid=12" target="_blank">
                    <img alt="BHK's 奢光進階美白組" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=10228" target="_blank">
                    <img alt="BHK's 時光機凍齡組（逆痕*1瓶+膠原*1瓶）" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>




                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=8416&bid=12" target="_blank">
                    <img alt="BHK's 雙重減肥組" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>
    </asp:Panel>




    <!--footer開始-->

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="禮物天天抽 備註說明" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_14.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/20171022lottery.aspx" target="_blank">
                <img alt="禮物天天抽第2波 回顧看看" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_15.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/hawooo2yearspart2.aspx" target="_blank">
                <img alt="點我逛週年慶第二波" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_16.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;">
                <img alt="禮物天天抽最後一檔 敬請期待" src="https://www.hawooo.com/images/ftp/20171013/w3/edmm_17.png" style="float: left; display: block; width: 100%;" /></li>


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
