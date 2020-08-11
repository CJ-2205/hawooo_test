<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="2019womenbuy5.aspx.cs" Inherits="user_2019womenbuy5" %>

<%--<%@ Register TagPrefix="mn" TagName="mn1" Src="~/user/control/20181111menu.ascx" %>--%>
<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- 倒數計時用 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <%--    <link rel="stylesheet" href="countdown/jquery.countdown.css" />--%>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css">
    <!-- 引用 jQuery 1.4 -->
    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>
    <!-- 類別滑動 -->
    <%--<link rel="stylesheet" href="assets/css/index.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <style type="text/css">
        /*老人飄飄*/
        .cloud_four {
            position: absolute;
            z-index: 2;
            animation-name: cloud_four;
            animation-duration: 4s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-timing-function: ease-in-out;
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


        body {
            background-color: #eee;
        }


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


        .product_5_space_1 {
            float: right;
            position: relative;
            z-index: 50;
            background-color: #F2E4DC;
            padding: 10px 0;
        }

        .product_5_box {
            width: 18.8%;
            background: white;
            padding: 5px;
            margin: 5px 3px;
            z-index: 50;
            margin-left: px;
        }

        .product_5_img {
            width: 90%;
            margin-left: 8px;
        }

        .product_4_box {
            width: 24%;
            background: white;
            padding: 5px;
            margin: 5px 3px;
            z-index: 50;
            margin-left: px;
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
        /*旁邊小選單*/
        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        /*#body {
            background-color: #F2E4DC;
        }*/

        .deletepricem {
            color: #898989;
            /*text-decoration-line: line-through;*/
        }

        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }

        @keyframes cloud_four {
            from {
                left: 50px;
            }

            to {
                left: 140px;
            }
        }
    </style>
    <style>
        .getSpend {
            display: inline-block;
            position: absolute;
            width: 310px;
            height: 150px;
            bottom: 50%;
            cursor: pointer;
            left: 75%;
        }



        .style1 li {
            border-right: 1px solid #ececec;
            border-bottom: 1px solid #ececec;
            margin: 0;
        }

            .style1 li:last-child {
                border-right: 0px;
                padding-right: 1px;
            }

            .style1 li span {
                font-size: 18px;
                margin: 0px auto;
                /* position: relative; */
                display: table;
                padding-bottom: 10px;
                font-weight: 700;
            }

            .style1 li a {
                cursor: pointer;
            }

            .style1 li img {
                width: 70%;
                display: block;
                margin: 0px auto;
                padding-top: 10px;
            }

        .select {
            background-color: rgba(243,243,243,.85);
            border-bottom: 2px solid #EE5984 !important;
        }


        .hid {
            display: none;
        }


        .deletepricem {
            color: #898989;
            text-decoration-line: line-through;
        }
        /*.am-gallery-bordered > li {
            padding: 5px;
        }*/

        .product-items-tag {
            padding: 2px 6px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: bottom;
            border-radius: 12px;
            display: inline-block;
        }

            .product-items-tag img {
                display: inline;
            }


        .am-avg-md-4 li {
            width: 25%;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 小選單開始-->
    <%--    <div class="invisible" style="z-index: 50;">
 
        <div class="box">
            <a href="2019cny3.aspx">
 
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_01.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="main page" />
            </a>
            <a href="2019cny3.aspx">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_02.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="flash sale" />
            </a>
            <a href="2019cnybuy3.aspx?did=1">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_03.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="value package" />
            </a>
            <a href="2019cnybuy3.aspx?did=6">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_09.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="fashion" />
            </a>
            <a href="2019cnybuy3.aspx?did=2">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_04.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="beauty" />
            </a>
            <a href="2019cnybuy3.aspx?did=3">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_05.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="supplement" />
            </a>
            <a href="2019cnybuy3.aspx?did=4">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_06.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="home" />
            </a>
            <a href="2019cnybuy3.aspx?did=5">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_07.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="fashion" />
            </a>

  

            <a onclick="goTop()">
                <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190305/sidebar_08.png" %>'
                    style="width: 150px; margin-bottom: -1px" alt="fashion" />
            </a>

        </div>
    </div>--%>
    <!-- 小選單掰掰-->
    <div style="width: 1180px; margin: 0 auto; position: relative; background-color: #e5e5e5">
        <!--限時商品 倒數計時結束-->
        <!--限時商品 帶商品吧-->
            <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/lbn_01.png" %>' style="margin: 0 auto; width: 100%" />



        <div style="width: 100%; margin: 0 auto; display: block; position: relative; z-index: 2; list-style-type: none;">

            <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-md-4 ">
                <li id="tab1">
                    <a href="2019womenbuy5.aspx?did=1">
                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/licon_01.png" %>' width="100%" />
                    </a>

                </li>
                <li id="tab2">
                    <a href="2019womenbuy5.aspx?did=2">
                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/licon_02.png" %>' width="100%" />
                    </a>

                </li>
                <li id="tab3">
                    <a href="2019womenbuy5.aspx?did=3">
                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/licon_03.png" %>' width="100%" />
                    </a>

                </li>
                <li id="tab4">
                    <a href="2019womenbuy5.aspx?did=4">
                        <img src='<%=ConfigurationManager.AppSettings["imgUrl"] +"ftp/20190711/licon_04.png" %>' width="100%" />
                    </a>
                </li>

            </ul>



            <ul class="am-avg-sm-4 am-gallery-bordered product" style="padding: 2px">
                <asp:Repeater ID="rp1" runat="server">
                    <ItemTemplate>
                        <li><a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>'
                                        EnableViewState="false" />
                                </div>
                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                    <%--  <div class="gallery_title_top">
                                                <asp:Literal ID="lit_WP24" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal>
                                            </div>--%>
                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>
                                    </div>
                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                        <div class="am-fl">
                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                            </span>
                                        </div>
                                        <div class="am-fr">
                                            <span style="vertical-align: middle;">
                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                        <div class="am-fl">
                                            <span style="font-size: 13px;"><i class="far am-icon-eye"></i>Viewed
                                                                    <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                            </span>
                                        </div>
                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                            <%--       <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>--%>

                                            <span class="product-items-tag">
                                                <%# (!Eval("WPT07").ToString().Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>


        </div>













    </div>

    <!--活動辦法開始吧-->
    <div style="width: 100%; position: relative; width: 1180px; margin: 0 auto">
        <img class="twoyearbottom" src='<%=ConfigurationManager.AppSettings["imgUrl"]+ "ftp/20180312/footer.png" %>'
            alt="hawooo.com" style="width: 100%;">
    </div>


    <%--<script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>--%>

    <script>
        //function tabsIndex(index) {
        //    var $tab = $('#doc-tab-demo-1');
        //    debugger;
        //    $tab.tabs('open', index > 0 ? index - 1 : index + 1);
        //    debugger;

        //};

        function tabActive(id) {
            var v = $("#" + id);
            v.attr("class", "am-active");
        }


    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>
