<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="kol.aspx.cs" Inherits="user_kol" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <!-- 倒數計時用 -->

    <%--    <link rel="stylesheet" href="countdown/jquery.countdown.css" />--%>

    <!-- 引用 jQuery 1.4 -->
    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>
    <!-- 類別滑動 -->
    <%--<link rel="stylesheet" href="assets/css/index.css">--%>
    <
    <style type="text/css">
        .edm_title {
            float: left;
            font-size: 22px;
            color: #424242;
            width: 350px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin-top: 20px;
        }

        .tag-chinese {
            padding: 0em 0.3em;
            display: inline-block;
            position: absolute;
            font-size: .9em;
            top: 5px;
            border: 1px solid #f1b13b;
            color: #f1b13b;
            background: rgba(255,255,255,.9);
        }


        body {
            position: relative;
            height: auto;
            background-color: #eee;
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

        .deleteprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
        }

        .sale1 {
            width: 950px;
            background-color: #abe7f3;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 900px;
            background-color: #d979cd;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }


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

        .gift {
            background-color: #8e8e8e;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift1 {
            background-color: #C2BDC2;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-color: #C2BDC2;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .kol_m_img {
            position: absolute;
            top: 25px;
            margin: auto;
            width: 395px;
            left: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 小選單開始-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="3rd_bday.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page"></a>

            <a href="3rd_flashsale.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="flash sale"></a>

            <a href="life1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="beautiful life"></a>

            <a href="life2.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="elegant life"></a>

            <a href="life3.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="easy life"></a>

            <a href="kol.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="KOL"></a>

            <a href="brand1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top brands"></a>


        </div>
    </div>
    <!-- 小選單掰掰-->
    <!--主視覺-->
    <!--神奇圖層區開始-->

    <%--  <div class="am-g">
        <iframe class="youtube-player" type="text/html" width="600" height="400" src="https://www.youtube.com/embed/V5IiTXh-Mxo" frameborder="0"></iframe>

    </div>--%>
    <div class="am-modal am-modal-no-btn" tabindex="-1" id="vmodal">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">

                <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <div class="am-modal-bd am-g">
                <iframe class="youtube-player" type="text/html" width="600" height="400" src="https://www.youtube.com/embed/V5IiTXh-Mxo" frameborder="0"></iframe>
            </div>
        </div>
    </div>
    <div style="width: 100%; position: relative; min-width: 1000px; z-index: 1; margin: 0 auto">




        <%--  <a href="https://www.youtube.com/watch?v=V5IiTXh-Mxo&feature=youtu.be">
            <img id="gotop" src="https://www.hawooo.com/images/ftp/20180918/edm_02new.png" alt="愛呀我的媽" style="width: 100%">
        </a>--%>
        <a data-am-modal="{target: '#vmodal', closeViaDimmer: 0, width: 700, height: 450}" style="cursor: pointer">
            <img id="gotop" src="https://www.hawooo.com/images/ftp/20180918/edm_02new.png" style="width: 100%; margin-top: -25px">
        </a>


        <!--
            <div style="display: inline;position: absolute;z-index: 2;width:65%;top:0;bottom:0;left:0;right:0;">
               
            
                            
                <a href="180516_midsale_main.html" target="_blank"><img class="go_bt" src="https://www.hawooo.com/images/ftp/20180517/PC_F.png" alt="國際免運" style="position:absolute;top:30%;margin:auto;width:49%;left:101%;"/></a>


          </div>
-->

    </div>

    <!--神奇圖層區掰掰-->
    <div style="width: 1000px; margin: 0 auto;">
        <h4 class="edm_title">Amber Chia's Choice</h4>
    </div>

    <!--紅人推薦1-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; list-style-type: none; margin-top: 65px">
        <!--   <img  id="gotop" src="https://www.hawooo.com/images/ftp/20180903/edm_01.png" alt="主推" style="width: 100%;float: left;"> -->

        <!--限時商品 倒數計時開始-->


        <%--       <h4 class="edm_title">Flash Sale <span class="am-fr saveprice" style="letter-spacing: 1px; margin-top: 1px;">Limited quantities. Only 48hours.</span></h4>
        <div id="countdown" style="width: 1000px; height: 20px; margin-top: 10px;"></div>--%>

        <!--限時商品 倒數計時結束-->
        <!--限時商品 帶商品吧-->
        <%--  <h4 class="edm_title">Personal Care</h4>
        <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; list-style-type: none;">


            <div class="gift2 am-cf" style="width: 1000px;">


                <div id="div0" class="product_5_space_1">
                    <ul class="">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <li class="am-fl hvr-float product_5_box">

                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                class="lazyload am-img-responsive" />
                                            <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                        </div>
                                        <h4 class="pname">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>

                                        <p class="discountprice">
                                            RM
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                        </p>

                                    </li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>

                </div>
            </div>

        </div>--%>


        <div class="gift1 am-cf" style="width: 1000px;">
            <div style="float: left; width: 40%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


                    <img src="https://www.hawooo.com/images/ftp/20180918/kol_01.png" alt="KOL" class="kol_m_img" />



                </div>
            </div>

            <div id="div1" style="padding: 0 10px; float: right; width: 60%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-3 da-thumbs product">

                    <asp:repeater id="rp1" runat="server">
                        <ItemTemplate>

                          <li>
                                        <div class="p-style">
                                            <div class="p-style-pic">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto" src="../noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </a>
                                              
                                            </div>
                                            <div class="p-style-text">
                                                <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <h4>
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                    <span class="p-style-line"></span>
                                                    <div class="am-cf price-discount">
                                                        <h5 class="am-fl">
                                                            <p>
                                                                RM
                                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                            </p>

                                                        </h5>
                                                        <p class="discount-range">
                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </p>
                                                        <%-- <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>--%>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                    </li>

                        </ItemTemplate>
                    </asp:repeater>



                </ul>
            </div>
        </div>




    </div>



    <!--紅人推薦2-->
    <div style="width: 1000px; margin: 0 auto;">
        <h4 class="edm_title">KeQing's Choice</h4>
    </div>
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; list-style-type: none; margin-top: 65px">


        <div class="gift2 am-cf" style="width: 1000px;">
            <div style="float: left; width: 40%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


                    <img src="https://www.hawooo.com/images/ftp/20180918/kol_02.png" alt="KOL" class="kol_m_img"/>



                </div>
            </div>


            <div id="div1" style="padding: 0 10px; float: right; width: 60%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-3 da-thumbs product">
                    <asp:repeater id="rp2" runat="server">
                        <ItemTemplate>
                                <li>
                                        <div class="p-style">
                                            <div class="p-style-pic">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto" src="../noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </a>
                                              
                                            </div>
                                            <div class="p-style-text">
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("WP01") %>' />
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <h4>
                                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                    <span class="p-style-line"></span>
                                                    <div class="am-cf price-discount">
                                                        <h5 class="am-fl">
                                                            <p>
                                                                RM
                                                                <asp:Literal ID="Literal4" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                            </p>

                                                        </h5>
                                                        <p class="discount-range">
                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </p>
                                                        <%-- <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>--%>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                    </li>
                        </ItemTemplate>
                    </asp:repeater>

                </ul>
            </div>
        </div>




    </div>


    <!--紅人推薦3-->
    <div style="width: 1000px; margin: 0 auto;">
        <h4 class="edm_title">Joey's Choice</h4>
    </div>
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; list-style-type: none; margin-top: 65px">


        <div class="gift2 am-cf" style="width: 1000px;">
            <div style="float: left; width: 40%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


                    <img src="https://www.hawooo.com/images/ftp/20180918/kol_03.png" alt="KOL" class="kol_m_img" />



                </div>
            </div>
            <div id="div1" style="padding: 0 10px; float: right; width: 60%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-3 da-thumbs product">
                    <asp:repeater id="rp3" runat="server">
                        <ItemTemplate>
                                <li>
                                        <div class="p-style">
                                            <div class="p-style-pic">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto" src="../noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </a>
                                              
                                            </div>
                                            <div class="p-style-text">
                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("WP01") %>' />
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <h4>
                                                        <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                    <span class="p-style-line"></span>
                                                    <div class="am-cf price-discount">
                                                        <h5 class="am-fl">
                                                            <p>
                                                                RM
                                                                <asp:Literal ID="Literal6" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                            </p>

                                                        </h5>
                                                        <p class="discount-range">
                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </p>
                                                        <%-- <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>--%>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                    </li>
                        </ItemTemplate>
                    </asp:repeater>

                </ul>
            </div>
        </div>




    </div>

    <!--紅人推薦4-->
    <div style="width: 1000px; margin: 0 auto;">
        <h4 class="edm_title">Apple Tan's Choice</h4>
    </div>
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px; position: relative; z-index: 2; list-style-type: none; margin-top: 65px">


        <div class="gift2 am-cf" style="width: 1000px;">
            <div style="float: left; width: 40%;">
                <div style="display: inline; position: absolute; z-index: 6; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


                    <img src="https://www.hawooo.com/images/ftp/20180918/kol_04.png" alt="KOL" class="kol_m_img" />



                </div>
            </div>
            <div id="div1" style="padding: 0 10px; float: right; width: 60%; position: relative; z-index: 50;">
                <ul class="am-avg-sm-3 da-thumbs product">
                    <asp:repeater id="rp4" runat="server">
                        <ItemTemplate>
                             <li>
                                        <div class="p-style">
                                            <div class="p-style-pic">
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <img data-sizes="auto" src="../noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                        class="lazyload am-img-responsive" />
                                                    <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                                </a>
                                              
                                            </div>
                                            <div class="p-style-text">
                                                <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("WP01") %>' />
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                    <h4>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                                    <span class="p-style-line"></span>
                                                    <div class="am-cf price-discount">
                                                        <h5 class="am-fl">
                                                            <p>
                                                                RM
                                                                <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                            </p>

                                                        </h5>
                                                        <p class="discount-range">
                                                            <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                        </p>
                                                        <%-- <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>--%>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                    </li>
                        </ItemTemplate>
                    </asp:repeater>

                </ul>
            </div>
        </div>




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
                        </span>
                        <span style="color: white;">．Coupon<br />
                            Spend RM190 and get RM20 off - use promo code "bday20"<br />
                            Spend RM250 and get RM30 off - use promo code "bday30"<br />
                            Spend RM390 and get RM50 off - use promo code "bday50"<br />
                        </span>

                        3. Notice<br />
                        <span style="color: white;">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN,Keep Perfume, H&J, SHARE and FLASH SALE products.<br />
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                    </td>


                </tr>
            </tbody>
        </table>

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>
















    <!--DK 三大類別tab用 結束-->
    <!--倒數計時用的-->
    <!-- JavaScript includes -->
    <%--    <script src="https://code.jquery.com/jquery-1.7.1.min.js"></script>--%>
    <%--  <script src="countdown/jquery.countdown.js"></script>--%>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/script.js"></script>
    <%--   <script src="js/script.js"></script>--%>
    <!--倒數計時用的結束-->
    <!--    <script src="assets/js/jquery.min.js"></script>-->
    <%--  <script src="assets/js/amazeui.min.js"></script>--%>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };

    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

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
        <script src="assets/js/bday.js"></script>
</asp:Content>
