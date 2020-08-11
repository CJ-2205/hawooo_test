<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180125CariMakan.aspx.cs" Inherits="_180125CariMakan" MasterPageFile="~/mobile/mobile.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <link rel="stylesheet" href="assets/css/newyearmom.css">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

        <a href="javascript:void(0)" onclick="GoID('goN')">
            <img alt="美食地圖 中正紀念堂" src="https://www.hawooo.com/images/ftp/20180126/edmm_01.png" style="float: left; display: block; width: 100%;" /></a>

        <!--2-->
        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_02.png" style="float: left; display: block; width: 30%;" />


        <a href="javascript:void(0)" onclick="GoID('goN')">
            <img alt="快車肉乾 圖" src="https://www.hawooo.com/images/ftp/20180126/edmm_03.png" style="float: left; display: block; width: 20%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_04.png" style="float: left; display: block; width: 20%;" />


        <a href="javascript:void(0)" onclick="GoID('goN')">
            <img alt="冬山河" src="https://www.hawooo.com/images/ftp/20180126/edmm_05.png" style="float: left; display: block; width: 20%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_06.png" style="float: left; display: block; width: 10%;" />

        <!--3-->
        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_07.png" style="float: left; display: block; width: 20%;" />


        <a href="javascript:void(0)" onclick="GoID('goN')">
            <img alt="快車肉乾 圖" src="https://www.hawooo.com/images/ftp/20180126/edmm_08.png" style="float: left; display: block; width: 25%;" /></a>

        <a href="javascript:void(0)" onclick="GoID('goM')">
            <img alt="合歡山" src="https://www.hawooo.com/images/ftp/20180126/edmm_09.png" style="float: left; display: block; width: 25%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_10.png" style="float: left; display: block; width: 30%;" />

    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <!--4-->
        <a href="javascript:void(0)" onclick="GoID('goS')">
            <img alt="東石" src="https://www.hawooo.com/images/ftp/20180126/edmm_11.png" style="float: left; display: block; width: 20%;" /></a>


        <a href="javascript:void(0)" onclick="GoID('goS')">
            <img alt="阿里山" src="https://www.hawooo.com/images/ftp/20180126/edmm_12.png" style="float: left; display: block; width: 20%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_13.png" style="float: left; display: block; width: 20%;" />


        <a href="javascript:void(0)" onclick="GoID('goM')">
            <img alt="太魯閣" src="https://www.hawooo.com/images/ftp/20180126/edmm_14.png" style="float: left; display: block; width: 20%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_15.png" style="float: left; display: block; width: 20%;" />
    </div>



    <!--5-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_16.png" style="float: left; display: block; width: 20%;" />


        <a href="javascript:void(0)" onclick="GoID('goS')">
            <img alt="孔廟" src="https://www.hawooo.com/images/ftp/20180126/edmm_17.png" style="float: left; display: block; width: 20%;" /></a>

        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_18.png" style="float: left; display: block; width: 10%;" />

        <a href="javascript:void(0)" onclick="GoID('goS')">
            <img alt="京盛宇 圖" src="https://www.hawooo.com/images/ftp/20180126/edmm_19.png" style="float: left; display: block; width: 30%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_20.png" style="float: left; display: block; width: 20%;" />
    </div>

    <!--6,7-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a href="javascript:void(0)" onclick="GoID('goS')">
            <img alt="鳳梨酥 圖" src="https://www.hawooo.com/images/ftp/20180126/edmm_21.png" style="float: left; display: block; width: 30%;" /></a>


        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_22.png" style="float: left; display: block; width: 70%;" />

        <img src="https://www.hawooo.com/images/ftp/20180126/edmm_23.png" style="float: left; display: block; width: 100%;" />
    </div>


    <!--北台灣開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a id="goN" href="makan1.aspx">
            <img alt="北台灣" src="https://www.hawooo.com/images/ftp/20180126/edmm_24.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="https://www.hawooo.com/user/productdetail.aspx?id=9675">
            <img alt="快車肉乾" src="https://www.hawooo.com/images/ftp/20180126/edmm_25.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7694">
            <img alt="蘭山麵" src="https://www.hawooo.com/images/ftp/20180126/edmm_26.png" style="float: left; display: block; width: 100%;" /></a>

        <a href="makan1.aspx">
            <img alt="北台灣 看更多" src="https://www.hawooo.com/images/ftp/20180126/edmm_27.png" style="float: left; display: block; width: 100%;" /></a>
    </div>

    <!--中台灣開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a id="goM" href="makan2.aspx">
            <img alt="中台灣" src="https://www.hawooo.com/images/ftp/20180126/edmm_28.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="https://www.hawooo.com/user/productdetail.aspx?id=10774">
            <img alt="愛D菇" src="https://www.hawooo.com/images/ftp/20180126/edmm_29.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="https://www.hawooo.com/user/productdetail.aspx?id=9935">
            <img alt="台灣茶人" src="https://www.hawooo.com/images/ftp/20180126/edmm_30.png" style="float: left; display: block; width: 100%;" /></a>

        <a href="makan2.aspx">
            <img alt="中台灣 看更多" src="https://www.hawooo.com/images/ftp/20180126/edmm_31.png" style="float: left; display: block; width: 100%;" /></a>
    </div>

    <!--南台灣開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a id="goS" href="makan3.aspx">
            <img alt="南臺灣" src="https://www.hawooo.com/images/ftp/20180126/edmm_32.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="https://www.hawooo.com/user/productdetail.aspx?id=12368">
            <img alt="阿舍食堂" src="https://www.hawooo.com/images/ftp/20180126/edmm_33.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="https://www.hawooo.com/user/productdetail.aspx?id=11295">
            <img alt="櫻桃爺爺" src="https://www.hawooo.com/images/ftp/20180126/edmm_34.png" style="float: left; display: block; width: 100%;" /></a>

        <a href="https://www.hawooo.com/user/productdetail.aspx?id=9886">
            <img alt="頂級乾燥" src="https://www.hawooo.com/images/ftp/20180126/edmm_35.png" style="float: left; display: block; width: 100%;" /></a>

        <a href="https://www.hawooo.com/user/productdetail.aspx?id=11596">
            <img alt="京盛宇" src="https://www.hawooo.com/images/ftp/20180126/edmm_36.png" style="float: left; display: block; width: 100%;" /></a>


        <a href="makan3.aspx">
            <img alt="南臺灣 看更多" src="https://www.hawooo.com/images/ftp/20180126/edmm_37.png" style="float: left; display: block; width: 100%;" /></a>


    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

        <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20180126/edmm_38.png" style="float: left; display: block; width: 100%;" />
    </div>


    <script src="js/jquery.url.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>

</asp:Content>

