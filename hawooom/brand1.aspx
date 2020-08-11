<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="brand1.aspx.cs" Inherits="mobile_brand1" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <link href="assets/countdown/jquery.countdown.css" rel="stylesheet" />




    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
            position: relative;
        }

        .edm_title {
            float: left;
            font-size: medium;
            color: #424242;
            overflow: hidden;
            margin: 15px 0 10px 15px;
            /*loading bar開始*/
        }

        .w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray, .w3-hover-light-gray:hover {
            color: #000 !important;
            background-color: #f1f1f1 !important;
        }

        .w3-round-xlarge {
            border-radius: 16px;
        }

        .bar-orange, .w3-hover-orange:hover {
            color: #fff !important;
            background-color: #FF4A1D !important;
            font-size: 10px;
            text-align: center;
        }

        .bar-white, .w3-hover-white:hover {
            color: #fff !important;
            background-color: rgba(255,255,255,0.5);
        }

        .w3-container, .w3-panel {
            padding: 0.01em 16px;
        }

            .w3-container:after, .w3-container:before, .w3-panel:after, .w3-panel:before, .w3-row:after, .w3-row:before, .w3-row-padding:after, .w3-row-padding:before, .w3-cell-row:before, .w3-cell-row:after, .w3-clear:after, .w3-clear:before, .w3-bar:before, .w3-bar:after {
                content: "";
                display: table;
                clear: both;
            }

        .burn-text {
            color: white;
            text-align: center;
            position: absolute;
            right: 30%;
            top: 6%;
            font-size: small;
        }

        .burn-text2 {
            color: white;
            text-align: center;
            position: absolute;
            top: 6%;
            right: 33%;
            font-size: small;
        }

        .fire60 {
            position: absolute;
            margin: auto;
            width: 12%;
            right: 88%;
            top: 3%;
        }


        /*DK類別用的*/

        [data-am-widget=tabs] {
            margin: 0px;
        }



        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
                padding: 0 15px;
            }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                background-color: #C9C5C9 !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    color: black !important;
                }



            .am-tabs-d2 .am-tabs-nav > .am-active {
                border-bottom: 6px solid #d1031c !important;
            }



                .am-tabs-d2 .am-tabs-nav > .am-active a {
                    line-height: 55px;
                }



                .am-tabs-d2 .am-tabs-nav > .am-active:after {
                    border: 0px;
                }



            .am-tabs-d2 .am-tabs-nav a {
                line-height: 55px;
            }



        .am-tabs-bd {
            -moz-user-select: text !important;
            -webkit-user-select: text !important;
            -ms-user-select: text !important;
            user-select: text !important;
            background-color: #fff;
        }



        .bar {
            overflow-y: hidden !important;
            width: 100%;
        }



        .am-tabs-bd .am-tab-panel {
            padding: 0px;
        }



        .bar::-webkit-scrollbar {
            display: none;
        }

        /*品牌館用的*/

        .brand_logo_space {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 66%;
            top: 28%;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .brand_logo {
            position: absolute;
            top: 32%;
            margin: auto;
            width: 45%;
            left: 53%;
            outline: 2px solid white;
        }

        .brand_logo_text {
            /*margin-top: 30px;
            font-size: medium;
            line-height: 11px;
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 5px;*/
            /* margin-top: 30px; */
            font-size: medium;
            /* line-height: 11px; */
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 5px;
            max-height: 25px;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .brand_logo_slogan {
            margin: 0 2px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 18px;
            color: #979697;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            padding-top: 3px;
        }


        /*公告用的*/
        .note_title {
            text-align: left;
            font-size: small;
            font-weight: bold;
            color: #f8d1dd;
            padding: 10px 0px;
        }

        .note_white {
            color: white;
            font-weight: normal;
        }

        .am-tabs {
            padding-top: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--8大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_bday.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_01.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_flashsale.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_02.png" style="width: 100%; max-height: 100px;" alt="48hrs sale"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/kol.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_03.png" style="width: 100%; max-height: 100px;" alt="KOL"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/brand1.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_04.png" style="width: 100%; max-height: 100px;" alt="Top brands"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/3rd_bday.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_05.png" style="width: 100%; max-height: 100px;" alt="main page"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life1.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_06.png" style="width: 100%; max-height: 100px;" alt="life1"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life2.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_07.png" style="width: 100%; max-height: 100px;" alt="life2"></a>
            </li>

            <li class="am-fl">

                <a href="https://www.hawooo.com/mobile/life3.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180918/sidebarM_08.png" style="width: 100%; max-height: 100px;" alt="life3"></a>
            </li>





        </ul>
    </div>
    <!--8大類別小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <a href="#">
            <img alt="midterm sale" src="https://www.hawooo.com/images/ftp/20180918/brand_m.png" style="float: left; display: block; width: 100%;" /></a>

    </div>

    <!--第1塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Beauty</h4>
    </div>

    <!--第1塊品牌-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #999">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">


                    <!--第一排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=208" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_01.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Dr. Cink</h4>
                            <h4 class="brand_logo_slogan">Up to 67% off<br>
                                + Free Gift（RM400）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_01.png" alt="Dr.cink" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=239" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_02.png" style="width: 100%;">
                            <h4 class="brand_logo_text">userISM</h4>
                            <h4 class="brand_logo_slogan">Up to 55% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_02.png" alt="userISM" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=229" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_03.png" style="width: 100%;">
                            <h4 class="brand_logo_text">FreshO2</h4>
                            <h4 class="brand_logo_slogan">Up to 46% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_03.png" alt="FreshO2" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=39" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_04.png" style="width: 100%;">
                            <h4 class="brand_logo_text">LA BEAU</h4>
                            <h4 class="brand_logo_slogan">Up to 67% off<br>
                                + Free Gift（RM400）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_04.png" alt="LA BEAU" />
                            </div>
                        </a>

                    </li>

                    <!--第二排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=251" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_05.png" style="width: 100%;">
                            <h4 class="brand_logo_text">VIVI PAM</h4>
                            <h4 class="brand_logo_slogan">Up to 39% off
                                <br>
                                +Free Gift（RM60）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_05.png" alt="VIVI PAM" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=211" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_06.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Solone</h4>
                            <h4 class="brand_logo_slogan">Up to 44% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_06.png" alt="solone" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=202" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_07.png" style="width: 100%;">
                            <h4 class="brand_logo_text">廣源良</h4>
                            <h4 class="brand_logo_slogan">Up to 24% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_07.png" alt="廣源良" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=154" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_08.png" style="width: 100%;">
                            <h4 class="brand_logo_text">UNT</h4>
                            <h4 class="brand_logo_slogan">Up to 29% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_08.png" alt="UNT" />
                            </div>
                        </a>

                    </li>

                    <!--第三排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=230" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_09.png" style="width: 100%;">
                            <h4 class="brand_logo_text">ttm面膜</h4>
                            <h4 class="brand_logo_slogan">Up to 32% off
                                <br>
                                +Free Gift（RM10）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_09.png" alt="ttm面膜" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=199" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_10.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Dayla</h4>
                            <h4 class="brand_logo_slogan">Up to 30% off
                                <br>
                                +Free Gift（RM10）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_10.png" alt="Dayla" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=164" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_11.png" style="width: 100%;">
                            <h4 class="brand_logo_text">NiceDoctor</h4>
                            <h4 class="brand_logo_slogan">Up to 33% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_11.png" alt="NiceDoctor" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=247" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_12.png" style="width: 100%;">
                            <h4 class="brand_logo_text">BeautyMaker</h4>
                            <h4 class="brand_logo_slogan">Up to 20% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_12.png" alt="BeautyMaker" />
                            </div>
                        </a>

                    </li>



                </ul>


            </div>
        </div>

    </div>


    <!--第2塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Health</h4>
    </div>

    <!--第2塊品牌-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #999">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <!--第一排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=12" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_13.png" style="width: 100%;">
                            <h4 class="brand_logo_text">BHK's</h4>
                            <h4 class="brand_logo_slogan">Up to 26% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_13.png" alt="BHK's" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bcid=1296&bid=170    " target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_14.png" style="width: 100%;">
                            <h4 class="brand_logo_text">KGCHECK凱綺萃</h4>
                            <h4 class="brand_logo_slogan">Up to 33% off
                                <br>
                                +Free Gift（RM29.9）</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_14.png" alt="KGCHECK" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=51" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_15.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Beauty Shop</h4>
                            <h4 class="brand_logo_slogan">Up to 52% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_15.png" alt="Beauty小舖" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=235" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_16.png" style="width: 100%;">
                            <h4 class="brand_logo_text">DV笛絲薇夢 </h4>
                            <h4 class="brand_logo_slogan">10% off Storewide</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_16.png" alt="DV笛絲薇夢" />
                            </div>
                        </a>

                    </li>

                    <!--第二排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=222" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_17.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Dr.Lady達特蕾蒂</h4>
                            <h4 class="brand_logo_slogan">Up to 66% off
                                <br>
                                + Free Gift (RM102.8)</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_17.png" alt="Dr.Lady達特蕾蒂" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=54" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_18.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Realwoman</h4>
                            <h4 class="brand_logo_slogan">Up to 35% off
                                <br>
                                + Free Gift (RM28.8)</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_18.png" alt="Realwoman" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=203" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_19.png" style="width: 100%;">
                            <h4 class="brand_logo_text">SUPERCUT</h4>
                            <h4 class="brand_logo_slogan">Up to 35% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_19.png" alt="SUPERCUT" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=122" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_20.png" style="width: 100%;">
                            <h4 class="brand_logo_text">YohoPower悠活原力</h4>
                            <h4 class="brand_logo_slogan">Up to 15% off
                                <br>
                                + Free Gift (RM60.0)</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_20.png" alt="YohoPower悠活原力" />
                            </div>
                        </a>

                    </li>
                    <!--第三排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=189" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_21.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Ruijia 露奇亞</h4>
                            <h4 class="brand_logo_slogan">Up to 21% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_21.png" alt="Ruijia 露奇亞" />
                            </div>
                        </a>

                    </li>



                </ul>


            </div>
        </div>

    </div>


    <!--第3塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Fashion</h4>
    </div>

    <!--第3塊品牌-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #999">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <!--第一排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=186" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_22.png" style="width: 100%;">
                            <h4 class="brand_logo_text">BC</h4>
                            <h4 class="brand_logo_slogan">Up to 26% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_22.png" alt="BC" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=263" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_23.png" style="width: 100%;">
                            <h4 class="brand_logo_text">TOKICHOI東京著衣</h4>
                            <h4 class="brand_logo_slogan">Up to 30% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_23.png" alt="東京著衣" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=136" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_24.png" style="width: 100%;">
                            <h4 class="brand_logo_text">eDELE伊黛爾</h4>
                            <h4 class="brand_logo_slogan">Up to 29% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_24.png" alt="eDELE伊黛爾" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=128" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_25.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Qmomo</h4>
                            <h4 class="brand_logo_slogan">Up to 25% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_25.png" alt="Qmomo" />
                            </div>
                        </a>

                    </li>

                    <!--第二排-->

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=33" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_26.png" style="width: 100%;">
                            <h4 class="brand_logo_text">myBRA</h4>
                            <h4 class="brand_logo_slogan">Up to 31% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_26.png" alt="myBRA" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=8" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_27.png" style="width: 100%;">
                            <h4 class="brand_logo_text">FM Shoes</h4>
                            <h4 class="brand_logo_slogan">Up to 31% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_27.png" alt="FM shoes" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=7" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_28.png" style="width: 100%;">
                            <h4 class="brand_logo_text">玉如阿姨</h4>
                            <h4 class="brand_logo_slogan">Up to 35% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_28.png" alt="玉如阿姨" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=245" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_29.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Pixy</h4>
                            <h4 class="brand_logo_slogan">Up to 38% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_29.png" alt="Pixy" />
                            </div>
                        </a>

                    </li>
                    <!--第三排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=108" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_30.png" style="width: 100%;">
                            <h4 class="brand_logo_text">LaQueen</h4>
                            <h4 class="brand_logo_slogan">Up to 50% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_30.png" alt="LaQueen" />
                            </div>
                        </a>

                    </li>


                </ul>


            </div>
        </div>

    </div>



    <!--第4塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eee">
        <h4 class="edm_title">Home & Living</h4>
    </div>

    <!--第4塊商品-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #999">


        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <!--第一排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=138" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_31.png" style="width: 100%;">
                            <h4 class="brand_logo_text">icon愛康</h4>
                            <h4 class="brand_logo_slogan">Up to 37% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_31.png" alt=" icon愛康" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=264" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_32.png" style="width: 100%;">
                            <h4 class="brand_logo_text">HH草本</h4>
                            <h4 class="brand_logo_slogan">Up to 33% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_32.png" alt="HH草本" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=180" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_33.png" style="width: 100%;">
                            <h4 class="brand_logo_text">SOFEI舒妃</h4>
                            <h4 class="brand_logo_slogan">Up to 35% off
                                <br>
                                + Free Gift (RM13.8)</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_33.png" alt="SOFEI舒妃" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=196" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_34.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Is Lounge嗜香氛</h4>
                            <h4 class="brand_logo_slogan">Up to 15% off
                                <br>
                                + Free Gift</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_34.png" alt="Is Lounge嗜香氛" />
                            </div>
                        </a>

                    </li>

                    <!--第二排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=115" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_35.png" style="width: 100%;">
                            <h4 class="brand_logo_text">ANRIEA艾黎亞</h4>
                            <h4 class="brand_logo_slogan">Up to 45% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_35.png" alt="ANRIEA艾黎亞" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=116" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_36.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Hinoki Life清檜</h4>
                            <h4 class="brand_logo_slogan">Up to 30% off
                                <br>
                                + Free Gift (RM49.9)</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_36.png" alt="Hinoki Life清檜" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=127" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_37.png" style="width: 100%;">
                            <h4 class="brand_logo_text">GOLDSHIELD黃金盾</h4>
                            <h4 class="brand_logo_slogan">Up to 21% off</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_37.png" alt="GOLDSHIELD黃金盾" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bcid=1269&bid=167" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_38.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Love Ways羅崴詩</h4>
                            <h4 class="brand_logo_slogan">Up to 20% off
                                <br>
                                + Free Gift (RM44.9)</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_38.png" alt="Love Ways羅崴詩" />
                            </div>
                        </a>

                    </li>

                    <!--第三排-->
                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=小夫妻Q麵" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_39.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Little Couples小夫妻Q麵</h4>
                            <h4 class="brand_logo_slogan">Up to 44% off
                                <br>
                                + Free Gift</h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_39.png" alt="小夫妻Q麵" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=225" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_40.png" style="width: 100%;">
                            <h4 class="brand_logo_text">Mamaway媽媽餵</h4>
                            <h4 class="brand_logo_slogan">Up to 47% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_40.png" alt="Mamaway" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=32" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_41.png" style="width: 100%;">
                            <h4 class="brand_logo_text">sNug</h4>
                            <h4 class="brand_logo_slogan">Up to 26% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_41.png" alt="sNug" />
                            </div>
                        </a>

                    </li>

                    <li class="am-fl box">
                        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=94" target="_blank">
                            <img src="https://www.hawooo.com/images/ftp/20180918/bn_42.png" style="width: 100%;">
                            <h4 class="brand_logo_text">阿嬤的配方</h4>
                            <h4 class="brand_logo_slogan">Up to 32% off </h4>
                            <div class="brand_logo_space">
                                <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_42.png" alt="阿嬤的配方" />
                            </div>
                        </a>

                    </li>

                </ul>


            </div>
        </div>

    </div>

    <!--活動辦法+footer開始喔-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" class="note_title">HaWooo 3rd Birthday Sale:<br>
                        1. Promotion Date：<br>
                        <span class="note_white">•  Round 1: Now - September 30, 2018<br>
                            •  Round 2: October 1-18, 2018
                        </span>
                        <br>
                        <br>
                        2. Promotion Description<br>
                        <span class="note_white">•  FLASH SALE<br>
                            Limited time - valid for 48 hours only, according to checkout time<br>
                            Limited quantity - ends when all products are sold out<br>
                            •  Coupon<br>
                            Spend RM190 and get RM20 off - use promo code "bday20"<br>
                            Spend RM250 and get RM30 off - use promo code "bday30"<br>
                            Spend RM390 and get RM50 off - use promo code "bday50"<br>
                        </span>

                        3.  Notice：<br>
                        <span class="note_white">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN and FLASH SALE products.<br>
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                        <br>
                    </td>

                    <td width="5%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>
    <!--頁面END-!>



     <!--倒數計時用的-->
    <!-- JavaScript includes -->

    <%--   <script src="assets/countdown/jquery.countdown.js"></script>
    <script src="assets/countdown/script.js"></script>--%>
    <script src="assets/js/jquery.countdown.js"></script>
    <script>
        function timeEvent(stime) {

            var note = $('#note'),
                ts = new Date(stime).getTime() + 2 * 24 * 60 * 60 * 1000;
            console.log(ts);
            $("#countdown").countdown({
                timestamp: ts,
                callback: function (days, hours, minutes, seconds) {

                    var message = "";

                    message += days + " day" + (days === 1 ? "" : "s") + ", ";
                    message += hours + " hour" + (hours === 1 ? "" : "s") + ", ";
                    message += minutes + " minute" + (minutes === 1 ? "" : "s") + " and ";
                    message += seconds + " second" + (seconds === 1 ? "" : "s") + " <br />";

                    note.html(message);
                }
            });
        }

    </script>
    <!--倒數計時用的結束-->
    <!--DK類別用的-->
    <script>

        // 自動偵測長度 only use in ul and li

        // thisli = li's length. i > margin or something

        $(function () {

            detectLength($('#g1 li'), 0);

            detectLength($('#g2 li'), 0);



        });

        function detectLength(thisli, i) {

            var licount = $(thisli).length;

            var liWidth = $(thisli).outerWidth() + i;

            var litotalWidth = licount * liWidth;

            $(thisli).parent("ul").css("width", litotalWidth);

        };





    </script>
    <!--DK類別用的 END-->
    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 2; i++) {
                duplicate('div1');

            }

            for (i = 0; i < 3; i++) {
                duplicate('div2');
                duplicate('div3');

            }

        });


        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }

    </script>

    <script type="text/javascript">


        $(function () {
            $("#footermenu").remove();
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>
     <script src="../user/assets/js/bday.js"></script>
</asp:Content>

