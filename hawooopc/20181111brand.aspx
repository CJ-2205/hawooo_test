<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="20181111brand.aspx.cs" Inherits="user_20181111brand" %>
<%@ Register TagPrefix="mn" TagName="mn1" Src="~/user/control/20181111menu.ascx" %>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">--%>
    <!-- 倒數計時用 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <%--    <link rel="stylesheet" href="countdown/jquery.countdown.css" />--%>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css">
    <!-- 引用 jQuery 1.4 -->
    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>
    <!-- 類別滑動 -->
    <%--<link rel="stylesheet" href="assets/css/index.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <style type="text/css">
        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            /*margin: 5px 5px 0 5px;*/ /* font-size: small; */
            color: red;
        }

        .am-slider-b3 {
            margin: 15px 10px;
            box-shadow: none;
        }

        body {
            background-color: #eee;
        }


        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .abgne_tab {
            clear: left;
            width: 1000px;
            margin: 0 auto;
            background-color: #E5E4E5;
        }

        ul.tabs {
            width: 100%;
            height: 32px;
            border-bottom: 0px solid #999;
            border-left: 0px solid #999; /*此處加上背景色語法不會影響到標簽內容的背景*/
        }

            ul.tabs li {
                /*這裡可以改外框色*/
                float: left;
                height: 55px;
                line-height: 55px;
                overflow: hidden;
                position: relative;
                margin-bottom: -1px; /* 讓 li 往下移來遮住 ul 的部份 border-bottom */
                background: #c9c5c9;
                width: 25%;
                text-align: center;
            }

                ul.tabs li a {
                    /*標籤標題設定*/
                    display: block;
                    padding: 0 20px;
                    color: black;
                    border: 0px solid #fff;
                    text-decoration: none;
                }

                    ul.tabs li a:hover {
                        background: #ccc;
                        color: #d1031c;
                    }

                ul.tabs li.active {
                    /**/
                    border-bottom: 6px solid #d1031c;
                    color: #d1031c;
                }

                    ul.tabs li.active a:hover {
                        background: #c9c5c9; /*滑鼠移上來時變色*/
                    }

        div.tab_container {
            clear: left;
            width: 100%;
            border-top: none;
            background: white; /*標籤頁內容的背景*/
        }

            div.tab_container .tab_content {
                padding: 20px;
            }

                div.tab_container .tab_content h2 {
                    margin: 0 0 20px;
                }

        a:link {
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
        }

        a:hover {
            text-decoration: none;
        }

        a:active {
            text-decoration: none;
        }



        /*基本設定*/

        body {
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .saveprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
            float: right;
            margin-top: -3px;
        }

        .redprice {
            font-size: 20px;
            letter-spacing: -2px;
        }


        .product_5_space {
            padding: 0 10px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: #C2BDC2;
        }

        .product_5_box {
            width: 18.5%;
            background: white;
            padding: 5px;
            margin: 15px 3px 0 3px;
            z-index: 50;
            margin-left: 10px;
        }

        .product_5_img {
            width: 90%;
            margin-left: 8px;
        }


        .fire_product_4_space {
            padding: 0 10px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: white;
        }

        .fire_product_4_box {
            width: 23%;
            background: white;
            padding: 10px;
            margin: 10px 5px;
            z-index: 50;
            margin-left: 13px;
        }

        .fire_product_4_img {
            width: 90%;
            margin-left: 11px;
        }


        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
            }


        .gift2 {
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        /*類別區塊開始*/
        .tab_box {
            width: 100%;
            margin: 0 auto;
            display: block;
            width: 1000px;
            position: relative;
            z-index: 2;
            list-style-type: none;
        }

        .tab_box_space {
            display: inline;
            position: absolute;
            z-index: 2;
            top: -3px;
            bottom: 0;
            left: 118px;
            right: 0;
        }

        .tab_box_box {
            width: 28.5%;
            background: grey;
            padding: 10px;
            margin: 10px 5px;
            z-index: 50;
        }
        /*loading bar開始*/


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
            border-radius: initial;
        }

        .w3-container, .w3-panel {
            /*padding: 0.01em 16px;*/
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
            bottom: 2px;
            font-size: 13px;
            margin: auto;
            width: 100%;
        }

        /*品牌館開始*/
        .brand_logo {
            position: absolute;
            top: 57%;
            margin: auto;
            width: 40%;
            left: 55%;
            outline: 4px solid white;
        }

        .brand_logo_text {
            margin-top: 30px;
            font-size: 16px;
            line-height: 11px;
            color: black;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: 5px;
        }

        .brand_logo_slogan {
            margin: 0 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 18px;
            color: #979697;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align: center;
            margin-top: 10px;
        }
        /*DK三大類別tab用*/


        [data-am-widget=tabs] {
            margin: 0px;
        }



        .am-tabs-d2 .am-tabs-nav {
            background-color: #C9C5C9;
        }



            .am-tabs-d2 .am-tabs-nav li {
                height: 55px;
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

        /*旁邊小選單*/
        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 9999999;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }
    </style>
    <style>
        .edm_title {
            float: left;
            font-size: 22px;
            color: #424242;
            width: 350px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: 15px;
        }

        .am-slider-b3 .am-direction-nav a.am-prev {
            left: 10px;
        }

        .am-slider-b3 .am-direction-nav a.am-next {
            right: 10px;
            text-align: right;
        }

        .more-products-slider-page .p-style {
            display: inline-block;
            margin: 10px 10px 0 10px;
            position: relative;
            background: white;
            width: calc(25% - 20px);
            transition: .3s;
        }

        .index-more-products-content .index-more-products-list .more-products-slider ul.am-slides li.more-products-slider-page ul li {
            margin: 10px 5px;
            width: calc(25% - 20px); /*height: calc(50% - 20px);*/
            height: 255px;
            position: relative;
        }


        .tag-chinese {
            padding: 0em 0.3em;
            display: inline-block;
            position: absolute;
            font-size: .9em;
            top: 5px;
            right: 5px;
            border: 1px solid #f1b13b;
            color: #f1b13b;
            background: rgba(255,255,255,.9);
        }

        .index-more-products-content .index-more-products-list .more-products-slider ul.am-slides li.more-products-slider-page ul {
            padding: 0;
            height: 100%;
        }

            .index-more-products-content .index-more-products-list .more-products-slider ul.am-slides li.more-products-slider-page ul li a {
                position: initial;
            }

            .index-more-products-content .index-more-products-list .more-products-slider ul.am-slides li.more-products-slider-page ul li:before {
                border: none;
            }

        .big_brand_3_space {
            padding: 0 50px;
            float: right;
            position: relative;
            z-index: 50;
            background-color: #C2BDC2;
        }

        .big_brand_box {
            width: 30%;
            background: white;
            padding: 10px;
            margin: 10px 10px;
            z-index: 50;
        }

        .big_brand_logo {
            display: inline;
            position: absolute;
            z-index: 2;
            width: 66%;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Literal ID="litMsg" runat="server"></asp:Literal>
    <!-- 小選單開始-->
<%--    <div class="invisible" style="z-index: 50;">
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
            <a href="javascript:void(0);" onclick="GoId('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20181101/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="KOL" /></a>
        </div>
    </div>--%>
    <mn:mn1 ID="mn" runat="server" /> 
    <!-- 小選單掰掰-->
    <!--主視覺-->
    <a href="20181111redenvelope.aspx">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20181101/bds_01.png" alt="主推" style="width: 100%; float: left; min-width: 1000px;">
    </a>
    <div style="width: 1000px; margin: 0 auto;">
        <asp:Repeater ID="rp" runat="server" OnItemDataBound="rp_ItemDataBound">
            <ItemTemplate>
                <asp:HiddenField ID="hfBID" runat="server" Value='<%#Eval("BID") %>' />
                <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
                    <ul class="am-tabs-nav am-cf">
                    </ul>
                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active" style="padding: 18px 10px 0px 10px">
                            <!-- 商品開始 -->
                            <section class="index-products-section body-care section-1">
                                <!-- title end-->
                                <div style="height: 270px; padding: 0;">
                                    <div class="am-u-sm-10 am-fr index-more-products-list" style="width: 750px;">
                                        <div class="more-products-slider am-slider-default am-slider-carousel am-slider-b3 "
                                            data-am-flexslider="{itemWidth: 170, itemMargin: 10, slideshow: false}">
                                            <ul class="am-slides">
                                                <asp:Repeater ID="rp1" runat="server">
                                                    <ItemTemplate>
                                                        <li style="border: none; margin: 10px">
                                                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                                                <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                                        class="lazyload am-img-responsive" />
                                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                                </div>
                                                                <h4 class="pname">
                                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                                <p class="discountpricem">RM<span style="font-size: medium; letter-spacing: -2px;"><%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span><span class="am-fr deletepricem"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString().Replace("RM","") %></span></p>
                                                            </a>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="am-u-sm-2 am-fl index-more-products-pic" style="width: 225px; height: 270px; margin-right: 2px; padding-left: 5px">
                                        <a href='<%# "https://www.hawooo.com/user/brands.aspx?bid="+Eval("BID") %>' target="_blank">
                                            <img src='<%#"https://www.hawooo.com/images/ftp/20181101/"+Eval("IMG")+".png" %>' style="width: 100%;">
                                            <h4 class="brand_logo_text"><%#Eval("NAME") %></h4>
                                            <h4 class="brand_logo_slogan"><%#Eval("NOTE") %></h4>
                                            <div class="big_brand_logo">
                                                <img class="go_bt brand_logo" src='<%#"https://www.hawooo.com/images/ftp/20181101/"+Eval("LOGO")+".png" %>' alt='<%#Eval("NAME") %>' />
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </section>
                            <!-- 商品結束-->
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>



    </div>
    <!--活動辦法開始吧-->
    <div style="width: 100%; position: relative; width: 1000px; margin: 0 auto">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; color: #f8d1dd; padding: 20px; line-height: normal;">HaWooo 3rd Birthday Sale:<br>
                        <span style="color: white;">
                            <br>
                        </span>
                        <br>
                        1. Promotion Date<br>
                        <span style="color: white;">. Round 1: Now - September 30, 2018<br />
                            . Round 2: October 1-18, 2018<br />
                        </span>
                        <br>
                        2. Promotion Description<br />
                        <span style="color: white;">． FLASH SALE<br />
                            Limited time - valid for 48 hours only, according to checkout time<br />
                            Limited quantity - ends when all products are sold out<br />
                        </span><span style="color: white;">．Coupon<br />
                            Spend RM190 and get RM20 off - use promo code "bday20"<br />
                            Spend RM250 and get RM30 off - use promo code "bday30"<br />
                            Spend RM390 and get RM50 off - use promo code "bday50"<br />
                        </span>3. Notice<br />
                        <span style="color: white;">※ Promo codes are not applicable to the following brands/products:
                            BHK's, DR.CINK, Dr.Lady, UNIQMAN,Keep Perfume, H&J, SHARE and FLASH SALE products.<br />
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                    </td>
                </tr>
            </tbody>
        </table>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png"
            alt="hawooo.com" style="width: 100%;">
    </div>
    <!--DK 三大類別tab用-->
    <script>
        $(function () {
            for (var i = 1; i <= 3; i++) {
                $("#tab" + i + " > li").mouseover(function () {

                    if ($(this).hasClass("am-active"))

                        return;

                    else {

                        $(this).find('a').tabs('open');

                    }

                });
            };


        });




    </script>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/bday.js"></script>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };
        function GoId(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 500);

        };
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        var date1 = new Date('2018-11-11T00:00:00Z');
        var date2 = new Date('2018-11-12T00:00:00Z');

        var today = new Date();
        $(function () {
            debugger;
            var a = "onclick";
            var v = "alert('只能在雙十一領取喔')";

            if (date1 <= today && today < date2) {
                a = "data-clipboard-text";
                v = "SF111"
            }
            $("#only11").attr(a, v);
        });

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
    <%--     <script>
            function RedeemCoupon() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('newarrivals1.aspx');
            }
   
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
     
            </ContentTemplate>
        </asp:UpdatePanel>--%>
</asp:Content>
